# Asegurarse de que el paquete 'stringr' esté instalado y cargado.
# 'stringr' es parte del 'tidyverse', así que cargaremos 'tidyverse' para mayor comodidad.
cat("--- Asegurando que 'tidyverse' (incluye 'stringr') esté cargado ---\n")
if (!requireNamespace("tidyverse", quietly = TRUE)) {
  install.packages("tidyverse")
}
library(tidyverse)
cat("\n")

# Datos de ejemplo para las demostraciones
nombres <- c(
  "manzana", "banana", "cereza", "ñame", "árbol", "pera",
  "uva", "kiwi", "zapallo", "aguacate", NA, "chirimoya"
)

# --- 1. Obtener el orden de clasificación: str_order() ---
# Descripción:
#   `str_order()` devuelve un vector de enteros que indica el orden en que las
#   cadenas originales deberían ser reordenadas para estar en orden de clasificación.
#   Es similar a `order()` pero optimizada para cadenas y con soporte para locales.
# Uso:
#   `str_order(string, decreasing = FALSE, na_last = TRUE, locale = "en")`
#   `decreasing`: TRUE para orden descendente.
#   `na_last`: Controla la posición de los NA (TRUE, FALSE, "keep", "first").
#   `locale`: Especifica las reglas de ordenación del idioma (ej. "es" para español).

cat("--- 1. Demostración de str_order() ---\n")
print("Nombres originales:")
print(nombres)

# Orden predeterminado (alfabético, locale "en" por defecto si no se especifica)
orden_default <- str_order(nombres)
print("Orden por defecto (índices):")
print(orden_default) # Muestra los índices para obtener el orden: 11 8 2 3 1 7 4 10 5 6 9 NA (varía si locale es 'es')

# Aplicar el orden a los nombres originales
nombres_ordenados_default <- nombres[orden_default]
print("Nombres ordenados por defecto (con str_order()):")
print(nombres_ordenados_default)
# [1] "aguacate"  "banana"    "cereza"    "chirimoya" "kiwi"      "manzana"
# [7] "ñame"      "pera"      "uva"       "árbol"     "zapallo"   NA

# Orden descendente
orden_descendente <- str_order(nombres, decreasing = TRUE)
print("Orden descendente (índices):")
print(orden_descendente)
print("Nombres ordenados descendente:")
print(nombres[orden_descendente])

# Orden con locale español ("es"): la 'ñ' va después de la 'n', y las vocales acentuadas
# se tratan igual que sus versiones sin acento (a=á).
orden_es <- str_order(nombres, locale = "es")
print("Orden con locale 'es' (índices):")
print(orden_es)
print("Nombres ordenados con locale 'es':")
print(nombres[orden_es])
# Deberías ver algo como: "aguacate", "arbol", "banana", "cereza", "chirimoya", "kiwi", "manzana", "name", "pera", "uva", "zapallo", NA (el orden de 'ñame' y 'árbol' cambia)
cat("\n")

# --- 2. Ordenar directamente las cadenas: str_sort() ---
# Descripción:
#   `str_sort()` devuelve un nuevo vector de cadenas que ya está ordenado según
#   el criterio especificado. Es un atajo para `x[str_order(x, ...)]`.
# Uso:
#   `str_sort(string, decreasing = FALSE, na_last = TRUE, locale = "en")`
#   Los argumentos son los mismos que para `str_order()`.

cat("--- 2. Demostración de str_sort() ---\n")
print("Nombres originales:")
print(nombres)

# Orden alfabético predeterminado
sorted_default <- str_sort(nombres)
print("Nombres ordenados por defecto (con str_sort()):")
print(sorted_default)

# Orden descendente
sorted_desc <- str_sort(nombres, decreasing = TRUE)
print("Nombres ordenados descendente (con str_sort()):")
print(sorted_desc)

# Orden con locale español ("es")
sorted_es <- str_sort(nombres, locale = "es")
print("Nombres ordenados con locale 'es' (con str_sort()):")
print(sorted_es)

# Demostración del efecto de locale en 'na_last'
sorted_na_first <- str_sort(nombres, na_last = FALSE) # NA al principio
print("Nombres ordenados con NA al principio:")
print(sorted_na_first)

sorted_na_kept <- str_sort(nombres, na_last = "keep") # NA en su posición original si hubiera
print("Nombres ordenados con NA en su posición 'original':")
print(sorted_na_kept) # NA queda en la misma posición, pero el resto se ordena

cat("\n--- Fin de la demostración de funciones de ordenación de cadenas ---\n")