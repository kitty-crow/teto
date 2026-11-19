#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."
verify_source() {
  sha256sum -c SHA256SUMS
}
typecheck() {
  bun --bun tsc --noEmit --project tsconfig.scripts.json
}
link_wat() {
  mkdir -p build
  bun scripts/link-wat.mts src/baseline/layout.json build/teto.wat
  bun scripts/link-wat.mts src/threaded/layout.json build/teto-threads.wat
}
compile_wasm() {
  mkdir -p dist/teto
  for variant in teto teto-threads; do
    nice -n 10 bun node_modules/.bin/wasm-opt "build/$variant.wat" \
      -O3 --all-features --strip-debug -o "dist/teto/$variant.wasm"
  done
}
verify_wasm() {
  bun scripts/verify-wasm.mts
  cp teto.manifest.json abi/host-interface.d.ts dist/teto/
}
case "${1:-all}" in
  verify-source) verify_source ;;
  type-check) typecheck ;;
  link) link_wat ;;
  compile) compile_wasm ;;
  verify) verify_wasm ;;
  all) verify_source; typecheck; link_wat; compile_wasm; verify_wasm ;;
  *) echo "Usage: $0 [verify-source|type-check|link|compile|verify|all]" >&2; exit 2 ;;
esac
