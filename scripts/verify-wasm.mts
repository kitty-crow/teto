import assert from "node:assert/strict";
import { readFileSync } from "node:fs";
import { createHash } from "node:crypto";
import { array, boolean, integer, readJson, record, string } from "./json.mts";

const manifest = readJson("teto.manifest.json");
assert.equal(manifest.canonicalSource, "Thistle");
assert.equal(manifest.completeKernel, true);
const limits = record(manifest.memory);
const variants = record(manifest.variants);
for (const variant of ["teto", "teto-threads"]) {
  const name = variant + ".wasm";
  const expected = record(variants[name]);
  const bytes = Uint8Array.from(readFileSync("dist/teto/" + name));
  assert.equal(createHash("sha256").update(bytes).digest("hex"), string(expected.sha256),
    "WAT assembly must reproduce the Baguette reference binary: " + name);
  const module = new WebAssembly.Module(bytes);
  assert.deepEqual(WebAssembly.Module.imports(module), array(expected.imports));
  assert.deepEqual(WebAssembly.Module.exports(module).map(e => e.name).sort(), array(expected.exports).map(string).sort());
  const memory = new WebAssembly.Memory({initial: integer(limits.initialPages),
    maximum: integer(limits.maximumPages), shared: boolean(expected.threaded)});
  const instance = new WebAssembly.Instance(module, {env: {memory}});
  const init = instance.exports.tetoKernelInit;
  const valid = instance.exports.tetoKernelValid;
  assert.ok(typeof init === "function" && typeof valid === "function");
  assert.equal(init(0, 1, 0), 0);
  assert.equal(valid(0), 1);
}
