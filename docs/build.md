# Building Teto

`npm run build` requires Node.js and the installed Binaryen package. It links the committed WAT modules in the order declared by Baguette and assembles them and optimises it locally. No compiler submodules are needed. `dist/teto/` is ignored by Git.

`npm run regenerate` requires Bun and the recursively initialised pinned submodules. The generator obtains the memory policy from the canonical Thistle source. Baguette invokes its pinned Bake dependency; its emitted modular WAT trees, layout manifests and ABI declarations are copied unchanged into the source tree. The generated manifest records exact revisions and reference checksums.

GitHub Actions regenerates and verifies the source and assembles it independently. Dependency updates use an exact Git revision and a reviewable source update. Browser and other host adapters belong to consumers.

`project.dependencies.json` explicitly records Thistle, Bake and Baguette. Bake is checked out only once, through Baguette's immutable nested gitlink. Updating Baguette also updates the recorded Bake pin; regeneration checks all three revisions.
