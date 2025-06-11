# --- 3. Operadores Lógicos ---
# Descripción:
#   Combinan expresiones lógicas y devuelven un resultado booleano.
# Operadores: & (AND lógico vectorial), | (OR lógico vectorial),
#             ! (NOT lógico), && (AND lógico para un solo valor),
#             || (OR lógico para un solo valor)
# Nota: '&' y '|' son para operaciones elemento a elemento en vectores.
#       '&&' y '||' evalúan solo el primer elemento y son para control de flujo.

cat("--- 3. Demostración de Operadores Lógicos ---\n")
cond1 <- TRUE
cond2 <- FALSE

print(paste("AND Lógico (cond1 & cond2):", cond1 & cond2))
print(paste("OR Lógico (cond1 | cond2):", cond1 | cond2))
print(paste("NOT Lógico (!cond1):", !cond1))

# Ejemplos con vectores
vec1 <- c(TRUE, FALSE, TRUE)
vec2 <- c(TRUE, TRUE, FALSE)
print("AND Lógico Vectorial (vec1 & vec2):")
print(vec1 & vec2) # TRUE FALSE FALSE
print("OR Lógico Vectorial (vec1 | vec2):")
print(vec1 | vec2) # TRUE TRUE TRUE

# Ejemplos con && y || (evaluación de cortocircuito)
# Estos son más comunes en sentencias if()
if (cond1 && cond2) {
  print("cond1 y cond2 son VERDADEROS (solo el primero se evalúa si es falso)")
} else {
  print("cond1 && cond2: Al menos una es FALSA")
}

if (cond1 || cond2) {
  print("cond1 || cond2: Al menos una es VERDADERA (solo el primero se evalúa si es verdadero)")
} else {
  print("Ambas son FALSAS")
}
cat("\n")