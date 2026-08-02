#!/usr/bin/env -S bun run --install=force
import { Database } from "bun:sqlite"
import { realpathSync } from "node:fs"
import { resolve } from "node:path"
import { homedir } from "node:os"
import {
  createCliRenderer,
  TextRenderable,
  InputRenderable,
  InputRenderableEvents,
  StyledText,
  fg,
  bold,
  t,
  dim,
} from "@opentui/core"

const DB_PATH = process.env.ATUIN_DB ?? "/Volumes/mods/data/atuin/history.db"
const PAGE = 200
const SCAN = 5000 // raw rows per batch when regex-filtering in JS

const C = {
  dur: "#98C379",
  ago: "#61AFEF",
  cmd: "#DCDFE4",
  match: "#FFD75F",
  sel: "#E06C75",
  dim: "#6E7686",
  key: "#9DA5B4",
  anchor: "#C678DD", // date anchor highlight + badge
  cwd: "#7AA2F7", // cwd highlight + badge
}

type Row = { timestamp: number; duration: number; command: string; cwd: string }

const db = new Database(DB_PATH, { readonly: true })
const SELECT = "SELECT timestamp, duration, command, cwd FROM history"

const escLike = (s: string) => s.replace(/[\\%_]/g, (c) => "\\" + c)
const trunc = (s: string, n: number) => (s.length <= n ? s : "…" + s.slice(-(n - 1)))
const fillLine = (s: string, width: number, pad: string) =>
  s.length >= width ? s.slice(0, width) : s + pad.repeat(width - s.length)
// ISO datetime without ms: yyyy-mm-ddTHH:mm:ss (UTC, matches atuin's epoch-ns timestamps)
const isoNoMs = (tsNs: number) => new Date(tsNs / 1e6).toISOString().slice(0, 19)

// --- search-box state ---------------------------------------------------
// the box is the single source of truth. tokens `anchor:DATE` and `cwd:PATH`
// are extracted out of it; everything left is the text query.
let query = ""
let text = "" // text portion after stripping anchor:/cwd: tokens
let anchorTs: number | null = null // target timestamp in ns (position, not a filter)
let anchorGlobalOffset: number | null = null // filtered-DESC offset of the closest row
let cwdFilter: string | null = null // resolved real path (filter)

// --- data window --------------------------------------------------------
// rows is a contiguous window [baseOffset, baseOffset+len) over the filtered,
// timestamp-DESC stream. baseOffset>0 means newer rows can be prepended lazily.
let rows = [] as Row[]
let baseOffset = 0
let exhaustedNew = false // reached offset 0 (newest)
let exhaustedOld = false // reached the oldest end of the filtered set
let scanOffset = 0 // raw scan cursor (regex mode only)
let sel = 0
let scrollTop = 0
let filteredCount: number | null = null

// text query modes: words (AND, vscode-style) | ^prefix | /regex/
type TextMode =
  | { kind: "regex"; re: RegExp; gre: RegExp }
  | { kind: "prefix"; p: string }
  | { kind: "words"; words: string[] }
  | { kind: "all" }

const parseTextMode = (q: string): TextMode => {
  if (q.length > 2 && q.startsWith("/") && q.endsWith("/")) {
    try {
      const src = q.slice(1, -1)
      return { kind: "regex", re: new RegExp(src, "i"), gre: new RegExp(src, "gi") }
    } catch {}
  }
  if (q.startsWith("^") && q.length > 1) return { kind: "prefix", p: q.slice(1) }
  const words = q.trim().split(/\s+/).filter(Boolean)
  return words.length ? { kind: "words", words } : { kind: "all" }
}
let textMode: TextMode = parseTextMode("")

// resolve a cwd value: expand ~, make absolute, follow symlinks when it exists
const resolveCwd = (v: string) => {
  let p = v.trim().replace(/^~(?=$|\/|\\)/, homedir())
  p = resolve(p)
  try {
    p = realpathSync(p)
  } catch {
    /* historical paths may no longer exist — keep the literal */
  }
  return p
}

// interpret a date string as local time → epoch ms (date-only forces local midnight)
const parseDateToMs = (s: string): number | null => {
  const v = s.trim()
  if (/^\d{4}-\d{2}-\d{2}$/.test(v)) {
    const d = new Date(v + "T00:00:00")
    return isNaN(+d) ? null : +d
  }
  const d = new Date(v)
  return isNaN(+d) ? null : +d
}

