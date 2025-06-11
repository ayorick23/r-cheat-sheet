# --- 4. Repetir elementos: rep() ---
# Descripción:
#   La función `rep()` (replicate) se utiliza para repetir elementos o vectores.
#   Ofrece varias formas de repetición, siendo las más comunes `times` (repetir
#   todo el vector N veces) y `each` (repetir cada elemento N veces).

cat("--- 4. Demostración de rep() ---\n")
vector_original <- c("A", "B", "C")

# --- 4.1 rep(x, times = N) ---
# Repite todo el vector N veces.
rep_times <- rep(vector_original, times = 3)
print(paste("Repetir vector 3 veces (rep(vec, times=3)):", paste(rep_times, collapse = ", "))) # A B C A B C A B C

# También puedes usar un vector para `times` para especificar repeticiones individuales
rep_times_individual <- rep(vector_original, times = c(1, 2, 3))
print(paste("Repeticiones individuales (rep(vec, times=c(1,2,3))):", paste(rep_times_individual, collapse = ", "))) # A B B C C C

# --- 4.2 rep(x, each = N) ---
# Repite cada elemento del vector N veces.
rep_each <- rep(vector_original, each = 2)
print(paste("Repetir cada elemento 2 veces (rep(vec, each=2)):", paste(rep_each, collapse = ", "))) # A A B B C C

# --- 4.3 rep(x, times = N, each = M) ---
# Combinación de ambos. Repite cada elemento 'M' veces, y luego el patrón resultante 'N' veces.
rep_times_each <- rep(vector_original, times = 2, each = 2)
print(paste("Combinación (rep(vec, times=2, each=2)):", paste(rep_times_each, collapse = ", "))) # A A B B C C A A B B C C

cat("\n--- Fin de la demostración de creación de vectores ---\n")