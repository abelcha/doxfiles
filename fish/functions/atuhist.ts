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
} from "@opentui/core"

const DB_PATH = process.env.ATUIN_DB ?? "/Volumes/mods/data/atuin/history.db"
const PAGE = 300

const C = {
  dur: "#98C379",
  ago: "#61AFEF",
  cmd: "#DCDFE4",
  match: "#FFD75F",
  sel: "#E06C75",
  dim: "#6E7686",
  key: "#9DA5B4",
  anchor: "#C678DD",
  cwd: "#7AA2F7",
}

type Row = { timestamp: number; duration: number; command: string; cwd: string }

const db = new Database(DB_PATH, { readonly: true })
db.run("PRAGMA mmap_size=268435456")
const COLS = "timestamp, duration, command, cwd"

const trunc = (s: string, n: number) => (s.length <= n ? s : "…" + s.slice(-(n - 1)))
const fill = (s: string, w: number, pad: string) => (s.length >= w ? s.slice(0, w) : s + pad.repeat(w - s.length))
const isoNoMs = (tsNs: number) => new Date(tsNs / 1e6).toISOString().slice(0, 19)

// ── query state ─────────────────────────────────────────────────────────
// The search box is the single source of truth; `anchor:` / `cwd:` tokens are
// parsed out of it and the remainder is the text query.
let query = ""
let anchorTs: number | null = null // position to centre on (not a filter)
let anchorRow: Row | null = null // the row closest to anchorTs, marked in the list
let cwdFilter: string | null = null

// Rows are a plain page starting at `offset` in the filtered DESC stream.
// Paging is explicit (no lazy growth), so a keystroke costs exactly one query.
let rows: Row[] = []
let offset = 0
let sel = 0
let total: number | null = null // null while the count is still pending

type Mode =
  | { kind: "regex"; re: string; gre: RegExp }
  | { kind: "prefix"; p: string }
  | { kind: "words"; words: string[] }
  | { kind: "all" }

const parseMode = (q: string): Mode => {
  if (q.length > 2 && q.startsWith("/") && q.endsWith("/")) {
    const src = q.slice(1, -1)
    try {
      return { kind: "regex", re: src, gre: new RegExp(src, "gi") }
    } catch {
      /* incomplete regex while typing — fall through to word search */
    }
  }
  if (q.startsWith("^") && q.length > 1) return { kind: "prefix", p: q.slice(1) }
  const words = q.trim().split(/\s+/).filter(Boolean)
  return words.length ? { kind: "words", words } : { kind: "all" }
}
let mode: Mode = parseMode("")

const resolveCwd = (v: string) => {
  const p = resolve(v.trim().replace(/^~(?=$|\/|\\)/, homedir()))
  try {
    return realpathSync(p)
  } catch {
    return p // historical dirs may no longer exist — keep the literal
  }
}

// date-only strings anchor to local midnight; anything else goes through Date
const parseDate = (s: string): number | null => {
  const v = s.trim()
  const d = new Date(/^\d{4}-\d{2}-\d{2}$/.test(v) ? v + "T00:00:00" : v)
  return isNaN(+d) ? null : +d
}

const setToken = (str: string, prefix: string, value: string | null) => {
  const out = str.replace(new RegExp(`(^|\\s)${prefix}:\\S+`, "g"), "").trim()
  return value == null ? out : (out ? out + " " : "") + `${prefix}:${value}`
}

const parseQuery = () => {
  const a = query.match(/(?:^|\s)anchor:(\S+)/)
  const ms = a ? parseDate(a[1]) : null
  anchorTs = ms == null ? null : ms * 1e6

  const c = query.match(/(?:^|\s)cwd:(\S+)/)
  cwdFilter = c ? resolveCwd(c[1]) : null

  mode = parseMode(query.replace(/(?:^|\s)(anchor|cwd):\S+/g, "").trim())
}

// Word/prefix/cwd filters run in SQL. bun:sqlite has no custom-function hook,
// so regex is matched in JS — but only over REGEX_SCAN newest rows, which keeps
// it bounded (~60ms) instead of walking the whole table.
const REGEX_SCAN = 150000

