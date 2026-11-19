# Building Teto

Use Bun 1.4.5 or later for compatibility with the upstream lockfiles.

`bun install --no-save` installs dependencies and `bun run build` builds both variants. Bun executes the `.mts` build scripts directly; `bun --bun tsc --noEmit --project tsconfig.scripts.json` checks types and Bun executes Binaryen. The build links committed WAT modules, assembles and optimises them, and verifies the binaries against the reference manifest. The standalone build requires only the WAT snapshot and Bun dependencies. Use `bun run guards` for strict Code Guards on Teto-owned TypeScript tools.

`bun run regenerate` requires Bash, Git, jq, authenticated GitHub CLI, and the recursively initialised root Thistle and Baguette pins. It checks pins, downloads the exact releases recorded in `upstream.releases.json`, verifies their checksums and `RELEASE_COMMIT` markers, and stages them under `build/upstream/`. Baguette owns and packages its root Bake dependency. The generator reads the canonical Thistle memory policy and writes modular WAT, ABI declarations and provenance. The standalone build verifies the reference binaries.

GitHub Actions separates **Transpile source** from **Compile**. It independently verifies generated source and both variants, and rejects differences between the regenerated and committed source. Dependency updates require the exact published revision before opening an approval-only source update. Browser and other host adapters belong to consumers.

## Dependency updates

Run `bun run update:dependency Thistle <commit>` or `bun run update:dependency Baguette <commit>` from a clean checkout. The command waits for the exact published release, updates the gitlink and manifests, regenerates WAT, ABI and checksums, verifies both WASM binaries and commits the complete update locally. A failed update produces no commit; inspect the working tree before retrying. GitHub's dependency workflow stages the same verified files and opens an approval-only pull request. An already-current snapshot creates no commit or pull request.

The dependency workflow checks published upstream releases daily at 03:17 UTC as a fallback when cross-repository notifications are unavailable. It skips unchanged pins and older release versions. The existing approval-only update policy remains in effect.
