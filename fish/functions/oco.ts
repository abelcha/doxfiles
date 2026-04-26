#!/usr/bin/env -S bun run  --env-file=/me/config/fish/functions/.env
/**
 * oco.ts — single-file opencommit clone
 * Usage: bun oco.ts [commit|pr] [...args]
 * Requires: MISTRAL_KEY env var
 */

import * as readline from 'readline';
import * as path from 'path';
import * as p from '@clack/prompts';

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

// ─── Prompts ──────────────────────────────────────────────────────────────────

const COMMIT_SYSTEM_PROMPT = `You are the author of a commit message in git.
Your mission is to create clean and comprehensive commit messages as per the Conventional Commit Convention and explain WHAT were the changes and mainly WHY the changes were done.
I'll send you an output of 'git diff --staged' command, and you are to convert it into a commit message.
Do not preface the commit with anything, except for the conventional commit keywords: fix, feat, build, chore, ci, docs, style, refactor, perf, test.
Don't add any descriptions to the commit, only commit message.
Use the present tense. Lines must not be longer than 50 characters. Use ${CONFIG.language} for the commit message.`;

const COMMIT_EXAMPLE_DIFF = `diff --git a/src/server.ts b/src/server.ts
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

const COMMIT_EXAMPLE_OUTPUT = `fix: use uppercase PORT constant and support env override`;

const PR_TITLES_PROMPT = `You are a developer writing GitHub pull request titles.
Given a git log and diff, produce exactly 10 candidate PR titles, one per line. No numbering, no bullets, no extra text.
sort then by order of length, The shortest title must be ~20 chars maximum, and the longest ~50 chars 
Style examples from this developer's history:
  fix/dockerfile libssl
  chores / clean opti v2 integration
  chore: publish as @the-aiway/highs-wasm on GitHub Packages
  feat: optimizer core (engine, solver, evaluator, zones)
  feat: optimize parquet file size with type casting and compression
  fix(ci): detect Cloud Run export job failures in PR deploy workflow
Mix conventional commit style (feat:, fix:, chore:) with looser styles. Present tense. No fluff.`;

const BRANCH_NAMES_PROMPT = `You are a developer naming a git branch.
Produce exactly 10 candidate branch names, one per line. No numbering, no bullets, no extra text.
Rules: lowercase, hyphens only, ≤50 chars, forward slash only for prefix.
Style examples from this developer's history:
  feat/optimizer-lib
  fix/dockerfile-libssl
  feat/parquet-file-size
  fix/ci-export-job-failure-detection
  feat/noauth-autologin
  feat/import-hooks+returntrip-fix
