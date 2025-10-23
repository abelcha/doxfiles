require('dotenv').config({
	quiet: true,
	path: '~/.config/.secrets'
});

import parseArgs from 'mri'
import { generateObject } from "ai";
import { z } from "zod";
import { Database } from "bun:sqlite";

const MODEL = "gpt-4o";
// import { createXai } from '@ai-sdk/xai';
import { openai} from '@ai-sdk/openai';
// const openai = createOpenai({
	// apiKey: process.env.OPENAI_API_KEY,
// });

if (process.argv.length < 2) {
	console.error("Please provide a command to generate completions for");
	process.exit(1);
}
const Args = parseArgs(process.argv.slice(2),
	{
		alias: {
			'S': 'subcommands',
			'p': 'prompt',
			U: 'use',
			m: 'model',
			'maxDepth': 'max-depth',
		},
		default: {
			model: MODEL,
			force: false,
			subcommands: null,
			maxDepth: 1
		},
		boolean: ['force'],
		string: ['subcommands', 'prompt', 'max-depth', 'model']
	})
if (Args.help || !Args._.length) {
	console.log('Usage: compgen [options] <command>')
	console.log('Options:')
	console.log('  -h, --help        Show this help message')
	console.log('  -p, --prompt      Prompt to use for completion')
	console.log('  -m, --model       Model to use for completion')
	console.log('  -S, --subcommands Subcommands to use for completion')
	console.log('  -U, --use         Use cached response for prompt')
	console.log('  -m, --max-depth   Maximum depth to search for subcommands')
	console.table(Args)
		process.exit(0)
}
// flags.S = flags.subcommands
console.table(Args)
// process.exit()
// // console.log('==>', flags.subcommands)
const forcedSubs = Args.subcommands === null ? null : Args.subcommands.split(' ').filter(Boolean)
// // console.log({forcedSubs});
const cmd = Args._[0]

// Define schemas for structured output
const CliCommandSchema = z.object({
	command: z.string().catch(""),
	description: z.string().catch(""),
	subcommands: z
		.array(
			z.object({
				name: z.string().catch(""),
				description: z.string().catch(""),
			}),
		)
		.catch([]),
	flags: z
		.array(
			z.object({
				short: z.string().optional().catch(undefined),
				long: z.string().optional().catch(undefined),
				old: z.string().optional().catch(undefined),
				description: z.string().optional().catch(""),
				argument: z
					.object({
						required: z.boolean().optional().catch(false),
						description: z.string().optional().catch(""),
						values: z
							.array(
								z.union([
									z.string(),
									z.object({
										value: z.string(),
										description: z.string().optional().catch(""),
									}),
								]),
							)
							.optional()
							.catch(undefined),
						command: z.string().optional().catch(undefined),
					})
					.optional()
					.catch(undefined),
			}),
		)
		.catch([]),
});

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

async function getHelp(cmd: string[]) {
	try {
		if (Args.use) {
			// console.log('using', [flags.use])
			const tmpl = Args.use.replace('{}', cmd.join(' '))
			console.log({ tmpl })
			return await Bun.$`${tmpl.split(' ')} 2>&1`.nothrow().text();
		}
		// console.log('running', [cmd])
		return await Bun.$`${cmd} --help 2>&1`.nothrow().text();
	} catch (e) {
		if (cmd.length > 1) {
			console.error('retrying', 'failed', { cmd })
			return getHelp([cmd.join(' ')])
		}
		console.error(`Failed to run: ${cmd} --help`);
		return "";
	}
}
const formatPrePrompt = (prompt: string) => {
	return !Args.prompt ? '' : `
    ### CRITICAL INSTRUCTIONS ###
    
    Important: The following prompt requires careful attention to:
	------------------------------------------
    ${prompt}
    ------------------------------------------
    ### END CONTEXT ###
    `
}
async function parseHelp(
	helpText: string,
	fullCommand: string,
): Promise<z.infer<typeof CliCommandSchema> | null> {
	if (!helpText?.trim()) {
		console.error(`Empty help text for command: ${fullCommand}`);
		return null
	}
	const prompt = formatPrePrompt(Args.prompt) + template.replace("#fullCommand", fullCommand) + helpText
	await Bun.$`echo  ${prompt} >> /tmp/prompts.logs.txt`.quiet()
	const h = Bun.hash(prompt).toString();
	// Check cache first
	const cached = getCachedResponse(h);
	if (cached) {
		console.info('cached', fullCommand)
		return cached;
	}
	// // console.log("parseHelp", arguments);
	console.info('requesting', fullCommand)

	const r = await generateObject({
		model: openai(Args.model),
		schema: CliCommandSchema,
		prompt,
	});
	console.log({ r })
	const { object } = r
	console.info('generated')
	object.subcommands = object.subcommands
		.map((e) => ({ ...e, name: e.name.replaceAll(/[^\w\-\_]+/g, "") }))
		.filter((e) => e.name);
	console.info('OK', fullCommand)
	console.table(object.flags)
	console.table(object.subcommands)
	// console.log('==========')

	cachePromptResponse(h, object);
	return object;
}
const escapeFish = (v = "") =>
	JSON.stringify(v.replace(/^\-+/, "").replaceAll('$', '＄'));

