// eleventy.project.js
// Configuración propia del proyecto. No pertenece a LibDoc: las actualizaciones no lo tocan.
// Se carga desde .eleventy.js (ver PATCHES.md).

import fs from "node:fs";
import path from "node:path";
import libdocConfig from "./_data/libdocConfig.js";

// ---------------------------------------------------------------------------
// 1. Recursos del proyecto (resources/)
//    Solo se publican los archivos marcados con ".pub" antes de la extensión:
//    resources/files/manuales/guia.pub.pdf  ->  /files/manuales/guia.pdf
// ---------------------------------------------------------------------------
const RESOURCES = "resources";
const PUB = /\.pub(\.[^.]+)$/;
const SKIP_DIRS = new Set(["node_modules", ".git"]);
const toPosix = (p) => p.split(path.sep).join("/");

function* walk(dir) {
    for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
        if (SKIP_DIRS.has(entry.name)) continue;
        const full = path.join(dir, entry.name);
        if (entry.isDirectory()) yield* walk(full);
        else yield full;
    }
}

// ---------------------------------------------------------------------------
// 2. Botón "volver" en el pie de página
//    Se inyecta con JavaScript para no modificar libdoc_page.liquid.
//    Sube un nivel en la URL: /repo/a/b/ -> /repo/a/. En la home se desactiva.
// ---------------------------------------------------------------------------
const BACK_LABEL = { en: "Go back", fr: "Retour", it: "Indietro", es: "Ir atrás" };

// Esta función se ejecuta en el navegador (se serializa con toString).
function backButton(cfg) {
    var nav = document.querySelector("main footer nav");
    if (!nav) return;
    var lang = (document.documentElement.lang || cfg.lang || "en").slice(0, 2);
    var label = cfg.labels[lang] || cfg.labels.en;
    var root = cfg.base || "/";
    var current = location.pathname.replace(/index\.html$/, "");
    if (current.slice(-1) !== "/") current += "/";

    var a = document.createElement("a");
    a.className = "btn btn-primary-light";
    a.innerHTML = '<span class="icon-caret-left"></span> ' + label;
    if (current === root) {
        a.setAttribute("aria-disabled", "true");
        a.style.cssText = "pointer-events:none;opacity:.4";
    } else {
        var parts = current.slice(0, -1).split("/");
        parts.pop();
        a.href = parts.join("/") + "/";
    }
    nav.insertBefore(a, nav.firstChild);
}

function backButtonScript() {
    const cfg = JSON.stringify({
        base: libdocConfig.htmlBasePathPrefix,
        lang: libdocConfig.lang,
        labels: BACK_LABEL,
    });
    return `<script>(${backButton.toString()})(${cfg});</script>`;
}

// ---------------------------------------------------------------------------
export default function (eleventyConfig) {
    // Archivos de la raíz que no son contenido de la web (README.md ya lo ignora LibDoc)
    eleventyConfig.ignores.add("PATCHES.md");
    eleventyConfig.ignores.add("TEMPLATE.md");

    // resources/ nunca se procesa como plantillas; solo se copian los *.pub.*
    eleventyConfig.ignores.add(`${RESOURCES}/**`);
    if (fs.existsSync(RESOURCES)) {
        for (const file of walk(RESOURCES)) {
            if (!PUB.test(file)) continue;
            const dest = toPosix(path.relative(RESOURCES, file)).replace(PUB, "$1");
            eleventyConfig.addPassthroughCopy({ [toPosix(file)]: dest });
        }
    }

    // Botón "volver" antes de </body> en todas las páginas HTML generadas
    eleventyConfig.addTransform("backButton", function (content) {
        const out = this.page && this.page.outputPath;
        if (typeof out !== "string" || !out.endsWith(".html")) return content;
        const i = content.lastIndexOf("</body>");
        if (i === -1) return content;
        return content.slice(0, i) + backButtonScript() + content.slice(i);
    });
}
