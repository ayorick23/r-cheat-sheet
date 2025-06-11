# --- 2. Funciones de Resumen Estadístico ---
# Descripción:
#   `max()`: Valor máximo.
#   `min()`: Valor mínimo.
#   `mean()`: Media aritmética.
#   `sum()`: Suma de los elementos.
#   `median()`: Mediana (valor central).
#   `quantile()`: Cuantiles (percentiles).
#   `round()`: Redondeo a un número específico de decimales.
#   `rank()`: Rangos de los valores.
#   `signif()`: Redondeo a un número específico de dígitos significativos.
#   `var()`: Varianza.
#   `cor()`: Correlación.
#   `sd()`: Desviación estándar.

cat("--- 2. Demostración de Funciones de Resumen Estadístico ---\n")
datos <- c(15, 8, 22, 10, 30, 12, 18)

print(paste("max(datos):", max(datos)))
print(paste("min(datos):", min(datos)))
print(paste("mean(datos):", mean(datos)))
print(paste("sum(datos):", sum(datos)))
print(paste("median(datos):", median(datos)))
print("quantile(datos):")
print(quantile(datos))
print(paste("round(mean(datos), 2):", round(mean(datos), 2)))
print("rank(datos):")
print(rank(datos))
print(paste("signif(mean(datos), 3):", signif(mean(datos), 3)))
print(paste("var(datos):", var(datos)))

# Ejemplo de correlación
datos2 <- c(5, 12, 7, 15, 9, 11, 13)
print(paste("cor(datos, datos2):", cor(datos, datos2)))

print(paste("sd(datos):", sd(datos)))
cat("\n")

cat("\n--- Fin de la demostración de funciones matemáticas ---\n")