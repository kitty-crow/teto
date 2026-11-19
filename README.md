# Teto

**TETO** is **Teto Executes Thistle Optimally**.

Teto builds a WebAssembly kernel from Thistle's canonical native RV64GC
TypeScript source. It fetches a recorded Thistle revision, lowers the
source with Bake and compiles baseline and threaded modules with Baguette.
Teto provides build orchestration and host integration, not a separate
maintained kernel implementation.

## Build and test

    git submodule update --init --recursive
    npm install
    npm run build
    npm test

The build writes:

- `dist/teto/teto.wasm`;
- `dist/teto/teto-threads.wasm`;
- `dist/teto/teto.manifest.json`.

Validate the configured source without replacing the generated
modules with:

    npm run teto:validate

## Documentation

- [Architecture](docs/architecture.md)
- [Building Teto](docs/build.md)
- [Host interface](docs/host-interface.md)
- [Compatibility path](docs/compatibility.md)

## Licence

MIT. See `LICENSE`.
