# Cadenas

El paquete `stringr` facilita trabajar con cadenas en R - debe instalar y cargar este paquete para utilizar las siguientes funciones.

## Encontrar Coincidencias y Patrones

```r
#Detecta la presencia de una coincidencia de patrón en una cadena
str_detect(string, pattern, negate = FALSE)
```

```r
#Detecta la presencia de una coincidencia de patrón al comienzo de una cadena
str_starts(string, pattern, negate = FALSE)
```

```r
#Encuentra el índice de cadenas que contienen coincidencias de patrones
str_which(string, pattern, negate = FALSE)
```

```r
#Localiza las posiciones de las coincidencias de patrones en una cadena
str_locate(string, pattern)
```

```r
#Cuenta el número de coincidencias de patrones en una cadena
str_count(string, pattern)
```

## Subconjuntos

```r
#Extrae subcadenas de un vector de caracteres
str_sub(string, start = 1L, end = -1L)
```

```r
#Devuelve cadenas que contienen una coincidencia de patrón
str_subset(string, pattern, negate = FALSE)
```

```r
#Devuelve la primera coincidencia de patrón en cada cadena como un vector
str_extract(string, pattern)
```

```r
#Devuelve la primera coincidencia de patrón en cada cadena como una matriz con una columna para cada grupo en el patrón
str_match(string, pattern)
```

## Mudar

```r
#Reemplaza subcadenas identificándolas con str_sub() y asignándolas a los resultados
str_sub() <- value
```

```r
#Reemplaza el primer patrón coincidente en cada cadena
str_replace(string, pattern, replacement)
```

```r
#Reemplaza todos los patrones coincidentes en cada cadena
str_replace_all(string, pattern, replacement)
```

```r
#Convierte cadenas a minúsculas
str_to_lower(string)
```

```r
#Convierte cadenas a mayúsculas
str_to_upper(string)
```

```r
#Convierte cadenas a formato de Título
str_to_title(string)
```

## Unir y Dividir

```r
#Repite cadenas n veces
str_dup(string, n)
```

```r
#Divide un vector de cadenas en una matriz de subcadenas
str_split_fixed(string, pattern, n)
```

## Orden

```r
#Devuelve el vector de índices que ordena un vector de caracteres
str_order(x)
```

```r
#Ordena un vector de caracteres
str_sort(x)
```

**NOTA:**

- Las expresiones regulares _(regex)_ son una herramienta poderosa que se usa con muchas de estas funciones para definir patrones complejos.
- El paquete `stringr` es parte del `tidyverse` y se recomienda su uso por su consistencia y facilidad de aprendizaje.
- Las funciones de mutación de cadenas son esenciales para estandarizar y limpiar datos textuales.
- Recuerda que `str_replace()` solo afecta la primera coincidencia, mientras que `str_replace_all()` afecta a todas.
- `str_to_lower()`, `str_to_upper()`, `str_to_title()` son muy útiles para normalizar la capitalización.
- `str_dup()` es ideal para la generación de patrones simples o para preparar cadenas para otros procesos.
- `str_split_fixed()` es invaluable para la limpieza y estructuración de datos donde las cadenas deben dividirse en un número predefinido de campos.
- Para divisiones donde el número de partes no es fijo o se prefiere una lista como salida, `str_split()` (sin `_fixed`) sería más apropiado.
- `str_order()` es útil cuando necesitas los índices de ordenación para reordenar varios vectores o data frames de manera consistente.
- `str_sort()` es más conveniente si solo necesitas el vector de cadenas ordenado.
- El argumento `locale` es muy importante para asegurar una ordenación correcta en diferentes idiomas, ya que las reglas de clasificación varían (ej. 'ch' en checo, acentos en español).
