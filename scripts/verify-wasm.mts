import assert from "node:assert/strict";
import { readFileSync } from "node:fs";
import { createHash } from "node:crypto";
import { array, boolean, integer, readJson, record, string } from "./json.mts";

const manifest = readJson("teto.manifest.json");
assert.equal(manifest.canonicalSource ?? null, "Thistle");
assert.equal(manifest.completeKernel ?? null, true);
const limits = record(manifest.memory ?? null);
const variants = record(manifest.variants ?? null);
for (const variant of ["teto", "teto-threads"]) {
  const name = variant + ".wasm";
  const expected = record(variants[name] ?? null);
  const bytes = Uint8Array.from(readFileSync("dist/teto/" + name));
  assert.equal(createHash("sha256").update(bytes).digest("hex"), string(expected.sha256 ?? null),
    "WAT assembly must reproduce the Baguette reference binary: " + name);
  const module = new WebAssembly.Module(bytes);
  // Runtimes may expose extra import type metadata. Compare the manifest's
  // portable descriptor fields; the exact binary hash above still verifies
  // the full import types, including memory limits and sharedness.
  const actualImports = WebAssembly.Module.imports(module).map(({module, name, kind}) => ({module, name, kind}));
  const expectedImports = array(expected.imports ?? null).map(value => {
    const item = record(value);
    return {module: string(item.module ?? null), name: string(item.name ?? null), kind: string(item.kind ?? null)};
  });
  assert.deepEqual(actualImports, expectedImports);
  assert.deepEqual(WebAssembly.Module.exports(module).map(e => e.name).sort(), array(expected.exports ?? null).map(string).sort());
  const memory = new WebAssembly.Memory({initial: integer(limits.initialPages ?? null),
    maximum: integer(limits.maximumPages ?? null), shared: boolean(expected.threaded ?? null)});
  const instance = new WebAssembly.Instance(module, {env: {memory}});
  const init = instance.exports.tetoKernelInit ?? null;
  const valid = instance.exports.tetoKernelValid ?? null;
  assert.ok(typeof init === "function" && typeof valid === "function");
  // The manifest declares the numeric ABI; the export kinds are checked above.
  const initialize = init as (address: number, harts: number, flags: number) => number;
  const validate = valid as (address: number) => number;
  assert.equal(initialize(0, 1, 0), 0);
  assert.equal(validate(0), 1);
}
