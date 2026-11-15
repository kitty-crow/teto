#!/usr/bin/env bash
set -Eeuo pipefail
ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/../.." && pwd)"
UPSTREAM="${THISTLE_REPOSITORY:-https://github.com/kitty-crow/thistle.git}"
REVISION="${THISTLE_REF:-main}"
DEST="$ROOT/build/thistle-source"
mkdir -p "$ROOT/build"
rm -rf -- "$DEST"
# Fetch the current tip of the selected Thistle branch at invocation time.
# A full immutable commit SHA is recorded so the build can be reproduced.
git clone --quiet --depth 1 --single-branch --branch "$REVISION" --recurse-submodules --shallow-submodules "$UPSTREAM" "$DEST"
SHA="$(git -C "$DEST" rev-parse HEAD)"
git -C "$DEST" diff --quiet
git -C "$DEST" diff --cached --quiet
printf '%s\n' "$SHA" > "$ROOT/build/thistle-source.sha"
printf 'Thistle source: %s %s\n' "$REVISION" "$SHA"
