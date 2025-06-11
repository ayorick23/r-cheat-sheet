# --- 3. Secuencia personalizada: seq() ---
# Descripción:
#   La función `seq()` (sequence) es una forma más flexible de crear vectores
#   numéricos. Permite especificar el inicio, el fin, el tamaño del paso (`by`)
#   o la longitud deseada (`length.out`).
# Uso:
#   `seq(from = inicio, to = fin, by = paso)`
#   `seq(from = inicio, to = fin, length.out = longitud)`

cat("--- 3. Demostración de seq() ---\n")
# Secuencia con paso específico
secuencia_paso <- seq(from = 0, to = 10, by = 2)
print(paste("Secuencia con paso 2 (seq(0, 10, by=2)):", paste(secuencia_paso, collapse = ", ")))

# Secuencia con longitud específica
secuencia_longitud <- seq(from = 1, to = 10, length.out = 5)
print(paste("Secuencia con 5 elementos (seq(1, 10, length.out=5)):", paste(secuencia_longitud, collapse = ", ")))

# Secuencia de fechas (requiere que las fechas sean tratadas como números por R)
# Puedes usar lubridate para esto en un contexto real
fecha_inicio <- as.Date("2023-01-01")
fecha_fin <- as.Date("2023-01-07")
secuencia_fechas <- seq(from = fecha_inicio, to = fecha_fin, by = "day")
print(paste("Secuencia de fechas:", paste(secuencia_fechas, collapse = ", ")))
cat("\n")