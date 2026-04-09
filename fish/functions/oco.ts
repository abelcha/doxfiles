#!/usr/bin/env -S bun run  --env-file=/me/config/fish/functions/.env
/**
 * oco.ts — single-file opencommit clone
 * Usage: bun oco.ts
 * Requires: MISTRAL_API_KEY env var
 */

import * as readline from 'readline';
import * as path from 'path';

// ─── Config ──────────────────────────────────────────────────────────────────

const CONFIG = {
  apiKey: process.env.MISTRAL_KEY,
  baseURL: 'https://api.mistral.ai/v1',
  models: {
    small: 'mistral-small-latest',   // <8K chars diff
    medium: 'mistral-medium-latest', // 8K–32K chars diff
    large: 'mistral-large-latest',   // >32K chars diff
  },
  thresholds: {
    small: 8_000,
    medium: 32_000,
  },
  maxOutputTokens: 1024,
  language: 'English',
};

// ─── Prompt ──────────────────────────────────────────────────────────────────

const SYSTEM_PROMPT = `You are the author of a commit message in git.
Your mission is to create clean and comprehensive commit messages as per the Conventional Commit Convention and explain WHAT were the changes and mainly WHY the changes were done.
I'll send you an output of 'git diff --staged' command, and you are to convert it into a commit message.
Do not preface the commit with anything, except for the conventional commit keywords: fix, feat, build, chore, ci, docs, style, refactor, perf, test.
Don't add any descriptions to the commit, only commit message.
Use the present tense. Lines must not be longer than 74 characters. Use ${CONFIG.language} for the commit message.`;

const EXAMPLE_DIFF = `diff --git a/src/server.ts b/src/server.ts
index ad4db42..f3b18a9 100644
--- a/src/server.ts
+++ b/src/server.ts
@@ -10,7 +10,7 @@
-const port = 7799;
+const PORT = 7799;
@@ -34,6 +34,6 @@
-app.listen(port, () => {
-  console.log(\`Server listening on port \${port}\`);
+app.listen(process.env.PORT || PORT, () => {
+  console.log(\`Server listening on port \${PORT}\`);
 });`;

const EXAMPLE_COMMIT = `fix: use uppercase PORT constant and support env override`;

// ─── Colors ──────────────────────────────────────────────────────────────────

const ansi = (color: string) => Bun.color(color, 'ansi') ?? '';
const c = {
  green:  (s: string) => ansi('green')    + s + '\x1b[0m',
  red:    (s: string) => ansi('#e05555')  + s + '\x1b[0m',
  yellow: (s: string) => ansi('#e8c76a')  + s + '\x1b[0m',
  cyan:   (s: string) => ansi('#4ec9d4')  + s + '\x1b[0m',
  blue:   (s: string) => ansi('#6b9bdb')  + s + '\x1b[0m',
  gray:   (s: string) => ansi('#6b7280')  + s + '\x1b[0m',
  bold:   (s: string) => '\x1b[1m'        + s + '\x1b[0m',
  dim:    (s: string) => '\x1b[2m'        + s + '\x1b[0m',
};

// ─── Git helpers ─────────────────────────────────────────────────────────────

function git(...args: string[]): string {
  const proc = Bun.spawnSync(['git', ...args], { stdout: 'pipe', stderr: 'pipe' });
  return proc.stdout.toString().trim();
}

function assertGitRepo() {
  const proc = Bun.spawnSync(['git', 'rev-parse'], { stdout: 'pipe', stderr: 'pipe' });
  if (!proc.success) die('Not a git repository');
}

function getStagedFiles(): string[] {
  const out = git('diff', '--name-only', '--cached', '--relative');
  if (!out) return [];
  return out.split('\n').filter(Boolean).sort();
}

type FileStat = { file: string; added: number; removed: number; binary: boolean };

