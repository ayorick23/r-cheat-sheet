# <img width="30" height="30" src="https://img.icons8.com/?size=100&id=CLvQeiwFpit4&format=png&color=000000" alt="r"> R Cheat Sheet

¡Bienvenido a **R Cheat Sheet!** Este repositorio es tu compañero de referencia rápido y práctico para el lenguaje de programación **R**. Tanto si eres un principiante que se inicia en el análisis de datos o un usuario experimentado de R que necesita un recordatorio, ¡aquí encontrarás una guía concisa y útil!

Aquí descubrirás una colección organizada de los comandos, funciones, estructuras de datos y conceptos clave de R, cada uno con una explicación clara y ejemplos de código ejecutables para que puedas aplicarlos directamente en tus análisis.

## 🌎 Acerca de

**R** es un lenguaje y entorno para computación estadística y gráficos. Es ampliamente utilizado por estadísticos y científicos de datos para análisis de datos, desarrollo de algoritmos estadísticos y creación de visualizaciones de alta calidad. Su fuerza radica en su vasta colección de paquetes para casi cualquier tarea de análisis de datos.

Este **R Cheat Sheet** tiene como objetivo simplificar el aprendizaje y la consulta rápida de los conceptos fundamentales de R. Está diseñado para ser un recurso accesible que te permita realizar tus análisis de datos de manera más eficiente y con mayor confianza.

## 🚀 ¿Qué encontrarás aquí?

- `01_accesing_help/` → Subdirectorios que contienen cada uno una familia de funciones y sintaxis básica de R.
  - Cada subdirectorio contiene:
  - Un archivo `.md` (ej: `accesing_help.md`, `using_packages.md`) que ofrece una explicación general de los conceptos y su uso dentro de esa categoría.
  - Archivos `.r` individuales (ej: `04_str.r`, `05_class.r`) con ejemplos de código de R listos para usar para cada función específica.

## 📂 Estructura del Repositorio

El repositorio está organizado por temas principales de R para facilitar la navegación y el aprendizaje:

```bash
r-cheat-sheet/
├── README.md
├── 01_accesing_help/
│   ├── accesing_help.md
│   ├── 01_helpr.r
│   ├── 01_helpr.ssh
│   └── ...
│
├── 02_using_packages/
│   ├── using_packages.md
│   ├── 01_install_packages.r
│   └── 02_library.r
│
├── 03_working_directory/
│   ├── working_directory.md
│   ├── 01_getwd.r
│   └── 02_setwd.r
│
├── 04_operators/
│   ├── operators.md
│   ├── 01_arithmetic_operators.r
│   ├── 02_relational_operators.r
│   └── ...
│
├── 05_vectors/
│   ├── vectors.md
│   ├── 01_concatenate_elements.r
│   ├── 02_sequence_of_integers.r
│   └── ...
└── ...
```

## 📝 ¿Cómo Usarlo?

Para sacarle el máximo provecho a este **R Cheat Sheet**, sigue estos pasos:

1. **Clona el repositorio:** Abre tu terminal o Git Bash y clona este repositorio en tu máquina local:

   ```bash
   git clone https://github.com/ayorick23/r-cheat-sheet.git
   ```

2. **Navega al directorio:**

   ```bash
   cd r-cheat-sheet
   ```

3. **Explora los ejemplos:** Dirígete al directorio `01_accesing_help/` y explora las diferentes categorías de funciones. Por ejemplo, para comprender como instalar paquetes:

   ```bash
   cd 02_using_packages/01_install_packages.r
   ```

4. **Lee las explicaciones:** Abre el archivo `.md` dentro de cada categoría para obtener una descripción general y pautas de uso.

   ```bash
   cat 02_using_packages.md
   ```

5. **Revisa y ejecuta los ejemplos de R:** Cada archivo `.r` contiene un ejemplo práctico del concepto. Puedes abrirlo para ver el código o ejecutarlo directamente desde tu consola de R o IDE (como RStudio).

   ```bash
   cat 01_install_packages.r
   # Para ejecutar el ejemplo en RStudio o consola R:
   # source("01_install_packages.r")
   ```

   **Consejo:** Te recomendamos encarecidamente copiar el código en tu propia sesión de R para experimentar y consolidar tu aprendizaje.

## 🤝 Contribuciones

¡Las contribuciones son increíblemente valiosas! Si deseas mejorar este **R Cheat Sheet**, añadir nuevos temas, mejorar explicaciones o proporcionar más ejemplos, por favor:

1. Haz un fork de este repositorio.
2. Crea una nueva rama (`git checkout -b feature/nuevas-funciones-dplyr`).
3. Realiza tus cambios y haz commit (`git commit -m 'Añadir sección sobre manipulación de datos con dplyr'`).
4. Haz un push de tus cambios a tu fork (`git push origin feature/nuevas-funciones-dplyr`).
5. Abre un Pull Request en este repositorio.

## 🫂 Referencias y Agradecimientos

Este repositorio ha sido creado recopilando y sintetizando información de diversas fuentes fiables sobre el lenguaje de programación R. Queremos extender nuestro más sincero agradecimiento a los siguientes recursos, que han sido fundamentales para la construcción de este contenido:

- **The R Project for Statistical Computing:** La fuente oficial de la documentación de R.
  - [R Documentation](https://www.r-project.org/)
- **DataCamp:** Hoja de referencia de R con las funciones principales.
  - [R Cheat Sheet](https://www.datacamp.com/cheat-sheet/getting-started-r)
- **GitHub User Content:** Hoja de referencia de R en pdf.
  - [R Cheat Sheet](https://raw.githubusercontent.com/rstudio/cheatsheets/main/translations/spanish/base-r_es.pdf)
- **R Programming: De Principiante a Avanzado** por **DataBoosters Academy:** Un recurso invaluable que proporcionó una base sólida y conocimientos teóricos y prácticos sobre los fundamentos de R, clasificación y manipulación de datos desde una visión de ciencia de datos.
  - [Curso de Udemy](https://www.udemy.com/course/r-programming-desde-cero-analisis-de-datos/?kw=r+programming%3A&src=sac&couponCode=KEEPLEARNING)

¡Agradezco a todos estos recursos por su invaluable contribución al conocimiento de R!

## 📃 Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo `LICENSE` para más detalles.

## ✉️ Contáctame

Si tienes alguna pregunta o sugerencia, no dudes en contactarme:

[![GitHub](https://img.shields.io/badge/-GitHub-181717?style=flat&logo=github&logoColor=white)](https://github.com/ayorick23)
[![Gmail](https://img.shields.io/badge/-Email-D14836?style=flat&logo=gmail&logoColor=white)](mailto:mayorickhenry@gmail.com)
[![LinkedIn](https://img.shields.io/badge/-LinkedIn-blue?style=flat&logo=linkedin&logoColor=white)](https://linkedin.com/in/dereckmendez/)
[![Kaggle](https://img.shields.io/badge/-Kaggle-181717?style=flat&logo=kaggle&logoColor=white)](https://www.kaggle.com/dereckmendez)
