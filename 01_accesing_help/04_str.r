# --- 4. Inspección de la estructura de un objeto: str(object) ---
# Descripción:
#   La función `str()` (structure) es una herramienta invaluable para obtener un
#   resumen conciso y legible de la estructura interna de un objeto R. Muestra
#   el tipo de objeto, sus dimensiones, nombres de columnas, tipos de datos
#   de las columnas y los primeros valores.
# Uso:
#   `str()` es especialmente útil para data frames, listas y otros objetos complejos.

cat("--- Demostración de str(df) ---\n")
# Data frame de ejemplo
df <- data.frame(
  ID = 1:5,
  Name = c("Alice", "Bob", "Charlie", "David", "Eve"),
  Age = c(24, 30, 28, 35, 22),
  IsStudent = c(TRUE, FALSE, TRUE, FALSE, TRUE),
  Score = c(85.5, 92.0, 78.3, NA, 90.1)
)

print("Estructura del data frame 'df':")
str(df)
cat("\n")