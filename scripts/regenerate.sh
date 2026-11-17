#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."
git submodule update --init --recursive
bash scripts/verify-pins.sh
if [[ -n "$(git status --porcelain --untracked-files=all -- src abi teto.manifest.json SHA256SUMS)" ]]; then
  echo "Refusing to overwrite modified generated source" >&2
  exit 1
fi
mkdir -p build
# Write a temporary configuration with the exact pinned kernel and its memory policy.
bun -e '
import { THISTLE_WASM_INITIAL_PAGES, THISTLE_WASM_MAXIMUM_PAGES } from "./thistle/src/core/kernel-memory.ts";
const cfg = await Bun.file("baguette.config.json").json();
const prefix = (value: string) => "../" + value;
cfg.project = prefix(cfg.project);
cfg.entries = cfg.entries.map(prefix);
cfg.intrinsicModules = cfg.intrinsicModules.map(prefix);
cfg.variants = cfg.variants.map((v: {preludeFile: string}) => ({...v, preludeFile: prefix(v.preludeFile)}));
cfg.generatedDir = prefix(cfg.generatedDir);
cfg.outDir = prefix(cfg.outDir);
cfg.canonicalRevision = process.argv[1];
cfg.memory.initialPages = THISTLE_WASM_INITIAL_PAGES;
cfg.memory.maximumPages = THISTLE_WASM_MAXIMUM_PAGES;
await Bun.write("build/teto-production.json", JSON.stringify(cfg, null, 2) + "\n");
' "$(git -C thistle rev-parse HEAD)"
nice -n 10 bun baguette/src/compiler.ts --config build/teto-production.json
mkdir -p src abi
cp build/teto-generated/teto.wat build/teto-generated/teto-threads.wat src/
cp build/reference/host-interface.d.ts abi/
python3 - <<'PY'
import json, subprocess
from pathlib import Path
root = str(Path.cwd()) + "/"
def relative(value):
    if isinstance(value, str):
        return value.removeprefix(root)
    if isinstance(value, list):
        return [relative(item) for item in value]
    if isinstance(value, dict):
        return {key: relative(item) for key, item in value.items()}
    return value
manifest = relative(json.loads(Path("build/reference/teto.manifest.json").read_text()))
config = json.loads(Path("build/teto-production.json").read_text())
manifest["memory"] = config["memory"]
manifest["toolchain"] = {name: subprocess.check_output(["git", "-C", path, "rev-parse", "HEAD"], text=True).strip()
                         for name, path in [("Thistle", "thistle"), ("Bake", "baguette/vendor/bake"), ("Baguette", "baguette")]}
for name, item in manifest["variants"].items():
    item["file"] = "dist/teto/" + name
manifest["proof"]["generatedWAT"] = ["src/teto.wat", "src/teto-threads.wat"]
Path("teto.manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
PY
sha256sum src/teto.wat src/teto-threads.wat abi/host-interface.d.ts teto.manifest.json > SHA256SUMS
# The independent WAT build is required to reproduce the reference binary.
bash scripts/build.sh
