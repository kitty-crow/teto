import assert from "node:assert/strict";
import { readFile } from "node:fs/promises";
import { resolve } from "node:path";

interface BaguetteConfig {
  entries?: string[];
  completeKernel?: boolean;
  canonicalSource?: string;
  canonicalRevision?: string;
  canonicalOriginalEntries?: string[];
  productionKernel?: string;
}
interface Manifest { generatedFrom?: Array<{ path: string }>; }
const canonical = (path: string): boolean =>
  /(?:^|\/)src\/core\/kernel\.ts$/.test(path.replaceAll("\\", "/"));
const separate = (path: string): boolean =>
  /(?:^|\/)src\/teto\/kernel\.ts$/.test(path.replaceAll("\\", "/"));

export const assertThistleTetoProvenance = (config: BaguetteConfig, manifest: Manifest): void => {
  assert.equal(config.productionKernel, "Thistle", "Production kernel must be Thistle");
  assert.equal(config.canonicalSource, "Thistle", "Production build must declare canonical Thistle source");
  assert.match(config.canonicalRevision ?? "", /^[a-f0-9]{40}$/, "Production build must pin a real Thistle HEAD");
  assert.equal(config.completeKernel, true, "Teto must compile the complete canonical Thistle kernel");
  assert.ok(config.entries?.some(canonical), "Teto must use src/core/kernel.ts as a Baguette entry");
  assert.ok(!config.entries?.some(separate), "Teto must never compile src/teto/kernel.ts");
  const origin = (manifest as Manifest & { canonicalOriginalEntries?: string[]; canonicalRevision?: string })
    .canonicalOriginalEntries;
  assert.ok(origin?.some(canonical), "Baguette manifest must retain original Thistle kernel source");
  assert.equal((manifest as Manifest & { canonicalRevision?: string }).canonicalRevision,
    config.canonicalRevision, "Compiled Teto must be traced to the selected Thistle revision");
  assert.ok(!manifest.generatedFrom?.some(entry => separate(entry.path)),
    "Compiled WASM provenance must not include separate Teto execution source");
};

// Regression: even an otherwise successful legacy compilation must be rejected.
const bad = { entries: ["src/teto/kernel.ts"], completeKernel: false, productionKernel: "Thistle" };
assert.throws(() => assertThistleTetoProvenance(bad, { generatedFrom: [{ path: "src/teto/kernel.ts" }] }));
assert.doesNotThrow(() => assertThistleTetoProvenance(
  { entries: ["src/core/kernel.ts", "src/teto/abi.ts"], completeKernel: true, productionKernel: "Thistle",
    canonicalSource: "Thistle", canonicalRevision: "f851ea0c70a6be819be70aa0112ca1f84d67d873" },
  { generatedFrom: [{ path: "src/core/kernel.ts" }],
    canonicalOriginalEntries: ["src/core/kernel.ts"],
    canonicalRevision: "f851ea0c70a6be819be70aa0112ca1f84d67d873" },
));

const root = resolve(import.meta.dir, "../..");
const config = JSON.parse(await readFile(resolve(root, "build/thistle-source/baguette.production.config.json"), "utf8")) as BaguetteConfig;
const manifest = JSON.parse(await readFile(resolve(root, "dist/teto/teto.manifest.json"), "utf8")) as Manifest;
assertThistleTetoProvenance(config, manifest);
console.log("PASS: Teto uses only canonical Thistle kernel source and the generated WASM proves it");
