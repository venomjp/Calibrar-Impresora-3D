---
title: Credenciales GitHub
description: Evitar que VS Code pida credenciales de GitHub cada vez que interactuas con el proyecto
date: 2026-10-16
---
# Credenciales GitHub

## Cómo evitar que VS Code pida credenciales de GitHub cada vez que interactuas con el proyecto

Cuando trabajas en un proyecto de GitHub, es posible que VS Code te pida credenciales cada vez que intentes hacer cambios o sincronizar tu código. Para evitar esto, puedes configurar una autenticación persistente.

### Usar el Gestor de Credenciales de Git

1. Abre VS Code.
2. Abre la terminal integrada
3. Si tienes instalado *Git for Windows*, es mejor usar su gestor nativo ejecutando: `git config --global credential.helper manager`.
4. Para Windows, macOS y Linux, ejecuta el comando `git config --global credential.helper store`.
5. Realiza una acción de Git: `git pull` o `git push`. Se te pedirá que ingreses tus credenciales de GitHub. Ingresa tu nombre de usuario y token de acceso personal (PAT) cuando se te solicite.
6. Reinicia VS Code.

Con esta configuración, Git guardará los datos y VS Code no volverá a pedirtelos.
