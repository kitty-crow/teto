import { readdir, rm } from "node:fs/promises";
import { dirname, resolve } from "node:path";
import { fileURLToPath } from "node:url";

const root = resolve(dirname(fileURLToPath(import.meta.url)), "../..");
const build = resolve(root, "build");
for (const name of await readdir(build)) {
  if (name === "thistle-source" || name === "thistle-source.sha") continue;
  await rm(resolve(build, name), { recursive: true, force: true });
}
await rm(resolve(root, "dist"), { recursive: true, force: true });
