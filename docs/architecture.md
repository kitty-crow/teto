# Architecture

Thistle → Bake → Baguette → generated WAT.

Teto tracks the generated baseline and threaded WebAssembly text, the generated host ABI declaration, build configuration and provenance. Binaries are local build outputs. Host runtimes are outside the kernel tree.
