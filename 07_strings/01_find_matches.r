# Asegurarse de que el paquete 'stringr' esté instalado y cargado.
# 'stringr' es parte del 'tidyverse', así que cargaremos 'tidyverse' para mayor comodidad.
cat("--- Asegurando que 'tidyverse' (incluye 'stringr') esté cargado ---\n")
if (!requireNamespace("tidyverse", quietly = TRUE)) {
  install.packages("tidyverse")
}
library(tidyverse)
cat("\n")

# Datos de ejemplo para las demostraciones
frases <- c(
  "El perro corre rápido.",
  "Un gato negro saltó.",
  "Los pájaros vuelan alto.",
  "El ratón se esconde.",
  "perro y gato son mascotas."
)

productos <- c(
  "Laptop Pro 15",
  "Monitor 27-inch 4K",
  "Teclado mecánico",
  "Ratón inalámbrico",
  "Laptop Air 13",
  "Webcam HD",
  NA # Valor faltante para demostrar manejo de NA
)

# --- 1. Detectar patrones: str_detect() ---
# Descripción:
#   `str_detect()` comprueba si una cadena (o un vector de cadenas) contiene un patrón.
#   Devuelve un vector lógico (TRUE/FALSE) del mismo tamaño que el input.
# Uso:
#   `str_detect(string, pattern)`
#   `pattern` puede ser una cadena literal o una expresión regular.

cat("--- 1. Demostración de str_detect() ---\n")
print("Frases originales:")
print(frases)

# Detectar la palabra "perro"
detect_perro <- str_detect(frases, "perro")
print("Detectar 'perro':")
print(detect_perro) # TRUE FALSE FALSE FALSE TRUE

# Detectar "gato" (insensible a mayúsculas/minúsculas usando regex con (?i))
detect_gato_insensible <- str_detect(frases, "(?i)gato")
print("Detectar 'gato' (insensible a mayúsculas/minúsculas):")
print(detect_gato_insensible) # FALSE TRUE FALSE FALSE TRUE

# Detectar cadenas que contienen números en la lista de productos
detect_numero_producto <- str_detect(productos, "[0-9]")
print("Productos que contienen números:")
print(detect_numero_producto) # TRUE TRUE FALSE FALSE TRUE FALSE FALSE (NA para el NA)
cat("\n")

# --- 2. Detectar inicio de cadena: str_starts() ---
# Descripción:
#   `str_starts()` comprueba si una cadena (o un vector de cadenas) comienza con un patrón.
#   Devuelve un vector lógico.
# Uso:
#   `str_starts(string, pattern)`

cat("--- 2. Demostración de str_starts() ---\n")
print("Productos originales:")
print(productos)

# Detectar productos que empiezan con "Laptop"
starts_laptop <- str_starts(productos, "Laptop")
print("Productos que empiezan con 'Laptop':")
print(starts_laptop) # TRUE FALSE FALSE FALSE TRUE FALSE FALSE (NA para el NA)

# Detectar frases que empiezan con "El"
starts_el_frases <- str_starts(frases, "El")
print("Frases que empiezan con 'El':")
print(starts_el_frases) # TRUE FALSE FALSE TRUE FALSE
cat("\n")

# --- 3. Encontrar índices de coincidencia: str_which() ---
# Descripción:
#   `str_which()` devuelve los índices numéricos de las cadenas que coinciden con un patrón.
#   Es útil para subseleccionar elementos de un vector.
# Uso:
#   `str_which(string, pattern)`

cat("--- 3. Demostración de str_which() ---\n")
print("Frases originales:")
print(frases)

# ¿Qué frases contienen "corre"?
which_corre <- str_which(frases, "corre")
print("Índices de frases que contienen 'corre':")
print(which_corre) # 1

# ¿Qué frases contienen "o"?
which_o <- str_which(frases, "o")
print("Índices de frases que contienen 'o':")
print(which_o) # 1 2 3 4 5
cat("\n")

# --- 4. Localizar patrones: str_locate() ---
# Descripción:
#   `str_locate()` devuelve la posición inicial y final de la primera coincidencia de un patrón.
#   Si no se encuentra el patrón, devuelve NA para ambas posiciones.
#   El resultado es una matriz con dos columnas: `start` y `end`.
# Uso:
#   `str_locate(string, pattern)`

cat("--- 4. Demostración de str_locate() ---\n")
print("Frases originales:")
print(frases)

# Localizar la primera aparición de "o"
locate_o <- str_locate(frases, "o")
print("Localización de la primera 'o':")
print(locate_o)
#      start end
# [1,]    10  10  (de "corre")
# [2,]     8   8  (de "negro")
# [3,]    12  12  (de "vuelan")
# [4,]     3   3  (de "ratón")
# [5,]     2   2  (de "perro")
cat("\n")

# Localizar "Laptop" en productos
locate_laptop <- str_locate(productos, "Laptop")
print("Localización de 'Laptop' en productos:")
print(locate_laptop)
#      start end
# [1,]     1   6
# [2,]    NA  NA
# [3,]    NA  NA
# [4,]    NA  NA
# [5,]     1   6
# [6,]    NA  NA
# [7,]    NA  NA
cat("\n")

# --- 5. Contar ocurrencias: str_count() ---
# Descripción:
#   `str_count()` cuenta el número de ocurrencias de un patrón dentro de una cadena.
#   Devuelve un vector numérico.
# Uso:
#   `str_count(string, pattern)`

cat("--- 5. Demostración de str_count() ---\n")
print("Frases originales:")
print(frases)

# Contar cuántas veces aparece "o"
count_o <- str_count(frases, "o")
print("Conteo de 'o' en cada frase:")
print(count_o) # 2 2 1 2 2 (Ej. "perrO cOrre" tiene 2 'o's)

# Contar el número de vocales (a, e, i, o, u) en cada frase
# Usamos una expresión regular para buscar cualquier vocal
count_vocales <- str_count(frases, "[aeiouAEIOU]")
print("Conteo de vocales en cada frase:")
print(count_vocales)
# [1] 6 6 6 6 8 (NA para el NA si estuviera en 'frases')
cat("\n")

cat("\n--- Fin de la demostración de funciones de coincidencia de cadenas ---\n")