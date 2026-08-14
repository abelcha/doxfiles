#!/usr/bin/env bun run --cwd=/me/.config

import parseArgs from "mri";
import { Database } from "bun:sqlite";
import { ModelRuntime } from "@earendil-works/pi-coding-agent";
import { Type, getSupportedThinkingLevels, clampThinkingLevel } from "@earendil-works/pi-ai";
import type { AssistantMessage, Tool, ThinkingLevel } from "@earendil-works/pi-ai";

const VERBOSE = process.argv.some((a) => a === "--verbose" || a === "-v");

// Same runtime + auth as the `pi` CLI: reads ~/.pi/agent/auth.json + models.json.
const modelRuntime = await ModelRuntime.create();
const DEFAULT_MODEL = "deepseek/deepseek-v4-flash"; // provider/modelId (pi-style)

// ---- structured schema (replaces the BAML CliCommand definition) ----
const CliCommandValue = Type.Object({
  value: Type.String(),
  description: Type.Optional(Type.String()),
});
const CliArgument = Type.Object({
  required: Type.Optional(Type.Boolean()),
  description: Type.Optional(Type.String()),
  values: Type.Optional(Type.Array(Type.Union([Type.String(), CliCommandValue]))),
  command: Type.Optional(Type.String()),
});
const CliFlag = Type.Object({
  flagShort: Type.Optional(Type.String()),
  flagLong: Type.Optional(Type.String()),
  old: Type.Optional(Type.String()),
  description: Type.Optional(Type.String()),
  argument: Type.Optional(CliArgument),
});
const CliSubcommand = Type.Object({
  name: Type.String(),
  description: Type.String(),
});
const cliCommandSchema = Type.Object({
  command: Type.String({ description: "the top-level command name" }),
  description: Type.Optional(Type.String()),
  subcommands: Type.Array(CliSubcommand),
  flags: Type.Array(CliFlag),
});
const extractTool: Tool = {
  name: "extract_cli_command",
  description: "Extract CLI command structure from --help text.",
  parameters: cliCommandSchema,
};

const SYSTEM_PROMPT = `You extract CLI command information from help text and return it via the extract_cli_command tool.

Rules:
1. Extract all global flags (flags that work with any subcommand).
2. Extract all subcommands and their descriptions (or [] if none).
3. For flags with arguments, include argument information:
   - If values are listed in help text (like "--browser <chrome|firefox|webkit>"), extract them as a values array, and do NOT include them in the description.
     Example: "--browser: browser to use, one of cr, chromium, ff" -> {"values": ["cr", "chromium", "ff"], "description": "browser to use"}
   - If help mentions a command to list values (like "see 'playwright list-languages'"), set the command field.
   - CRITICAL: Only use argument descriptions when they are EXPLICITLY written in the help text.
   - CRITICAL: Do NOT make up descriptions if they are not provided.
   - CRITICAL: Only create objects with "value" and "description" when BOTH are explicitly provided in the help text.
5. Set values as an array of strings when only values are listed without descriptions.
6. Set values as an array of objects with "value" and "description" only when both are explicitly available in the help text.
8. Return null for missing optional fields.
9. Do not include the parent command in nested commands.
   Example:
     $ bun pm trust --help
       bun pm pack       # do NOT include "pack" — parent command is not fully present
       bun pm trust all  # include "all" — matches "pm trust"
Always respond by calling the extract_cli_command tool exactly once.`;

function resolveModel(spec: string) {
  const slash = spec.indexOf("/");
  const provider = slash >= 0 ? spec.slice(0, slash) : "deepseek";
  const id = slash >= 0 ? spec.slice(slash + 1) : spec;
  const model = modelRuntime.getModel(provider, id);
  if (!model) throw new Error(`Unknown model: ${spec} (use --list-models)`);
  return model;
}

function extractCliCommand(msg: AssistantMessage): any {
  if (msg.stopReason === "error") {
    throw new Error(msg.errorMessage || "model request failed");
  }
  const tc = msg.content.find((c) => c.type === "toolCall");
  if (tc && tc.type === "toolCall") return tc.arguments;
  // fallback: some models emit JSON as text
  const text = msg.content
    .filter((c) => c.type === "text")
    .map((c: any) => c.text)
    .join("");
  const fence = text.match(/```(?:json)?\s*([\s\S]*?)```/);
  const raw = (fence ? fence[1] : text.match(/\{[\s\S]*\}/)?.[0]) || "";
  if (raw.trim()) {
    try {
      return JSON.parse(raw);
    } catch {}
  }
  throw new Error(
    "No structured tool call returned" + (text ? `: ${text.slice(0, 200)}` : ""),
  );
}

