#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."
for dep in thistle baguette; do
  pin="$(git ls-files -s -- "$dep" | awk '$1 == "160000" {print $2}')"
  [[ "$pin" =~ ^[0-9a-f]{40}$ ]]
  test "$(git -C "$dep" rev-parse --show-toplevel)" = "$(pwd)/$dep"
  test "$(git -C "$dep" rev-parse HEAD)" = "$pin"
  git -C "$dep" diff --quiet --ignore-submodules=dirty
  git -C "$dep" diff --cached --quiet --ignore-submodules=dirty
  printf '%s %s\n' "$dep" "$pin"
done
pin="$(git -C baguette ls-tree HEAD vendor/bake | awk '$1 == "160000" {print $3}')"
test "$(git -C baguette/vendor/bake rev-parse --show-toplevel)" = "$(pwd)/baguette/vendor/bake"
test "$(git -C baguette/vendor/bake rev-parse HEAD)" = "$pin"
git -C baguette/vendor/bake diff --quiet
git -C baguette/vendor/bake diff --cached --quiet
printf 'bake %s\n' "$pin"
