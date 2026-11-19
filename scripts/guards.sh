#!/usr/bin/env bash
set -euo pipefail
root="$(git rev-parse --show-toplevel)"
cd "$root"
scan="$(mktemp -d)"
trap 'rm -rf "$scan"' EXIT
# Only Teto-owned tracked and unignored files; generated WAT is not TypeScript.
while IFS= read -r -d '' file; do
  [ -f "$file" ] || continue
  mkdir -p "$scan/$(dirname "$file")"
  cp "$file" "$scan/$file"
done < <(git ls-files -z --cached --others --exclude-standard)
ln -s "$root/node_modules" "$scan/node_modules"
bun "$root/node_modules/@kitty-crow/code-guards/src/cli.ts" all --strict --include-tests --project "$scan/tsconfig.scripts.json"
