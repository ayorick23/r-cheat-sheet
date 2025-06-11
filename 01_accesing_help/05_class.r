# --- 5. Obtención de la clase de un objeto: class(object) ---
# Descripción:
#   La función `class()` devuelve el nombre de la clase o clases a las que
#   pertenece un objeto en R. Cada objeto en R tiene una clase, que determina
#   cómo se comporta y qué funciones se le pueden aplicar.
# Uso:
#   Simplemente pasa el objeto a `class()`.

cat("--- Demostración de class(df) y class(vector) ---\n")
print("Clase del data frame 'df':")
class(df)
print(class(df))

vector_numerico <- c(1, 2, 3)
print("Clase de un vector numérico:")
class(vector_numerico)
print(class(vector_numerico))

vector_caracter <- c("a", "b", "c")
print("Clase de un vector de caracteres:")
class(vector_caracter)
print(class(vector_caracter))

cat("\n--- Fin de la demostración de funciones de ayuda ---\n")