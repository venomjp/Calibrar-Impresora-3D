---
title: Post 2
description: Descripción del post 2
date: 2026-08-12
---
# Modificaciones y Ajustes 

* Corrección iconos

Los iconos no estaban apareciendo correctamente, por lo que hubo que corregir la ruta de los mismos en el archivo *core/assets/css/icons.css.liquid*

* Botón "Ir atrás"

El botón "Ir atrás" no estaba funcionando correctamente, por lo que he tenido que corregir el archivo *_includes/libdoc_page.liquid*, cambiando el cálculo del prefijo de la ruta y la corrección de la profundidad para que funcione correctamente en las páginas y en el blog.