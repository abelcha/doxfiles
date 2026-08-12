#!/usr/bin/env bun run --cwd=/me/.config

import parseArgs from "mri";
import { Database } from "bun:sqlite";
import { BamlRuntime, ClientRegistry } from "@boundaryml/baml/native";

const AI_DIR = `${import.meta.dir}/../../ai`;
const SRC_DIR = `${AI_DIR}/baml_src`;
await Bun.$`ln -sfn . baml_src`.cwd(AI_DIR).quiet();

// Default-quiet: the runtime dumps the full prompt/reply at INFO. Via env
// (not setLogLevel, which prints to stdout). -v/--verbose opts back in.
const VERBOSE = process.argv.some((a) => a === "--verbose" || a === "-v");
process.env.BAML_LOG ||= VERBOSE ? "INFO" : "WARN";

const rt = BamlRuntime.fromDirectory(SRC_DIR, process.env as Record<string, string>);

// All models go through OpenRouter so any slug just works.
function buildRegistry(model?: string) {
  if (!model) return { cr: null, label: "google/gemini-3.1-flash-lite (baml default)" };
  const cr = new ClientRegistry();
  cr.addLlmClient("__compgen_override", "openai-generic", {
    model,
    base_url: "https://openrouter.ai/api/v1",
    api_key: process.env.OPENROUTER_API_KEY,
  });
  cr.setPrimary("__compgen_override");
  return { cr, label: model };
}

// ---- OpenRouter catalog (for --list-models + fish completion) ----
const MODELS_CACHE = "/tmp/openrouter-models.json";
const MODELS_TTL = 24 * 60 * 60 * 1000; // 1 day

async function fetchModelCatalog(force = false): Promise<string[]> {
  const f = Bun.file(MODELS_CACHE);
  if (!force && await f.exists()) {
    const age = Date.now() - (await f.stat()).mtimeMs;
    if (age < MODELS_TTL) {
      return JSON.parse(await f.text());
    }
  }
  const res = await fetch("https://openrouter.ai/api/v1/models");
  const { data } = await res.json() as any;
  const rows = data
    .filter((m: any) => {
      const mods = m.architecture?.input_modalities || [];
      const isText = mods.includes("text");
      const bad = /whisper|tts|embed|audio|suno|deepfake|image|flux|stable|midjourney|dall|playground|lyria|clip|vl\b|vision|voxtral|ui-tars/i.test(m.id);
      const in$ = parseFloat(m.pricing?.prompt || "0") * 1e6;
      const out$ = parseFloat(m.pricing?.completion || "0") * 1e6;
      return isText && !bad && in$ >= 0 && in$ < 8 && out$ < 40 && (m.context_length || 0) >= 32000;
    })
    .map((m: any) => m.id as string)
    .sort();
  await Bun.write(MODELS_CACHE, JSON.stringify(rows));
  return rows;
}

if (process.argv.length < 2) {
  console.error("Please provide a command to generate completions for");
  process.exit(1);
}
const Args = parseArgs(process.argv.slice(2), {
  alias: {
    S: "subcommands",
    p: "prompt",
    U: "use",
    m: "model",
    j: "concurrency",
    v: "verbose",
    maxDepth: "max-depth",
  },
  default: {
    force: false,
    subcommands: null,
    maxDepth: 1,
    concurrency: 8,
    verbose: VERBOSE,
  },
  boolean: ["force", "no-cache", "list-models", "verbose"],
  string: ["subcommands", "prompt", "max-depth", "model", "concurrency"],
});
// Everything that's just progress noise — gated behind --verbose.
const log = (...a: any[]) => Args.verbose && console.info(...a);
const table = (a: any) => Args.verbose && console.table(a);
if (Args["list-models"]) {
  for (const id of await fetchModelCatalog(Args["no-cache"])) console.log(id);
  process.exit(0);
}
if (Args.help || !Args._.length) {
  console.log("Usage: compgen [options] <command>");
  console.log("Options:");
  console.log("  -h, --help        Show this help message");
  console.log("  -p, --prompt      Prompt to use for completion");
  console.log("  -S, --subcommands Subcommands to use for completion");
  console.log("  -U, --use         Use cached response for prompt");
  console.log("  -m, --model       Model to use for completion (e.g. google/gemini-3.1-flash-lite)");
  console.log("      --max-depth   Maximum depth to search for subcommands");
  console.log("  -j, --concurrency Parallel subcommand crawls (default 8)");
  console.log("  -v, --verbose     Show BAML logs + per-step tables");
  console.log("      --no-cache    Skip cache for this run");
  console.log("      --list-models Print available OpenRouter models (for -m)");
  console.table(Args);
  process.exit(0);
}
const forcedSubs =
  Args.subcommands === null
    ? null
    : Args.subcommands.split(" ").filter(Boolean);
