# --- 5. Otros Operadores ---

# --- 5.1 Operador %in% ---
# Descripción:
#   Comprueba si los elementos de un vector están presentes en otro vector.
#   Devuelve un vector lógico.
# Uso: `vector_elementos %in% vector_conjunto`

cat("--- 5.1 Demostración de %in% ---\n")
frutas_preferidas <- c("manzana", "banana", "cereza")
frutas_en_cesta <- c("manzana", "naranja", "banana", "kiwi")

print("¿Frutas en cesta están en frutas preferidas?:")
print(frutas_en_cesta %in% frutas_preferidas) # TRUE FALSE TRUE FALSE

fruta_unica <- "pera"
print(paste("¿'pera' está en frutas preferidas?:", fruta_unica %in% frutas_preferidas))
cat("\n")

# --- 5.2 Operador $ (Acceso a elementos por nombre en listas/data frames) ---
# Descripción:
#   Se utiliza para acceder a elementos (generalmente columnas) de un data frame
#   o lista por su nombre.
# Uso: `objeto$nombre_elemento`

cat("--- 5.2 Demostración de $ ---\n")
data_ventas <- data.frame(
  Producto = c("A", "B", "C"),
  Precio = c(10, 20, 30),
  Cantidad = c(5, 2, 8)
)

print("Accediendo a la columna 'Producto' usando $:")
print(data_ventas$Producto)
print(paste("Primer precio usando $: ", data_ventas$Precio[1]))
cat("\n")

# --- 5.3 Operador %>% (Pipe - de magrittr/tidyverse) ---
# Descripción:
#   El operador pipe (tubería) es proporcionado por el paquete `magrittr`
#   (y es una parte central del `tidyverse`). Permite encadenar operaciones
#   de una manera más legible, pasando el resultado de una función como
#   el primer argumento de la siguiente. Es como una "tubería" de datos.
# Uso: `dato %>% funcion(argumentos)`

cat("--- 5.3 Demostración de %>% (Pipe) ---\n")

# Asegurarse de que el paquete 'dplyr' (que usa %>% y es parte de tidyverse) esté cargado
if (!requireNamespace("dplyr", quietly = TRUE)) {
  install.packages("dplyr")
}
library(dplyr)

# Ejemplo sin pipe
ventas_altas_sin_pipe <- filter(data_ventas, Precio > 15)
productos_ventas_altas_sin_pipe <- select(ventas_altas_sin_pipe, Producto)
print("Productos con precio > 15 (sin pipe):")
print(productos_ventas_altas_sin_pipe)

# Ejemplo con pipe
productos_ventas_altas_con_pipe <- data_ventas %>%
  filter(Precio > 15) %>%
  select(Producto)
print("Productos con precio > 15 (con pipe):")
print(productos_ventas_altas_con_pipe)

cat("\n--- Fin de la demostración de operadores ---\n")
