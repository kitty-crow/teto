#!/usr/bin/env bash
set -Eeuo pipefail
cd "$(git rev-parse --show-toplevel)"
dependency="${1:?dependency name required}"
revision="${2:?dependency revision required}"
[[ "$#" == 2 ]]
[[ -z "$(git status --porcelain --untracked-files=all)" ]] || { echo "Dependency updates require a clean working tree" >&2; exit 1; }
bun install --no-save
bun run guards
bash scripts/build.sh type-check
git submodule update --init --recursive
bash scripts/ci/update-dependency.sh "$dependency" "$revision"
bash scripts/regenerate.sh
bash scripts/ci/stage-dependency-update.sh "$dependency" "$revision"
if git diff --cached --quiet; then
  echo "Dependency and generated source already current."
  exit 0
fi
git commit -m "Update $dependency to ${revision:0:12} and regenerate Teto"