const inputPath = Args._[0];
const isScript = inputPath.includes("/") || inputPath.endsWith(".ts") || inputPath.endsWith(".js");
const cmd = isScript
  ? inputPath.replace(/\.(ts|js)$/, "").split("/").pop()!
  : inputPath;

const db = new Database("/tmp/ai.db");
db.prepare(
  `CREATE TABLE IF NOT EXISTS cache (id INTEGER PRIMARY KEY AUTOINCREMENT, prompt TEXT, response TEXT)`,
).run();

function cachePromptResponse(prompt: string, response: any) {
  db.query("INSERT INTO cache (prompt, response) VALUES (?, ?)").run(
    prompt,
    JSON.stringify(response),
  );
}

function getCachedResponse(prompt: string): any | null {
  const row = db
    .query(
      "SELECT response FROM cache WHERE prompt = ? ORDER BY id DESC LIMIT 1",
    )
    .get(prompt) as { response: string; prompt: string };
  if (row && row.response) {
    try {
      return JSON.parse(row.response);
    } catch {
      return null;
    }
  }
  return null;
}

async function getHelp(cmdParts: string[]) {
  try {
    if (Args.use) {
      const tmpl = Args.use.replace("{}", cmdParts.join(" "));
      Args.verbose && console.log({ tmpl });
      return await Bun.$`${tmpl.split(" ")} 2>&1`.nothrow().text();
    }
    const execCmd = isScript
      ? [inputPath, ...cmdParts.slice(1)]
      : cmdParts;
    return await Bun.$`fish -c "timeout 10s ${execCmd} --help 2>&1"`.nothrow().text();
  } catch (e) {
    if (cmdParts.length > 1) {
      console.error("retrying", "failed", { cmd: cmdParts });
      return getHelp([cmdParts.join(" ")]);
    }
    console.error(`Failed to run: ${cmdParts} --help`);
    return "";
  }
}
const formatPrePrompt = (prompt: string) => {
  return !Args.prompt
    ? ""
    : `
    ### CRITICAL INSTRUCTIONS ###

    Important: The following prompt requires careful attention to:
	------------------------------------------
    ${prompt}
    ------------------------------------------
    ### END CONTEXT ###
    `;
};

async function parseHelp(
  helpText: string,
  fullCommand: string,
): Promise<any | null> {
  if (!helpText?.trim()) {
    console.error(`Empty help text for command: ${fullCommand}`);
    return null;
  }
  const prePrompt = formatPrePrompt(Args.prompt);
  const cacheKey = Bun.hash(prePrompt + fullCommand + helpText).toString();
  const cached = getCachedResponse(cacheKey);
  if (cached && Args['cache'] !== false) {
    log("cached", fullCommand);
    return cached;
  }
  const { cr, label } = buildRegistry(Args.model);
  log("requesting", fullCommand, `[${label}]`);

  let object;
  for (let attempt = 0; ; attempt++) {
    try {
      const res = await rt.callFunction(
        "ParseCliHelp",
        { fullCommand, helpText, prePrompt },
        rt.createContextManager(),
        null,
        cr,
        [],
        {},
        process.env as Record<string, string>,
      );
      object = res.parsed(false);
      break;
    } catch (e: any) {
      if (!String(e?.message).includes("429") || attempt >= 4) throw e;
      const wait = 2 ** attempt * 1000;
      console.warn(`rate limited, retrying in ${wait}ms`, fullCommand);
      await new Promise((r) => setTimeout(r, wait));
    }
  }
  log("generated");
  object.subcommands = object.subcommands
    .map((e: any) => ({ ...e, name: e.name.replaceAll(/[^\w\-\_]+/g, "") }))
    .filter((e: any) => e.name);
  log("OK", fullCommand);
  table(object.flags);
  table(object.subcommands);

  cachePromptResponse(cacheKey, object);
  return object;
}
const escapeFish = (v = "") =>
  JSON.stringify(v.replace(/^\-+/, "").replaceAll("$", "＄"));

const getArgs = (...flags: any[]) => {
  const [flag] = flags;
  if (!flag?.argument) {
    return "";
  }

  if (flag.argument?.command) {
    return `'(${flag.argument.command})'`;
  }
  const { values } = flag.argument;
  if (!values) {
    return "";
  }
  if (!values?.every((e: any) => e?.description)) {
    return values.map((e: any) => e?.value || e).join(" ");
  }
  const aa = values
    .map((e: any) => [e.value, e.description || ""].join("\\t"))
    .join(",");
  return `{${aa}}`;
};

