#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
TAG=v2.2.0
OLD_RELEASE_COMMIT=8c0636d21eb9b603c5ecee81eeb77509c7c5d71e
OLD_TAG_OBJECT=f1a45a2a6e4a419de235ea6fecaeb96f538ee58d
RELEASE_PARENT=9ffd602f03b52870996e6cfc49882fdf0a3121c8
RELEASE_ID=451387050
[[ "$GH_REPO" == "kittycrow-kittyx/teto" ]]
test "$(git rev-parse HEAD)" = "$SOURCE_SHA"
test "$(git ls-remote origin refs/heads/main | cut -f1)" = "$SOURCE_SHA"
object="$(git ls-remote --refs origin "refs/tags/$TAG" | cut -f1)"
if [[ "$object" != "$OLD_TAG_OBJECT" ]]; then
  echo "Original release tag is absent or already consolidated."
  exit 0
fi
if [[ "$(git rev-parse HEAD^)" != "$RELEASE_PARENT" ]]; then
  echo "Source is outside the authorised consolidation."
  exit 0
fi
test "$(jq -r .version package.json)" = 2.2.0
gh api "repos/$GH_REPO/actions/runs/$VALIDATION_RUN_ID" | jq -e --arg sha "$SOURCE_SHA" --arg repo "$GH_REPO" '.name == "Kernel source and build validation" and .head_sha == $sha and .head_branch == "main" and .head_repository.full_name == $repo and .event == "push" and .status == "completed" and .conclusion == "success"'
test "$(git rev-parse "$OLD_TAG_OBJECT^{commit}")" = "$OLD_RELEASE_COMMIT"
git diff --quiet "$OLD_RELEASE_COMMIT" "$SOURCE_SHA" -- src abi teto.manifest.json SHA256SUMS package.json .gitmodules project.dependencies.json upstream.releases.json thistle baguette
# No implementation or upstream input changes are authorised by this consolidation.
while IFS= read -r -d '' path; do
  case "$path" in
    .gitattributes|scripts/*|.github/workflows/release.yml|.github/workflows/notify-dependants.yml|README.md|docs/build.md) ;;
    *) echo "Unexpected release consolidation path: $path" >&2; exit 1 ;;
  esac
done < <(git diff --name-only -z "$OLD_RELEASE_COMMIT" "$SOURCE_SHA")
stage="$(mktemp -d)"
trap 'rm -rf "$stage"' EXIT
mkdir -p "$stage/original" "$stage/verified"
gh api "repos/$GH_REPO/releases/tags/$TAG" > "$stage/release.json"
jq -e --argjson id "$RELEASE_ID" '.id == $id and .immutable != true and .draft == false' "$stage/release.json"
gh release download "$TAG" --repo "$GH_REPO" --pattern '*.tar.gz' --pattern SHA256SUMS --dir "$stage/original"
(cd "$stage/original" && sha256sum -c SHA256SUMS)
archives=("teto-v2.2.0-wasm.tar.gz")
test "$(jq '.assets | length' "$stage/release.json")" = "2"
for name in "${archives[@]}" SHA256SUMS; do
  digest="$(jq -er --arg name "$name" '[.assets[] | select(.name == $name and .state == "uploaded")] | if length == 1 then .[0].digest else error("Missing release asset") end' "$stage/release.json")"
  actual="$(sha256sum "$stage/original/$name" | cut -d ' ' -f1)"
  test "$digest" = "sha256:$actual"
done
# The WebAssembly archive has no repository commit marker and is unchanged.
for name in dist/teto/teto.wasm dist/teto/teto-threads.wasm; do
  expected="$(jq -er --arg name "${name##*/}" '.variants[$name].sha256' teto.manifest.json)"
  actual="$(tar -xOzf "$stage/original/${archives[0]}" "$name" | sha256sum | cut -d ' ' -f1)"
  test "$expected" = "$actual"
done
test "$(git ls-remote origin refs/heads/main | cut -f1)" = "$SOURCE_SHA"
git -c user.name=github-actions -c user.email=41898282+github-actions[bot]@users.noreply.github.com tag -fa "$TAG" "$SOURCE_SHA" -m "Teto $TAG"
git push --force-with-lease="refs/tags/$TAG:$OLD_TAG_OBJECT" origin "refs/tags/$TAG"
test "$(git ls-remote origin "refs/tags/$TAG^{}" | cut -f1)" = "$SOURCE_SHA"
gh api "repos/$GH_REPO/releases/tags/$TAG" | jq -e --argjson id "$RELEASE_ID" '.id == $id'
