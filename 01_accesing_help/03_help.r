# --- 3. Búsqueda por palabra clave: ?? "keyword" ---
# Descripción:
#   El operador '??' realiza una búsqueda de texto completo en la documentación de R.
#   Es extremadamente útil cuando conoces una palabra clave o un concepto, pero no
#   estás seguro de qué función o paquete lo implementa. Busca en todos los paquetes
#   instalados.
# Uso:
#   Escribe '??' seguido de la palabra clave entre comillas.
#   Ejemplo: `??"maximum"` buscará la palabra "maximum" en la documentación.

cat("--- Demostración de ??'maximum' ---\n")
print("Ejecutando '??\"maximum\"' para buscar en la documentación de R.")
print("Los resultados aparecerán en la consola de R o en el panel de Ayuda de RStudio.")
# ?? "maximum"
# NOTA: Esto puede generar una lista larga de resultados en la consola o en el panel de ayuda.
cat("\n")