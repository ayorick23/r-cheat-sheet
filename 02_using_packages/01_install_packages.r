# --- 1. Instalar paquetes: install.packages("package_name") ---
# Descripción:
#   La función `install.packages()` se utiliza para descargar e instalar paquetes
#   de R desde repositorios como CRAN. Solo necesitas instalar un paquete una vez
#   en tu sistema. Después de la instalación, el paquete estará disponible
#   para ser cargado en cualquier sesión de R.
# Uso:
#   `install.packages()` toma el nombre del paquete como una cadena de caracteres
#   (entre comillas). Puedes instalar múltiples paquetes pasándolos como un vector.
#   Ejemplo: `install.packages("ggplot2")`
#   Ejemplo con múltiples paquetes: `install.packages(c("dplyr", "tidyr"))`

cat("--- Demostración de install.packages() ---\n")
package_to_install <- "lubridate" # Un paquete útil para fechas

print(paste0("Verificando si el paquete '", package_to_install, "' ya está instalado..."))

# Comprobación condicional para evitar reinstalaciones innecesarias.
# 'requireNamespace()' es una forma segura de comprobar si un paquete está disponible.
if (!requireNamespace(package_to_install, quietly = TRUE)) {
    print(paste0("El paquete '", package_to_install, "' no está instalado. Instalándolo ahora..."))
    install.packages(package_to_install)
    # La instalación puede requerir permisos de escritura en tu directorio de librerías de R.
    # Podría abrir un cuadro de diálogo para seleccionar un espejo de CRAN.
} else {
    print(paste0("El paquete '", package_to_install, "' ya está instalado."))
}
cat("\n")