# Teto

Teto is the platform-independent WebAssembly kernel generated from Thistle through Bake and Baguette. The committed sources are modular WebAssembly text (WAT), not a separate implementation. No compiled binaries or platform adapters are tracked.

## Build

```sh
npm install --package-lock=false
npm run build
```

The build links the committed source modules and assembles the WAT into local baseline and threaded WASM under `dist/teto/` without the generator submodules. The generated ABI declaration and provenance manifest accompany the binary output.

## Regeneration

```sh
git submodule update --init --recursive
npm install --package-lock=false
npm run regenerate
```

GitHub Actions regenerates the WAT from the pinned Thistle and Baguette revisions (Bake is pinned by Baguette). It compares the resulting source against the repository and requires the standalone build to reproduce the reference binary. See [build instructions](docs/build.md).
