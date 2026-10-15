// pages/pages.11tydata.js
import libdocConfig from "../_data/libdocConfig.js";
import fs from "node:fs";
import path from "node:path";

const BLOG_DIR = "bitacora";
const slug = (s) => s.normalize("NFD").replace(/[\u0300-\u036f]/g, "")
    .toLowerCase().replace(/[^a-z0-9]+/g, "-").replace(/^-|-$/g, "");
const clean = (seg) => slug(seg.replace(/^\d+-/, ""));

// "/pages/01-nivel1/01-nivel2" -> ["01-nivel1", "01-nivel2"]
function segments(data) {
    const segs = data.page.filePathStem.split("/").filter(Boolean).slice(1);
    if (segs.at(-1) === "index") segs.pop();
    return segs;
}
const isPost = (data) => segments(data)[0] === BLOG_DIR;

// Falla con un mensaje claro si la carpeta de la página no tiene su página padre
function assertParentPage(data) {
    const pagesRoot = path.resolve("pages");
    const file = path.resolve(data.page.inputPath);
    let parentDir = path.dirname(file);
    if (path.basename(file) === "index.md") parentDir = path.dirname(parentDir);
    if (parentDir === pagesRoot) return;
    if (fs.existsSync(parentDir + ".md") || fs.existsSync(path.join(parentDir, "index.md"))) return;
    throw new Error(
        `Falta la página de la carpeta "${path.relative(pagesRoot, parentDir)}": ` +
        `crea "${path.basename(parentDir)}.md" a su lado (o un index.md dentro). ` +
        `Afecta a: ${data.page.inputPath}`
    );
}

export default {
    layout: "libdoc_page.liquid",
    eleventyComputed: {
        permalink: (data) => {
            const segs = segments(data);
            if (isPost(data)) return `/${libdocConfig.blogSlug}/${clean(segs.at(-1))}/`;
            return segs.length ? `/${segs.map(clean).join("/")}/` : "/";
        },
        eleventyNavigation: (data) => {
            const segs = segments(data);
            if (isPost(data) || !segs.length) return undefined;
            assertParentPage(data);            
            const order = parseInt(segs.at(-1), 10);
            return {
                key: segs.map(clean).join("/"),
                parent: segs.length > 1 ? segs.slice(0, -1).map(clean).join("/") : undefined,
                title: data.title,
                order: Number.isNaN(order) ? 0 : order,
            };
        },
    },
};