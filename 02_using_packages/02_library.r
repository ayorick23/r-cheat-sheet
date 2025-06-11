# --- 2. Cargar paquetes: library(package_name) ---
# Descripción:
#   Una vez que un paquete está instalado, debes cargarlo en tu sesión de R
#   usando la función `library()` para poder acceder a sus funciones y conjuntos de datos.
#   Esto se hace al principio de cada sesión de R o script donde vayas a usar el paquete.
# Uso:
#   `library()` toma el nombre del paquete sin comillas.
#   Ejemplo: `library(ggplot2)`

cat("--- Demostración de library() ---\n")
package_to_load <- "lubridate" # El paquete que instalamos o ya teníamos

print(paste0("Cargando el paquete '", package_to_load, "'..."))
# 'suppressPackageStartupMessages()' se usa para evitar que R imprima
# los mensajes de inicio de los paquetes en la consola, lo que a menudo es deseable en scripts.
suppressPackageStartupMessages(library(package_to_load))

print(paste0("El paquete '", package_to_load, "' ha sido cargado. Ahora puedes usar sus funciones."))

# Ejemplo rápido de una función de 'lubridate'
if (exists("ymd", mode = "function")) { # Comprobación para asegurar que la función está disponible
  fecha_ejemplo <- ymd("2025-01-15")
  print(paste0("Ejemplo de uso de una función de 'lubridate' (ymd()): ", fecha_ejemplo))
} else {
  print("La función ymd() de lubridate no está disponible, el paquete no se cargó correctamente.")
}

cat("\n--- Fin de la demostración de gestión de paquetes ---\n")