import streamlit as st
import pandas as pd
import numpy as np
import time
import plotly.express as px

# Configuración de la página
st.set_page_config(page_title = 'Dashboard Exoplanetas', page_icon = "🪐", layout = "wide")
st.title('Dashboard: Exoplanetas Confirmados 🪐')
st.markdown("##")

# Cargar datos
df = pd.read_csv('C:\\Users\\matma\\Documents\\Developer\\Projects\\Exoplanets\\Data\\Processed\\df_clean_confirmed.csv')

# Muestra el dataset en streamlit
#st.dataframe(df)

#################################### Filtro por año ####################################

# Convertimos la columna 'discovered' al formato correcto de fecha
df['discovered'] = pd.to_datetime(df['discovered'], errors='coerce')

# Extraemos sólo el año
df['year'] = df['discovered'].dt.year

#################################### Indicadores ####################################

# Creamos diferentes indicadores para mostrar
total_exoplanetas = df["planet_status"].shape[0]
#st.write(f"Número de Confirmados con Datos Disponibles: {total_exoplanetas}")
avg_mass = df["mass"].mean()
#st.write(f"Masa Promedio (M Júpiter): {avg_mass}")
avg_radius = df["radius"].mean()
#st.write(f"Radio Promedio (R Júpiter): {avg_radius}")
avg_star_metallicity = df["star_metallicity"].mean()
#st.write(f"Metalicidad Estelar Promedio: {avg_star_metallicity}")
common_method = df["detection_type"].mode()[0]
#st.write(f"Método de Detección Más Común: {common_method}")

# Columnas para mostrar los indicadores
one_column, two_column, three_column, four_column, five_column = st.columns(5)
with one_column:
	st.subheader("Planetas con Datos Disponibles:")
	st.subheader(f"{total_exoplanetas}")

with two_column:
	st.subheader("Masa Promedio (M Júpiter):")
	st.subheader(f"{avg_mass:.2f}")

with three_column:
	st.subheader("Radio Promedio (R Júpiter):")
	st.subheader(f"{avg_radius:.2f}")

with four_column:
	st.subheader("Metalicidad Estelar Promedio:")
	st.subheader(f"{avg_star_metallicity:.2f}")

with five_column:
	st.subheader("Método de Detección Más Común:")
	st.subheader(f"{common_method}")

st.markdown("""---""")

# ---- SIDEBAR ----
st.sidebar.header('Selecciona los filtros:')
years = sorted(df['year'].unique()) # obtenemos una lista ordenada de los años
selected_years = st.sidebar.multiselect(
	"Selecciona el año:",
	options = years
	#default = years
)

df = df.drop(columns = ['discovered'])

# Filtra el dataset
filtered_df = df[df['year'].isin(selected_years)]
st.write(f"Mostrando datos para los años: {selected_years}")
st.dataframe(filtered_df)

############################ Filtro por método de detección ###########################

# Extraemos el método de detección
detection_type = df['detection_type'].unique()
selected_detection_type = st.sidebar.multiselect(
	"Selecciona el método de detección:",
	options = detection_type
)

# Filtra el dataset
filtered_df = df[df['detection_type'].isin(selected_detection_type)]
st.write(f"Mostrando datos para el método de detección seleccionado: {selected_detection_type}")
st.dataframe(filtered_df)

############################ Gráfica de dispersión: masa vs radio ###########################
fig1 = px.scatter(
	filtered_df, # usamos los datos filtrados por el user
	x = "mass",
	y = "radius",
	color = "detection_type",
	#size = "semi_major_axis",
	hover_data = ["name", "year"],
	title = "Radio vs Masa",
)

fig1.update_layout(xaxis_type = "log", xaxis_title = "Masa [M Júpiter]", yaxis_title = "Radio [R Júpiter]", legend_title_text = "Método de detección")
fig1.update_traces(marker = dict(opacity = 0.7, line_width = 0.5))

#st.plotly_chart(fig1, use_container_width = True)

################## Gráfica de dispersión: excentricidad vs periodo orbital ###################
fig2 = px.scatter(
	filtered_df, # usamos los datos filtrados
	x = "orbital_period",
	y = "eccentricity",
	color = "detection_type",
	hover_data = ["name", "year"],
	title = "Excentricidad vs Periodo Orbital",
)

fig2.update_layout(xaxis_type = "log", xaxis_title = "Periodo Orbital [días]", yaxis_title = "Excentricidad", legend_title_text = "Método de detección")
fig2.update_traces(marker = dict(opacity = 0.7, line_width = 0.5))

#st.plotly_chart(fig2, use_container_width = True)

######################## Ajuste Gráficas #####################
one_column, two_column = st.columns(2)
one_column.plotly_chart(fig1, use_container_width = True)
two_column.plotly_chart(fig2, use_container_width = True)