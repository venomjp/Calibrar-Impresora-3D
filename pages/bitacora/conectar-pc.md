---
title: Cómo conectar la impresora 3D al PC
description: Conectar la impresora 3D al PC utilizando Pronterface.
date: 2026-04-20
---
# Para qué se necesita

Se necesita conectar la impresora a un ordenador ya sea para grabar un nuevo Firmware o bien para controlar la impresora, ya sea para hacer pruebas o reprogramaciones desde el programa Pronterface.

Para conectar la impresora a un ordenador hay que conocer el **puerto de conexión** y la **velocidad de transmisión** (establecida en el firmware y habitualmente es 250000 baudios).

# Determinar el puerto de conexión (Windows)

En el ordenador abriremos el Administrador de Dispositivos y buscaremos el apartado **Puertos (COM y LPT)**.

Al conectar la impresora al ordenador se conecta a un puerto COM, busca el que tenga una conexción USB-SERIAL CH340 (COMx) o similar, tal y como se muestra en la imagen.
<img src="../../resources/files/images/puertoConexionPronterface.png" 
 alt="Puertos COM" 
 style="width: 400px; height: auto; display: block; margin: 0 auto;">

# Conexión con Pronterface (puerto y velocidad de transmisión)


{% iconCard 'Recuerda', 'Para poder grabar el Firmware desde VSCode + PlatformIO la impresora debe estar desconectada de Pronterface', 'info' %}