// set/replace/remove a `prefix:value` token in the query string
const setToken = (str: string, prefix: string, value: string | null) => {
  const re = new RegExp(`(^|\\s)${prefix}:\\S+`, "g")
  const out = str.replace(re, "").trim()
  return value == null ? out : (out ? out + " " : "") + `${prefix}:${value}`
}

// split the raw query into {text, anchor, cwd}
const parseQuery = () => {
  const aM = query.match(/(?:^|\s)anchor:(\S+)/)
  if (aM) {
    const ms = parseDateToMs(aM[1])
    anchorTs = ms == null ? null : ms * 1e6
  } else anchorTs = null
  anchorGlobalOffset = null

  const cM = query.match(/(?:^|\s)cwd:(\S+)/)
  cwdFilter = cM ? resolveCwd(cM[1]) : null

  text = query
    .replace(/(?:^|\s)(anchor|cwd):\S+/g, "")
    .replace(/^\s+/, "")
    .trim()
  textMode = parseTextMode(text)
}

// build the SQL WHERE for text(sql modes) + cwd. regex text is filtered in JS.
const filterWhere = () => {
  const clauses = [] as string[]
  const params = [] as string[]
  if (textMode.kind === "prefix") {
    clauses.push("command LIKE ? ESCAPE '\\'")
    params.push(escLike(textMode.p) + "%")
  } else if (textMode.kind === "words") {
    for (const w of textMode.words) {
      clauses.push("command LIKE '%' || ? || '%' ESCAPE '\\'")
      params.push(w)
    }
  }
  if (cwdFilter) {
    // the dir itself or anything nested under it
    clauses.push("(cwd = ? OR cwd LIKE ? || '/%')")
    params.push(cwdFilter, cwdFilter)
  }
  return { where: clauses.length ? " WHERE " + clauses.join(" AND ") : "", params }
}

const qWindow = (where: string, params: string[], limit: number, offset: number) =>
  db.query(`${SELECT}${where} ORDER BY timestamp DESC LIMIT ? OFFSET ?`).all(...params, limit, offset) as Row[]

const fetchMore = (dir: "old" | "new") => {
  if (textMode.kind === "regex") {
    // regex is JS-side; only scans forward from newest, baseOffset stays 0
    if (dir === "new" || exhaustedOld) return
    const { where, params } = filterWhere() // cwd only here
    let added = 0
    while (added < PAGE && !exhaustedOld) {
      const batch = qWindow(where, params, SCAN, scanOffset)
      scanOffset += batch.length
      if (batch.length < SCAN) exhaustedOld = true
      for (const r of batch) if (textMode.re.test(r.command)) rows.push(r), added++
    }
    return
  }
  const { where, params } = filterWhere()
  if (dir === "old") {
    if (exhaustedOld) return
    const page = qWindow(where, params, PAGE, baseOffset + rows.length)
    rows.push(...page)
    if (page.length < PAGE) exhaustedOld = true
  } else {
    if (exhaustedNew || baseOffset === 0) {
      exhaustedNew = true
      return
    }
    const off = Math.max(0, baseOffset - PAGE)
    const want = baseOffset - off
    const page = qWindow(where, params, want, off)
    rows.unshift(...page)
    baseOffset = off
    sel += page.length // keep the same data under the cursor / viewport
    scrollTop += page.length
    if (page.length < want) exhaustedNew = true
  }
}

const closestIdx = (arr: Row[], d: number) => {
  let best = 0,
    bd = Infinity
  for (let i = 0; i < arr.length; i++) {
    const dd = Math.abs(arr[i].timestamp - d)
    if (dd < bd) ((bd = dd), (best = i))
  }
  return best
}

