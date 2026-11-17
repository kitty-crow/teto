import assert from "node:assert/strict";
import { readFileSync, writeFileSync } from "node:fs";
import { dirname, join } from "node:path";

const [manifest, output] = process.argv.slice(2);
assert.ok(manifest && output, "Usage: link-wat.mjs LAYOUT OUTPUT");
const layout = JSON.parse(readFileSync(manifest, "utf8"));
assert.equal(layout.schema, 1);
assert.equal(layout.encoding, "utf-16-code-units");
assert.equal(typeof layout.prefix, "string");
assert.equal(typeof layout.suffix, "string");
const files = new Map();
const positions = new Map();
const allowed = new Set(["module.wat", "runtime.wat", ...layout.modules.map(module => module.file)]);
const chunks = [layout.prefix];
for (const [file, offset, length] of layout.order) {
  assert.ok(allowed.has(file) && /^[A-Za-z0-9_./-]+\.wat$/.test(file) &&
    file.split("/").every(part => part && part !== "." && part !== ".."), "Invalid WAT path");
  if (!files.has(file)) files.set(file, readFileSync(join(dirname(manifest), file), "utf8"));
  const text = files.get(file);
  assert.ok(Number.isSafeInteger(offset) && Number.isSafeInteger(length) && length > 0);
  assert.equal(offset, positions.get(file) ?? 0, "Invalid WAT field order: " + file);
  assert.ok(offset + length <= text.length, "Truncated WAT field: " + file);
  chunks.push(text.slice(offset, offset + length));
  positions.set(file, offset + length);
}
for (const [file, text] of files) {
  assert.equal(text.slice(positions.get(file)), "\n", "Unlinked WAT declarations: " + file);
}
for (const mod of layout.modules) {
  assert.equal(positions.has(mod.file), mod.fields > 0, "Missing module fields: " + mod.file);
}
chunks.push(layout.suffix);
writeFileSync(output, chunks.join(""));
