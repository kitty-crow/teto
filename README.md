# Teto

**TETO**: Teto Executes Thistle Optimally.

Teto is a platform-independent WebAssembly kernel generated from
Thistle. The repository contains modular WebAssembly text (WAT),
ABI declarations and source provenance.

## Build

Requires Bun 1.4.5 or later. TypeScript build scripts run directly; `bun --bun tsc --noEmit`
checks them without generating JavaScript.

```sh
bun install --no-save
bun run build
```

The build links the committed WAT modules and assembles baseline
and threaded WebAssembly binaries under `dist/teto/`. Compiler
submodules are not required for this build.

## Source regeneration

Requires Bun, Bash, Git, jq, GitHub CLI authentication and the pinned source releases.

```sh
git submodule update --init --recursive
bun install --no-save
bun run regenerate
```

Thistle supplies the kernel source. Bake lowers that source and
Baguette generates modular WAT. Baguette owns the Bake dependency. Regeneration checks the root pins and downloads the exact upstream release archives, including Baguette's packaged Bake source, before transpilation.

CI runs `bun run guards` in strict mode on Teto-owned build scripts, verifies the generated source and reference binary checksums, and requires the committed source to match regeneration.

To update an upstream pin locally, run `bun run update:dependency Thistle <commit>` (or `Baguette`). The command verifies the published release, regenerates the source, builds both WASM variants and commits the pins and generated snapshot together. GitHub dependency notifications and the daily release check use the same update steps before opening a draft pull request.

See [build instructions](docs/build.md) and
[architecture](docs/architecture.md).

## Releases

[GitHub Releases](https://github.com/kittycrow-kittyx/teto/releases) publishes
one architecture-independent `teto-v<version>-wasm.tar.gz` archive per
version tag, together with its `SHA256SUMS` checksum file. Both the baseline
and threaded WASM kernels are included. The archive preserves the build
layout and includes the manifest, host ABI declarations and licence.

The release workflow uses Bun and assembles the committed modular WAT using
the existing build script, which verifies the source checksums and both
WASM variants against the reference manifest. No upstream compiler checkout
or source regeneration is required. A successful push-triggered validation run on `main` starts the release workflow for that exact commit. The publishing job runs after the build and packaging job succeeds. Existing releases are not overwritten.

To verify and extract the upcoming 2.2.0 distribution:

```sh
sha256sum -c SHA256SUMS
tar -xzf teto-v2.2.0-wasm.tar.gz
```

A manual release workflow run builds, verifies and packages without publishing.
For subsequent releases, update `package.json` to a new version. Successful
validation on `main` creates the matching annotated tag and publishes the
verified archive and checksum file.

## Licence

[MIT](LICENSE).