// jump so the row closest to anchorTs sits in the middle of the viewport
const doAnchorJump = () => {
  if (anchorTs == null) return
  const h = listRows.length || 1
  const half = Math.floor(h / 2)
  if (textMode.kind === "regex") {
    rows = []
    baseOffset = 0
    exhaustedNew = true
    exhaustedOld = false
    scanOffset = 0
    let guard = 0
    while (guard++ < 400 && !exhaustedOld) {
      if (rows.length && rows[rows.length - 1].timestamp <= anchorTs) break
      fetchMore("old")
      if (rows.length > 60000) break
    }
    const li = closestIdx(rows, anchorTs)
    anchorGlobalOffset = li // baseOffset is 0 for regex
    sel = li
    scrollTop = Math.max(0, sel - half)
    return
  }
  const { where, params } = filterWhere()
  const cw = where ? where + " AND timestamp > ?" : " WHERE timestamp > ?"
  const nNewer = (db.query(`SELECT count(*) c FROM history${cw}`).get(...params, anchorTs) as { c: number }).c
  const centerOffset = Math.max(0, nNewer - half)
  const want = h * 2 + PAGE
  const win = qWindow(where, params, want, centerOffset)
  rows = win
  baseOffset = centerOffset
  exhaustedNew = centerOffset === 0
  exhaustedOld = win.length < want
  const li = closestIdx(rows, anchorTs)
  anchorGlobalOffset = baseOffset + li
  sel = li
  scrollTop = Math.max(0, sel - half)
}

const scheduleCount = () => {
  filteredCount = null
  setTimeout(() => {
    if (textMode.kind === "regex") {
      render()
      return // can't count a JS regex without a full scan
    }
    const { where, params } = filterWhere()
    filteredCount = (db.query(`SELECT count(*) c FROM history${where}`).get(...params) as { c: number }).c
    render()
  }, 0)
}

const resetSearch = () => {
  parseQuery()
  rows = []
  baseOffset = 0
  exhaustedNew = true
  exhaustedOld = false
  scanOffset = 0
  sel = 0
  scrollTop = 0
  if (anchorTs != null) doAnchorJump()
  else fetchMore("old")
  scheduleCount()
}

// --- formatting ---------------------------------------------------------
const fmtDuration = (ns: number) => {
  const ms = ns / 1e6
  if (ms < 1) return "0s"
  if (ms < 1000) return `${Math.round(ms)}ms`
  const s = ms / 1000
  if (s < 60) return `${Math.round(s)}s`
  if (s < 3600) return `${Math.round(s / 60)}m`
  return `${Math.round(s / 3600)}h`
}

const fmtAgo = (tsNs: number) => {
  const ms = Date.now() - tsNs / 1e6
  if (ms < 1000) return `${Math.round(ms)}ms`
  const s = ms / 1000
  if (s < 60) return `${Math.round(s)}s`
  if (s < 3600) return `${Math.round(s / 60)}m`
  if (s < 86400) return `${Math.round(s / 3600)}h`
  return `${Math.round(s / 86400)}d`
}

const matchRanges = (textStr: string) => {
  const out = [] as [number, number][]
  const lower = textStr.toLowerCase()
  if (textMode.kind === "words") {
    for (const w of textMode.words) {
      const lw = w.toLowerCase()
      let i = 0
      while ((i = lower.indexOf(lw, i)) >= 0) out.push([i, i + lw.length]), (i += lw.length)
    }
  } else if (textMode.kind === "prefix") {
    if (lower.startsWith(textMode.p.toLowerCase())) out.push([0, textMode.p.length])
  } else if (textMode.kind === "regex") {
    for (const m of textStr.matchAll(textMode.gre)) if (m[0]) out.push([m.index!, m.index! + m[0].length])
  }
  out.sort((a, b) => a[0] - b[0])
  const merged = [] as [number, number][]
  for (const r of out) {
    const last = merged[merged.length - 1]
    if (last && r[0] <= last[1]) last[1] = Math.max(last[1], r[1])
    else merged.push([...r])
  }
  return merged
}

const cmdChunks = (command: string, width: number, base: (s: string) => any) => {
  const textStr = command.replace(/\n/g, "\\n").slice(0, width)
  const chunks = []
  let i = 0
  for (const [s, e] of matchRanges(textStr)) {
    if (s > i) chunks.push(base(textStr.slice(i, s)))
    chunks.push(bold(fg(C.match)(textStr.slice(s, e))))
    i = e
  }
  if (i < textStr.length) chunks.push(base(textStr.slice(i)))
  return chunks
}

