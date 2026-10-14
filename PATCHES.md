# PATCHES

Registro de todo lo que esta plantilla modifica, añade o elimina respecto a [eleventy-libdoc](https://github.com/ita-design-system/eleventy-libdoc) (upstream).

Principio: los archivos que LibDoc sustituye al actualizar (`_data`, `_includes`, `core`, `.eleventy.js`, `package.json`) se tocan lo mínimo. Todo lo demás se resuelve en archivos propios (`eleventy.project.js`, `settings.json`, `pages/`...).

- Base de LibDoc: `0.14.9` + dependencias de `main` (commit `50e4386`; solo cambian `package.json` y `package-lock.json`)
- Última actualización de upstream: `<AAAA-MM-DD>`

Regla: cualquier cambio en un archivo de LibDoc se anota aquí **en el mismo commit** en que se hace.

---

## 1. Parches (archivos de LibDoc que se modifican)

### `.eleventy.js`

Dos líneas: importar y llamar a la configuración propia.

```js
// START Project imports
import projectConfig from "./eleventy.project.js";
// END Project imports

// ... dentro de export default function(eleventyConfig), antes del return:

    // START Project config
    projectConfig(eleventyConfig);
    // END Project config
```

### `_data/libdocConfig.js`

Una modificación: cómo se calcula el prefijo de rutas.

```js
import path from "node:path";

const normalizePrefix = (p) =>
    !p || p === "/" ? "" : "/" + p.replace(/^\/+|\/+$/g, "") + "/";

// ... en el objeto exportado, sustituir la línea de htmlBasePathPrefix:
htmlBasePathPrefix: normalizePrefix(
    process.env.PATH_PREFIX ?? userConfig.htmlBasePathPrefix ?? path.basename(process.cwd())
),
```

Prioridad: variable de entorno `PATH_PREFIX`, luego `htmlBasePathPrefix` de `settings.json`, luego el nombre de la carpeta de trabajo (= nombre del repo en GitHub Actions, = nombre de la carpeta del proyecto en el servidor). El formato resultante es `/nombre/` (o vacío), el documentado por LibDoc.

Idioma (`lang`) y lenguajes de resaltado (`hljsLanguages`) NO se cambian aquí: se definen en `settings.json`.

### `_data/libdocMessages.json`

Traducción al castellano: se añade la clave `"es"` a cada mensaje, junto a `en`, `fr` e `it`.

No incluye la clave `goBack`: el texto del botón "volver" vive en `eleventy.project.js`.

Al actualizar: si LibDoc añade mensajes nuevos, hay que traducirlos.

### `core/assets/css/ds__defaults.css`

Bug de LibDoc 0.14.9: los iconos del acordeón usan una ruta absoluta (`/core/assets/icons/...`) que ignora el prefijo y falla en GitHub Pages y en subrutas. Se sustituyen por rutas relativas al propio CSS:

```css
/* antes */  url('/core/assets/icons/plus-circle.svg')
/* después */ url('../icons/plus-circle.svg')
```

Lo mismo con `minus-circle.svg`. Comprobar el nombre exacto de cada icono en el archivo.

### `core/assets/css/icons.css.liquid`

Bug de LibDoc 0.14.9: se concatena el prefijo con `/core/...`. Con el formato documentado (`/repo/`) sale `/repo//core/...` y los iconos dan 404 en GitHub Pages.

```liquid
{# antes #}   {{ libdocConfig.htmlBasePathPrefix }}/core/assets/icons/{{ iconName }}.svg
{# después #} {{ libdocConfig.htmlBasePathPrefix | default: "/" }}core/assets/icons/{{ iconName }}.svg
```

El filtro `default` cubre el despliegue en la raíz (prefijo vacío): sin él, la ruta quedaría relativa y se rompería.

Mantener el resto de la línea tal como esté en upstream.

### `package.json`

No sustituir nunca el archivo entero al actualizar: fusionar solo `dependencies`. No se tocan `name`, `version`, `description`, `author` ni `license`: `version` indica en qué base de LibDoc estamos.

Añadir:

```json
"scripts": {
    "start": "eleventy --serve",
    "build": "eleventy",
    "clean": "rimraf _site .cache"
},
"devDependencies": {
    "rimraf": "^6.1.3"
},
"allowScripts": {
    "sharp": true,
    "fsevents@2.3.3": true
}
```

En `scripts`, conservar `test` solo si upstream lo mantiene.

Regla para parches en JSON: solo añadir líneas, nunca modificar una existente (ni siquiera una coma final), o cada subida de versión de LibDoc dará conflicto. Por eso `devDependencies` es un bloque nuevo entre `dependencies` y `allowScripts`, y `"sharp": true` va el primero dentro de `allowScripts`. Comprobación: `git diff upstream/main -- package.json` solo debe mostrar líneas con `+`. (`"fsevents@2.3.3": true` es de upstream; se deja como está.)

`allowScripts`: las versiones recientes de npm avisan de las dependencias con scripts de instalación que nadie ha revisado (aquí, `sharp`). Se aprueba por nombre, sin fijar versión, para que el aviso no vuelva a salir en cada actualización de `sharp`. No usar `npm audit fix --force`: puede subir mayores de eleventy, eleventy-img o sharp y romper la base de LibDoc.

---

## 2. Archivos reemplazados (mismo nombre, contenido propio)

| Archivo | Cambio |
|---|---|
| `favicon.png` | Imagen del proyecto (la clave `faviconUrl` por defecto ya apunta aquí) |

---

## 3. Archivos añadidos (propios, upstream no los toca)

| Archivo / carpeta | Para qué sirve |
|---|---|
| `eleventy.project.js` | Ignores propios, publicación de `*.pub.*` de `resources/` y botón "volver" |
| `pages/pages.11tydata.js` | Layout, permalink y navegación automáticos a partir de la ruta |
| `pages/bitacora/bitacora.json` | Etiqueta `post` para toda la bitácora |
| `pages/` | Contenido (sustituye a los `hello-*.md` de LibDoc) |
| `resources/` | `files`, `source-code` y `3d-design` con los archivos del proyecto |
| `settings.json` | Configuración del proyecto (incluye `lang` y `hljsLanguages`) |
| `.github/workflows/build.yml` | Build y despliegue en GitHub Pages |
| `.nvmrc` | Versión de Node |
| `.gitattributes` | Finales de línea LF |
| `PATCHES.md` | Este archivo |
| `TEMPLATE.md` | Manual de uso de la plantilla |

---

## 4. Archivos de LibDoc eliminados

| Elemento | Motivo |
|---|---|
| `hello-world.md`, `hello-page.md`, `hello-child.md`, `hello-grandchild.md`, `hello-post.md` | Contenido demo; chocan con `pages/index.md` |
| `sandboxes/` | Ejemplos que no se usan |
| `assets/logo-11ty.*` | Logos de la demo |

Si upstream añade archivos nuevos en estas rutas, borrarlos tras la actualización.

---

## 5. Sin parche (comportamiento de LibDoc que se deja como está)

- `_includes/libdoc_page.liquid`: sin modificar. El botón "editar página" se queda oculto por defecto (`editThisPageRootUrl: false`), y el pie con la versión de LibDoc se mantiene para comprobar la base.
- `_data/libdocFunctions.js` y `.eleventyignore`: sin modificar.

---

## 6. Después de cada actualización de LibDoc

1. Anotar arriba la nueva versión y la fecha.
2. Revisar cada archivo de la sección 1: ¿ha cambiado upstream? Si sí, reaplicar el parche sobre la versión nueva.
3. Comprobar que no han reaparecido elementos de la sección 4.
4. Ejecutar `npm run clean`, `npm install` y `npm run build`.
5. Abrir la web generada y comprobar iconos, acordeones, imágenes, menú, blog y botón "volver".
6. Commitear `package-lock.json`: la CI usa `npm ci` y falla si no está sincronizado.

El procedimiento completo, con comandos, está en `TEMPLATE.md`.

---

## 7. Pendientes

- [ ] Reportar a LibDoc los dos bugs de iconos (`ds__defaults.css` e `icons.css.liquid`). Si los corrigen, se eliminan los parches.
- [ ] Probar la publicación con un `.pub.pdf` en `resources/files/` (debe salir en `_site/files/`) y un archivo sin `.pub` (no debe salir).
- [ ] Comprobar que el botón "volver" aparece en el pie (selector `main footer nav`). Requiere JavaScript.
- [ ] Comprobar que la lista de posts sigue saliendo con `"blogSlug": "bitacora"` en `settings.json`.
- [ ] Qué hace `eleventy-navigation` si una carpeta de `pages/` no tiene página asociada.
- [ ] Qué hace LibDoc con `assets/` en `.eleventyignore` (se restaura el de upstream; comprobar que las imágenes siguen bien).
