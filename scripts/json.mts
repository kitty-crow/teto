import assert from "node:assert/strict";
import { readFileSync } from "node:fs";

function isRecord(value: unknown): value is Record<string, unknown> {
  return value !== null && typeof value === "object" && !Array.isArray(value);
}

export function record(value: unknown): Record<string, unknown> {
  assert.ok(isRecord(value));
  return value;
}

export function array(value: unknown): unknown[] {
  assert.ok(Array.isArray(value));
  return value;
}

export function string(value: unknown): string {
  assert.ok(typeof value === "string");
  return value;
}

export function integer(value: unknown): number {
  assert.ok(typeof value === "number" && Number.isSafeInteger(value));
  return value;
}

export function boolean(value: unknown): boolean {
  assert.ok(typeof value === "boolean");
  return value;
}

export function readJson(path: string): Record<string, unknown> {
  const value: unknown = JSON.parse(readFileSync(path, "utf8"));
  return record(value);
}
