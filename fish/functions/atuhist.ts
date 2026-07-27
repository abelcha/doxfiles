#!/usr/bin/env -S bun run --install=force
import { Database } from "bun:sqlite"
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

const C = {
  dur: "#98C379",
  ago: "#61AFEF",
  cmd: "#DCDFE4",
  match: "#FFD75F",
  sel: "#E06C75",
  dim: "#6E7686",
  key: "#9DA5B4",
}

const db = new Database(DB_PATH, { readonly: true })
const SELECT = "SELECT timestamp, duration, command FROM history"
const qAll = db.query(`${SELECT} ORDER BY timestamp DESC LIMIT ?1 OFFSET ?2`)

let query = ""
let rows = [] as { timestamp: number; duration: number; command: string }[]
let exhausted = false
let sel = 0
let scrollTop = 0
let scanOffset = 0
let totalCount = 0

const escLike = (s: string) => s.replace(/[\\%_]/g, (c) => "\\" + c)

// query modes: words (AND, vscode-style) | ^prefix | /regex/
const parseMode = () => {
  if (query.length > 2 && query.startsWith("/") && query.endsWith("/")) {
    try {
      const src = query.slice(1, -1)
      return { kind: "regex" as const, re: new RegExp(src, "i"), gre: new RegExp(src, "gi") }
    } catch {}
  }
  if (query.startsWith("^") && query.length > 1) return { kind: "prefix" as const, p: query.slice(1) }
  const words = query.trim().split(/\s+/).filter(Boolean)
  return words.length ? { kind: "words" as const, words } : { kind: "all" as const }
}
let mode = parseMode()

const SCAN = 5000 // raw rows per batch when regex-filtering in JS
const fetchMore = () => {
  if (exhausted) return
  if (mode.kind === "regex") {
    let added = 0
    while (added < PAGE && !exhausted) {
      const batch = qAll.all(SCAN, scanOffset) as typeof rows
      scanOffset += batch.length
      if (batch.length < SCAN) exhausted = true
      for (const r of batch) if (mode.re.test(r.command)) rows.push(r), added++
    }
    return
  }
  let where = ""
  const params = [] as string[]
  if (mode.kind === "prefix") {
    where = " WHERE command LIKE ? ESCAPE '\\'"
    params.push(escLike(mode.p) + "%")
  } else if (mode.kind === "words") {
    where = " WHERE " + mode.words.map(() => "command LIKE '%' || ? || '%' ESCAPE '\\'").join(" AND ")
    params.push(...mode.words)
  }
  const page = db
    .query(`${SELECT}${where} ORDER BY timestamp DESC LIMIT ? OFFSET ?`)
    .all(...params, PAGE, rows.length) as typeof rows
  rows.push(...page)
  if (page.length < PAGE) exhausted = true
}

const resetSearch = () => {
  mode = parseMode()
  rows = []
  exhausted = false
  sel = 0
  scrollTop = 0
  scanOffset = 0
  fetchMore()
}

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

