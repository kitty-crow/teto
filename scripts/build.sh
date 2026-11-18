#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."
sha256sum -c SHA256SUMS
test -x node_modules/.bin/wasm-opt
test -x node_modules/.bin/tsc
if [[ -x node_modules/.bin/bun ]]; then
  bun_runner=node_modules/.bin/bun
else
  bun_runner="$(command -v bun)"
fi
node_modules/.bin/tsc --noEmit --project tsconfig.scripts.json
mkdir -p dist/teto build
for variant in teto teto-threads; do
  case "$variant" in teto) source=baseline ;; teto-threads) source=threaded ;; esac
  "$bun_runner" scripts/link-wat.mts "src/$source/layout.json" "build/$variant.wat"
  nice -n 10 node_modules/.bin/wasm-opt "build/$variant.wat" \
    -O3 --all-features --strip-debug -o "dist/teto/$variant.wasm"
done
"$bun_runner" scripts/verify-wasm.mts
cp teto.manifest.json abi/host-interface.d.ts dist/teto/
