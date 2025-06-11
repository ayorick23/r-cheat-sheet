# Asegurarse de que el paquete 'stringr' esté instalado y cargado.
# 'stringr' es parte del 'tidyverse', así que cargaremos 'tidyverse' para mayor comodidad.
cat("--- Asegurando que 'tidyverse' (incluye 'stringr') esté cargado ---\n")
if (!requireNamespace("tidyverse", quietly = TRUE)) {
  install.packages("tidyverse")
}
library(tidyverse)
cat("\n")

# Datos de ejemplo para las demostraciones
codigos_producto <- c(
  "PC-GAMER-ULTRA-2024",
  "LP-OFFICE-PRO-2023",
  "MN-DESIGN-STD-2024",
  "SW-BASIC-HOME-2022",
  "PC-MINI-ECO-2024",
  NA # Valor faltante
)

descripciones <- c(
  "Producto: Laptop i7 16GB RAM con SSD 512GB",
  "Modelo: Monitor 27pulg 4K UHD",
  "SKU: Teclado Mecanico RGB (ES)",
  "Item: Mouse Inalambrico BT",
  "Tipo: Tablet Android",
  "Producto: Camara Web Full HD"
)

# --- 1. Extraer subcadenas por posición: str_sub() ---
# Descripción:
#   `str_sub()` extrae subcadenas basándose en posiciones inicial y final.
#   También se puede usar para reemplazar partes de una cadena.
# Uso:
#   `str_sub(string, start, end)`
#   `str_sub(string, start, end) <- value` (para reemplazo)

cat("--- 1. Demostración de str_sub() ---\n")
print("Códigos de producto originales:")
print(codigos_producto)

# Extraer los primeros dos caracteres (tipo de producto)
tipo_producto <- str_sub(codigos_producto, 1, 2)
print("Tipo de producto (primeros 2 caracteres):")
print(tipo_producto) # "PC" "LP" "MN" "SW" "PC" NA

# Extraer el año de los códigos (últimos 4 caracteres)
anio_producto <- str_sub(codigos_producto, -4, -1)
print("Año del producto (últimos 4 caracteres):")
print(anio_producto) # "2024" "2023" "2024" "2022" "2024" NA

# Extraer la sección del medio (del carácter 4 al 8)
seccion_media <- str_sub(codigos_producto, 4, 8)
print("Sección media (carácter 4 al 8):")
print(seccion_media) # "GAME" "OFFI" "DESI" "BASI" "MINI" NA

# Reemplazar parte de una cadena (mutación in-place)
# NOTA: Esto modifica el vector original si no se asigna a uno nuevo.
# Para la demostración, trabajaremos con una copia.
codigos_modificados <- codigos_producto
str_sub(codigos_modificados, 1, 2) <- "XX" # Reemplazar "PC", "LP", etc. por "XX"
print("Códigos con prefijo 'XX' (str_sub para reemplazo):")
print(codigos_modificados) # "XX-GAMER-ULTRA-2024" ... NA

cat("\n")

# --- 2. Seleccionar cadenas completas por patrón: str_subset() ---
# Descripción:
#   `str_subset()` devuelve solo aquellas cadenas de un vector que contienen el patrón.
#   Es un atajo para `x[str_detect(x, pattern)]`.
# Uso:
#   `str_subset(string, pattern)`

cat("--- 2. Demostración de str_subset() ---\n")
print("Códigos de producto originales:")
print(codigos_producto)

# Seleccionar solo los códigos que contienen "2024"
subset_2024 <- str_subset(codigos_producto, "2024")
print("Códigos que contienen '2024':")
print(subset_2024) # "PC-GAMER-ULTRA-2024" "MN-DESIGN-STD-2024" "PC-MINI-ECO-2024"

# Seleccionar descripciones que contienen "HD" (insensible a mayúsculas/minúsculas)
subset_hd <- str_subset(descripciones, "(?i)HD")
print("Descripciones que contienen 'HD':")
print(subset_hd) # "Modelo: Monitor 27pulg 4K UHD" "Producto: Camara Web Full HD"
cat("\n")

