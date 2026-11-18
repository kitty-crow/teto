# Teto

**TETO**: Teto Executes Thistle Optimally.

Teto is a platform-independent WebAssembly kernel generated from
Thistle. The repository contains modular WebAssembly text (WAT),
ABI declarations and source provenance.

## Build

Requires Node.js and npm.

```sh
npm install --package-lock=false
npm run build
```

The build links the committed WAT modules and assembles baseline
and threaded WebAssembly binaries under `dist/teto/`. Compiler
submodules are not required for this build.

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

## Licence

[MIT](LICENSE).
