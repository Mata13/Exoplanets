# 🌌 Exoplanetas: Exploración y Visualización de Datos

[![Streamlit](https://img.shields.io/badge/Streamlit-FF4B4B?style=for-the-badge&logo=Streamlit&logoColor=white)](https://exoplanets.streamlit.app)
[![PowerBI](https://img.shields.io/badge/PowerBI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)](https://learn.microsoft.com/power-bi/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

**Análisis completo de exoplanetas utilizando PostgreSQL, Python, Power BI y Streamlit**  

---

## 📖 Descripción

Este repositorio contiene todo el flujo de trabajo para explorar, procesar y visualizar datos de exoplanetas:

1. **Consultas SQL** en PostgreSQL para extraer tablas e insights.  
2. **Limpieza y análisis** de datos en Jupyter Notebook con Python y Seaborn.  
3. **Dashboard interactivo** en Power BI (`.pbix`) con imágenes de ejemplo.  
4. **Web App** con Streamlit para explorar el dataset limpio y visualizar métricas y gráficos dinámicos.

---

## 📁 Estructura del Repositorio

## 🗂 Data

- **Raw**: datos tal cual fueron descargados (sin procesar).  
- **Processed**: datos procesados y limpios.

---

## 📊 Notebooks

- **01_Exploracion_SQL.ipynb**  
  - Extracción de tablas con `SELECT`, `GROUP BY` y ventanas.  
- **02_Limpieza_Analisis.ipynb**  
  - Limpieza de valores faltantes y tipos de datos.  
  - Visualizaciones con Seaborn: histogramas, boxplots, correlaciones.

---

## 📈 Power BI Dashboard

Visualización interactiva creada con **Power BI Desktop**.  
![Vista general del dashboard](Power%20BI/dashboard_overview.png)   

*Usé slicers para filtrar por año, método de detección y estado del planeta.*

---

## 🚀 Streamlit App

La carpeta **Streamlit** contiene la **web app** desplegable en Streamlit Cloud.  
- **app.py**: lógica de carga, filtros en sidebar, gráficos con Plotly.  
- **requirements.txt**: dependencias (Streamlit, Pandas, Plotly, etc.).  
- **screenshot_streamlit.png**:  
  ![App Streamlit](Streamlit/screenshot_streamlit.png)

## License
This project is licensed under the MIT License. See the [MIT License](LICENSE.txt) file for more details.

## Contact

For any questions or collaboration opportunities, feel free to contact me at [marc.dev121@gmail.com](mailto:marc.dev121@gmail.com).
