# Architecture

Thistle → Bake → Baguette → modular WAT.

The baseline and threaded variants each mirror the generated input's `core/`, `native/` and `vm/` directories. Baguette generates `module.wat` for module-wide declarations, `runtime.wat` for backend helpers, and `layout.json` for link order. Type-only and inlined modules retain their source positions but need not contain executable declarations.

Teto links the source fragments into a temporary WAT module and compiles that module locally. Generated source, ABI declarations and provenance are tracked; linked WAT and binaries are ignored.