# --- 3. Extraer la primera coincidencia de un patrón: str_extract() ---
# Descripción:
#   `str_extract()` extrae la primera ocurrencia de un patrón en cada cadena.
#   Si el patrón no se encuentra, devuelve NA.
#   Es ideal para extraer información estructurada (ej. números, fechas, emails).
# Uso:
#   `str_extract(string, pattern)`

cat("--- 3. Demostración de str_extract() ---\n")
print("Descripciones originales:")
print(descripciones)

# Extraer números (secuencia de dígitos)
numeros_extraidos <- str_extract(descripciones, "[0-9]+")
print("Primer número extraído de cada descripción:")
print(numeros_extraidos) # "7" (de 27) "16" (de 16GB) NA NA NA NA NA

# Extraer el tipo de producto antes del ":"
tipo_linea <- str_extract(descripciones, "^[^:]+:") # Cualquier cosa al inicio que no sea ":" seguido de ":"
print("Tipo de línea (e.g., 'Producto:', 'Modelo:'):")
print(tipo_linea) # "Producto:" "Modelo:" "SKU:" "Item:" "Tipo:" "Producto:"

# Extraer la unidad de medida (GB, pulg, K)
unidades <- str_extract(descripciones, "(GB|pulg|K|ES|BT|HD)")
print("Unidades extraídas:")
print(unidades) # "GB" "pulg" "ES" "BT" "HD" NA
cat("\n")

# --- 4. Extraer coincidencias y grupos de captura: str_match() ---
# Descripción:
#   `str_match()` es similar a `str_extract()`, pero devuelve una matriz
#   con la coincidencia completa y los grupos de captura definidos en la expresión regular.
#   Esto es invaluable cuando necesitas extraer múltiples piezas de información
#   relacionadas de un solo patrón.
# Uso:
#   `str_match(string, pattern)`

cat("--- 4. Demostración de str_match() ---\n")
print("Descripciones originales:")
print(descripciones)

# Patrón para extraer "Producto:", "Modelo:", "SKU:", etc., y el valor asociado
# Usamos paréntesis `()` para crear grupos de captura.
# Grupo 1: El tipo de etiqueta (Producto, Modelo, SKU, etc.)
# Grupo 2: El valor después de ": "
patron_tipo_valor <- "(\\w+):\\s*(.*)"

matched_data <- str_match(descripciones, patron_tipo_valor)
print("Matriz de coincidencias y grupos de captura:")
print(matched_data)
# La primera columna es la coincidencia completa.
# La segunda columna es el primer grupo de captura (la etiqueta).
# La tercera columna es el segundo grupo de captura (el valor).
#      [,1]                                          [,2]       [,3]
# [1,] "Producto: Laptop i7 16GB RAM con SSD 512GB" "Producto" "Laptop i7 16GB RAM con SSD 512GB"
# [2,] "Modelo: Monitor 27pulg 4K UHD"              "Modelo"   "Monitor 27pulg 4K UHD"
# ... y así sucesivamente.

# Extraer el nombre del producto y la RAM (si aplica)
# Patrón: "Laptop" seguido de cualquier cosa no un número (.*?) y luego números y "GB RAM"
patron_laptop_ram <- "Laptop (.*?) (\\d+)GB RAM"
matched_laptop_ram <- str_match(descripciones, patron_laptop_ram)
print("Coincidencias de 'Laptop' y RAM:")
print(matched_laptop_ram)
#      [,1]                        [,2] [,3]
# [1,] "Laptop i7 16GB RAM"        "i7" "16"
# [2,] NA                          NA   NA
# [3,] NA                          NA   NA
# [4,] NA                          NA   NA
# [5,] NA                          NA   NA
# [6,] NA                          NA   NA

# Puedes acceder a los grupos de captura específicos
print("Nombres de procesador (Grupo 2):")
print(matched_laptop_ram[, 2])
print("Cantidad de RAM (Grupo 3):")
print(matched_laptop_ram[, 3])
cat("\n")

cat("\n--- Fin de la demostración de funciones de subconjuntos de cadenas ---\n")