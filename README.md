# README del Proyecto X

![Imagen en el README del proyecto X](./resources/files/imagenReadme.jpg)

## Descripción del proyecto
Esta es una plantilla para proyectos en los que:
* Generar una documentación en formato de página web y un blog a modo de cuaderno de bitácora. 
  La documentación y el blog se generan automáticamente a partir de archivos Markdown.
* Almacenar los recursos y archivos del proyecto en una estructura de carpetas organizada y accesible.

---

## Cómo usar la plantilla
Las instrucciones de cómo usar la plantilla se encuentran en el archivo [TEMPLATE.md](TEMPLATE.md) del proyecto. Se recomienda leerlo detenidamente antes de comenzar a trabajar en un nuevo proyecto.

---

## Personalización de la plantilla
La plantilla se basa en el starter project de Eleventy [LibDoc](https://eleventy-libdoc.netlify.app/) pero ha sido modificada para adaptarse a mis necesidades y preferencias. Sin embargo, mantiene dependencias con el proyecto original, se ha intentado respetar la estructura principal para implementar actualizaciones futuras de manera sencilla. Todos los cambios están documentados y explicados en el archivo [PATCHES.md](PATCHES.md) del proyecto. Se deberá leer este archivo cuando se quiera actualizar la plantilla a una nueva versión del proyecto original.

---

## Modos de funcionamiento
Hay tres modos de funcionamiento para generar la documentación de un proyecto y publicarla:

### 1. Modo desarrollo

Es el modo **normal de funcionamiento para generar la documentación**, creando los archivos de la documentación y visualizándolos en localhost. 

**Pasos para generar el proyecto en modo local, los cambios se visualizan instantáneamente:**
   * `npm run clean` - script para limpiar (borra la carpeta de salida y la caché) antes de generar la documentación.
   * `npm run start` - script para iniciar el servidor local.
  
### 2. Modo web pública en GitHub Pages

Si queremos tener una web pública de la documentación, se puede utilizar **GitHub Pages** para alojar la documentación de forma gratuita, el *proyecto debe ser público y accesible por cualquier persona*.


  * `npm run clean` - script para *limpiar* la carpeta de salida y la caché
  * `npm run build` - script para *generar* la carpeta de salida con el pathPrefix correcto para GitHub Pages.
  * Realizar un **commit** y **push** para subir los cambios al repositorio de GitHub utilizando GitHub Desktop o la terminal integrada de Visual Studio Code. De manera automática se ejecutará el flujo de trabajo de GitHub Actions que generará la página web en GitHub Pages en unos pocos minutos.

### 3. Modo web privada en servidor propio

Cuando quiera una web *privada*, utilizo mi propio servidor **pluton**. 

He generado un procedimiento que permite alojar la documentación en un servidor propio usando Caddy para acceder a las páginas estáticas. En cuanto a la generación de la documentación, el procedimiento es el mismo que para GitHub Pages, y luego se sube al servidor con un sencillo script.

  * `npm run clean` - script para *limpiar* la carpeta de salida y la caché.
  * `npm run build` - script para *generar* la carpeta de salida con la carpeta para el proyecto adecuada. 
  * Usar la terminal de PowerShell:
    * Posicionarse en la carpeta del proyecto en Windows, luego abrir la terminal de PowerShell en esa carpeta.
    * Ejecutar el script `subir-sitio` que subirá la carpeta de salida al servidor propio. El script detectará automáticamente el nombre del proyecto y realizará la subida al servidor, nos pedirá confirmación antes de continuar.
    * Al final de la ejecución del script, se mostrará la URL de acceso a la documentación del proyecto en el servidor propio.
    * Para borrar un sitio del servidor, es también muy fácil, ejecutando el script `subir-sitio -Eliminar`, pedirá confirmación y eliminará la carpeta del proyecto del servidor.

* **INSTALACIÓN EN EL SERVIDOR**

El procedimiento de instalación está documentado en: 

[Servidor de páginas web estáticas](https://venomjp.github.io/Documentar_Proyecto/posts/servidor-de-paginas-web-estaticas/)


* **ACCESO A LAS WEBs DEL SERVIDOR**

He comprado un dominio `fpgh.link` para poder tener la posibilidad de acceder por HTTPS a las webs de los proyectos alojados en el servidor.

De manera automática se genera un subdominio para cada proyecto, por ejemplo: `http://mi-proyecto.webs.fpgh.link/` y se puede acceder desde cualquier lugar con acceso a Internet siempre que estés registrado en Tailscale y tengas acceso a la red de Tailscale.

También de manera automática cada vez que se sube un proyecto al servidor, se genera un enlace en una página web que lista todos los proyectos alojados en el servidor, con enlaces a cada proyecto. Esta página principal se encuentra en:

[Acceso a las webs](https://webs.fpgh.link/)

---

## Estructura de carpetas para la documentación del proyecto
Además se pueden añadir los recursos necesarios para el proyecto, como imágenes, archivos de datos, etc. 

La estructura de carpetas y archivos es la siguiente:

```text
📁 resources
      │
      ├───📁 files
      │        │
      │        ├───📁 audio
      │        ├───📁 imagen
      │        ├───📁 texto      
      │        └───📁 video
      ├───📁 3d-design
      │        │
      │        ├───📁 stl
      │        ├───📁 3mf
      │        └───📁 gcode
      └───📁 source-code
               ├───📁 scripts
               └───📁 configs
```
---

## [Página del Proyecto](https://venomjp.github.io/Plantilla_Proyecto/)