Most branches use feat/ or fix/ prefix. Be specific and descriptive, not generic.`;

const PR_BODY_PROMPT = `You are a developer writing a GitHub pull request description.
Given a git log, diff, and chosen title, produce the PR body in markdown.
Output ONLY the markdown body (no JSON, no title).
Include: a short summary paragraph, a ## Changes section with bullet points, optionally a ## Notes section.
Be concise. No fluff. Present tense.`;

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

function getBaseBranch(): string {
  for (const b of ['origin/main', 'origin/master', 'origin/develop', 'main', 'master', 'develop']) {
    const proc = Bun.spawnSync(['git', 'rev-parse', '--verify', b], { stdout: 'pipe', stderr: 'pipe' });
    if (proc.success) return b;
  }
  return 'origin/main';
}

function getPRDiff(base: string): string {
  return git('diff', `${base}...HEAD`);
}

function getPRLog(base: string): string {
  return git('log', `${base}...HEAD`, '--oneline');
}

function getPRFiles(base: string): string {
  return git('diff', `${base}...HEAD`, '--name-only');
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

async function callMistral(model: string, systemPrompt: string, userContent: string, assistantExample?: { user: string; assistant: string }, temperature = 0): Promise<MistralResult> {
  const messages: any[] = [{ role: 'system', content: systemPrompt }];
  if (assistantExample) {
    messages.push({ role: 'user', content: assistantExample.user });
    messages.push({ role: 'assistant', content: assistantExample.assistant });
  }
  messages.push({ role: 'user', content: userContent });

  const res = await fetch(`${CONFIG.baseURL}/chat/completions`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json', Authorization: `Bearer ${CONFIG.apiKey}` },
    body: JSON.stringify({ model, messages, temperature, max_tokens: CONFIG.maxOutputTokens }),
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

function box(title: string, text: string) {
  const lines = text.split('\n');
  const width = Math.max(...lines.map(l => l.length), title.length) + 4;
  const top    = c.gray('╭─ ') + c.bold(c.cyan(title)) + ' ' + c.gray('─'.repeat(Math.max(0, width - title.length - 4)) + '╮');
  const bottom = c.gray('╰' + '─'.repeat(width - 2) + '╯');
  const mid    = lines.map(l => c.gray('│') + ' ' + '\x1b[97m' + l.padEnd(width - 4) + '\x1b[0m' + ' ' + c.gray('│')).join('\n');
  console.log('\n' + top + '\n' + mid + '\n' + bottom);
}

function prBox(title: string, body: string) {
  const cols = Math.min(process.stdout.columns || 80, 100);
  const inner = cols - 4;

  const wrapLine = (line: string): string[] => {
    if (line.length <= inner) return [line];
    const words = line.split(' ');
    const out: string[] = [];
    let cur = '';
    for (const w of words) {
      if ((cur ? cur + ' ' + w : w).length > inner) { out.push(cur); cur = w; }
      else cur = cur ? cur + ' ' + w : w;
    }
    if (cur) out.push(cur);
    return out;
  };

  const bodyLines = body.split('\n').flatMap(wrapLine);
  const titleLine = c.gray('╭─ ') + c.bold(c.yellow('PR')) + c.gray(' ─╮') + '  ' + c.bold('\x1b[97m' + title + '\x1b[0m');
  const sep = c.gray('├' + '─'.repeat(cols - 2) + '┤');
  const top = c.gray('╭' + '─'.repeat(cols - 2) + '╮');
  const bottom = c.gray('╰' + '─'.repeat(cols - 2) + '╯');
  const mid = bodyLines.map(l => c.gray('│') + ' ' + c.dim(l.padEnd(cols - 4)) + ' ' + c.gray('│')).join('\n');

  const titleRow = c.gray('│') + ' ' + c.bold(c.yellow('title  ')) + c.bold('\x1b[97m' + title + '\x1b[0m').padEnd(cols - 12) + ' ' + c.gray('│');

  console.log('\n' + top + '\n' + titleRow + '\n' + sep + '\n' + mid + '\n' + bottom);
}

// ─── Error ───────────────────────────────────────────────────────────────────

function die(msg: string): never {
  console.error('\n' + c.red('✖ ' + msg));
  process.exit(1);
}

// ─── Prompt key ──────────────────────────────────────────────────────────────

async function promptKey(msg: string): Promise<string> {
  process.stdout.write(msg);
  return new Promise(resolve => {
    const rl = readline.createInterface({ input: process.stdin });
    rl.once('line', line => { rl.close(); resolve(line.trim()); });
  });
}


// ─── Subcommand: commit ───────────────────────────────────────────────────────

async function cmdCommit() {
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
    results.push(await callMistral(model, COMMIT_SYSTEM_PROMPT, chunks[i], { user: COMMIT_EXAMPLE_DIFF, assistant: COMMIT_EXAMPLE_OUTPUT }));
    s.stop();
    if (i < chunks.length - 1) await new Promise(r => setTimeout(r, 1000));
  }

  const message       = results.map(r => r.message).join('\n');
  const promptTokens  = results.reduce((a, r) => a + r.promptTokens, 0);
  const outputTokens  = results.reduce((a, r) => a + r.completionTokens, 0);

  if (!message) die('Empty commit message returned');

  console.log(
    c.dim('  model  ') + c.blue(model) +
    c.dim('   tokens  ') + c.gray(`${promptTokens.toLocaleString()} in`) +
    c.dim(' · ') + c.gray(`${outputTokens} out`)
  );

  box('commit message', message);

  console.log(c.dim('\npress Enter to commit · Ctrl+C to cancel'));

  await new Promise<void>(resolve => {
    const rl = readline.createInterface({ input: process.stdin, output: process.stdout });
    rl.once('line', () => { rl.close(); resolve(); });
  });

  await gitCommit(message);
  console.log(c.green('✔ committed'));
}

// ─── Subcommand: pr ───────────────────────────────────────────────────────────

async function cmdPR(extraArgs: string[]) {
  assertGitRepo();

  const base = getBaseBranch();
  const log = getPRLog(base);
  if (!log) die(`No commits ahead of ${base}`);

  const files = getPRFiles(base);
  const context = `## Commits\n${log}\n\n## Changed files\n${files}`;

  console.log('\n' + c.bold('oco pr') + c.dim(`  base: ${base}`));

  // ── Phase 1: 3 parallel title calls with varied temperatures ──
  const s1 = spinner(`${CONFIG.models.small}  generating titles…`);
  const [r0, r1, r2] = await Promise.all([
    callMistral(CONFIG.models.small, PR_TITLES_PROMPT, context, undefined, 0),
    callMistral(CONFIG.models.small, PR_TITLES_PROMPT, context, undefined, 0.4),
    callMistral(CONFIG.models.small, PR_TITLES_PROMPT, context, undefined, 0.8),
  ]);
  s1.stop();

  const parse = (r: MistralResult) => r.message.split('\n').map(l => l.trim()).filter(Boolean);
  // interleave results then dedupe, take 10
  const interleaved: string[] = [];
  const a = parse(r0), b = parse(r1), cc = parse(r2);
  for (let i = 0; i < Math.max(a.length, b.length, cc.length); i++) {
    if (a[i]) interleaved.push(a[i]);
    if (b[i]) interleaved.push(b[i]);
    if (cc[i]) interleaved.push(cc[i]);
  }
  const seen = new Set<string>();
  const titles = interleaved.filter(t => { if (seen.has(t)) return false; seen.add(t); return true; }).slice(0, 10);
  if (!titles.length) die('No titles returned');

  const totalTitleTokens = r0.promptTokens + r1.promptTokens + r2.promptTokens;
  console.log(c.dim('  titles  ') + c.blue(CONFIG.models.small) + c.dim('   tokens  ') + c.gray(`${totalTitleTokens.toLocaleString()} in`));

  const chosenTitle = await p.select({
    message: 'Pick a PR title',
    options: titles.map(t => ({ value: t, label: t })),
  });
  if (p.isCancel(chosenTitle)) { p.cancel('cancelled'); process.exit(0); }

  // ── Phase 2: fetch body using diff for chosen title ──
  const diff = getPRDiff(base);
  const bodyModel = pickModel(diff.length);
  const bodyContext = `## Title\n${chosenTitle}\n\n## Commits\n${log}\n\n## Diff\n${diff.slice(0, 80_000)}`;
  const s2 = spinner(`${bodyModel}  generating description…`);
  const bodyResult = await callMistral(bodyModel, PR_BODY_PROMPT, bodyContext);
  s2.stop();

  console.log(
    c.dim('  body    ') + c.blue(bodyModel) +
    c.dim('   tokens  ') + c.gray(`${bodyResult.promptTokens.toLocaleString()} in`) +
    c.dim(' · ') + c.gray(`${bodyResult.completionTokens} out`)
  );

  let title = chosenTitle;
  let body = bodyResult.message.replace(/^```markdown\n?/, '').replace(/\n?```$/, '').trim();

  prBox(title, body);

  const answer = await promptKey(c.dim('\n[Enter] create PR · [e] edit · anything else cancels\n> '));

  if (answer.toLowerCase() === 'e') {
    const tmp = `/tmp/oco_pr_${Date.now()}.md`;
    await Bun.write(tmp, `${title}\n\n${body}`);
    const editor = process.env.EDITOR || 'vi';
    Bun.spawnSync([editor, tmp], { stdio: ['inherit', 'inherit', 'inherit'] });
    const edited = await Bun.file(tmp).text();
    const [newTitle, ...rest] = edited.split('\n');
    title = newTitle.trim();
    body = rest.join('\n').trim();
    Bun.spawnSync(['rm', tmp]);
    prBox(title, body);
    const confirm = await promptKey(c.dim('\n[Enter] create PR · anything else cancels\n> '));
    if (confirm !== '') { console.log(c.gray('cancelled')); process.exit(0); }
  } else if (answer !== '') {
    console.log(c.gray('cancelled'));
    process.exit(0);
  }

  const ghArgs = ['pr', 'create', '--title', title, '--body', body, ...extraArgs];
  console.log(c.dim('\n$ gh ' + ghArgs.join(' ').slice(0, 120)));
  const proc = Bun.spawnSync(['gh', ...ghArgs], { stdio: ['inherit', 'inherit', 'inherit'] });
  if (!proc.success) die('gh pr create failed');
}

