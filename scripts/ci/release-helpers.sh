#!/usr/bin/env bash
# Shared release checks for the dependency resolver and updater.
release_tag_sha() {
  local url="$1" tag="$2" ref
  [[ "$url" =~ ^https://github\.com/kittycrow-kittyx/(thistle|baguette)\.git$ ]]
  [[ "$tag" =~ ^v[0-9]+\.[0-9]+\.[0-9]+$ ]]
  ref="$(git ls-remote "$url" "refs/tags/$tag^{}" | cut -f1)" || return 1
  if [[ -z "$ref" ]]; then
    ref="$(git ls-remote "$url" "refs/tags/$tag" | cut -f1)" || return 1
  fi
  if [[ -n "$ref" && ! "$ref" =~ ^[0-9a-f]{40}$ ]]; then
    echo "Invalid release tag target" >&2
    return 1
  fi
  printf '%s\n' "$ref"
}

release_assets_ready() {
  local release="$1" asset="$2"
  jq -e --arg asset "$asset" '
    .draft == false and
    ([.assets[] | select(.state == "uploaded") | .name] as $names |
      ($names | index($asset)) != null and
      ($names | index("SHA256SUMS")) != null)
  ' <<< "$release" > /dev/null
}
