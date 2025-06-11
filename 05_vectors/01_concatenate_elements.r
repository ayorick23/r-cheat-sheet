# --- 1. Concatenar elementos: c() ---
# Descripción:
#   La función `c()` (combine o concatenate) es la forma más versátil y común
#   de crear vectores en R. Permite combinar elementos individuales o vectores
#   existentes en un nuevo vector. Todos los elementos del vector resultante
#   deben ser del mismo tipo de dato (numérico, carácter, lógico, etc.).
# Uso:
#   `c(elemento1, elemento2, ..., elementoN)`

cat("--- 1. Demostración de c() ---\n")
# Vector numérico
numeros <- c(1, 5, 10, 15)
print(paste("Vector numérico con c():", paste(numeros, collapse = ", ")))
print(paste("Clase del vector:", class(numeros)))

# Vector de caracteres
nombres <- c("Alice", "Bob", "Charlie")
print(paste("Vector de caracteres con c():", paste(nombres, collapse = ", ")))
print(paste("Clase del vector:", class(nombres)))

# Vector lógico
booleanos <- c(TRUE, FALSE, TRUE, TRUE)
print(paste("Vector lógico con c():", paste(booleanos, collapse = ", ")))
print(paste("Clase del vector:", class(booleanos)))

# Coerción de tipo: Si mezclas tipos, R los convertirá al tipo más universal o general
mezcla_tipos <- c(1, "hello", TRUE)
print(paste("Vector con tipos mezclados (coerción a caracter):", paste(mezcla_tipos, collapse = ", ")))
print(paste("Clase del vector mezclado:", class(mezcla_tipos)))
cat("\n")