// --- renderer / layout --------------------------------------------------
// when stdout is captured by the shell, render the TUI on stderr (still the tty)
// so plain stdout stays clean for the selected command
const renderer = await createCliRenderer({
  exitOnCtrlC: false,
  useMouse: false,
  stdout: process.stdout.isTTY ? process.stdout : process.stderr,
})

const headerLeft = new TextRenderable(renderer, { id: "hl", position: "absolute", left: 1, top: 0 })
const headerRight = new TextRenderable(renderer, { id: "hr", position: "absolute", right: 1, top: 0 })
const tabs = new TextRenderable(renderer, { id: "tabs", position: "absolute", left: 2, top: 1 })
const inputLabel = new TextRenderable(renderer, { id: "inputLabel", position: "absolute", left: 1, bottom: 1 })
const input = new InputRenderable(renderer, {
  id: "input",
  position: "absolute",
  left: 20,
  bottom: 1,
  width: 60,
  backgroundColor: "transparent",
  focusedBackgroundColor: "transparent",
  textColor: "#FFFFFF",
  cursorColor: "#FFFFFF",
})
const preview = new TextRenderable(renderer, { id: "preview", position: "absolute", left: 1, bottom: 0 })
// help box spans top:2..top:12 (search 7 lines + keys 4 lines), 24 cols wide at right:1.
// list rows whose top falls inside that band get a shorter command so they never
// paint under the help box (the diff renderer garbles overlapping absolutes).
const HELP_WIDTH = 24
const HELP_ROWS = 11
const helpLeft = () => renderer.width - 1 - HELP_WIDTH
const help = new TextRenderable(renderer, {
  id: "help",
  position: "absolute",
  right: 1,
  top: 2,
  zIndex: 10,
  fg: C.dim,
  backgroundColor: "#0d1117",
  content: [
    "╭─ search ──────────────╮",
    "│ foo bar   words (AND) │",
    "│ ^foo      prefix      │",
    "│ /rege?x/  regexp      │",
    "│ anchor:d  go to date  │",
    "│ cwd:path  dir filter  │",
    "╰───────────────────────╯",
    "╭─ keys ────────────────╮",
    "│ alt-a     anchor here │",
    "│ alt-c     cwd filter  │",
    "╰───────────────────────╯",
  ].join("\n"),
})

headerLeft.content = t`${bold(fg(C.sel)("Atuhist v0.2.0"))}  ${fg(C.key)("<esc>")}${fg(C.dim)(": exit  ")}${fg(C.key)("<enter>")}${fg(C.dim)(": accept  ")}${fg(C.key)("<ctrl-r>")}${fg(C.dim)(": refresh  ")}${fg(C.key)("<alt-a>")}${fg(C.dim)(": anchor  ")}${fg(C.key)("<alt-c>")}${fg(C.dim)(": cwd")}`
tabs.content = t`${bold(fg("#FFFFFF")("Search"))} ${fg(C.dim)("│ Inspect")}`
inputLabel.content = t`${fg(C.cmd)("[     GLOBAL     ]")}`

renderer.root.add(headerLeft)
renderer.root.add(headerRight)
renderer.root.add(tabs)
renderer.root.add(inputLabel)
renderer.root.add(input)
renderer.root.add(preview)
renderer.root.add(help)
input.focus()

let listRows = [] as TextRenderable[]

const rebuildList = () => {
  input.width = Math.max(10, renderer.width - 21)
  for (const r of listRows) renderer.root.remove(r.id)
  const h = Math.max(1, renderer.height - 4)
  listRows = Array.from({ length: h }, (_, i) => {
    const row = new TextRenderable(renderer, { id: `row${i}`, position: "absolute", left: 0, top: 2 + i })
    renderer.root.add(row)
    return row
  })
}

const blankList = () => {
  // paint full-width spaces so the cells are actually cleared (empty content wouldn't repaint)
  const blank = " ".repeat(renderer.width)
  for (const r of listRows) r.content = blank
}

