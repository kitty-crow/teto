# Architecture

Teto builds its native RV64GC kernel from Thistle's canonical `src/native/`
source at a recorded Git commit. Bake lowers that TypeScript source, and
Baguette compiles it into WebAssembly. Files staged under `src/teto/`
are untracked, byte-for-byte copies for host-side imports, not a
separately maintained kernel implementation.

Two modules are produced from the same source. The baseline module
uses ordinary WebAssembly memory; the threaded module enables shared
memory. Both use Thistle's kernel memory policy (512 MiB initial,
2 GiB maximum).

The generated manifest records the original Thistle revision and
source modules, Bake-lowered inputs, output hashes, ABI exports and
memory limits. Provenance tests reject an independent Teto kernel
entering the build.
