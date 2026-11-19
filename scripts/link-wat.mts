import assert from "node:assert/strict";
import { readFileSync, writeFileSync } from "node:fs";
import { dirname, join } from "node:path";
import { array, integer, readJson, record, string } from "./json.mts";

type ModuleRecord = { file: string; fields: number };
type Field = [file: string, offset: number, length: number];

const manifest = process.argv[2] ?? null;
const output = process.argv[3] ?? null;
assert.ok(manifest && output, "Usage: link-wat.mts LAYOUT OUTPUT");
const layout = readJson(manifest);
assert.equal(layout.schema ?? null, 1);
assert.equal(layout.encoding ?? null, "utf-16-code-units");
const modules: ModuleRecord[] = array(layout.modules ?? null).map(value => {
  const module = record(value);
  return { file: string(module.file ?? null), fields: integer(module.fields ?? null) };
});
const order: Field[] = array(layout.order ?? null).map(value => {
  const field = array(value);
  assert.equal(field.length, 3);
  return [string(field[0] ?? null), integer(field[1] ?? null), integer(field[2] ?? null)];
});
const files = new Map<string, string>();
const positions = new Map<string, number>();
const allowed = new Set(["module.wat", "runtime.wat", ...modules.map(module => module.file)]);
const chunks = [string(layout.prefix ?? null)];
for (const [file, offset, length] of order) {
  assert.ok(allowed.has(file) && /^[A-Za-z0-9_./-]+\.wat$/.test(file) &&
    file.split("/").every(part => part && part !== "." && part !== ".."), "Invalid WAT path");
  if (!files.has(file)) files.set(file, readFileSync(join(dirname(manifest), file), "utf8"));
  const text = files.get(file) ?? null;
  assert.ok(text !== null);
  assert.ok(length > 0);
  assert.equal(offset, positions.get(file) ?? 0, "Invalid WAT field order: " + file);
  assert.ok(offset + length <= text.length, "Truncated WAT field: " + file);
  chunks.push(text.slice(offset, offset + length));
  positions.set(file, offset + length);
}
for (const [file, text] of files) {
  const position = positions.get(file) ?? null;
  assert.ok(position !== null);
  assert.equal(text.slice(position), "\n", "Unlinked WAT declarations: " + file);
}
for (const mod of modules) {
  assert.equal(positions.has(mod.file), mod.fields > 0, "Missing module fields: " + mod.file);
}
chunks.push(string(layout.suffix ?? null));
writeFileSync(output, chunks.join(""));