const render = () => {
  const h = listRows.length
  // while a modal prompt is open, keep the list area blank so the dialog paints clean
  if (modal) {
    blankList()
    return
  }
  if (rows.length) sel = Math.min(sel, rows.length - 1)
  // center-follow: keep sel inside the viewport
  if (sel < scrollTop) scrollTop = sel
  if (sel >= scrollTop + h) scrollTop = sel - h + 1
  // lazy load around the viewport (both directions)
  if (!exhaustedNew && baseOffset > 0 && scrollTop < Math.floor(PAGE / 2)) fetchMore("new")
  let guard = 0
  while (guard++ < 50 && !exhaustedOld && rows.length < scrollTop + h + Math.floor(PAGE / 2)) fetchMore("old")
  scrollTop = Math.min(scrollTop, Math.max(0, rows.length - h))

  const anchorLocal = anchorGlobalOffset != null ? anchorGlobalOffset - baseOffset : -1
  const globalCmdWidth = renderer.width - 22
  const helpCmdWidth = Math.max(10, helpLeft() - 21) // rows behind the help box stop before it
  for (let i = 0; i < h; i++) {
    const idx = scrollTop + (h - 1 - i) // bottom-anchored: newest at bottom
    const row = listRows[i]
    const item = rows[idx]
    if (!item) {
      row.content = " ".repeat(renderer.width)
      continue
    }
    const selected = idx === sel
    const isAnchor = idx === anchorLocal
    const cmdWidth = i < HELP_ROWS ? helpCmdWidth : globalCmdWidth
    const base = selected ? (s: string) => bold(fg(C.sel)(s)) : isAnchor ? (s: string) => fg(C.anchor)(s) : fg(C.cmd)
    // the ◆ anchor marker wins so the anchor point is always visible, even when selected
    const marker = isAnchor ? " ◆" : selected ? "  >" : idx > sel && idx <= sel + 9 ? String(idx - sel).padStart(3) : "   "
    const pad = Math.max(0, renderer.width - 20 - cmdWidth) // paint the whole line so repaints clear stale cells
    row.content = new StyledText([
      isAnchor ? fg(C.anchor)(marker) : selected ? bold(fg(C.sel)(marker)) : fg(C.cmd)(marker),
      fg(C.dur)(" " + fmtDuration(item.duration).padStart(5)),
      fg(C.ago)(" " + fmtAgo(item.timestamp).padStart(5) + " ago"),
      fg(C.cmd)(" "),
      ...cmdChunks(item.command, cmdWidth, base),
      fg(C.cmd)(" ".repeat(pad)),
    ])
  }

  // headerRight: active filter badges + count
  const badges = [] as any[]
  if (anchorTs != null) badges.push(fg(C.anchor)("⚓ " + isoNoMs(anchorTs) + "  "))
  if (cwdFilter) badges.push(fg(C.cwd)("▸ " + trunc(cwdFilter, 26) + "  "))
  badges.push(fg(C.dim)("n=" + (filteredCount ?? "…")))
  headerRight.content = new StyledText(badges)

  // preview: selected line's iso + cwd + full command
  const cur = rows[sel]
  if (cur) {
    const W = renderer.width
    const iso = isoNoMs(cur.timestamp)
    const cwdMax = Math.max(12, Math.floor((W - 26) / 2))
    const cwdS = trunc(cur.cwd, cwdMax)
    const cmdMax = Math.max(1, W - 2 - 19 - 1 - cwdS.length - 3)
    preview.content = t`${fg(C.dim)(iso)} ${fg(C.cwd)(cwdS)} ${fg(C.dim)("│")} ${fg(C.dim)(cur.command.replace(/\n/g, "\\n").slice(0, cmdMax))}`
  } else {
    preview.content = ""
  }
}

// --- modal prompt (alt-a / alt-c) ---------------------------------------
// Manual modal: the main input stays focused, but we preventDefault every key
// while open and route editing into `modal.value` ourselves. Avoids the focus /
// remove / paste races of a second InputRenderable.
type Modal = {
  frame: TextRenderable
  title: string
  hint: string
  value: string
  cursor: number
  error: boolean
  validate?: (v: string) => string | null
  onApply?: (v: string) => void
}
let modal: Modal | null = null