// merged [start, end) match ranges for the current mode
const matchRanges = (text: string) => {
  const out = [] as [number, number][]
  const lower = text.toLowerCase()
  if (mode.kind === "words") {
    for (const w of mode.words) {
      const lw = w.toLowerCase()
      let i = 0
      while ((i = lower.indexOf(lw, i)) >= 0) out.push([i, i + lw.length]), (i += lw.length)
    }
  } else if (mode.kind === "prefix") {
    if (lower.startsWith(mode.p.toLowerCase())) out.push([0, mode.p.length])
  } else if (mode.kind === "regex") {
    for (const m of text.matchAll(mode.gre)) if (m[0]) out.push([m.index, m.index + m[0].length])
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

const cmdChunks = (command: string, width: number, selected: boolean) => {
  const text = command.replace(/\n/g, "\\n").slice(0, width)
  const base = selected ? (s: string) => bold(fg(C.sel)(s)) : fg(C.cmd)
  const chunks = []
  let i = 0
  for (const [s, e] of matchRanges(text)) {
    if (s > i) chunks.push(base(text.slice(i, s)))
    chunks.push(bold(fg(C.match)(text.slice(s, e))))
    i = e
  }
  if (i < text.length) chunks.push(base(text.slice(i)))
  return chunks
}

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
const help = new TextRenderable(renderer, {
  id: "help",
  position: "absolute",
  right: 1,
  top: 2,
  zIndex: 10,
  fg: C.dim,
  content: [
    "╭─ search ──────────────╮",
    "│ foo bar   words (AND) │",
    "│ ^foo      prefix      │",
    "│ /rege?x/  regexp      │",
    "╰───────────────────────╯",
  ].join("\n"),
})

headerLeft.content = t`${bold(fg(C.sel)("Atuhist v0.1.0"))}       ${fg(C.key)("<esc>")}${fg(C.dim)(": exit, ")}${fg(C.key)("<enter>")}${fg(C.dim)(": accept, ")}${fg(C.key)("<ctrl-r>")}${fg(C.dim)(": refresh")}`
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

const render = () => {
  const h = listRows.length
  if (sel < scrollTop) scrollTop = sel
  if (sel >= scrollTop + h) scrollTop = sel - h + 1
  if (rows.length < scrollTop + h + PAGE / 2) fetchMore()

  const cmdWidth = renderer.width - 22
  for (let i = 0; i < h; i++) {
    const idx = scrollTop + (h - 1 - i) // bottom-anchored: newest at bottom
    const row = listRows[i]
    const item = rows[idx]
    if (!item) {
      row.content = ""
      continue
    }
    const selected = idx === sel
    const marker = selected ? "  >" : idx > sel && idx <= sel + 9 ? String(idx - sel).padStart(3) : "   "
    row.content = new StyledText([
      selected ? bold(fg(C.sel)(marker)) : fg(C.cmd)(marker),
      fg(C.dur)(" " + fmtDuration(item.duration).padStart(5)),
      fg(C.ago)(" " + fmtAgo(item.timestamp).padStart(5) + " ago"),
      fg(C.cmd)(" "),
      ...cmdChunks(item.command, cmdWidth, selected),
    ])
  }

  headerRight.content = t`${fg(C.dim)(`history count: ${totalCount || "…"}`)}`
  preview.content = t`${dim(fg(C.dim)(rows[sel]?.command.replace(/\n/g, "\\n").slice(0, renderer.width - 2) ?? ""))}`
}

const accept = (cmd?: string) => {
  renderer.destroy()
  if (cmd) process.stdout.write(cmd + "\n")
  process.exit(0)
}

renderer.keyInput.on("keypress", (key) => {
  const h = listRows.length
  if (key.name === "escape" || (key.ctrl && (key.name === "c" || key.name === "d"))) return accept()
  if (key.name === "return") return accept(rows[sel]?.command)
  if (key.meta && /^[1-9]$/.test(key.name)) {
    const target = sel + Number(key.name)
    if (rows[target]) return accept(rows[target].command)
    return
  }
  if (key.name === "up" || (key.ctrl && key.name === "p")) sel = Math.min(sel + 1, rows.length - 1)
  else if (key.name === "down" || (key.ctrl && key.name === "n")) sel = Math.max(sel - 1, 0)
  else if (key.name === "pageup") sel = Math.min(sel + h, rows.length - 1)
  else if (key.name === "pagedown") sel = Math.max(sel - h, 0)
  else if (key.ctrl && key.name === "u") (input.value = ""), (query = ""), resetSearch()
  else if (key.ctrl && key.name === "w") {
    input.value = input.value.replace(/\S*\s*$/, "")
    query = input.value
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

renderer.on("resize", () => {
  rebuildList()
  render()
})

if (process.env.ATUHIST_QUERY) {
  query = process.env.ATUHIST_QUERY
  input.value = query
}

rebuildList()
resetSearch()
render()

setTimeout(() => {
  totalCount = (db.query("SELECT count(*) c FROM history").get() as { c: number }).c
  render()
}, 0)
