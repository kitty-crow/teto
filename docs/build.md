# Building Teto

`npm run build` fetches Thistle at `THISTLE_REF` (default `main`),
records its exact Git SHA and stages copies for TypeScript host imports.
It then compiles the host and reuses that same Thistle checkout to build
the native kernel.

`scripts/ci/build-thistle-kernel.ts` creates a production Baguette
configuration using Thistle's `src/native/` entry points and memory
policy. Bake lowers the Thistle source; Baguette compiles the baseline
and threaded WebAssembly modules and writes the provenance manifest.
The normal build checks deterministic output.

Useful commands:

    npm run build
    npm test
    npm run teto:validate
    npm run test:provenance
    npm run teto:build:fast

For a reproducible build, select a full Thistle commit SHA:

    THISTLE_REF=<40-character-Thistle-SHA> npm run build

`test:provenance` checks the generated manifest after a build.
`teto:build:fast` skips the determinism check for local iteration.
Release and compatibility builds should use the normal build path.

`baguette.config.json` provides the base configuration; the build
script generates the authoritative, SHA-pinned production configuration
inside the fetched Thistle checkout. The example config is illustrative,
not a substitute for that build script.
