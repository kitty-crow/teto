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
# Named refs follow their latest tip; full SHAs select an exact immutable
# commit without creating an upstream merge or mutating the Teto repository.
if [[ "$REVISION" =~ ^[0-9a-f]{40}$ ]]; then
  git init --quiet "$DEST"
  git -C "$DEST" remote add origin "$UPSTREAM"
  git -C "$DEST" fetch --quiet --depth 1 origin "$REVISION"
  git -C "$DEST" -c advice.detachedHead=false checkout --quiet --detach "$REVISION"
  git -C "$DEST" submodule update --init --recursive --depth 1 --quiet
else
  git clone --quiet --depth 1 --single-branch --branch "$REVISION" --recurse-submodules --shallow-submodules "$UPSTREAM" "$DEST"
fi
SHA="$(git -C "$DEST" rev-parse HEAD)"
git -C "$DEST" diff --quiet
git -C "$DEST" diff --cached --quiet
printf '%s\n' "$SHA" > "$ROOT/build/thistle-source.sha"
printf 'Thistle source: %s %s\n' "$REVISION" "$SHA"
