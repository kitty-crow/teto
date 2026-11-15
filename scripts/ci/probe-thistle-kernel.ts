import { readFile, writeFile } from "node:fs/promises";
import { resolve } from "node:path";
import { spawnSync } from "node:child_process";

const root = resolve(import.meta.dir, "../..");
const source = resolve(root, "build/thistle-source");
const revision = (await readFile(resolve(root, "build/thistle-source.sha"), "utf8")).trim();
if (!/^[a-f0-9]{40}$/.test(revision)) throw new Error("Invalid fetched Thistle revision");

const config = {
  schema: 1,
  name: "Canonical Thistle complete kernel migration probe",
  project: "tsconfig.json",
  entries: ["src/native/abi.ts", "src/native/kernel.ts", "src/native/vfs.ts", "src/native/thx.ts", "src/native/start.ts"],
  generatedDir: "../thistle-kernel-generated",
  outDir: "../../dist/thistle-kernel-probe",
  moduleBaseName: "thistle-kernel-probe",
  intrinsicModules: [],
  abi: { exports: "all-exported-functions" },
  memory: { initialPages: 8192, maximumPages: 32768, import: true, export: false },
  runtime: "stub",
  variants: [{
    name: "thistle-kernel-probe",
    threaded: false,
    preludeFile: "../../baguette/prelude/teto-baseline.ts",
  }],
  allowedHostImports: [{ module: "env", name: "memory", kind: "memory" }],
  completeKernel: true,
  productionKernel: "Thistle",
  canonicalSource: "Thistle",
  canonicalRevision: revision,
  materialiseInferredTypes: true,
};
const path = resolve(source, "baguette.kernel.config.json");
await writeFile(path, JSON.stringify(config, null, 2) + "\n");
console.log(`Testing canonical Thistle kernel at ${revision} via Bake and Baguette`);
const result = spawnSync("bun", [
  "baguette/src/compiler.ts", "--config",
  "build/thistle-source/baguette.kernel.config.json", "--validate-only",
], { cwd: root, stdio: "inherit" });
if (result.status !== 0) throw new Error(`Canonical Thistle kernel lowering failed (status ${result.status})`);
console.log("PASS: full canonical Thistle kernel has passed Bake and Baguette validation");