const where = () => {
  const cl: string[] = []
  const p: (string | number)[] = []
  if (mode.kind === "prefix") {
    cl.push("command GLOB ?")
    p.push(mode.p.replace(/[*?[\]]/g, "[$&]") + "*")
  } else if (mode.kind === "words") {
    for (const w of mode.words) {
      cl.push("instr(lower(command), lower(?)) > 0")
      p.push(w)
    }
  }
  if (cwdFilter) {
    cl.push("(cwd = ? OR cwd LIKE ? || '/%')")
    p.push(cwdFilter, cwdFilter)
  }
  return { sql: cl.length ? " WHERE " + cl.join(" AND ") : "", params: p }
}

// regex results are computed once per query and then paged from memory
let regexHits: Row[] | null = null
const runRegex = () => {
  if (mode.kind !== "regex") return (regexHits = null), undefined
  let re: RegExp
  try {
    re = new RegExp(mode.re, "i")
  } catch {
    return (regexHits = []), undefined
  }
  const { sql, params } = where()
  const cand = db
    .query(`SELECT ${COLS} FROM history${sql} ORDER BY timestamp DESC LIMIT ?`)
    .all(...params, REGEX_SCAN) as Row[]
  regexHits = cand.filter((r) => re.test(r.command))
}

const fetchPage = () => {
  if (mode.kind === "regex") {
    if (!regexHits) runRegex()
    rows = regexHits!.slice(offset, offset + PAGE)
    return
  }
  const { sql, params } = where()
  rows = db
    .query(`SELECT ${COLS} FROM history${sql} ORDER BY timestamp DESC LIMIT ? OFFSET ?`)
    .all(...params, PAGE, offset) as Row[]
}

// The count is the one genuinely expensive query (50-400ms) and it only feeds
// the `n=` badge — so it runs after a pause and is superseded by newer input.
let countTimer: Timer | null = null
let countSeq = 0
const scheduleCount = () => {
  total = null
  if (countTimer) clearTimeout(countTimer)
  const seq = ++countSeq
  countTimer = setTimeout(() => {
    if (mode.kind === "regex") {
      total = regexHits?.length ?? 0
      return render()
    }
    const { sql, params } = where()
    const r = db.query(`SELECT count(*) c FROM history${sql}`).get(...params) as { c: number }
    if (seq !== countSeq) return // a newer query started; drop this result
    total = r.c
    render()
  }, 120)
}

// Anchoring = "how many matching rows are newer than this date" → that rank is
// the offset, so the jump is one COUNT plus one page, at any depth.
const anchorJump = () => {
  if (anchorTs == null) return
  const h = listRows.length || 1
  if (mode.kind === "regex") {
    if (!regexHits) runRegex()
    let n = regexHits!.findIndex((r) => r.timestamp <= anchorTs!)
    if (n < 0) n = regexHits!.length
    offset = Math.max(0, n - Math.floor(h / 2))
  } else {
    const { sql, params } = where()
    const w = sql ? sql + " AND timestamp > ?" : " WHERE timestamp > ?"
    const newer = (db.query(`SELECT count(*) c FROM history${w}`).get(...params, anchorTs) as { c: number }).c
    offset = Math.max(0, newer - Math.floor(h / 2))
  }
  fetchPage()
  // mark the row nearest the anchor so the target is visible
  let best = -1
  let bd = Infinity
  for (let i = 0; i < rows.length; i++) {
    const d = Math.abs(rows[i].timestamp - anchorTs)
    if (d < bd) ((bd = d), (best = i))
  }
  anchorRow = best >= 0 ? rows[best] : null
  sel = Math.max(0, best)
}

const search = () => {
  parseQuery()
  offset = 0
  sel = 0
  anchorRow = null
  regexHits = null
  if (anchorTs != null) anchorJump()
  else fetchPage()
  scheduleCount()
}

// A selective search costs ~160ms (SQLite must scan the table for a rare term),
// so running one per keystroke is what made typing feel frozen. Debouncing runs
// a single query per typing burst instead of one per character.
let searchTimer: Timer | null = null
const searchSoon = () => {
  if (searchTimer) clearTimeout(searchTimer)
  searchTimer = setTimeout(() => {
    searchTimer = null
    search()
    render()
  }, 90)
}

