---
title: compartidos
description: Archivos compartidos
---

# Archivos compartidos

Para compartir archivos, vamos a evitar la opción de crear una carpeta 'shared' y duplicar los archivos.

Marca en el nombre del archivo. Los archivos que se publican llevan .pub antes de la extensión: resources/files/manuales/guia.pub.pdf. Se queda en su carpeta organizada, no hay copia, y en el explorador de VSCode ves a simple vista qué sale a la web. Para cambiar el estado basta con renombrarlo. La URL pública sale limpia (/files/manuales/guia.pdf), porque el .pub se quita al copiar. No dependes de una lista aparte que pueda quedarse desactualizada si mueves un archivo. Lo único que hay que recordar es enlazar con el nombre sin .pub.

```js
// eleventy.project.js
import fs from "node:fs";
import path from "node:path";

const ROOT = "resources";
const PUB = /\.pub(\.[^.]+)$/;
const SKIP = new Set(["node_modules", ".git"]);

function* walk(dir) {
    for (const e of fs.readdirSync(dir, { withFileTypes: true })) {
        if (SKIP.has(e.name)) continue;
        const p = path.join(dir, e.name);
        if (e.isDirectory()) yield* walk(p);
        else yield p;
    }
}

export default function (eleventyConfig) {
    if (!fs.existsSync(ROOT)) return;
    eleventyConfig.ignores.add(`${ROOT}/**`);
    for (const file of walk(ROOT)) {
        if (!PUB.test(file)) continue;
        const posix = (s) => s.split(path.sep).join("/");
        const dest = posix(path.relative(ROOT, file)).replace(PUB, "$1");
        eleventyConfig.addPassthroughCopy({ [posix(file)]: dest });
    }
}
```

Salta node_modules y .git por si metes un proyecto entero en source-code/. La lista de archivos se calcula al arrancar, así que si marcas uno nuevo con npm start en marcha, hay que reiniciarlo. Sigue en pie la duda de la vez anterior: no sé si el ignores bloquea también el passthrough. Haz la prueba con un .pub.pdf y, si no sale en _site/files/, lo ajustamos.