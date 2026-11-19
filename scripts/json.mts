import assert from "node:assert/strict";
import { readFileSync } from "node:fs";

export type JsonValue = null | boolean | number | string | JsonObject | JsonValue[];
export interface JsonObject { [key: string]: JsonValue; }

const decode: (text: string) => JsonValue = JSON.parse;

function isRecord(value: JsonValue): value is JsonObject {
  return value !== null && typeof value === "object" && !Array.isArray(value);
}

export function record(value: JsonValue): JsonObject {
  assert.ok(isRecord(value));
  return value;
}

export function array(value: JsonValue): JsonValue[] {
  assert.ok(Array.isArray(value));
  return value;
}

export function string(value: JsonValue): string {
  assert.ok(typeof value === "string");
  return value;
}

export function integer(value: JsonValue): number {
  assert.ok(typeof value === "number" && Number.isSafeInteger(value));
  return value;
}

export function boolean(value: JsonValue): boolean {
  assert.ok(typeof value === "boolean");
  return value;
}

export function readJson(path: string): JsonObject {
  return record(decode(readFileSync(path, "utf8")));
}
