# Source provenance

`project.dependencies.json` and `upstream.releases.json` declare the root Thistle and Baguette build inputs. Baguette owns the nested Bake pin at `baguette/bake`. Regeneration verifies the gitlinks, release tags, distribution checksums and source revision markers before using the released source.

The committed `teto.manifest.json` is authoritative for the generated snapshot: it records the three exact source revisions and SHA-256 of each reference binary. CI independently regenerates the snapshot and rejects any difference, including stale provenance.
