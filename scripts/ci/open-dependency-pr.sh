#!/usr/bin/env bash
set -Eeuo pipefail
dependency="${1:?dependency name required}"
revision="${2:?dependency revision required}"
case "$dependency" in Thistle|Baguette) ;; *) exit 2 ;; esac
[[ "$revision" =~ ^[0-9a-f]{40}$ ]]
safe="${dependency,,}"
branch="dependencies/${safe}"
git config user.name "KITTYX compatibility worker"
git config user.email "kittyx-bot@users.noreply.github.com"
git diff --quiet || { echo "Verified update must be fully staged" >&2; exit 1; }
[[ -z "$(git ls-files --others --exclude-standard)" ]] || exit 1
if git diff --cached --quiet; then
  echo "Dependency and generated source already current."
  exit 0
fi
base="$(git rev-parse HEAD)"
[[ "$(git ls-remote origin refs/heads/main | cut -f1)" == "$base" ]] || { echo "Main advanced; rerun against the new base" >&2; exit 1; }
old="$(git ls-remote origin "refs/heads/$branch" | cut -f1)"
git checkout -B "$branch"
git commit -m "Update $dependency to ${revision:0:12} and regenerate Teto"
git push --force-with-lease="refs/heads/$branch:$old" origin "HEAD:refs/heads/$branch"
title="Update ${dependency} to ${revision:0:12}"
body="The exact release, both WASM variants and the complete regenerated snapshot have been verified. Dependency pins, release metadata, WAT, ABI and checksums are committed together for ${revision}. This draft requires human approval."
number="$(gh pr list --head "$branch" --json number --jq '.[0].number // empty')"
if [[ -n "$number" ]]; then
  gh pr edit "$number" --title "$title" --body "$body"
else
  gh pr create --draft --head "$branch" --base main --title "$title" --body "$body"
fi