// ─── Subcommand: branch ──────────────────────────────────────────────────────

function getUnstagedDiff(): string {
  return git('diff');
}

function getUntrackedFiles(): string[] {
  const out = git('ls-files', '--others', '--exclude-standard');
  if (!out) return [];
  return out.split('\n').filter(Boolean);
}

function getUnstagedStats(): FileStat[] {
  const modified = git('diff', '--numstat');
  const untracked = getUntrackedFiles();
  const stats: FileStat[] = [];
  if (modified) {
    for (const line of modified.split('\n').filter(Boolean)) {
      const [added, removed, file] = line.split('\t');
      const binary = added === '-';
      stats.push({ file, added: binary ? 0 : +added, removed: binary ? 0 : +removed, binary });
    }
  }
  for (const f of untracked) {
    stats.push({ file: f, added: 0, removed: 0, binary: false });
  }
  return stats;
}

async function cmdBranch() {
  assertGitRepo();

  const diff = getUnstagedDiff();
  const untracked = getUntrackedFiles();
  if (!diff && !untracked.length) die('No unstaged changes or untracked files.');

  console.log('\n' + c.bold('oco branch'));

  const stats = getUnstagedStats();
  renderStagedFiles(stats);

  const context = diff.slice(0, 80_000) +
    (untracked.length ? `\n\nNew files:\n${untracked.join('\n')}` : '');

  const model = pickModel(context.length);

  const s1 = spinner(`${model}  generating branch names…`);
  const [r0, r1] = await Promise.all([
    callMistral(model, BRANCH_NAMES_PROMPT, context, undefined, 0),
    callMistral(model, BRANCH_NAMES_PROMPT, context, undefined, 0.6),
  ]);
  s1.stop();

  const parse = (r: MistralResult) => r.message.split('\n').map(l => l.trim()).filter(Boolean);
  const interleaved: string[] = [];
  const a = parse(r0), b = parse(r1);
  for (let i = 0; i < Math.max(a.length, b.length); i++) {
    if (a[i]) interleaved.push(a[i]);
    if (b[i]) interleaved.push(b[i]);
  }
  const seen = new Set<string>();
  const names = interleaved.filter(n => { if (seen.has(n)) return false; seen.add(n); return true; }).slice(0, 10);
  if (!names.length) die('No branch names returned');

  const totalTokens = r0.promptTokens + r1.promptTokens;
  console.log(
    c.dim('  model  ') + c.blue(model) +
    c.dim('   tokens  ') + c.gray(`${totalTokens.toLocaleString()} in`)
  );

  const chosen = await p.select({
    message: 'Pick a branch name',
    options: names.map(n => ({ value: n, label: n })),
  });
  if (p.isCancel(chosen)) { p.cancel('cancelled'); process.exit(0); }

  const currentBranch = git('branch', '--show-current');
  const proc = Bun.spawnSync(['git', 'checkout', '-b', chosen as string], { stdout: 'pipe', stderr: 'pipe' });
  if (!proc.success) die(proc.stderr.toString().trim() || 'git checkout -b failed');

  console.log(c.green(`\n✔ switched to ${c.bold(chosen as string)}`) + c.dim(` (from ${currentBranch})`));
}

// ─── Main ─────────────────────────────────────────────────────────────────────

async function main() {
  if (!CONFIG.apiKey) die('MISTRAL_KEY is not set');

  const argv = process.argv.slice(2);
  const subcommand = ['pr', 'branch'].includes(argv[0]) ? argv[0] : 'commit';
  const rest = subcommand !== 'commit' ? argv.slice(1) : argv;

  switch (subcommand) {
    case 'pr':     return cmdPR(rest);
    case 'branch': return cmdBranch();
    default:       return cmdCommit();
  }
}

main().catch(err => die(String(err)));
