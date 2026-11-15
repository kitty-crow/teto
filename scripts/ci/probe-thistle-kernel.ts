/**
 * Exercise the same exact canonical-source compiler configuration that the
 * production Teto build uses, with no competing probe-specific ABI or aliases.
 */
import { spawnSync } from "node:child_process";
import { resolve } from "node:path";

const root = resolve(import.meta.dir, "../..");
const result = spawnSync("bun", [
  "scripts/ci/build-thistle-kernel.ts", "--validate-only",
], { cwd: root, stdio: "inherit" });
if (result.status !== 0) {
  throw new Error(`Full canonical Thistle -> Bake -> Baguette validation failed: ${result.status}`);
}
console.log("PASS: full canonical Thistle native kernel validated using production ABI");
