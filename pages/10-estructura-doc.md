---
title: 10-estructura-doc
description: Página de nivel 1 con subpáginas
---

# Idea
La idea no es solo generar una documentación, sino que el proyecto y la documentación estén integrados.

Por otro lado, en algunas ocasiones interesa que los recursos sean accesibles o descargables desde la propia documentación.

En el caso de páginas públicas se utiliza GitHub para almacenar el proyecto y GitHub-Pages alberga la página web.

En el caso de páginas privadas se suben a mi servidor de páginas web, la estructura del proyecto es la misma, pero se visualiza únicamente la web, para acceder al resto del proyecto hay que acceder al la ubicación donde está almacenado.

# Recursos
El proyecto y sus recursos se almacenan en la carpeta /resources/

Los proyecto pueden contener recursos que se guardarán en 3 categorías básicas:
1. 3d-design - En esta carpeta se guardarán los DISEÑOS 3D en 3 carpetas:
    * **stl** - diseños 3D
    * **3mf** - archivos del laminador
    * **gcode** - archivos para imprimir
2. files - En esta carpeta se guardarán ARCHIVOS VARIOS en 4 carpetas
    * **audio** - archivos de audio
    * **imagen** - imágenes
    * **texto** - documentos de texto, docs, pdf...
    * **video** - archivos de video
3. source-code - En esta carpeta se guardarán los CODIGOS FUENTE DE PROGRAMAS, también scripts y archivos de configuración.

Podemos encontrarnos con un proyecto que tiene varios códigos fuente:
    * Emisor y receptor.
    * Firmware Impresora y Firmware de  Pantalla

En ese caso creariamos carpetas para cada parte del programa
* **software 1** - código fuente SW 1
* **software 2** - código fuente SW 2

También podemos incluir otras piezas de software
* Configuraciones
* Scripts