function getStagedStats(): FileStat[] {
  const out = git('diff', '--staged', '--numstat');
  if (!out) return [];
  return out.split('\n').filter(Boolean).map(line => {
    const [added, removed, file] = line.split('\t');
    const binary = added === '-';
    return { file, added: binary ? 0 : +added, removed: binary ? 0 : +removed, binary };
  });
}

const BINARY_EXTS = new Set(['.lock', '.svg', '.png', '.jpg', '.jpeg', '.webp', '.gif']);

function getDiff(files: string[]): string {
  const included = files.filter(f => !BINARY_EXTS.has(path.extname(f)) && !f.includes('-lock.'));
  if (!included.length) return '';
  return git('diff', '--staged', '--', ...included);
}

async function gitCommit(message: string) {
  const gitDir = git('rev-parse', '--git-dir');
  const tmp = path.join(gitDir, 'OCO_COMMIT_MSG');
  await Bun.write(tmp, message);
  const proc = Bun.spawnSync(['git', 'commit', '-F', tmp], { stdout: 'pipe', stderr: 'pipe' });
  await Bun.file(tmp).exists() && Bun.spawnSync(['rm', tmp]);
  if (!proc.success) die(proc.stderr.toString().trim() || 'git commit failed');
  console.log(c.gray('\n' + proc.stdout.toString().trim()));
}

// ─── Model selection ─────────────────────────────────────────────────────────

function pickModel(diffLength: number): string {
  if (diffLength < CONFIG.thresholds.small) return CONFIG.models.small;
  if (diffLength < CONFIG.thresholds.medium) return CONFIG.models.medium;
  return CONFIG.models.large;
}

// ─── Diff splitting ───────────────────────────────────────────────────────────

function splitDiffByFiles(diff: string): string[] {
  const sep = 'diff --git ';
  return diff.split(sep).slice(1).map(chunk => sep + chunk);
}

function chunkBySize(parts: string[], maxChars: number): string[] {
  const chunks: string[] = [];
  let current = '';
  for (const part of parts) {
    if ((current + part).length > maxChars && current) {
      chunks.push(current);
      current = part;
    } else {
      current += part;
    }
  }
  if (current) chunks.push(current);
  return chunks;
}

// ─── Mistral API call ─────────────────────────────────────────────────────────

type MistralResult = { message: string; promptTokens: number; completionTokens: number };

async function callMistral(model: string, diff: string): Promise<MistralResult> {
  const messages = [
    { role: 'system', content: SYSTEM_PROMPT },
    { role: 'user', content: EXAMPLE_DIFF },
    { role: 'assistant', content: EXAMPLE_COMMIT },
    { role: 'user', content: diff },
  ];

  const res = await fetch(`${CONFIG.baseURL}/chat/completions`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json', Authorization: `Bearer ${CONFIG.apiKey}` },
    body: JSON.stringify({ model, messages, temperature: 0, max_tokens: CONFIG.maxOutputTokens }),
  });

  if (!res.ok) {
    const body = await res.text();
    die(`Mistral API error ${res.status}: ${body}`);
  }

  const data = await res.json() as any;
  return {
    message: (data.choices?.[0]?.message?.content ?? '').trim(),
    promptTokens: data.usage?.prompt_tokens ?? 0,
    completionTokens: data.usage?.completion_tokens ?? 0,
  };
}

// ─── Spinner ─────────────────────────────────────────────────────────────────

function spinner(label: string) {
  const frames = ['⠋','⠙','⠹','⠸','⠼','⠴','⠦','⠧','⠇','⠏'];
  let i = 0;
  const iv = setInterval(() => {
    process.stdout.write('\r\x1b[K' + c.cyan(frames[i++ % frames.length]) + ' ' + c.dim(label));
  }, 60);
  return { stop: () => { clearInterval(iv); process.stdout.write('\r\x1b[K'); } };
}

// ─── Display helpers ──────────────────────────────────────────────────────────