// ── formatting ──────────────────────────────────────────────────────────
const unit = (ms: number) => {
  if (ms < 1) return "0s"
  if (ms < 1000) return `${Math.round(ms)}ms`
  const s = ms / 1000
  if (s < 60) return `${Math.round(s)}s`
  if (s < 3600) return `${Math.round(s / 60)}m`
  if (s < 86400) return `${Math.round(s / 3600)}h`
  return `${Math.round(s / 86400)}d`
}
const fmtDuration = (ns: number) => unit(ns / 1e6)

// ago gets coarser units than duration: at this scale "412d" is harder to read
// than "14mo", and a command's runtime never wants months.
const fmtAgo = (tsNs: number) => {
  const d = (Date.now() - tsNs / 1e6) / 86400000
  if (d < 1) return unit(Date.now() - tsNs / 1e6)
  if (d < 7) return `${Math.round(d)}d`
  if (d < 60) return `${Math.round(d / 7)}w`
  if (d < 365) return `${Math.round(d / 30.44)}mo`
  const y = d / 365.25
  return y < 10 ? `${y.toFixed(1)}y` : `${Math.round(y)}y`
}

const matchRanges = (s: string) => {
  const out: [number, number][] = []
  const lower = s.toLowerCase()
  if (mode.kind === "words") {
    for (const w of mode.words) {
      const lw = w.toLowerCase()
      let i = 0
      while ((i = lower.indexOf(lw, i)) >= 0) out.push([i, i + lw.length]), (i += lw.length)
    }
  } else if (mode.kind === "prefix") {
    if (lower.startsWith(mode.p.toLowerCase())) out.push([0, mode.p.length])
  } else if (mode.kind === "regex") {
    mode.gre.lastIndex = 0
    for (const m of s.matchAll(mode.gre)) if (m[0]) out.push([m.index!, m.index! + m[0].length])
  }
  out.sort((a, b) => a[0] - b[0])
  const merged: [number, number][] = []
  for (const r of out) {
    const last = merged[merged.length - 1]
    if (last && r[0] <= last[1]) last[1] = Math.max(last[1], r[1])
    else merged.push([...r])
  }
  return merged
}

const cmdChunks = (command: string, width: number, base: (s: string) => any) => {
  const s = command.replace(/\n/g, "\\n").slice(0, width)
  const chunks = []
  let i = 0
  for (const [a, b] of matchRanges(s)) {
    if (a > i) chunks.push(base(s.slice(i, a)))
    chunks.push(bold(fg(C.match)(s.slice(a, b))))
    i = b
  }
  if (i < s.length) chunks.push(base(s.slice(i)))
  return chunks
}

// ── renderer ────────────────────────────────────────────────────────────
// Render on stderr when stdout is captured by the shell, so the selected
// command is the only thing on stdout.
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

// derived, not hardcoded: a stale width lets list rows paint over the border
const HELP_LINES = [
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
]
const HELP_WIDTH = Math.max(...HELP_LINES.map((l) => l.length))
const HELP_ROWS = HELP_LINES.length
const helpLeft = () => renderer.width - 1 - HELP_WIDTH
const help = new TextRenderable(renderer, {
  id: "help",
  position: "absolute",
  right: 1,
  top: 2,
  zIndex: 10,
  fg: C.dim,
  backgroundColor: "#0d1117",
  content: HELP_LINES.join("\n"),
})

// the hint list is dropped a tier at a time as the right-hand badges grow, so
// the two absolutely-positioned blocks never paint over each other
const HINTS: [string, string][] = [
  ["<esc>", ": exit  "],
  ["<enter>", ": accept  "],
  ["<alt-a>", ": anchor  "],
  ["<alt-c>", ": cwd"],
]
const drawHeaderLeft = (budget: number) => {
  const title = "Atuhist v0.3.0"
  const parts: any[] = [bold(fg(C.sel)(title)), fg(C.dim)("  ")]
  let w = title.length + 2
  for (const [k, d] of HINTS) {
    if (w + k.length + d.length > budget) break
    parts.push(fg(C.key)(k), fg(C.dim)(d))
    w += k.length + d.length
  }
  headerLeft.content = new StyledText(parts)
}
tabs.content = t`${bold(fg("#FFFFFF")("Search"))} ${fg(C.dim)("│ Inspect")}`
inputLabel.content = t`${fg(C.cmd)("[     GLOBAL     ]")}`

