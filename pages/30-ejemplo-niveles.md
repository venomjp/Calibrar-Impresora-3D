---
title: Ejemplo de anidar páginas por niveles
description: Esta es una página de ejemplo para mostrar cómo anidar páginas por niveles en la documentación. Este es el nivel 1.
---

* Se pueden anidar hasta 3 niveles de páginas. Eleventy genera automáticamente la página de índice de cada nivel, y permite navegar a las subcarpetas. 
* Nada impide crear más niveles, pero LibDoc no podría representarlo.
* Todas las páginas se guardan en la carpeta `/pages/`. 
* Cada subcarpeta representa un nivel de páginas. Por ejemplo, la carpeta `/pages/30-ejemplo-niveles/` contiene las páginas de nivel 2 y 3. Pero siempre necesitamos una página de nivel 1 que se llame igual que la carpeta. La página de nivel 1 es `pages/30-ejemplo-niveles.md`, que es esta misma página.


```text
📁 pages
     │
     ├───🏠 index.md                <- Home
     ├───📝 10-estructura-doc.md    <- Página Nivel 1
     ├───📝 20-compartidos.md       <- Página Nivel 1
     ├───📝 30-ejemplo-niveles.md   <- Página Nivel 1     
     └───📁 30-ejemplo-niveles      <- Carpeta para el nivel 2
            │
            ├───📝 10-markdown.md         <- Página Nivel 2
            ├───📁 10-markdown            <- Carpeta para el nivel 3
            │        │
            │        └───📝10-modificadores-texto.md        <- Página Nivel 3
            └───📝20-listas.md            <- Página Nivel 2
```
