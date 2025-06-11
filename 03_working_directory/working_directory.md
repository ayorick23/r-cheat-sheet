# Directorio de Trabajo

El directorio de trabajo es una ruta de archivo que R usará como punto de partida para las rutas de archivo relativas. Es decir, es la ubicación predeterminada para importar y exportar archivos. Un ejemplo de directorio de trabajo es el siguiente: `"C://file/path"`.

- `getwd()`: Devuelve el directorio de trabajo actual
- `setwd("C://file/path")`: Cambia el directorio de trabajo actual a una ruta de archivo deseada

**NOTA:**

- Para proyectos de R, a menudo es mejor usar Proyectos de RStudio (.Rproj) que gestionan el directorio de trabajo automáticamente al abrir el proyecto.
- El uso excesivo de `setwd()` en un script puede hacerlo menos portátil. Es mejor usar rutas relativas desde el directorio de trabajo del proyecto o la función `file.path()` para construir rutas de forma segura en diferentes sistemas operativos.
