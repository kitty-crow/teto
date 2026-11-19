#!/usr/bin/env bash
set -Eeuo pipefail
cd "$(git rev-parse --show-toplevel)"
source scripts/ci/release-helpers.sh
requested="${DEPENDENCY:-}"
revision="${REVISION:-}"
candidates='[]'
if [[ "${EVENT_NAME:?event name required}" != schedule ]]; then
  case "$requested" in Thistle|Baguette) ;; *) exit 2 ;; esac
  [[ "$revision" =~ ^[0-9a-f]{40}$ ]]
  expected="$(jq -er --arg name "$requested" '
    [.dependencies[] | select(.name == $name and .direct == true)] |
    if length == 1 then .[0].repository else error("Invalid direct pin") end
  ' project.dependencies.json)"
  [[ -z "${SOURCE_REPOSITORY:-}" || "$SOURCE_REPOSITORY" == "$expected" ]]
  candidates="$(jq -cn --arg name "$requested" --arg sha "$revision" '[{dependency: $name, revision: $sha}]')"
else
  pins="$(jq -ce '
    .dependencies |
    if length == 2 and ([.[].name] | sort) == ["Baguette","Thistle"] and
      all(.[]; .direct == true and .path == (.name | ascii_downcase) and .repository == ("kittycrow-kittyx/" + .path))
    then .[] else error("Unexpected direct dependencies") end
  ' project.dependencies.json)"
  while IFS= read -r pin; do
    name="$(jq -er .name <<< "$pin")"
    repo="$(jq -er .repository <<< "$pin")"
    path="$(jq -er .path <<< "$pin")"
    current_sha="$(jq -er .commit <<< "$pin")"
    current_tag="$(jq -er --arg path "$path" '
      [.dependencies[] | select(.path == $path)] |
      if length == 1 then .[0].tag else error("Missing release pin") end
    ' upstream.releases.json)"
    release="$(gh api "repos/$repo/releases/latest")"
    tag="$(jq -er .tag_name <<< "$release")"
    if jq -e '.draft or .prerelease' <<< "$release" > /dev/null; then continue; fi
    [[ "$tag" =~ ^v[0-9]+\.[0-9]+\.[0-9]+$ && "$current_tag" =~ ^v[0-9]+\.[0-9]+\.[0-9]+$ ]]
    if ! jq -en --arg candidate "$tag" --arg current "$current_tag" '
      def version: ltrimstr("v") | split(".") | map(tonumber);
      ($candidate | version) >= ($current | version)
    ' > /dev/null; then continue; fi
    if ! release_assets_ready "$release" "$path-$tag.tar.gz"; then continue; fi
    sha="$(release_tag_sha "https://github.com/$repo.git" "$tag")"
    if [[ -n "$sha" && "$sha" != "$current_sha" ]]; then
      candidates="$(jq -c --arg name "$name" --arg sha "$sha" '. + [{dependency: $name, revision: $sha}]' <<< "$candidates")"
    fi
  done <<< "$pins"
fi
{
  printf 'updates=%s\n' "$(jq -c '{include: .}' <<< "$candidates")"
  printf 'needed=%s\n' "$(jq -r 'length > 0' <<< "$candidates")"
} >> "${GITHUB_OUTPUT:?output path required}"
