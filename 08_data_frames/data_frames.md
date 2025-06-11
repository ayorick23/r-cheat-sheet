# Data Frames

Un Data Frame tiene las variables de un conjunto de datos como columnas y las observaciones como filas.

```r
#Esto crea el Data Frame df, que se ve a continuación
df <- data.frame(x = 1:3, y = c(“h”, “i”, “j”), z = 12:14)
```

| x   | y   | z   |
| --- | --- | --- |
| 1   | h   | 12  |
| 2   | i   | 13  |
| 3   | j   | 14  |

```r
#Esto selecciona todas las columnas de la tercera fila
df[3, ]
```

| x       | y       | z        |
| ------- | ------- | -------- |
| **_3_** | **_j_** | **_14_** |

```r
#Esto selecciona la columna z
df$z
```

| z        |
| -------- |
| **_12_** |
| **_13_** |
| **_14_** |

```r
#Esto selecciona todas las filas de la segunda columna
df[ ,2]
```

| y       |
| ------- |
| **_h_** |
| **_i_** |
| **_j_** |

```r
#Esto selecciona la tercera columna de la segunda fila
df[2,3]
```

| **_13_** |
