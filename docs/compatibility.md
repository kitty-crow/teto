# Compatibility path

Teto runs migrated operations in the generated WebAssembly kernel.
An operation not yet handled there may request a syscall-level fallback
through the host's direct Thistle compatibility bridge. This does not
replace the generated kernel or introduce a separate Teto kernel source.
Parity tests cover both paths.

`THISTLE_TETO_STRICT=1` disables syscall fallback during testing.
An unsupported request then reports an unimplemented system call
instead of crossing into the compatibility implementation.

New kernel work should pass in both modes until Teto provides the
same result and state changes without fallback.