for (const r of [headerLeft, headerRight, tabs, inputLabel, input, preview, help]) renderer.root.add(r)
input.focus()

let listRows: TextRenderable[] = []

const rebuildList = () => {
  input.width = Math.max(10, renderer.width - 21)
  for (const r of listRows) renderer.root.remove(r)
  const h = Math.max(1, renderer.height - 4)
  listRows = Array.from({ length: h }, (_, i) => {
    const row = new TextRenderable(renderer, { id: `row${i}`, position: "absolute", left: 0, top: 2 + i })
    renderer.root.add(row)
    return row
  })
}

const blankList = () => {
  const blank = " ".repeat(renderer.width)
  for (const r of listRows) r.content = blank
}

// Scrolling past either edge of the page re-queries at a new offset, so the
// window slides without ever accumulating rows in memory.
const scrollBy = (n: number) => {
  const h = listRows.length
  sel += n
  if (sel < 0) {
    if (offset === 0) return (sel = 0), undefined
    const shift = Math.min(offset, Math.max(-sel, h))
    offset -= shift
    sel += shift
    fetchPage()
  } else if (sel >= rows.length) {
    if (rows.length < PAGE) return (sel = Math.max(0, rows.length - 1)), undefined
    const shift = Math.min(sel - rows.length + 1 + h, PAGE)
    offset += shift
    sel -= shift
    fetchPage()
    if (!rows.length) {
      offset = Math.max(0, offset - shift)
      fetchPage()
      sel = Math.max(0, rows.length - 1)
    } else sel = Math.max(0, Math.min(sel, rows.length - 1))
  }
}

const render = () => {
  const h = listRows.length
  if (modal) return blankList()
  if (rows.length) sel = Math.min(sel, rows.length - 1)

  // keep sel inside the visible slice of the page
  let top = Math.max(0, Math.min(sel - Math.floor(h / 2), rows.length - h))
  if (rows.length <= h) top = 0
  if (sel < top) top = sel
  if (sel >= top + h) top = sel - h + 1

  // anchor mode shows absolute timestamps — the point is to read the context
  // around a moment, and "204d ago" on every row doesn't tell you that.
  const anchored = anchorTs != null
  const stampW = anchored ? 20 : 10 // " yyyy-mm-ddThh:mm:ss" vs "  204d ago"
  const globalW = renderer.width - 12 - stampW
  const helpW = Math.max(10, helpLeft() - 11 - stampW)
  for (let i = 0; i < h; i++) {
    const idx = top + (h - 1 - i) // newest at the bottom
    const row = listRows[i]
    const item = rows[idx]
    if (!item) {
      row.content = " ".repeat(renderer.width)
      continue
    }
    const selected = idx === sel
    const isAnchor = anchorRow != null && item === anchorRow
    const w = i < HELP_ROWS ? helpW : globalW
    const base = selected ? (s: string) => bold(fg(C.sel)(s)) : isAnchor ? (s: string) => fg(C.anchor)(s) : fg(C.cmd)
    const marker = isAnchor ? " ◆" : selected ? "  >" : idx > sel && idx <= sel + 9 ? String(idx - sel).padStart(3) : "   "
    const pad = Math.max(0, renderer.width - 10 - stampW - w)
    row.content = new StyledText([
      isAnchor ? fg(C.anchor)(marker) : selected ? bold(fg(C.sel)(marker)) : fg(C.cmd)(marker),
      fg(C.dur)(" " + fmtDuration(item.duration).padStart(5)),
      fg(C.ago)(anchored ? " " + isoNoMs(item.timestamp) : " " + fmtAgo(item.timestamp).padStart(5) + " ago"),
      fg(C.cmd)(" "),
      ...cmdChunks(item.command, w, base),
      fg(C.cmd)(" ".repeat(pad)),
    ])
  }

  const badges: any[] = []
  let bw = 0
  const badge = (s: string, color: string) => (badges.push(fg(color)(s)), (bw += s.length))
  // markers must be single-width: a wide glyph (⚓) makes .length under-count the
  // painted columns and the right-aligned block leaves stale cells behind
  if (anchorTs != null) badge("◆ " + isoNoMs(anchorTs) + "  ", C.anchor)
  if (cwdFilter) badge("▸ " + trunc(cwdFilter, 26) + "  ", C.cwd)
  badge("n=" + (total ?? "…"), C.dim)
  headerRight.content = new StyledText(badges)
  drawHeaderLeft(renderer.width - bw - 3)

  const cur = rows[sel]
  if (cur) {
    const W = renderer.width
    const cwdMax = Math.max(12, Math.floor((W - 26) / 2))
    const cwdS = trunc(cur.cwd, cwdMax)
    const cmdMax = Math.max(1, W - 2 - 19 - 1 - cwdS.length - 3)
    preview.content = t`${fg(C.dim)(isoNoMs(cur.timestamp))} ${fg(C.cwd)(cwdS)} ${fg(C.dim)("│")} ${fg(C.dim)(cur.command.replace(/\n/g, "\\n").slice(0, cmdMax))}`
  } else preview.content = ""
}

