#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."
case "${1:-}" in
  "")
    git submodule update --init --recursive
    bash scripts/verify-pins.sh
    bash scripts/fetch-upstream.sh
    bun install --cwd build/upstream/baguette --frozen-lockfile
    bun install --cwd build/upstream/baguette/bake --frozen-lockfile
    ;;
  --source-only) bash scripts/verify-pins.sh ;;
  *) echo "Usage: $0 [--source-only]" >&2; exit 2 ;;
esac
for dep in thistle baguette; do
  [[ "$(cat "build/upstream/$dep/RELEASE_COMMIT")" == "$(git -C "$dep" rev-parse HEAD)" ]]
done
[[ "$(cat build/upstream/baguette/bake/RELEASE_COMMIT)" == "$(git -C baguette/bake rev-parse HEAD)" ]]
if [[ -n "$(git status --porcelain --untracked-files=all -- src abi teto.manifest.json SHA256SUMS)" ]]; then
  echo "Refusing to overwrite modified generated source" >&2
  exit 1
fi
mkdir -p build
# Write a temporary configuration with the exact pinned kernel and its memory policy.
bun -e '
import { THISTLE_WASM_INITIAL_PAGES, THISTLE_WASM_MAXIMUM_PAGES } from "./build/upstream/thistle/src/core/kernel-memory.ts";
const cfg = await Bun.file("baguette.config.json").json();
const source = (value: string) => "upstream/" + value;
const output = (value: string) => "../" + value;
cfg.project = source(cfg.project);
cfg.entries = cfg.entries.map(source);
cfg.intrinsicModules = cfg.intrinsicModules.map(source);
cfg.variants = cfg.variants.map((v: {preludeFile: string}) => ({...v, preludeFile: source(v.preludeFile)}));
cfg.generatedDir = output(cfg.generatedDir);
cfg.outDir = output(cfg.outDir);
cfg.canonicalRevision = process.argv[1];
cfg.memory.initialPages = THISTLE_WASM_INITIAL_PAGES;
cfg.memory.maximumPages = THISTLE_WASM_MAXIMUM_PAGES;
await Bun.write("build/teto-production.json", JSON.stringify(cfg, null, 2) + "\n");
' "$(git -C thistle rev-parse HEAD)"
nice -n 10 bun build/upstream/baguette/src/compiler.ts --config build/teto-production.json --emit-modular-wat
for variant in teto teto-threads; do
  test -s "build/teto-generated/$variant/layout.json"
  test -d "build/teto-generated/$variant/core"
  test -d "build/teto-generated/$variant/native"
  test -d "build/teto-generated/$variant/vm"
done
rm -rf src
mkdir -p src abi
cp -R build/teto-generated/teto src/baseline
cp -R build/teto-generated/teto-threads src/threaded
cp build/reference/host-interface.d.ts abi/
# Preserve input key order and strip only the same staging prefixes as before.
# Keep the stable WebAssembly import descriptor fields.
wat="$(find src -type f -name '*.wat' | LC_ALL=C sort | jq -R -s 'split("\n") | map(select(length > 0))')"
jq --arg root "$PWD/" \
  --argjson memory "$(jq -c .memory build/teto-production.json)" \
  --arg thistle "$(git -C thistle rev-parse HEAD)" \
  --arg bake "$(git -C baguette/bake rev-parse HEAD)" \
  --arg baguette "$(git -C baguette rev-parse HEAD)" \
  --argjson wat "$wat" '
  walk(if type == "string" then ltrimstr($root) | ltrimstr("build/upstream/") else . end)
  | .memory = $memory
  | .toolchain = {Thistle: $thistle, Bake: $bake, Baguette: $baguette}
  | .variants |= with_entries(
      .value.file = ("dist/teto/" + .key)
      | .value.imports |= map(with_entries(select(.key == "module" or .key == "name" or .key == "kind"))))
  | .proof.generatedWAT = $wat
  | .proof.modularWAT = {teto: "src/baseline/layout.json", "teto-threads": "src/threaded/layout.json"}
' build/reference/teto.manifest.json > teto.manifest.json
{ find src abi -type f; printf "%s\n" teto.manifest.json; } | LC_ALL=C sort | xargs sha256sum > SHA256SUMS
# The independent WAT build is required to reproduce the reference binary.
if [[ "${1:-}" != --source-only ]]; then bash scripts/build.sh; fi
