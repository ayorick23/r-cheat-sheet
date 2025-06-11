# --- 2. Secuencia de números enteros: : (operador de dos puntos) ---
# Descripción:
#   El operador `:` es una forma rápida y concisa de crear una secuencia de
#   números enteros. Genera todos los enteros entre el número inicial y el final.
# Uso:
#   `inicio:fin`

cat("--- 2. Demostración de : (operador de dos puntos) ---\n")
secuencia_simple <- 1:7
print(paste("Secuencia simple con 1:7:", paste(secuencia_simple, collapse = ", ")))
print(paste("Clase del vector:", class(secuencia_simple)))

secuencia_inversa <- 7:1
print(paste("Secuencia inversa con 7:1:", paste(secuencia_inversa, collapse = ", ")))

secuencia_negativa <- -3:3
print(paste("Secuencia con números negativos:", paste(secuencia_negativa, collapse = ", ")))
cat("\n")