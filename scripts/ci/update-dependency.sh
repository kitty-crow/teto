#!/usr/bin/env bash
set -Eeuo pipefail
cd "$(git rev-parse --show-toplevel)"
dependency="${1:?dependency name required}"
revision="${2:?dependency revision required}"
[[ "$revision" =~ ^[0-9a-f]{40}$ ]]
case "$dependency" in Thistle|Baguette) ;; *) exit 2 ;; esac
[[ -z "$(git status --porcelain --untracked-files=all)" ]] || { echo "Dependency updates require a clean working tree" >&2; exit 1; }
source scripts/ci/release-helpers.sh
item="$(jq -ce --arg name "$dependency" '
  [.dependencies[] | select(.name == $name and .direct == true)] |
  if length == 1 then .[0] else error("Invalid direct dependency") end
' project.dependencies.json)"
submodule="$(jq -er .path <<< "$item")"
repo="$(jq -er .repository <<< "$item")"
[[ "$submodule" == "${dependency,,}" && "$repo" == "kittycrow-kittyx/$submodule" ]]
git -C "$submodule" fetch origin "$revision"
[[ "$(git -C "$submodule" rev-parse "$revision^{commit}")" == "$revision" ]]
version="$(git -C "$submodule" show "$revision:package.json" | jq -er .version)"
[[ "$version" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]
tag="v$version"
url="https://github.com/$repo.git"
asset="$submodule-$tag.tar.gz"
ready=false
for attempt in {1..30}; do
  ref="$(release_tag_sha "$url" "$tag")"
  if [[ "$ref" == "$revision" ]] &&
    release="$(gh api "repos/$repo/releases/tags/$tag" 2>/dev/null)" &&
    release_assets_ready "$release" "$asset"; then
    ready=true
    break
  fi
  if [[ "$attempt" != 30 ]]; then
    echo "Waiting for published $dependency $tag at $revision"
    sleep 10
  fi
done
[[ "$ready" == true ]] || { echo "Published release $dependency $tag not ready for $revision" >&2; exit 1; }
mkdir -p build
stage="$(mktemp -d "$PWD/build/.pins.XXXXXX")"
trap 'rm -rf "$stage"' EXIT
jq -e --arg name "$dependency" --arg sha "$revision" '
  (.dependencies[] | select(.name == $name)).commit = $sha
' project.dependencies.json > "$stage/project.dependencies.json"
jq -e --arg path "$submodule" --arg repo "$repo" --arg sha "$revision" --arg tag "$tag" '
  if ([.dependencies[] | select(.path == $path and .repository == $repo)] | length) != 1
  then error("Missing matching release pin")
  else (.dependencies[] | select(.path == $path)) |= (.commit = $sha | .tag = $tag) end
' upstream.releases.json > "$stage/upstream.releases.json"
git -C "$submodule" checkout --detach "$revision"
mv "$stage/project.dependencies.json" project.dependencies.json
mv "$stage/upstream.releases.json" upstream.releases.json
git add -- "${dependency,,}" project.dependencies.json upstream.releases.json
git submodule update --init --recursive
