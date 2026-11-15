import assert from "node:assert/strict";
import { createHash } from "node:crypto";
import { readFile, mkdir, writeFile } from "node:fs/promises";
import { spawnSync } from "node:child_process";
import { resolve } from "node:path";

const root = resolve(import.meta.dir, "../..");
const source = resolve(root, "build/thistle-source");
const recordedSha = (await readFile(resolve(root, "build/thistle-source.sha"), "utf8")).trim();
assert.match(recordedSha, /^[a-f0-9]{40}$/, "Thistle checkout must be a resolved commit");
const rev = spawnSync("git", ["-C", source, "rev-parse", "HEAD"], { encoding: "utf8" });
assert.equal(rev.status, 0, rev.stderr);
assert.equal(rev.stdout.trim(), recordedSha, "Thistle source revision changed during build");

const { 
  THISTLE_KERNEL_MEMORY_BYTES,
  THISTLE_WASM_INITIAL_PAGES,
  THISTLE_WASM_MAXIMUM_PAGES,
  thistleKernelInitialPages,
  thistleKernelMaximumPages,
} = await import("../../build/thistle-source/src/core/kernel-memory.ts");
assert.equal(THISTLE_KERNEL_MEMORY_BYTES, 536870912, "Canonical Thistle must own the 512 MiB memory allocation");
assert.equal(THISTLE_WASM_INITIAL_PAGES, 8192);
assert.equal(thistleKernelInitialPages(), 8192);
assert.equal(thistleKernelMaximumPages(), THISTLE_WASM_MAXIMUM_PAGES);
const config = {
  schema: 1,
  name: "Canonical Thistle memory allocation (not the Teto kernel)",
  project: "tsconfig.json",
  entries: ["src/core/kernel-memory.ts"],
  generatedDir: "../thistle-memory-generated",
  outDir: "../../dist/thistle-memory-probe",
  moduleBaseName: "thistle-memory-probe",
  intrinsicModules: [],
  abi: { exports: ["thistleKernelInitialPages", "thistleKernelMaximumPages"] },
  memory: {
    initialPages: THISTLE_WASM_INITIAL_PAGES,
    maximumPages: THISTLE_WASM_MAXIMUM_PAGES,
    import: true,
    export: false,
  },
  runtime: "stub",
  variants: [{
    name: "thistle-memory-probe",
    threaded: false,
    preludeFile: "../../baguette/prelude/teto-baseline.ts",
  }],
  allowedHostImports: [{ module: "env", name: "memory", kind: "memory" }],
  completeKernel: false,
  productionKernel: "Thistle",
  materialiseInferredTypes: true,
};
const configPath = resolve(source, "baguette.memory.config.json");
await writeFile(configPath, JSON.stringify(config, null, 2) + "\n");
const compiled = spawnSync("bun", [
  "baguette/src/compiler.ts", "--config", "build/thistle-source/baguette.memory.config.json",
  "--skip-determinism-check",
], { cwd: root, stdio: "inherit" });
assert.equal(compiled.status, 0, "Bake/Baguette failed to compile canonical Thistle memory source");

const binary = await readFile(resolve(root, "dist/thistle-memory-probe/thistle-memory-probe.wasm"));
const memory = new WebAssembly.Memory({
  initial: THISTLE_WASM_INITIAL_PAGES,
  maximum: THISTLE_WASM_MAXIMUM_PAGES,
});
assert.equal(memory.buffer.byteLength, 512 * 1024 * 1024, "Kernel memory allocation is not 512 MiB");
const instance = await WebAssembly.instantiate(binary, { env: { memory } });
const exports = instance.instance.exports as {
  thistleKernelInitialPages(): number;
  thistleKernelMaximumPages(): number;
};
assert.equal(exports.thistleKernelInitialPages(), 8192);
assert.equal(exports.thistleKernelMaximumPages(), THISTLE_WASM_MAXIMUM_PAGES);

const manifest = JSON.parse(await readFile(
  resolve(root, "dist/thistle-memory-probe/thistle-memory-probe.manifest.json"), "utf8",
));
const sources = manifest.generatedFrom as Array<{ path: string; sha256: string }> | undefined;
const entry = sources?.find(item => item.path.endsWith("/core/kernel-memory.ts") ||
  item.path.endsWith("/kernel-memory.ts"));
assert.ok(entry, `Baguette manifest has no canonical kernel-memory source: ${JSON.stringify(sources)}`);
// Baguette records the *Bake-lowered* entry, not the original TypeScript file.
// Verify both stages separately rather than incorrectly expecting identical hashes.
assert.ok(entry.path.includes("build/thistle-source/build/baguette-bake/"),
  `Baguette bypassed Bake: ${entry.path}`);
const raw = await readFile(resolve(source, "src/core/kernel-memory.ts"));
const lowered = await readFile(resolve(root, entry.path));
const originalHash = createHash("sha256").update(raw).digest("hex");
const loweredHash = createHash("sha256").update(lowered).digest("hex");
assert.equal(entry.sha256, loweredHash, "Manifest does not match the emitted Bake-lowered source");
await mkdir(resolve(root, "dist/thistle-memory-probe"), { recursive: true });
await writeFile(resolve(root, "dist/thistle-memory-probe/thistle-origin.json"),
  JSON.stringify({ repository: "kitty-crow/thistle", commit: recordedSha, path: "src/core/kernel-memory.ts", originalSha256: originalHash, loweredSha256: loweredHash, bakeOutput: entry.path }, null, 2) + "\n");
console.log(`PASS: Thistle ${recordedSha} -> Bake -> Baguette -> WASM; memory 512 MiB (8192 pages)`);