// ── modal ───────────────────────────────────────────────────────────────
// The main input keeps focus and every key is intercepted while a modal is
// open — a second InputRenderable would fight it for focus and paste events.
type Modal = {
  frame: TextRenderable
  title: string
  hint: string
  value: string
  cursor: number
  error: boolean
  validate?: (v: string) => string | null
  apply: (v: string) => void
}
let modal: Modal | null = null

const drawModal = () => {
  if (!modal) return
  const W = Math.min(64, renderer.width - 2)
  const inner = W - 2
  const maxv = inner - 2
  const scroll = Math.max(0, modal.cursor - (maxv - 1))
  const vis = modal.value.slice(scroll, scroll + maxv)
  const rel = modal.cursor - scroll
  const at = rel < vis.length ? vis[rel] : ""
  const tail = rel < vis.length ? vis.slice(rel + 1) : ""
  const caret = rel >= vis.length ? "▏" : ""
  modal.frame.fg = modal.error ? C.sel : C.dim
  modal.frame.content = new StyledText([
    fg(C.dim)(`╭${fill("─ " + modal.title + " ", inner, "─")}╮\n│ `),
    fg("#FFFFFF")(vis.slice(0, rel)),
    bold(fg(C.match)(at)),
    fg("#FFFFFF")(tail + caret),
    fg(C.dim)(" ".repeat(Math.max(0, maxv - vis.length - (caret ? 1 : 0)))),
    fg(C.dim)(` │\n│ ${modal.hint.slice(0, inner - 2).padEnd(inner - 2)} │\n╰${"─".repeat(inner)}╯`),
  ])
}

const openPrompt = (o: Omit<Modal, "frame" | "cursor" | "error">) => {
  blankList()
  const W = Math.min(64, renderer.width - 2)
  const frame = new TextRenderable(renderer, {
    id: "modalFrame",
    position: "absolute",
    left: Math.floor((renderer.width - W) / 2),
    top: Math.floor((renderer.height - 4) / 2),
    zIndex: 50,
    fg: C.dim,
    backgroundColor: "#0d1117",
  })
  renderer.root.add(frame)
  modal = { ...o, frame, cursor: o.value.length, error: false }
  drawModal()
}

const closePrompt = (v: string | null) => {
  const m = modal
  modal = null
  if (!m) return
  renderer.root.remove(m.frame) // must be the renderable itself — an id string throws
  if (v != null) {
    if (searchTimer) clearTimeout(searchTimer), (searchTimer = null) // drop a pending debounce; apply() re-searches
    m.apply(v)
  }
  render()
}

const openAnchor = () => {
  const cur = rows[sel]
  openPrompt({
    title: "anchor — jump to date",
    hint: "yyyy-mm-dd  or  yyyy-mm-ddThh:mm[:ss]   ⏎ apply   esc cancel",
    value: isoNoMs(cur ? cur.timestamp : Date.now() * 1e6),
    validate: (s) => (parseDate(s) == null ? "invalid date — use yyyy-mm-dd or yyyy-mm-ddThh:mm[:ss]" : null),
    apply: (v) => {
      query = setToken(input.value, "anchor", v)
      input.value = query
      search()
    },
  })
}

