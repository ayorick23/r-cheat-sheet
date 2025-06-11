# --- 2. Cambiar el directorio de trabajo: setwd("path/to/directory") ---
# Descripción:
#   La función `setwd()` (set working directory) te permite cambiar el directorio
#   de trabajo de tu sesión de R a una nueva ruta. Esto es útil para organizar
#   tus proyectos y facilitar la importación/exportación de archivos.
# Uso:
#   `setwd()` toma la ruta del directorio al que quieres moverte como una cadena
#   de caracteres. Recuerda usar barras inclinadas hacia adelante (/) o
#   doble barra invertida (\\) para las rutas en Windows.
#   Ejemplo: `setwd("/Users/tu_usuario/Documents/MisProyectosR")`

cat("--- Demostración de setwd() ---\n")

# --- Paso 2.1: Intentar cambiar a un directorio de ejemplo ---
# Crea un directorio temporal para esta demostración.
# Esto asegura que el ejemplo sea reproducible en cualquier sistema.
temp_dir_name <- "R_temp_project_folder"
temp_path <- file.path(tempdir(), temp_dir_name) # Crea una ruta dentro del directorio temporal del sistema

print(paste0("Intentando crear y cambiar el directorio de trabajo a: ", temp_path))

# Crear el directorio si no existe
if (!dir.exists(temp_path)) {
  dir.create(temp_path)
  print(paste0("Directorio '", temp_dir_name, "' creado en: ", temp_path))
} else {
  print(paste0("Directorio '", temp_dir_name, "' ya existe en: ", temp_path))
}

# Cambiar el directorio de trabajo
setwd(temp_path)

# Es buena práctica reiniciar R o volver al directorio original después de la demo.
print(paste0("Comenta la línea 'setwd(\"", temp_path, "\")' si no quieres cambiar tu directorio de trabajo actual permanentemente."))
print("Puedes verificar el cambio llamando a getwd() de nuevo.")

# --- Paso 2.2: Verificar el nuevo directorio de trabajo (opcional) ---
print(paste0("Nuevo directorio de trabajo: ", getwd()))

# --- Paso 2.3: Volver al directorio original (muy recomendado para scripts) ---
# Es una muy buena práctica volver al directorio original al final de un script
# si lo has cambiado.
print(paste0("Volviendo al directorio original: ", current_directory))
setwd(current_directory)

print(paste0("Comenta la línea 'setwd(\"", current_directory, "\")' si no quieres volver al directorio original."))

# --- Paso 2.4: Limpiar el directorio temporal (opcional) ---
# Eliminar el directorio temporal creado para la demostración.
unlink(temp_path, recursive = TRUE) # Cuidado con 'unlink', borra archivos/carpetas.
print(paste0("Directorio temporal '", temp_dir_name, "' eliminado."))

cat("\n--- Fin de la demostración de gestión de directorio de trabajo ---\n")