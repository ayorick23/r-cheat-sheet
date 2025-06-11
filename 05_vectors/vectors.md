# Introducción a los Vectores en R

Los vectores son matrices unidimensionales que pueden contener datos numéricos, de caracteres o lógicos. En otras palabras, un vector es una herramienta sencilla para almacenar datos.

## Creación de Vectores

| Input                  | Output            | Descripción                                                                         |
| ---------------------- | ----------------- | ----------------------------------------------------------------------------------- |
| `c(1, 3, 5)`           | `1 3 5`           | Crea un vector utilizando elementos separados por comas                             |
| `1:7`                  | `1 2 3 4 5 6 7`   | Crea un vector de números enteros entre dos números                                 |
| `seq(2, 8, by = 2)`    | `2 4 6 8`         | Crea un vector entre dos números, con un intervalo especificado entre cada elemento |
| `rep(2, 8, times = 4)` | `2 8 2 8 2 8 2 8` | Crea un vector de elementos dados repetidos varias veces                            |
| `rep(2, 8, each = 3)`  | `2 2 2 8 8 8`     | Crea un vector de elementos dados repitiendo cada elemento varias veces             |

## Funciones Vectoriales

- `sort(my_vector)`: Retorna `my_vector` ordenado
- `rev(my_vector)`: Invierte el orden de `my_vector`
- `table(my_vector)`: Cuenta los valores en un vector
- `unique(my_vector)`: Elementos distintos en un vector

## Selección de Elementos Vectoriales

- `my_vector[6]`: Devuelve el sexto elemento de `my_vector`
- `my_vector[-6]`: Devuelve todos los elementos excepto el sexto
- `my_vector[2:6]`: Devuelve los elementos del dos al seis
- `my_vector[-(2:6)]`: Devuelve todos los elementos excepto aquellos entre el segundo y el sexto
- `my_vector[c(2,6)]`: Devuelve el segundo y sexto elemento
- `my_vector[x == 5]`: Devuelve elementos iguales a 5
- `my_vector[x < 5 ]`: Devuelve elementos menores que 5
- `my_vector[x %in% c(2, 5 ,8 )]`: Devuelve elementos del conjunto {2, 5, 8}

**NOTA:**

- Comprender la creación de vectores es el primer paso para dominar la manipulación de datos en R.
- R opera de forma vectorizada, lo que significa que muchas operaciones se aplican elemento a elemento en vectores, lo que es muy eficiente.
