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
pin="$(git -C baguette ls-tree HEAD bake | awk '$1 == "160000" {print $3}')"
test "$(git -C baguette/bake rev-parse --show-toplevel)" = "$(pwd)/baguette/bake"
test "$(git -C baguette/bake rev-parse HEAD)" = "$pin"
git -C baguette/bake diff --quiet
git -C baguette/bake diff --cached --quiet
printf 'bake %s\n' "$pin"
pins="$(jq -ce '
  .dependencies |
  if length == 2 and ([.[].name] | sort) == ["Baguette","Thistle"] and
    all(.[]; .direct == true and .path == (.name | ascii_downcase) and .repository == ("kittycrow-kittyx/" + .path) and (.commit | test("^[0-9a-f]{40}$")))
  then .[] else error("Unexpected direct dependency pins") end
' project.dependencies.json)"
while IFS= read -r item; do
  name="$(jq -er .name <<< "$item")"
  path="$(jq -er .path <<< "$item")"
  commit="$(jq -er .commit <<< "$item")"
  actual="$(git -C "$path" rev-parse HEAD)"
  [[ "$actual" == "$commit" ]] || {
    echo "Pin mismatch: $name: $actual != $commit" >&2
    exit 1
  }
done <<< "$pins"
