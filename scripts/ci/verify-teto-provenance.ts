import assert from "node:assert/strict";
import { readFile } from "node:fs/promises";
import { resolve } from "node:path";

interface BaguetteConfig {
  entries?: string[];
  completeKernel?: boolean;
  productionKernel?: string;
}
interface Manifest { generatedFrom?: Array<{ path: string }>; }
const canonical = (path: string): boolean =>
  /(?:^|\/)src\/core\/kernel\.ts$/.test(path.replaceAll("\\", "/"));
const separate = (path: string): boolean =>
  /(?:^|\/)src\/teto\/kernel\.ts$/.test(path.replaceAll("\\", "/"));

export const assertThistleTetoProvenance = (config: BaguetteConfig, manifest: Manifest): void => {
  assert.equal(config.productionKernel, "Thistle", "Production kernel must be Thistle");
  assert.equal(config.completeKernel, true, "Teto must compile the complete canonical Thistle kernel");
  assert.ok(config.entries?.some(canonical), "Teto must use src/core/kernel.ts as a Baguette entry");
  assert.ok(!config.entries?.some(separate), "Teto must never compile src/teto/kernel.ts");
  assert.ok(manifest.generatedFrom?.some(entry => canonical(entry.path)),
    "Compiled WASM provenance must contain canonical Thistle kernel source");
  assert.ok(!manifest.generatedFrom?.some(entry => separate(entry.path)),
    "Compiled WASM provenance must not include separate Teto execution source");
};

// Regression: even an otherwise successful legacy compilation must be rejected.
const bad = { entries: ["src/teto/kernel.ts"], completeKernel: false, productionKernel: "Thistle" };
assert.throws(() => assertThistleTetoProvenance(bad, { generatedFrom: [{ path: "src/teto/kernel.ts" }] }));
assert.doesNotThrow(() => assertThistleTetoProvenance(
  { entries: ["src/core/kernel.ts", "src/teto/abi.ts"], completeKernel: true, productionKernel: "Thistle" },
  { generatedFrom: [{ path: "src/core/kernel.ts" }] },
));

const root = resolve(import.meta.dir, "../..");
const config = JSON.parse(await readFile(resolve(root, "baguette.config.json"), "utf8")) as BaguetteConfig;
const manifest = JSON.parse(await readFile(resolve(root, "dist/teto/teto.manifest.json"), "utf8")) as Manifest;
assertThistleTetoProvenance(config, manifest);
console.log("PASS: Teto uses only canonical Thistle kernel source and the generated WASM proves it");