const drawModal = () => {
  if (!modal) return
  const W = Math.min(64, renderer.width - 2)
  const inner = W - 2
  const head = fillLine("─ " + modal.title + " ", inner, "─")
  const hint = modal.hint.length > inner - 2 ? modal.hint.slice(0, inner - 2) : modal.hint
  const maxv = inner - 2
  // value scrolled so the cursor stays visible; the char under the cursor is
  // highlighted (or a trailing '▏' when the cursor is past the end)
  let scroll = 0
  if (modal.cursor > maxv - 1) scroll = modal.cursor - (maxv - 1)
  const vis = modal.value.slice(scroll, scroll + maxv)
  const rel = modal.cursor - scroll
  const before = vis.slice(0, rel)
  const at = rel < vis.length ? vis[rel] : ""
  const after = rel < vis.length ? vis.slice(rel + 1) : ""
  const cursorCh = rel >= vis.length ? "▏" : ""
  modal.frame.fg = modal.error ? C.sel : C.dim
  modal.frame.content = new StyledText([
    fg(C.dim)(`╭${head}╮\n│ `),
    fg("#FFFFFF")(before),
    bold(fg(C.match)(at)),
    fg("#FFFFFF")(after + cursorCh),
    fg(C.dim)(" ".repeat(Math.max(0, maxv - vis.length - (cursorCh ? 1 : 0)))),
    fg(C.dim)(` │\n│ ${hint.padEnd(inner - 2)} │\n╰${"─".repeat(inner)}╯`),
  ])
}
const openPrompt = (opts: {
  title: string
  hint: string
  value: string
  validate?: (v: string) => string | null
  onApply?: (v: string) => void
}) => {
  blankList()
  const W = Math.min(64, renderer.width - 2)
  const left = Math.floor((renderer.width - W) / 2)
  const top = Math.floor((renderer.height - 4) / 2)
  const frame = new TextRenderable(renderer, {
    id: "modalFrame",
    position: "absolute",
    left,
    top,
    zIndex: 50,
    fg: C.dim,
    backgroundColor: "#0d1117",
  })
  renderer.root.add(frame)
  modal = {
    frame,
    title: opts.title,
    hint: opts.hint,
    value: opts.value,
    cursor: opts.value.length,
    error: false,
    validate: opts.validate,
    onApply: opts.onApply,
  }
  drawModal()
}

const closePrompt = (v: string | null) => {
  const m = modal
  modal = null
  if (!m) return
  renderer.root.remove(m.frame.id)
  // repaint first (full-width rows clear the modal's stale cells), then keep focus on main
  if (v != null) m.onApply?.(v)
  else render()
}

const modalType = (ch: string) => {
  if (!modal) return
  modal.value = modal.value.slice(0, modal.cursor) + ch + modal.value.slice(modal.cursor)
  modal.cursor++
  modal.error = false
  drawModal()
}

const openAnchorModal = () => {
  const cur = rows[sel]
  const def = cur ? isoNoMs(cur.timestamp) : isoNoMs(Date.now() * 1e6)
  openPrompt({
    title: "anchor — jump to date",
    hint: "yyyy-mm-dd  or  yyyy-mm-ddThh:mm[:ss]   ⏎ apply   esc cancel",
    value: def,
    validate: (s) => (parseDateToMs(s) == null ? "invalid date — use yyyy-mm-dd or yyyy-mm-ddThh:mm[:ss]" : null),
    onApply: (v) => {
      process.env.AH_DEBUG && Bun.write("/tmp/ah/k.log", `APPLY in=${JSON.stringify(input.value)} v=${v} -> q=${JSON.stringify(setToken(input.value, "anchor", v))}\n`, {append:true}).catch(()=>{});
      query = setToken(input.value, "anchor", v)
      input.value = query
      resetSearch()
      render()
    },
  })
}

const openCwdModal = () => {
  const cur = rows[sel]
  const def = cur ? cur.cwd : process.cwd()
  openPrompt({
    title: "cwd filter — dir + subdirectories",
    hint: "path   ( ~ and ./.. resolved, symlinks followed )   ⏎ apply   esc cancel",
    value: def,
    validate: (s) => (s.trim() === "" ? "enter a path" : null),
    onApply: (v) => {
      query = setToken(input.value, "cwd", resolveCwd(v))
      input.value = query
      resetSearch()
      render()
    },
  })
}

// --- accept / keys ------------------------------------------------------
const accept = (cmd?: string) => {
  if (modal) {
    closePrompt(null)
    return
  }
  renderer.destroy()
  if (cmd) process.stdout.write(cmd + "\n")
  process.exit(0)
}

