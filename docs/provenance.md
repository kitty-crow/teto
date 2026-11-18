# Source provenance

The candidate toolchain pins preserve the canonical Thistle revision and uses Baguette's source module emitter. Bake is the nested Baguette gitlink.

| Component | Git revision |
|---|---|
| Thistle | 19a571d6da85f63256041766d5200ad50e825423 |
| Bake | cae1e7b9547c8d865fd117ec629bfdc8dfdcca62 |
| Baguette | 9f9f2df3611fb1bdca2827a5a1ff704c749f806a |

Until regeneration and snapshot verification complete, the committed generated files describe the previous toolchain. For subsequent revisions use the generated `teto.manifest.json` as authoritative provenance. The manifest records all three revisions and SHA-256 of each Baguette reference binary.
