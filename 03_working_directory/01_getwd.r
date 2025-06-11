# --- 1. Obtener el directorio de trabajo actual: getwd() ---
# Descripción:
#   La función `getwd()` (get working directory) te permite saber cuál es el directorio
#   actual en el que R está operando. Cuando lees o escribes archivos sin especificar
#   una ruta completa, R interactuará con este directorio.
# Uso:
#   Simplemente llama a la función sin argumentos: `getwd()`

cat("--- Demostración de getwd() ---\n")
current_directory <- getwd()
print(paste0("Tu directorio de trabajo actual es: ", current_directory))
cat("\n")