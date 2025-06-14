# Asegurarse de que el paquete 'stringr' esté instalado y cargado.
# 'stringr' es parte del 'tidyverse', así que cargaremos 'tidyverse' para mayor comodidad.
cat("--- Asegurando que 'tidyverse' (incluye 'stringr') esté cargado ---\n")
if (!requireNamespace("tidyverse", quietly = TRUE)) {
  install.packages("tidyverse")
}
library(tidyverse)
cat("\n")

# Datos de ejemplo para las demostraciones
elementos <- c("A", "B", "C")
codigos_compuestos <- c(
  "PRODUCT1-RED-XL",
  "PRODUCT2-BLUE-M",
  "PRODUCT3-GREEN-S",
  "PRODUCT4", # Menos elementos de los esperados
  "PRODUCT5-YELLOW-XXL-EXTRA", # Más elementos de los esperados
  NA
)

# --- 1. Duplicar cadenas: str_dup() ---
# Descripción:
#   `str_dup()` duplica cada cadena en un vector un número específico de veces.
#   Es útil para generar datos de prueba o para crear patrones repetitivos.
# Uso:
#   `str_dup(string, times)`
#   `times` puede ser un solo número (para duplicar todas las cadenas el mismo número de veces)
#   o un vector del mismo tamaño que `string` (para duplicar cada cadena un número de veces diferente).

cat("--- 1. Demostración de str_dup() ---\n")
print("Elementos originales:")
print(elementos)

# Duplicar cada elemento 3 veces
dup_3_times <- str_dup(elementos, 3)
print("Elementos duplicados 3 veces:")
print(dup_3_times) # "AAA" "BBB" "CCC"

# Duplicar elementos un número diferente de veces
dup_variable_times <- str_dup(elementos, c(1, 2, 4))
print("Elementos duplicados con conteo variable:")
print(dup_variable_times) # "A" "BB" "CCCC"

# Duplicar una cadena y unirlas con un separador (ejemplo práctico)
etiquetas_duplicadas <- str_c(str_dup("Item", 3), collapse = ", ")
print("Etiquetas duplicadas y unidas:")
print(etiquetas_duplicadas) # "Item, Item, Item"
cat("\n")

# --- 2. Dividir cadenas en un número fijo de columnas: str_split_fixed() ---
# Descripción:
#   `str_split_fixed()` divide cada cadena de texto en un número fijo de partes
#   basándose en un patrón. Devuelve una matriz de caracteres.
#   Si una cadena tiene menos partes de las esperadas, las columnas restantes serán cadenas vacías (`""`).
#   Si tiene más partes, las partes adicionales se combinan en la última columna.
# Uso:
#   `str_split_fixed(string, pattern, n)`
#   `n`: El número deseado de columnas (partes) en la salida.

cat("--- 2. Demostración de str_split_fixed() ---\n")
print("Códigos compuestos originales:")
print(codigos_compuestos)

# Dividir por el guion en 3 partes
split_3_parts <- str_split_fixed(codigos_compuestos, "-", n = 3)
print("Dividido en 3 partes por guion:")
print(split_3_parts)
#      [,1]      [,2]    [,3]
# [1,] "PRODUCT1" "RED"   "XL"
# [2,] "PRODUCT2" "BLUE"  "M"
# [3,] "PRODUCT3" "GREEN" "S"
# [4,] "PRODUCT4" ""      ""               # Menos partes -> rellenado con ""
# [5,] "PRODUCT5" "YELLOW" "XXL-EXTRA"      # Más partes -> las extras van a la última
# [6,] NA        NA      NA               # NA se mantiene como NA

# Podemos convertir la matriz a un data frame si es necesario
split_df <- as.data.frame(split_3_parts)
colnames(split_df) <- c("Tipo", "Color", "Talla") # Nombres de columnas para mayor claridad
print("Dividido en 3 partes (como data frame):")
print(split_df)
#       Tipo  Color     Talla
# 1 PRODUCT1    RED        XL
# 2 PRODUCT2   BLUE         M
# 3 PRODUCT3  GREEN         S
# 4 PRODUCT4           
# 5 PRODUCT5 YELLOW XXL-EXTRA
# 6     <NA>   <NA>      <NA>

# Dividir por guion o guion bajo en 2 partes
split_2_parts <- str_split_fixed(codigos_compuestos, "[_-]", n = 2)
print("Dividido en 2 partes por guion o guion bajo:")
print(split_2_parts)
#      [,1]       [,2]
# [1,] "PRODUCT1" "RED-XL"
# [2,] "PRODUCT2" "BLUE-M"
# [3,] "PRODUCT3" "GREEN-S"
# [4,] "PRODUCT4" ""
# [5,] "PRODUCT5" "YELLOW-XXL-EXTRA"
# [6,] NA         NA

cat("\n--- Fin de la demostración de funciones de duplicación y división de cadenas ---\n")