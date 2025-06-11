# --- 2. Ayuda para un paquete: ?package_name (requiere que el paquete esté cargado) ---
# Descripción:
#   Si usas '?' con el nombre de un paquete que ya ha sido cargado (con library()),
#   R te dirigirá a la página de ayuda general de ese paquete, que a menudo incluye
#   una descripción general, una lista de sus funciones y un índice.
# Uso:
#   El paquete debe estar instalado y cargado con `library()`.
#   Ejemplo: `?tidyverse` (requiere que tidyverse esté instalado y cargado).

cat("--- Demostración de ?tidyverse ---\n")
print("Instalando 'tidyverse' si no está presente (esto puede tardar).")
if (!requireNamespace("tidyverse", quietly = TRUE)) {
  install.packages("tidyverse")
}
print("Cargando el paquete 'tidyverse'.")
library(tidyverse)
print("Ejecutando '?tidyverse' para abrir la documentación general del paquete.")
print("Verifica el panel de Ayuda de RStudio o la ventana de ayuda de R.")
# ?tidyverse
# NOTA: Similar a `?max`, esto es mejor ejecutarlo interactivamente.
cat("\n")