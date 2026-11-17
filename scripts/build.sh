#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."
sha256sum -c SHA256SUMS
test -x node_modules/.bin/wasm-opt
mkdir -p dist/teto build
for variant in teto teto-threads; do
  case "$variant" in teto) source=baseline ;; teto-threads) source=threaded ;; esac
  node scripts/link-wat.mjs "src/$source/layout.json" "build/$variant.wat"
  nice -n 10 node_modules/.bin/wasm-opt "build/$variant.wat" \
    -O3 --all-features --strip-debug -o "dist/teto/$variant.wasm"
done
node --input-type=module <<'NODE'
import assert from 'node:assert/strict';
import { readFileSync } from 'node:fs';
import { createHash } from 'node:crypto';
const manifest = JSON.parse(readFileSync('teto.manifest.json', 'utf8'));
assert.equal(manifest.canonicalSource, 'Thistle');
assert.equal(manifest.completeKernel, true);
for (const variant of ['teto', 'teto-threads']) {
  const name = variant + '.wasm';
  const expected = manifest.variants[name];
  const bytes = readFileSync('dist/teto/' + name);
  assert.equal(createHash('sha256').update(bytes).digest('hex'), expected.sha256,
    'WAT assembly must reproduce the Baguette reference binary: ' + name);
  const module = new WebAssembly.Module(bytes);
  assert.deepEqual(WebAssembly.Module.imports(module), expected.imports);
  assert.deepEqual(WebAssembly.Module.exports(module).map(e => e.name).sort(), [...expected.exports].sort());
  const memory = new WebAssembly.Memory({initial: manifest.memory.initialPages,
    maximum: manifest.memory.maximumPages, shared: expected.threaded});
  const instance = new WebAssembly.Instance(module, {env: {memory}});
  assert.equal(instance.exports.tetoKernelInit(0, 1, 0), 0);
  assert.equal(instance.exports.tetoKernelValid(0), 1);
}
NODE
cp teto.manifest.json abi/host-interface.d.ts dist/teto/
