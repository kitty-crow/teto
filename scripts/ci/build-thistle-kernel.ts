import { readFile, writeFile } from "node:fs/promises";
import { resolve } from "node:path";
import { spawnSync } from "node:child_process";

const root = resolve(import.meta.dir, "../..");
const source = resolve(root, "build/thistle-source");
const sha = (await readFile(resolve(root, "build/thistle-source.sha"), "utf8")).trim();
if (!/^[a-f0-9]{40}$/.test(sha)) throw new Error("Teto build requires an exact fetched Thistle SHA");
const rev = spawnSync("git", ["-C", source, "rev-parse", "HEAD"], { encoding: "utf8" });
if (rev.status !== 0 || rev.stdout.trim() !== sha) {
  throw new Error("Staged Thistle source does not match the resolved upstream revision");
}
const { THISTLE_WASM_INITIAL_PAGES, THISTLE_WASM_MAXIMUM_PAGES } =
  await import("../../build/thistle-source/src/core/kernel-memory.ts");
if (THISTLE_WASM_INITIAL_PAGES !== 8192) throw new Error("Thistle no longer defines a 512 MiB kernel allocation");
const previous = JSON.parse(await readFile(resolve(root, "baguette.config.json"), "utf8"));
const config = {
  ...previous,
  name: "Teto",
  project: "tsconfig.json",
  entries: ["src/native/abi.ts", "src/native/kernel.ts", "src/native/vfs.ts", "src/native/thx.ts", "src/native/start.ts"],
  generatedDir: "../teto-generated",
  outDir: "../../dist/teto",
  moduleBaseName: "teto",
  intrinsicModules: ["src/native/types.ts","src/native/memory.ts","src/native/word.ts","src/core/rv64-numbers.ts"],
  abi: previous.abi,
  memory: {
    initialPages: THISTLE_WASM_INITIAL_PAGES,
    maximumPages: THISTLE_WASM_MAXIMUM_PAGES,
    import: true,
    export: false,
  },
  variants: previous.variants.map((variant: { name: string; threaded: boolean; preludeFile: string }) => ({
    ...variant,
    preludeFile: "../../" + variant.preludeFile,
  })),
  completeKernel: true,
  productionKernel: "Thistle",
  canonicalSource: "Thistle",
  canonicalRevision: sha,
};
const configPath = resolve(source, "baguette.production.config.json");
await writeFile(configPath, JSON.stringify(config, null, 2) + "\n");
console.log(`Teto build: Thistle ${sha} -> Bake -> Baguette; kernel memory 512 MiB`);
const args = ["baguette/src/compiler.ts", "--config", "build/thistle-source/baguette.production.config.json", ...process.argv.slice(2)];
const result = spawnSync("bun", args, { cwd: root, stdio: "inherit" });
if (result.status !== 0) throw new Error(`Teto cannot be built from canonical Thistle yet (exit ${result.status})`);
console.log("PASS: Teto was generated from the canonical Thistle source");