renderer.keyInput.on("keypress", (key) => {
  if (modal) {
    key.preventDefault() // keep the (focused) main input untouched while the modal is open
    if (key.name === "escape") return closePrompt(null)
    if (key.name === "return") {
      const v = modal.value
      const err = modal.validate?.(v) ?? null
      if (err) {
        modal.hint = err
        modal.error = true
        drawModal()
        return
      }
      return closePrompt(v)
    }
    if (key.name === "backspace") {
      if (modal.cursor > 0) {
        modal.value = modal.value.slice(0, modal.cursor - 1) + modal.value.slice(modal.cursor)
        modal.cursor--
        modal.error = false
        drawModal()
      }
      return
    }
    if (key.name === "delete") {
      if (modal.cursor < modal.value.length) {
        modal.value = modal.value.slice(0, modal.cursor) + modal.value.slice(modal.cursor + 1)
        modal.error = false
        drawModal()
      }
      return
    }
    if (key.ctrl && key.name === "u") {
      modal.value = ""
      modal.cursor = 0
      modal.error = false
      drawModal()
      return
    }
    if (key.name === "left") {
      modal.cursor = Math.max(0, modal.cursor - 1)
      drawModal()
      return
    }
    if (key.name === "right") {
      modal.cursor = Math.min(modal.value.length, modal.cursor + 1)
      drawModal()
      return
    }
    if (key.name === "home" || (key.ctrl && key.name === "a")) {
      modal.cursor = 0
      drawModal()
      return
    }
    if (key.name === "end" || (key.ctrl && key.name === "e")) {
      modal.cursor = modal.value.length
      drawModal()
      return
    }
    // printable char
    if (!key.ctrl && !key.meta && key.sequence && key.sequence.length === 1 && / [ -~]/.test(" " + key.sequence)) {
      modalType(key.sequence)
    }
    return
  }
  const h = listRows.length
  if (key.name === "escape" || (key.ctrl && (key.name === "c" || key.name === "d"))) return accept()
  if (key.name === "return") return accept(rows[sel]?.command)
  if (key.meta && key.name === "a") return openAnchorModal()
  if (key.meta && key.name === "c") return openCwdModal()
  if (key.meta && /^[1-9]$/.test(key.name)) {
    const target = sel + Number(key.name)
    if (rows[target]) return accept(rows[target].command)
    return
  }
  if (key.name === "up" || (key.ctrl && key.name === "p")) sel = Math.min(sel + 1, Math.max(0, rows.length - 1))
  else if (key.name === "down" || (key.ctrl && key.name === "n")) sel = Math.max(sel - 1, 0)
  else if (key.name === "pageup") sel = Math.min(sel + h, Math.max(0, rows.length - 1))
  else if (key.name === "pagedown") sel = Math.max(sel - h, 0)
  else if (key.ctrl && key.name === "u") (input.value = ""), (query = ""), resetSearch()
  else if (key.ctrl && key.name === "w") {
    input.value = input.value.replace(/\S*\s*$/, "")
    query = input.value
    resetSearch()
  } else if (key.ctrl && key.name === "r") {
    resetSearch()
  } else return
  render()
})

input.on(InputRenderableEvents.INPUT, (value) => {
  if (value === query) return
  query = value
  resetSearch()
  render()
})

// pasted text (or fast multi-char input) lands here; route it into the focused
// field and run the search. preventDefault stops the focused input from also
// inserting (global listeners run before renderable handlers in OpenTUI).
const pasteDecoder = new TextDecoder()
renderer.keyInput.on("paste", (event) => {
  const text = pasteDecoder.decode(event.bytes)
  event.preventDefault()
  if (modal) {
    modal.value += text
    modal.cursor = modal.value.length
    drawModal()
    return
  }
  input.insertText(text)
  query = input.value
  resetSearch()
  render()
})

renderer.on("resize", () => {
  rebuildList()
  render()
})

// --- boot ---------------------------------------------------------------
let initialQuery = process.env.ATUHIST_QUERY ?? ""
for (const a of process.argv.slice(2)) {
  if (a.startsWith("--anchor=")) initialQuery = setToken(initialQuery, "anchor", a.slice(9))
  else if (a.startsWith("--cwd=")) initialQuery = setToken(initialQuery, "cwd", resolveCwd(a.slice(6)))
}
query = initialQuery
input.value = query

rebuildList()
resetSearch()
render()