const getArgs = (...flags: z.infer<typeof CliCommandSchema>["flags"]) => {
	const [flag] = flags;
	if (!flag?.argument) {
		return "";
	}

	// flag.argument?.values.map(e => e.)
	if (flag.argument?.command) {
		return `'(${flag.argument.command})'`;
	}
	const { values } = flag.argument;
	if (!values) {
		return "";
	}
	if (!values?.every((e) => e?.description)) {
		return values.map((e) => e?.value || e).join(" ");
	}
	const aa = values
		.map((e) => [e.value, e.description || ""].join("\\t"))
		.join(",");
	return `{${aa}}`;
};

const getCommand = (op: Record<string, any>) => {
	if (op.o)
		delete op.l
	return "complete " +
		Object.entries(op)
			.filter(([k, v]) => v)
			.map(([k, v]) => `-${k} ${k === "a" ? `"${v}"` : escapeFish(v)}`)
			.join(" ")
			.replace("-fc ", "-f -c ");
}
async function generateFishFromJSON(
	commands: string[],
	parsed: any,
): Promise<string[]> {
	// // console.log("generateFishFromJSON", arguments);
	const command = commands[0];
	const completions: string[] = [];

	// Helper to escape fish strings
	// Global options
	for (const flag of parsed.flags || []) {
		completions.push(
			getCommand({
				c: command, n: commands.length > 1 && `__fish_seen_subcommand_from '${commands.slice(1).join(' ')}'`, s: flag.short, o: flag.old, l: flag.long, d: flag.description, xa: getArgs(flag),
			}) + ' # global'
		);
	}

	const prexx = commands.slice(1);
	// Subcommands
	for (const sub of parsed.subcommands || []) {
		completions.push(getCommand({
			fc: command, n: (commands.length >= 2 ? `__fish_seen_subcommand_from '${prexx.join(' ')}'` : '__fish_use_subcommand'), a: sub.name, d: sub.description,
		}) + ' # sub');
	}

	// Subcommand-specific flags
	for (const sub of parsed.subcommands || []) {
		for (const flag of parsed.flags || []) {
			if (["help", "version"].includes(flag.long)) continue;
			completions.push(getCommand({
				c: command, n: `__fish_seen_subcommand_from '${[...prexx, sub.name].join(' ')}'`, s: flag.short, o: flag.old, l: flag.long, d: flag.description, xa: getArgs(flag),
			}) + ' # subcommands flags');
		}
	}

	return completions;
}

const visited = new Set<string>()

async function crawlCommandTree(
	commandArray: Array<string>,
	forcedSubs: string[] | undefined,
	depth = 0
): Promise<string[]> {
	// // console.log("crawlCommandTree", commandArray);
	const fullCmd = commandArray.join(" ");
	console.warn("_crawlCommandTree", depth, commandArray);
	if (visited.has(commandArray[commandArray.length - 1] as string)) {
		console.error(`Skipping duplicate command: ${fullCmd}`);
		return [];
	}
	visited.add(fullCmd);
	const help = (await getHelp(commandArray))
	// console.log('=========')
	// console.log({ help })
	// console.log('=========')

	// .replaceAll(/^\s+(create|update|add|info|remove)\s+[^\s]+/g, '\n  $1\t @module/name');;

	const parsed = (await parseHelp(help, fullCmd))
	// // console.log({parsed})
	if (parsed === null) {
		return []
	}
	let { flags = [], subcommands = [], ...rest } = parsed;
	if (forcedSubs !== null && Array.isArray(forcedSubs)) {
		const fsubs = new Set<string>(forcedSubs)
		subcommands = subcommands.filter(e => {
			if (fsubs.has(e.name)) {
				fsubs.delete(e.name)
				return true
			}
		})
			.concat(Array.from(fsubs).map(e => ({ name: e, description: 'desc: ' + e })))
	}
	console.table(subcommands)
	const all = await generateFishFromJSON(commandArray, parsed);
	// // console.log(all)
	if (
		commandArray.length <= Args.maxDepth &&
		subcommands.length > 0 &&
		commandArray[commandArray.length - 1] !== "help"
	) {
		const subPromises = subcommands.map(async (sub: any) => {
			const subCmdArray = [...commandArray, sub.name];
			return crawlCommandTree(subCmdArray, forcedSubs, depth + 1);
		});
		all.push(...(await Promise.all(subPromises)).flat());
	}

	return all;
}


