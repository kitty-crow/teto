# Building Teto

`npm run build` requires Node.js and the installed Binaryen package. It links the committed WAT modules in the order declared by Baguette, then assembles and optimises the result locally. No compiler submodules are needed. `dist/teto/` is ignored by Git.

`npm run regenerate` requires Bun and the recursively initialised pinned submodules. The generator obtains the memory policy from the canonical Thistle source. Baguette invokes its pinned Bake dependency; its emitted modular WAT trees, layout manifests and ABI declarations are copied unchanged into the source tree. The generated manifest records exact revisions and reference checksums.

GitHub Actions regenerates and verifies the source and assembles it independently. Dependency updates use an exact Git revision and a reviewable source update. Browser and other host adapters belong to consumers.

`project.dependencies.json` records Thistle and Baguette. Baguette owns the Bake gitlink; regeneration verifies that checkout and records its revision in the generated provenance manifest.
