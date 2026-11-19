#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
source_repository="${SOURCE_REPOSITORY:?source repository required}"
source_sha="${SOURCE_SHA:?source revision required}"
[[ "$source_sha" =~ ^[0-9a-f]{40}$ ]]
[[ "$source_repository" == kittycrow-kittyx/teto ]]
items="$(jq -ce '
  (.dependants // []) | if type == "array" then .[] else error("Invalid dependant list") end
' project.dependants.json)" || {
  # An empty list has no jq -e result; confirm it is empty.
  jq -e '(.dependants // []) == []' project.dependants.json > /dev/null
  exit 0
}
while IFS= read -r item; do
  repository="$(jq -er '.repository | strings | select(test("^[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+$"))' <<< "$item")"
  payload="$(jq -c --arg source "$source_repository" --arg revision "$source_sha" '
    {
      event_type: (.event // "dependency-updated"),
      client_payload: {
        dependency: (.dependency // ($source | split("/") | last)),
        source_repository: $source,
        new_commit: $revision,
        impact: (.impact // []),
        advisory: (.advisory // false)
      }
    }
  ' <<< "$item")"
  gh api --method POST "repos/$repository/dispatches" --input - <<< "$payload"
done <<< "$items"