function miniBar(added: number, removed: number): string {
  const total = added + removed;
  const width = 10;
  if (total === 0) return c.gray('·'.repeat(width));
  const greenCols = Math.round((added / total) * width);
  const redCols = width - greenCols;
  return c.green('▓'.repeat(greenCols)) + c.red('▓'.repeat(redCols));
}

function renderStagedFiles(stats: FileStat[]) {
  const maxName = Math.max(...stats.map(s => s.file.length));
  for (const s of stats) {
    if (s.binary) {
      console.log('  ' + c.gray(s.file.padEnd(maxName)) + '  ' + c.dim('binary'));
      continue;
    }
    const name = s.file.padEnd(maxName);
    const bar  = miniBar(s.added, s.removed);
    const add  = s.added   ? c.green(`+${s.added}`)   : '';
    const rem  = s.removed ? c.red(`-${s.removed}`)   : '';
    const nums = [add, rem].filter(Boolean).join(c.gray(' / '));
    console.log('  ' + c.cyan(name) + '  ' + bar + '  ' + nums);
  }
}

function box(text: string) {
  const lines = text.split('\n');
  const width = Math.max(...lines.map(l => l.length)) + 4;
  const top    = c.gray('╭' + '─'.repeat(width - 2) + '╮');
  const bottom = c.gray('╰' + '─'.repeat(width - 2) + '╯');
  const mid    = lines.map(l => c.gray('│') + ' ' + '\x1b[97m' + c.bold(l.padEnd(width - 4)) + '\x1b[0m' + ' ' + c.gray('│')).join('\n');
  console.log('\n' + top + '\n' + mid + '\n' + bottom);
}

// ─── Error ───────────────────────────────────────────────────────────────────

function die(msg: string): never {
  console.error('\n' + c.red('✖ ' + msg));
  process.exit(1);
}

// ─── Main ─────────────────────────────────────────────────────────────────────

async function main() {
  if (!CONFIG.apiKey) die('MISTRAL_API_KEY is not set');
  assertGitRepo();

  const staged = getStagedFiles();
  if (!staged.length) die('No staged files. Run `git add` first.');

  console.log('\n' + c.bold('opencommit'));

  const stats = getStagedStats();
  renderStagedFiles(stats);

  const diff = getDiff(staged);
  if (!diff) die('Nothing to diff (all files are binary/lock)');

  const model = pickModel(diff.length);

  if (diff.length > 400_000) {
    console.log(c.yellow(`\n⚠ large diff (${(diff.length / 1000).toFixed(0)}K chars), splitting...`));
  }

  const CHAR_LIMIT = 400_000;
  const chunks = diff.length <= CHAR_LIMIT ? [diff] : chunkBySize(splitDiffByFiles(diff), CHAR_LIMIT);
  const results: MistralResult[] = [];

  for (let i = 0; i < chunks.length; i++) {
    const label = chunks.length > 1 ? `${model}  chunk ${i + 1}/${chunks.length}` : model;
    const s = spinner(label);
    results.push(await callMistral(model, chunks[i]));
    s.stop();
    if (i < chunks.length - 1) await new Promise(r => setTimeout(r, 1000));
  }

  const message       = results.map(r => r.message).join('\n');
  const promptTokens  = results.reduce((a, r) => a + r.promptTokens, 0);
  const outputTokens  = results.reduce((a, r) => a + r.completionTokens, 0);

  if (!message) die('Empty commit message returned');

  // always-visible model + token summary
  console.log(
    c.dim('  model  ') + c.blue(model) +
    c.dim('   tokens  ') + c.gray(`${promptTokens.toLocaleString()} in`) +
    c.dim(' · ') + c.gray(`${outputTokens} out`)
  );

  box(message);

  console.log(c.dim('\npress Enter to commit · Ctrl+C to cancel'));

  await new Promise<void>(resolve => {
    const rl = readline.createInterface({ input: process.stdin, output: process.stdout });
    rl.once('line', () => { rl.close(); resolve(); });
  });

  await gitCommit(message);
  console.log(c.green('✔ committed'));
}

main().catch(err => die(String(err)));
