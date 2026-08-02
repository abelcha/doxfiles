// Dump available pi models (auth-configured) with cost data.
// Used by fish completions for `pi --model`.
// Run: bun ~/.config/fish/pi-models.mjs
import { fileURLToPath } from "node:url";
import { dirname, join } from "node:path";

// Resolve the pi-coding-agent package regardless of CWD by following the `pi` symlink.
import { realpathSync } from "node:fs";
let pkgDir;
try {
  const piPath = realpathSync(Bun.which("pi") ?? "");
  // pi -> .../dist/cli.js  => package root is two levels up.
  pkgDir = dirname(dirname(piPath));
} catch {
  console.error("pi-models: could not locate the `pi` executable on PATH");
  process.exit(1);
}

const { AuthStorage } = await import(join(pkgDir, "dist/core/auth-storage.js"));
const { ModelRegistry } = await import(join(pkgDir, "dist/core/model-registry.js"));

const fmt = (n) =>
  n >= 1e6 ? `${(n / 1e6) % 1 === 0 ? n / 1e6 : (n / 1e6).toFixed(1)}M`
  : n >= 1e3 ? `${(n / 1e3) % 1 === 0 ? n / 1e3 : (n / 1e3).toFixed(1)}K`
  : `${n}`;

// $/Mtok -> compact string. 0 means free/unknown-priced (e.g. local).
const money = (n) => (n === 0 ? "free" : `$${Number.isInteger(n) ? n : n.toFixed(2)}`);

const as = AuthStorage.create();
const mr = ModelRegistry.create(as);

const models = mr.getAvailable().slice().sort((a, b) => {
  const p = a.provider.localeCompare(b.provider);
  return p !== 0 ? p : a.id.localeCompare(b.id);
});

for (const m of models) {
  const ctx = fmt(m.contextWindow);
  const out = fmt(m.maxTokens);
  const desc = `${ctx} ctx, ${out} out, ${money(m.cost.input)} in / ${money(m.cost.output)} out per Mtok`;
  console.log(`${m.provider}/${m.id}\t${desc}`);
}