const openCwd = () => {
  const cur = rows[sel]
  openPrompt({
    title: "cwd filter — dir + subdirectories",
    hint: "path   ( ~ and ./.. resolved, symlinks followed )   ⏎ apply   esc cancel",
    value: cur ? cur.cwd : process.cwd(),
    validate: (s) => (s.trim() === "" ? "enter a path" : null),
    apply: (v) => {
      query = setToken(input.value, "cwd", resolveCwd(v))
      input.value = query
      search()
    },
  })
}

// ── keys ────────────────────────────────────────────────────────────────
const accept = (cmd?: string) => {
  renderer.destroy()
  if (cmd) process.stdout.write(cmd + "\n")
  process.exit(0)
}

const modalKey = (key: any) => {
  const m = modal!
  key.preventDefault() // the main input stays focused but must not receive these
  if (key.name === "escape") return closePrompt(null)
  if (key.name === "return") {
    const err = m.validate?.(m.value) ?? null
    if (err) {
      m.hint = err
      m.error = true
      return drawModal()
    }
    return closePrompt(m.value)
  }
  if (key.name === "backspace") {
    if (m.cursor > 0) {
      m.value = m.value.slice(0, m.cursor - 1) + m.value.slice(m.cursor)
      m.cursor--
      m.error = false
    }
  } else if (key.name === "delete") {
    m.value = m.value.slice(0, m.cursor) + m.value.slice(m.cursor + 1)
    m.error = false
  } else if (key.ctrl && key.name === "u") {
    m.value = ""
    m.cursor = 0
    m.error = false
  } else if (key.name === "left") m.cursor = Math.max(0, m.cursor - 1)
  else if (key.name === "right") m.cursor = Math.min(m.value.length, m.cursor + 1)
  else if (key.name === "home" || (key.ctrl && key.name === "a")) m.cursor = 0
  else if (key.name === "end" || (key.ctrl && key.name === "e")) m.cursor = m.value.length
  else if (!key.ctrl && !key.meta && key.sequence?.length === 1 && key.sequence >= " " && key.sequence <= "~") {
    m.value = m.value.slice(0, m.cursor) + key.sequence + m.value.slice(m.cursor)
    m.cursor++
    m.error = false
  } else return
  drawModal()
}

renderer.keyInput.on("keypress", (key) => {
  if (modal) return modalKey(key)
  const h = listRows.length
  if (key.name === "escape" || (key.ctrl && (key.name === "c" || key.name === "d"))) return accept()
  if (key.name === "return") return accept(rows[sel]?.command)
  if (key.meta && key.name === "a") return openAnchor()
  if (key.meta && key.name === "c") return openCwd()
  if (key.meta && /^[1-9]$/.test(key.name)) {
    const target = rows[sel + Number(key.name)]
    return target ? accept(target.command) : undefined
  }
  if (key.name === "up" || (key.ctrl && key.name === "p")) scrollBy(1)
  else if (key.name === "down" || (key.ctrl && key.name === "n")) scrollBy(-1)
  else if (key.name === "pageup") scrollBy(h)
  else if (key.name === "pagedown") scrollBy(-h)
  else if (key.ctrl && key.name === "u") ((input.value = ""), (query = ""), search())
  else if (key.ctrl && key.name === "w") {
    input.value = input.value.replace(/\S*\s*$/, "")
    query = input.value
    searchSoon()
  } else if (key.ctrl && key.name === "r") search()
  else return
  render()
})

input.on(InputRenderableEvents.INPUT, (value) => {
  if (value === query) return
  query = value
  searchSoon()
})

const decoder = new TextDecoder()
renderer.keyInput.on("paste", (event) => {
  const text = decoder.decode(event.bytes)
  event.preventDefault()
  if (modal) {
    modal.value = modal.value.slice(0, modal.cursor) + text + modal.value.slice(modal.cursor)
    modal.cursor += text.length
    return drawModal()
  }
  input.insertText(text)
  query = input.value
  search()
  render()
})

renderer.on("resize", () => {
  rebuildList()
  render()
})

// ── boot ────────────────────────────────────────────────────────────────
let initial = process.env.ATUHIST_QUERY ?? ""
for (const a of process.argv.slice(2)) {
  if (a.startsWith("--anchor=")) initial = setToken(initial, "anchor", a.slice(9))
  else if (a.startsWith("--cwd=")) initial = setToken(initial, "cwd", resolveCwd(a.slice(6)))
}
query = initial
input.value = query

rebuildList()
search()
render()