const getCommand = (op: Record<string, any>) => {
  if (op.o) delete op.l;
  return (
    "complete " +
    Object.entries(op)
      .filter(([k, v]) => v)
      .map(([k, v]) => `-${k} ${k === "a" ? `"${v}"` : escapeFish(v as string)}`)
      .join(" ")
      .replace("-fc ", "-f -c ")
  );
};
async function generateFishFromJSON(
  commands: string[],
  parsed: any,
): Promise<string[]> {
  const command = commands[0];
  const completions: string[] = [];

  for (const flag of parsed.flags || []) {
    completions.push(
      getCommand({
        c: command,
        n:
          commands.length > 1 &&
          `__fish_seen_subcommand_from '${commands.slice(1).join(" ")}'`,
        s: flag.flagShort,
        o: flag.old,
        l: flag.flagLong,
        d: flag.description,
        xa: getArgs(flag),
      }) + " # global",
    );
  }

  const prexx = commands.slice(1);
  for (const sub of parsed.subcommands || []) {
    completions.push(
      getCommand({
        fc: command,
        n:
          commands.length >= 2
            ? `__fish_seen_subcommand_from '${prexx.join(" ")}'`
            : "__fish_use_subcommand",
        a: sub.name,
        d: sub.description,
      }) + " # sub",
    );
  }

  for (const sub of parsed.subcommands || []) {
    for (const flag of parsed.flags || []) {
      if (["help", "version"].includes(flag.flagLong)) continue;
      completions.push(
        getCommand({
          c: command,
          n: `__fish_seen_subcommand_from '${[...prexx, sub.name].join(" ")}'`,
          s: flag.flagShort,
          o: flag.old,
          l: flag.flagLong,
          d: flag.description,
          xa: getArgs(flag),
        }) + " # subcommands flags",
      );
    }
  }

  return completions;
}

const visited = new Set<string>();
const concurrency = Math.max(1, parseInt(String(Args.concurrency)) || 8);

// bounded concurrency pool — keeps `limit` fns in flight, preserves order.
async function pool<T, R>(items: T[], limit: number, fn: (item: T) => Promise<R>): Promise<R[]> {
  const results = new Array<R>(items.length);
  let i = 0;
  const run = Array.from({ length: Math.min(limit, items.length) }, async () => {
    while (i < items.length) {
      const idx = i++;
      results[idx] = await fn(items[idx] as T);
    }
  });
  await Promise.all(run);
  return results;
}

async function crawlCommandTree(
  commandArray: Array<string>,
  forcedSubs: string[] | null,
  depth = 0,
): Promise<string[]> {
  const fullCmd = commandArray.join(" ");
  log("crawl", depth, commandArray);
  if (visited.has(commandArray[commandArray.length - 1] as string)) {
    console.error(`Skipping duplicate command: ${fullCmd}`);
    return [];
  }
  visited.add(fullCmd);
  const help = await getHelp(commandArray);

  const parsed = await parseHelp(help, fullCmd);
  if (parsed === null) {
    return [];
  }
  let { flags = [], subcommands = [] } = parsed;
  if (forcedSubs !== null && Array.isArray(forcedSubs)) {
    const fsubs = new Set<string>(forcedSubs);
    subcommands = subcommands
      .filter((e: any) => {
        if (fsubs.has(e.name)) {
          fsubs.delete(e.name);
          return true;
        }
      })
      .concat(
        Array.from(fsubs).map((e) => ({ name: e, description: "desc: " + e })),
      );
  }
  table(subcommands);
  const all = await generateFishFromJSON(commandArray, parsed);
  if (
    commandArray.length <= Args.maxDepth &&
    subcommands.length > 0 &&
    commandArray[commandArray.length - 1] !== "help"
  ) {
    const childResults = await pool(
      subcommands,
      concurrency,
      (sub) => crawlCommandTree([...commandArray, sub.name], forcedSubs, depth + 1),
    );
    for (const r of childResults) all.push(...r);
  }

  return all;
}

const allCompletions = await crawlCommandTree([cmd], forcedSubs);

if (isScript) {
  allCompletions.unshift(`complete -c "${inputPath}" --wraps ${cmd}`);
}

const filename = isScript ? inputPath.split("/").pop()! : cmd;
const file = Bun.file(`/me/.config/fish/completions/${filename}.fish`);
await Bun.$`cat < ${new Response(allCompletions.join("\n"))} | bat --style grid,header-filename  --language=fish --color=always`;
if ((await file.exists()) && !Args.force) {
  await Bun.$`mv ${file.name} ${file.name}.${new Date().toISOString()}.txt`
}
await file.write(allCompletions.join("\n"));

if (isScript) {
  const confDir = "/me/.config/fish/conf.d";
  const confFile = Bun.file(`${confDir}/compgen-scripts.fish`);
  const existing = (await confFile.exists()) ? await confFile.text() : "";
  const sourceLine = `source ~/.config/fish/completions/${filename}.fish`;
  if (!existing.includes(sourceLine)) {
    await confFile.write(existing + sourceLine + "\n");
    console.log(`Added to ${confDir}/compgen-scripts.fish`);
  }
}

process.exit();