// Prepended to every generated completion file so each is self-contained and
// doesn't depend on the (historically buggy) global __fish_seen_subcommand_from.
// Matches the ordered subcommand path, ignoring flags: `bun --env=x -w run`
// matches the path `run`, and never re-offers a level once you go deeper.
const SUBCOMMAND_PATH_FN = `# Ordered, flag-ignoring subcommand-path matcher.
# True when the non-option tokens after the command equal the args in order.
function __fish_seen_subcommand_path
    set -l subs
    for t in (commandline -pxc)[2..]
        string match -q -- '-*' $t; and continue
        set -a subs $t
    end
    test "$subs" = "$argv"
end`;

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
    t: "thinking",
    maxDepth: "max-depth",
  },
  default: {
    force: false,
    subcommands: null,
    maxDepth: 1,
    concurrency: 8,
    verbose: VERBOSE,
    thinking: "off",
  },
  boolean: ["force", "no-cache", "list-models", "verbose"],
  string: ["subcommands", "prompt", "max-depth", "model", "concurrency", "thinking"],
});
// Verbose-only progress noise; request summaries are always printed.
const log = (...a: any[]) => Args.verbose && console.info(...a);
const table = (a: any) => Args.verbose && console.table(a);
const summary = (...a: any[]) => console.info(...a);
if (Args["list-models"]) {
  for (const m of await modelRuntime.getAvailable()) {
    console.log(`${m.provider}/${m.id}`);
  }
  process.exit(0);
}
if (Args.help || !Args._.length) {
  console.log("Usage: compgen [options] <command>");
  console.log("Options:");
  console.log("  -h, --help        Show this help message");
  console.log("  -p, --prompt      Prompt to use for completion");
  console.log("  -S, --subcommands Subcommands to use for completion");
  console.log("  -U, --use         Use cached response for prompt");
  console.log("  -m, --model       Model to use (provider/modelId, e.g. deepseek/deepseek-v4-flash)");
  console.log("  -t, --thinking    Thinking level (off|low|medium|high|xhigh|max; default off)");
  console.log("      --max-depth   Maximum depth to search for subcommands");
  console.log("  -j, --concurrency Parallel subcommand crawls (default 8)");
  console.log("  -v, --verbose     Show model logs + per-step tables");
  console.log("      --no-cache    Skip cache for this run");
  console.log("      --list-models Print available pi models (provider/modelId)");
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
    summary("[cache] " + fullCommand);
    return cached;
  }
  const spec = Args.model ? String(Args.model) : DEFAULT_MODEL;
  const model = resolveModel(spec);
  const requested = String(Args.thinking) as ThinkingLevel;
  const thinking = clampThinkingLevel(model, requested);
  if (thinking !== requested) {
    log(
      `thinking "${requested}" unsupported for ${spec}, using "${thinking}" (supported: ${getSupportedThinkingLevels(model).join(", ")})`,
    );
  }
  log("requesting", fullCommand, `[${spec}]`, `thinking=${thinking}`);
  const context = {
    systemPrompt: SYSTEM_PROMPT,
    tools: [extractTool],
    messages: [
      {
        role: "user" as const,
        timestamp: Date.now(),
        content:
          (prePrompt ? `${prePrompt}\n\n` : "") +
          `Command: ${fullCommand}\n\nHelp text to parse:\n===============================================================\n${helpText}`,
      },
    ],
  };

  const t0 = performance.now();
  let object;
  let msg: AssistantMessage;
  let attempts = 0;
  for (let attempt = 0; ; attempt++) {
    attempts = attempt + 1;
    try {
      msg = await modelRuntime.completeSimple(model, context, {
        reasoning: thinking,
      });
      object = extractCliCommand(msg);
      break;
    } catch (e: any) {
      const em = String(e?.message || e);
      if ((!em.includes("429") && !/rate/i.test(em)) || attempt >= 4) throw e;
      const wait = 2 ** attempt * 1000;
      console.warn(`rate limited, retrying in ${wait}ms`, fullCommand);
      await new Promise((r) => setTimeout(r, wait));
    }
  }
  const ms = (performance.now() - t0).toFixed(0);
  const cost = msg.usage?.cost?.total;
  summary(
    `[${spec}] ${fullCommand} -> ${msg.model} (${msg.stopReason}) ${ms}ms/${attempts} attempts` +
      (cost != null ? ` $${cost}` : ""),
    {
      provider: msg.provider,
      model: msg.model,
      responseModel: msg.responseModel,
      responseId: msg.responseId,
      stopReason: msg.stopReason,
      rawStopReason: msg.rawStopReason,
      attempts,
      ms: `${ms}ms`,
      cost: cost != null ? `$${cost}` : undefined,
      usage: msg.usage
        ? {
            input: msg.usage.input,
            output: msg.usage.output,
            cacheRead: msg.usage.cacheRead,
            cacheWrite: msg.usage.cacheWrite,
            reasoning: msg.usage.reasoning,
            totalTokens: msg.usage.totalTokens,
            cost: msg.usage.cost,
          }
        : undefined,
    },
  );
  log("generated");
  log("extracted JSON", JSON.stringify(object));
  object.subcommands = object.subcommands
    .map((e: any) => ({ ...e, name: e.name.replaceAll(/[^\w\-\_]+/g, "") }))
    .filter((e: any) => e.name);
  summary(
    `[${spec}] ${fullCommand} -> ${object.subcommands.length} subcommands, ${object.flags?.length ?? 0} flags`,
  );
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
  // Offer this level's subcommands only when the ordered subcommand path
  // (ignoring flags) matches exactly. Top level falls back to __fish_use_subcommand.
  const subCond = prexx.length
    ? `__fish_seen_subcommand_path ${prexx.map((p) => `'${p}'`).join(" ")}`
    : "__fish_use_subcommand";
  for (const sub of parsed.subcommands || []) {
    completions.push(
      getCommand({
        fc: command,
        n: subCond,
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
const output = [SUBCOMMAND_PATH_FN, ...allCompletions].join("\n") + "\n";
await Bun.$`cat < ${new Response(output)} | bat --style grid,header-filename  --language=fish --color=always`;
if ((await file.exists()) && !Args.force) {
  await Bun.$`mv ${file.name} ${file.name}.${new Date().toISOString()}.txt`
}
await file.write(output);

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
