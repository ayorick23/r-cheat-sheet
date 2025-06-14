# Uso de paquetes en R

Los paquetes **R** son colecciones de funciones y herramientas desarrolladas por la comunidad R. Aumentan la potencia de R al mejorar las funcionalidades básicas existentes o al agregar otras nuevas.

- `install.packages(“nombre_paquete”)`: Permite instalar nuevos paquetes
- `library(nombre_paquete)`: Permite cargar y usar paquetes
- `dplyr:select`: Permite usar una función específica de un paquete
- `data(iris)`: Carga un conjunto de datos predefinido en el entorno

**NOTA:**

- Recuerda que `install.packages()` solo se necesita una vez por paquete y por versión de R.
- `library()` se necesita al principio de cada script o sesión de R donde uses el paquete.
- Si intentas usar `library()` con un paquete que no está instalado, R generará un error.
