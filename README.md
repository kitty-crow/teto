# Teto

**TETO**: Teto Executes Thistle Optimally.

Teto is a platform-independent WebAssembly kernel generated from
Thistle. The repository contains modular WebAssembly text (WAT),
ABI declarations and source provenance.

## Build

Requires Node.js and npm. The installed Bun dependency runs the typed
build scripts directly; `tsc --noEmit` checks them without generating JavaScript.

```sh
npm install --package-lock=false
npm run build
```

The build links the committed WAT modules and assembles baseline
and threaded WebAssembly binaries under `dist/teto/`. Compiler
submodules are not required for this build. `bun run build` is also supported
after installing the dependencies.

## Source regeneration

Requires Bun and the pinned generator dependencies.

```sh
git submodule update --init --recursive
npm install --package-lock=false
npm run regenerate
```

Thistle supplies the kernel source. Bake lowers that source and
Baguette generates modular WAT. Baguette owns the Bake dependency.

CI verifies the generated source and reference binary checksums.

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
or source regeneration is required. The publishing job runs only after the
build and packaging job succeeds. Existing releases are not overwritten.

To verify and extract the upcoming 2.2.0 distribution:

```sh
sha256sum -c SHA256SUMS
tar -xzf teto-v2.2.0-wasm.tar.gz
```

A manual workflow run builds, verifies and packages without publishing.
Once the source builds successfully, create and push the version tag on the
verified commit (the tag must match the version in `package.json`):

```sh
git tag -a v2.2.0 -m "Teto v2.2.0"
git push origin v2.2.0
```

Use a new version tag for subsequent releases, and enable immutable releases
in the repository settings to prevent published assets and tags from being changed.

## Licence

[MIT](LICENSE).
