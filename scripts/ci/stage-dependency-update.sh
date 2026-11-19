#!/usr/bin/env bash
set -Eeuo pipefail
cd "$(git rev-parse --show-toplevel)"
dependency="${1:?dependency name required}"
revision="${2:?dependency revision required}"
[[ "$revision" =~ ^[0-9a-f]{40}$ ]]
case "$dependency" in Thistle|Baguette) ;; *) exit 2 ;; esac
bash scripts/verify-pins.sh
bash scripts/build.sh verify-source
bake="$(git -C baguette/bake rev-parse HEAD)"
jq -e --arg name "$dependency" --arg revision "$revision" --arg bake "$bake" \
  --slurpfile pins project.dependencies.json --slurpfile releases upstream.releases.json '
  $pins[0].dependencies as $p |
  $releases[0].dependencies as $r |
  ($p | map({key: .name, value: .commit}) | from_entries) as $actual |
  ($p | length) == 2 and ($r | length) == 2 and
  ($actual | keys) == ["Baguette","Thistle"] and $actual[$name] == $revision and
  all($p[]; . as $pin |
    ([$r[] | select(.path == $pin.path and .repository == $pin.repository and .commit == $pin.commit)] | length) == 1) and
  .toolchain == ($actual + {Bake: $bake}) and .canonicalRevision == $actual.Thistle
' teto.manifest.json > /dev/null
expected="$(mktemp)"
trap 'rm -f "$expected"' EXIT
{ find src abi -type f; printf '%s\n' teto.manifest.json; } | LC_ALL=C sort > "$expected"
cut -d ' ' -f 3- SHA256SUMS | LC_ALL=C sort | cmp - "$expected"
for variant in teto teto-threads; do
  test -s "dist/teto/$variant.wasm"
done
git add -A -- src abi teto.manifest.json SHA256SUMS project.dependencies.json upstream.releases.json "${dependency,,}"
while IFS= read -r -d '' path; do
  case "$path" in
    src/*|abi/*|teto.manifest.json|SHA256SUMS|project.dependencies.json|upstream.releases.json|"${dependency,,}") ;;
    *) echo "Unexpected staged path: $path" >&2; exit 1 ;;
  esac
done < <(git diff --cached --name-only -z)
git diff --quiet || { echo "Unexpected unstaged changes" >&2; exit 1; }
[[ -z "$(git ls-files --others --exclude-standard)" ]] || { echo "Unexpected untracked files" >&2; exit 1; }
