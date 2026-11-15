#!/usr/bin/env bash
set -Eeuo pipefail
ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/../.." && pwd)"
UPSTREAM="${THISTLE_REPOSITORY:-https://github.com/kitty-crow/thistle.git}"
REVISION="${THISTLE_REF:-main}"
DEST="$ROOT/build/thistle-source"
mkdir -p "$ROOT/build"
if [[ "${THISTLE_USE_STAGED:-0}" == "1" ]]; then
  SHA_FILE="$ROOT/build/thistle-source.sha"
  [[ -d "$DEST/.git" && -f "$SHA_FILE" ]] || {
    printf 'No staged Thistle checkout or SHA. Fetch the canonical source first.\n' >&2
    exit 2
  }
  EXPECTED="$(cat "$SHA_FILE")"
  ACTUAL="$(git -C "$DEST" rev-parse HEAD)"
  [[ "$EXPECTED" =~ ^[0-9a-f]{40}$ && "$EXPECTED" == "$ACTUAL" ]] || {
    printf 'The staged Thistle checkout does not match its recorded revision.\n' >&2
    exit 2
  }
  git -C "$DEST" diff --quiet
  git -C "$DEST" diff --cached --quiet
  printf 'Reusing exact staged Thistle source: %s\n' "$EXPECTED"
  exit 0
fi
rm -rf -- "$DEST"
# Fetch the current tip of the selected Thistle branch at invocation time.
# A full immutable commit SHA is recorded so the build can be reproduced.
git clone --quiet --depth 1 --single-branch --branch "$REVISION" --recurse-submodules --shallow-submodules "$UPSTREAM" "$DEST"
SHA="$(git -C "$DEST" rev-parse HEAD)"
git -C "$DEST" diff --quiet
git -C "$DEST" diff --cached --quiet
printf '%s\n' "$SHA" > "$ROOT/build/thistle-source.sha"
printf 'Thistle source: %s %s\n' "$REVISION" "$SHA"
