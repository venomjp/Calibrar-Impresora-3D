# CALIBRAR IMPRESORA 3D

![Imagen en el README del proyecto X](favicon.png)

El proceso de calibración de una impresora 3D es fundamental para garantizar la calidad y precisión de las impresiones. 

He desarrollado mi propio proceso de calibración dividido en tres etapas principales

# 1. Ajustes Hardware

Vamos a desarrollar los distintos ajustes relacionados con los componentes mecánicos y electrónicos, **Hardware**, de cualquier impresora. Estos ajustes implican la modificación de ciertos valores en el Firmware de la impresora.
En esta primera parte nuestro objetivo es conseguir configurar nuestra máquina para que se mueva correctamente, con velocidades y precisiones reales. Posteriormente se necesitará realizar procesos de calibración y ajustes más precisos.


# 2. Parametrizar Impresora

El proceso de parametrización de una impresora implica realizar cambios en ciertos parámetros tanto en el **Firmware** como en los **Perfiles del Laminador**. 
Se trata de **pruebas empíricas** en las que en cada una de ellas se modifica algún parámetro, se evalua la calidad de la impresion y en ocasiones se realizan varias iteraciones hasta encontrar el valor óptimo para cada parámetro.
Algunos parámetros tienen gran influencia en otros por lo que para caracterizar correctamente la impresora *debemos realizarlos en un cierto orden*, de otra manera el cambio de algún parámetro podría enmascarar problemas o perjudicar otro parámetro.

# 3. Creación de Perfiles de Impresión

Un perfil de impresión es un conjunto de parámetros preconfigurados que aseguran que una combinación específica de impresora, material y proceso produzca impresiones fiables y consistentes.
Consta de tres capas:

* **Perfil de impresora** – *Características físicas y límites de la máquina*.
* **Perfil de filamento** – *Propiedades del *material*.
* **Perfil de proceso** – *Configuración de *cómo quieres imprimir*(calidad, soportes, velocidad…).

---

### [Página del Proyecto](https://venomjp.github.io/Calibrar-Impresora-3D/)