const template = `
Extract CLI command information from help text and return a structured JSON object that follows this schema:
{preprompt}
{
  "command": "#fullCommand",
  "description": "command description",
  "subcommands": [
    {
      "name": "subcommand name",
      "description": "subcommand description"
    }
  ],
  "flags": [
    {
      "short": "a", // Short options, like -a. Short options are a single character long, are preceded by a single hyphen and can be grouped together (like -la, which is equivalent to -l -a). Option arguments may be specified by appending the option with the value (-w32), or, if --require-parameter is given, in the following parameter (-w 32).
      "long": "colors",  // "GNU-style long options, like --colors. GNU-style long options can be more than one character long, are preceded by two hyphens, and can’t be grouped together. Option arguments may be specified after a = (--quoting-style=shell), or, if --require-parameter is given, in the following parameter (--quoting-style shell).", 
      "old: "foo", // "Old-style options, long like -Wall or -name or even short like -a. Old-style options can be more than one character long, are preceded by a single hyphen and may not be grouped together. Option arguments are specified by default following a space (-foo null) or after = (-foo=null).",
      "description": "description",
      "argument": {
        "required": true/false,
        "description": "argument description (only if explicitly mentioned)",
        "values": ["value1", "value2"] OR [{"value": "value1", "description": "description1"}, {"value": "value2", "description": "description2"}],
        "command": "command to generate values"
      }
    }
  ]
}

Rules:
1. Extract all global flags (flags that work with any subcommand)
2. Extract all subcommands and their descriptions (or [] if none)
3. For flags with arguments, include argument information:
   - If values are listed in help text (like "--browser <chrome|firefox|webkit>"), extract them as values array, and dont include it in description, 
        EX: "--browser: browser to use, one of cr, chromium, ff" -> {"values": ["cr", "chromium", "ff"], "description": "browser to use"}
   - If help mentions a command to list values (like "see 'playwright list-languages'"), set command field
   - CRITICAL: Only use argument descriptions when they are EXPLICITLY written in the help text
   - CRITICAL: Do NOT make up descriptions if its not provided
   - CRITICAL: Only create objects with "value" and "description" when BOTH are explicitly provided in help text
5. Set values as array of strings when only values are listed without descriptions
6. Set values as array of objects with "value" and "description" properties only when both are explicitly available in help text
8. Return null for missing optional fields
9. dont include parent command in nested commands
    ex:$ bun pm trust --help
       bun pm pack # dont includes 'pack', parent command is not fully included
       bun pm trust all # includes "all", cause it match 'pm trust'

Examples:
- For "--browser <chrome|firefox|webkit>": values: ["chrome", "firefox", "webkit"]
- For "--theme (azura: dark and spicy, chevron: lighter greys)": values: [{"value": "azura", "description": "dark and spicy"}, {"value": "chevron", "description": "lighter greys"}]
- For "--lang <lang> (see 'playwright list-languages')": command: "playwright list-languages"

Return ONLY the JSON object, no additional text.

Help text to parse:

===============================================================
`

// console.log({ forcedSubs })
const allCompletions = await crawlCommandTree([cmd], forcedSubs);
// // console.log(allCompletions.join("\n\n"));
const file = Bun.file(`/me/.config/fish/completions/${cmd}.fish`);
await Bun.$`cat < ${new Response(allCompletions.join('\n'))} | bat --style grid,header-filename  --language=fish --color=always`
if (await file.exists() && !Args.force) {
	const answer = await prompt("Overwrite existing completion file? (y/n)");

	if (answer !== "y" && answer !== null) {
		// console.log("Aborting");
		process.exit(0);
	}
}
// console.log("write");
await file.write(allCompletions.join("\n"));
