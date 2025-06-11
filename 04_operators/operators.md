# Operadores

R cuenta con múltiples operadores que permiten realizar diversas tareas. Los operadores aritméticos permiten realizar operaciones aritméticas como la suma y la multiplicación. Los operadores relacionales se utilizan para comparar valores. Los operadores lógicos se utilizan para los operadores booleanos.

## Operadores Aritméticos

| Operador  | Descripción                    |
| --------- | ------------------------------ |
| `a + b`   | Suma dos variables             |
| `a - b`   | Resta dos variables            |
| `a * b`   | Multiplica dos variables       |
| `a / b`   | Divide dos variables           |
| `a ^ b`   | Exponenciación de una variable |
| `a %% b`  | Residuo de una variable        |
| `a %/% b` | División entera de variables   |

## Operadores Relacionales

| Operador | Descripción       |
| -------- | ----------------- |
| `a == b` | Igual que         |
| `a != b` | Diferente que     |
| `a > b`  | Mayor que         |
| `a < b`  | Menor que         |
| `a >= b` | Mayor o igual que |
| `a <= b` | Menor o igual que |

## Operadores Lógicos

| Operador | Descripción               |
| -------- | ------------------------- |
| `!`      | NOT lógico                |
| `&`      | AND elemento por elemento |
| `&&`     | AND lógico                |
| `\|`     | OR elemento por elemento  |
| `\|\|`   | OR lógico                 |

## Operadores de Asignación

| Operador | Descripción               |
| -------- | ------------------------- |
| `x <- 1` | Asigna una variable a `x` |
| `x = 1`  | Asigna una variable a `x` |

## Otros Operadores

| Operador | Descripción                                                             |
| -------- | ----------------------------------------------------------------------- |
| `%in%`   | Identifica si un elemento pertenece a un vector                         |
| `$`      | Permite acceder a objetos almacenados dentro de un objeto               |
| `%>%`    | Parte del paquete `magrittr`, se utiliza para pasar objetos a funciones |

**NOTA:**

- Familiarizarse con estos operadores es esencial para escribir código R efectivo.
- El operador `%>%` es extremadamente popular en el ecosistema 'tidyverse' y facilita la lectura del código para secuencias de operaciones.
