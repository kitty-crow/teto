import assert from "node:assert/strict";
import { readFileSync, writeFileSync } from "node:fs";
import { dirname, join } from "node:path";
import { array, integer, readJson, record, string } from "./json.mts";

type ModuleRecord = { file: string; fields: number };
type Field = [file: string, offset: number, length: number];

const [manifest, output] = process.argv.slice(2);
assert.ok(manifest && output, "Usage: link-wat.mts LAYOUT OUTPUT");
const layout = readJson(manifest);
assert.equal(layout.schema, 1);
assert.equal(layout.encoding, "utf-16-code-units");
const modules: ModuleRecord[] = array(layout.modules).map(value => {
  const module = record(value);
  return { file: string(module.file), fields: integer(module.fields) };
});
const order: Field[] = array(layout.order).map(value => {
  const field = array(value);
  assert.equal(field.length, 3);
  return [string(field[0]), integer(field[1]), integer(field[2])];
});
const files = new Map<string, string>();
const positions = new Map<string, number>();
const allowed = new Set(["module.wat", "runtime.wat", ...modules.map(module => module.file)]);
const chunks = [string(layout.prefix)];
for (const [file, offset, length] of order) {
  assert.ok(allowed.has(file) && /^[A-Za-z0-9_./-]+\.wat$/.test(file) &&
    file.split("/").every(part => part && part !== "." && part !== ".."), "Invalid WAT path");
  if (!files.has(file)) files.set(file, readFileSync(join(dirname(manifest), file), "utf8"));
  const text = files.get(file);
  assert.ok(text !== undefined);
  assert.ok(length > 0);
  assert.equal(offset, positions.get(file) ?? 0, "Invalid WAT field order: " + file);
  assert.ok(offset + length <= text.length, "Truncated WAT field: " + file);
  chunks.push(text.slice(offset, offset + length));
  positions.set(file, offset + length);
}
for (const [file, text] of files) {
  assert.equal(text.slice(positions.get(file)), "\n", "Unlinked WAT declarations: " + file);
}
for (const mod of modules) {
  assert.equal(positions.has(mod.file), mod.fields > 0, "Missing module fields: " + mod.file);
}
chunks.push(string(layout.suffix));
writeFileSync(output, chunks.join(""));
