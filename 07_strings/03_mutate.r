# Asegurarse de que el paquete 'stringr' esté instalado y cargado.
# 'stringr' es parte del 'tidyverse', así que cargaremos 'tidyverse' para mayor comodidad.
cat("--- Asegurando que 'tidyverse' (incluye 'stringr') esté cargado ---\n")
if (!requireNamespace("tidyverse", quietly = TRUE)) {
  install.packages("tidyverse")
}
library(tidyverse)
cat("\n")

# Datos de ejemplo para las demostraciones
nombres_productos <- c(
  "LAPTOP Pro 15",
  "monitor 27-inch 4K",
  "Teclado MECANICO",
  "Ratón inalámbrico",
  "laptOP Air 13",
  "webcam hd",
  NA # Valor faltante
)

codigos_internos <- c(
  "PC-GAMER-ULTRA-2024",
  "LP_OFFICE_PRO_2023",
  "MN-DESIGN-STD-2024",
  "SW-BASIC-HOME-2022"
)

# --- 1. Modificar subcadenas por posición: str_sub() (como mutador) ---
# Descripción:
#   Como ya vimos en 'string_subsets.R', `str_sub()` no solo extrae, sino que
#   también puede modificar partes de una cadena de texto al asignarle un nuevo valor.
#   Esto muta la cadena original en las posiciones especificadas.
# Uso:
#   `str_sub(string, start, end) <- value`

cat("--- 1. Demostración de str_sub() (como mutador) ---\n")
nombres_copia <- nombres_productos
print("Originales (Nombres de Productos):")
print(nombres_copia)

# Reemplazar los primeros 3 caracteres por "XXX"
str_sub(nombres_copia, 1, 3) <- "XXX"
print("Primeros 3 caracteres reemplazados por 'XXX':")
print(nombres_copia)
# [1] "XXXTOP Pro 15"        "XXXitor 27-inch 4K"   "XXXlado MECANICO"
# [4] "XXXón inalámbrico"    "XXXtOP Air 13"        "XXXam hd"
# [7] NA

# Reemplazar los últimos 2 caracteres por "##"
nombres_copia_2 <- nombres_productos
str_sub(nombres_copia_2, -2, -1) <- "##"
print("Últimos 2 caracteres reemplazados por '##':")
print(nombres_copia_2)
# [1] "LAPTOP Pro 1#"      "monitor 27-inch 4#" "Teclado MECANI##"
# [4] "Ratón inalámbr##"   "laptOP Air 1##"     "webcam h##"
# [7] NA
cat("\n")

# --- 2. Reemplazar la primera coincidencia de un patrón: str_replace() ---
# Descripción:
#   `str_replace()` busca la primera ocurrencia de un patrón en cada cadena
#   y la reemplaza con una nueva cadena. Si el patrón no se encuentra, la cadena
#   original se devuelve sin cambios.
# Uso:
#   `str_replace(string, pattern, replacement)`

cat("--- 2. Demostración de str_replace() ---\n")
print("Códigos internos originales:")
print(codigos_internos)

# Reemplazar el primer guion por un espacio
replace_first_dash <- str_replace(codigos_internos, "-", " ")
print("Primer guion reemplazado por espacio:")
print(replace_first_dash)
# [1] "PC GAMER-ULTRA-2024"  "LP_OFFICE_PRO_2023"   "MN DESIGN-STD-2024"
# [4] "SW BASIC-HOME-2022"

# Reemplazar "PRO" por "PLUS" (solo la primera ocurrencia, sensible a mayúsculas/minúsculas)
replace_pro <- str_replace(codigos_internos, "PRO", "PLUS")
print("Primera 'PRO' reemplazada por 'PLUS':")
print(replace_pro)
# [1] "PC-GAMER-ULTRA-2024" "LP_OFFICE_PLUS_2023" "MN-DESIGN-STD-2024"
# [4] "SW-BASIC-HOME-2022"
cat("\n")

# --- 3. Reemplazar todas las coincidencias de un patrón: str_replace_all() ---
# Descripción:
#   `str_replace_all()` busca *todas* las ocurrencias de un patrón en cada cadena
#   y las reemplaza con una nueva cadena. Es la versión "global" de `str_replace()`.
# Uso:
#   `str_replace_all(string, pattern, replacement)`

cat("--- 3. Demostración de str_replace_all() ---\n")
print("Códigos internos originales:")
print(codigos_internos)

# Reemplazar todos los guiones y guiones bajos por espacios
replace_all_separators <- str_replace_all(codigos_internos, "[_-]", " ")
print("Todos los guiones y guiones bajos reemplazados por espacios:")
print(replace_all_separators)
# [1] "PC GAMER ULTRA 2024"  "LP OFFICE PRO 2023"   "MN DESIGN STD 2024"
# [4] "SW BASIC HOME 2022"

# Reemplazar todos los dígitos por '#'
replace_all_digits <- str_replace_all(codigos_internos, "[0-9]", "#")
print("Todos los dígitos reemplazados por '#':")
print(replace_all_digits)
# [1] "PC-GAMER-ULTRA-####" "LP_OFFICE_PRO_####" "MN-DESIGN-STD-####"
# [4] "SW-BASIC-HOME-####"
cat("\n")

# --- 4. Convertir a minúsculas: str_to_lower() ---
# Descripción:
#   `str_to_lower()` convierte todos los caracteres de una cadena a minúsculas.
#   Es útil para la normalización de texto.
# Uso:
#   `str_to_lower(string, locale = "en")` (locale es opcional, por defecto "en")

cat("--- 4. Demostración de str_to_lower() ---\n")
print("Nombres de productos originales:")
print(nombres_productos)

nombres_lower <- str_to_lower(nombres_productos)
print("Nombres de productos en minúsculas:")
print(nombres_lower)
# [1] "laptop pro 15"        "monitor 27-inch 4k"   "teclado mecanico"
# [4] "ratón inalámbrico"    "laptop air 13"        "webcam hd"
# [7] NA
cat("\n")

# --- 5. Convertir a mayúsculas: str_to_upper() ---
# Descripción:
#   `str_to_upper()` convierte todos los caracteres de una cadena a mayúsculas.
#   También es útil para la normalización o presentación.
# Uso:
#   `str_to_upper(string, locale = "en")`

cat("--- 5. Demostración de str_to_upper() ---\n")
print("Nombres de productos originales:")
print(nombres_productos)

nombres_upper <- str_to_upper(nombres_productos)
print("Nombres de productos en mayúsculas:")
print(nombres_upper)
# [1] "LAPTOP PRO 15"        "MONITOR 27-INCH 4K"   "TECLADO MECANICO"
# [4] "RATÓN INALÁMBRICO"    "LAPTOP AIR 13"        "WEBCAM HD"
# [7] NA
cat("\n")

# --- 6. Convertir a formato de título: str_to_title() ---
# Descripción:
#   `str_to_title()` capitaliza la primera letra de cada palabra en una cadena.
#   Esto es útil para nombres propios o títulos.
# Uso:
#   `str_to_title(string, locale = "en")`

cat("--- 6. Demostración de str_to_title() ---\n")
print("Nombres de productos originales:")
print(nombres_productos)

nombres_title <- str_to_title(nombres_productos)
print("Nombres de productos en formato de título:")
print(nombres_title)
# [1] "Laptop Pro 15"        "Monitor 27-Inch 4K"   "Teclado Mecanico"
# [4] "Ratón Inalámbrico"    "Laptop Air 13"        "Webcam Hd"
# [7] NA
cat("\n")

cat("\n--- Fin de la demostración de funciones de mutación de cadenas ---\n")