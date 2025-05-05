-------------------------------------
------------ Exoplanetas ------------
-------------------------------------

-- Comenzamos con la carga de los datos en SQL.

-- Creamos una tabla llamada exoplanets_catalog
CREATE TABLE exoplanets_catalog (
    name VARCHAR(255),
    planet_status VARCHAR(50),
    mass FLOAT,
    mass_error_min FLOAT,
    mass_error_max FLOAT,
    mass_sini FLOAT,
    mass_sini_error_min FLOAT,
    mass_sini_error_max FLOAT,
    radius FLOAT,
    radius_error_min FLOAT,
    radius_error_max FLOAT,
    orbital_period FLOAT,
    orbital_period_error_min FLOAT,
    orbital_period_error_max FLOAT,
    semi_major_axis FLOAT,
    semi_major_axis_error_min FLOAT,
    semi_major_axis_error_max FLOAT,
    eccentricity FLOAT,
    eccentricity_error_min FLOAT,
    eccentricity_error_max FLOAT,
    inclination FLOAT,
    inclination_error_min FLOAT,
    inclination_error_max FLOAT,
    angular_distance FLOAT,
    discovered TEXT,
    updated DATE,
    omega FLOAT,
    omega_error_min FLOAT,
    omega_error_max FLOAT,
    tperi FLOAT,
    tperi_error_min FLOAT,
    tperi_error_max FLOAT,
    tconj FLOAT,
    tconj_error_min FLOAT,
    tconj_error_max FLOAT,
    tzero_tr FLOAT,
    tzero_tr_error_min FLOAT,
    tzero_tr_error_max FLOAT,
    tzero_tr_sec FLOAT,
    tzero_tr_sec_error_min FLOAT,
    tzero_tr_sec_error_max FLOAT,
    lambda_angle FLOAT,
    lambda_angle_error_min FLOAT,
    lambda_angle_error_max FLOAT,
    impact_parameter FLOAT,
    impact_parameter_error_min FLOAT,
    impact_parameter_error_max FLOAT,
    tzero_vr FLOAT,
    tzero_vr_error_min FLOAT,
    tzero_vr_error_max FLOAT,
    k FLOAT,
    k_error_min FLOAT,
    k_error_max FLOAT,
    temp_calculated FLOAT,
    temp_calculated_error_min FLOAT,
    temp_calculated_error_max FLOAT,
    temp_measured FLOAT,
    hot_point_lon FLOAT,
    geometric_albedo FLOAT,
    geometric_albedo_error_min FLOAT,
    geometric_albedo_error_max FLOAT,
    log_g FLOAT,
    publication VARCHAR(255),
    detection_type VARCHAR(100),
    mass_measurement_type VARCHAR(100),
    radius_measurement_type VARCHAR(100),
    alternate_names TEXT,
    molecules TEXT,
    star_name VARCHAR(255),
    ra VARCHAR(20),
    dec VARCHAR(20),
    mag_v FLOAT,
    mag_i FLOAT,
    mag_j FLOAT,
    mag_h FLOAT,
    mag_k FLOAT,
    star_distance FLOAT,
    star_distance_error_min FLOAT,
    star_distance_error_max FLOAT,
    star_metallicity FLOAT,
    star_metallicity_error_min FLOAT,
    star_metallicity_error_max FLOAT,
    star_mass FLOAT,
    star_mass_error_min FLOAT,
    star_mass_error_max FLOAT,
    star_radius FLOAT,
    star_radius_error_min FLOAT,
    star_radius_error_max FLOAT,
    star_sp_type VARCHAR(50),
    star_age FLOAT,
    star_age_error_min FLOAT,
    star_age_error_max FLOAT,
    star_teff FLOAT,
    star_teff_error_min FLOAT,
    star_teff_error_max FLOAT,
    star_detected_disc TEXT,
    star_magnetic_field TEXT,
    star_alternate_names TEXT
);

-- Leemos los datos desde la carpeta donde se encuentran localizados
COPY exoplanets_catalog
FROM 'C:\\Users\\matma\\Documents\\Developer\\Projects\\Exoplanets\\Data\\Original\\exoplanets_catalog.csv'
DELIMITER ',' CSV HEADER;

-- Muestra la tabla
SELECT * FROM exoplanets_catalog;



-- Realizamos una exploración de los datos, revisando las columnas de interés.

-- Verificamos tipos de datos de las columnas:
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'exoplanets_catalog'
  AND column_name = 'planet_status';

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'exoplanets_catalog'
  AND column_name = 'mass';

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'exoplanets_catalog'
  AND column_name = 'radius';

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'exoplanets_catalog'
  AND column_name = 'semi_major_axis';

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'exoplanets_catalog'
  AND column_name = 'orbital_period';

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'exoplanets_catalog'
  AND column_name = 'eccentricity';

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'exoplanets_catalog'
  AND column_name = 'star_metallicity';

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'exoplanets_catalog'
  AND column_name = 'star_teff';

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'exoplanets_catalog'
  AND column_name = 'star_mass';

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'exoplanets_catalog'
  AND column_name = 'discovered';

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'exoplanets_catalog'
  AND column_name = 'detection_type';

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'exoplanets_catalog'
  AND column_name = 'temp_calculated';

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'exoplanets_catalog'
  AND column_name = 'temp_measured';

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'exoplanets_catalog'
  AND column_name = 'inclination';

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'exoplanets_catalog'
  AND column_name = 'lambda_angle';

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'exoplanets_catalog'
  AND column_name = 'impact_parameter';

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'exoplanets_catalog'
  AND column_name = 'log_g';

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'exoplanets_catalog'
  AND column_name = 'star_sp_type';

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'exoplanets_catalog'
  AND column_name = 'star_age';



-- Esta tabla muestra la cantidad de planetas descubiertos por year
-- por cada detection_type y el promedio de la masa de los planetas descubiertos.
SELECT
    detection_type,
    CAST(SUBSTR(discovered, 1, 4) AS INTEGER) AS discovered_year,
    COUNT(*) AS planet_discovered,
    AVG(mass) AS avg_mass
FROM
    exoplanets_catalog
GROUP BY
    detection_type,
    CAST(SUBSTR(discovered, 1, 4) AS INTEGER)
ORDER BY
    discovered_year;

-- Obtenemos una tabla con todos los planet_status, con su detection_type,
-- agrupado por su discovered_year, planet_discovery, avg_mass.
SELECT
    detection_type, planet_status,
    CAST(SUBSTR(discovered, 1, 4) AS INTEGER) AS discovered_year,
    COUNT(*) AS planet_discovered,
    AVG(mass) AS avg_mass
FROM
    exoplanets_catalog
GROUP BY
    detection_type, planet_status,
    CAST(SUBSTR(discovered, 1, 4) AS INTEGER)
ORDER BY
    discovered_year, planet_status;

-- Obtenemos los valores diferentes que tiene la columna 'planet_status'
SELECT DISTINCT(planet_status) FROM exoplanets_catalog;

-- Obtenemos una tabla solo con los planetas confimados, con su detection_type,
-- agrupado por su discovered_year, planet_discovery, avg_mass.
SELECT
    planet_status,
    detection_type,
    CAST(SUBSTR(discovered, 1, 4) AS INTEGER) AS discovered_year,
    COUNT(*) AS planet_discovered,
    AVG(mass) AS avg_mass
FROM
    exoplanets_catalog
WHERE
    planet_status = 'Confirmed'
GROUP BY
    planet_status,
    detection_type,
    CAST(SUBSTR(discovered, 1, 4) AS INTEGER)
ORDER BY
    discovered_year;

-- Obtenemos una tabla solo con los planetas confimados, con su detection_type,
-- agrupado por su discovered_year, planet_discovery, avg_mass, min_mass, max_mass.
SELECT
    planet_status,
    detection_type,
    CAST(SUBSTR(discovered, 1, 4) AS INTEGER) AS discovered_year,
    COUNT(*) AS planet_discovered,
    AVG(mass) AS avg_mass,
	MIN(mass) AS min_mass,
	MAX(mass) AS max_mass
FROM
    exoplanets_catalog
WHERE
    planet_status = 'Confirmed'
GROUP BY
    planet_status,
    detection_type,
    CAST(SUBSTR(discovered, 1, 4) AS INTEGER)
ORDER BY
    discovered_year;



-- Obtenemos el número de planetas que hay en cada status de los planetas.
SELECT planet_status, COUNT(*)
FROM exoplanets_catalog
GROUP BY planet_status;

-- Obtenemos el número de planetas que hay en cada status agrupados por su detection_type y planet_status.
SELECT planet_status, detection_type, COUNT(*) AS number_planets
FROM exoplanets_catalog
GROUP BY planet_status, detection_type
ORDER BY planet_status, number_planets DESC;

-- Obtenemos el número de planetas que están en el status 'Unconfirmed', agrupados por su detection_type, number_planets y su porcentaje.
SELECT detection_type, COUNT(*) AS number_planets,
	ROUND(COUNT(*) * 100.0/SUM(COUNT(*)) OVER (), 1) AS percentage -- suma total de todos los candidatos
FROM exoplanets_catalog
WHERE planet_status = 'Unconfirmed'
GROUP BY
  detection_type
ORDER BY
  percentage DESC;

-- Obtenemos el número de planetas que están en el status 'Retracted', agrupados por su detection_type, number_planets y su porcentaje.
SELECT detection_type, COUNT(*) AS number_planets,
	ROUND(COUNT(*) * 100.0/SUM(COUNT(*)) OVER (), 1) AS percentage -- suma total de todos los candidatos
FROM exoplanets_catalog
WHERE planet_status = 'Retracted'
GROUP BY
  detection_type
ORDER BY
  percentage DESC;

-- Obtenemos el número de planetas que están en el status de 'Controversial', agrupados por su detection_type, number_planets y su porcentaje.
SELECT detection_type, COUNT(*) AS number_planets,
	ROUND(COUNT(*) * 100.0/SUM(COUNT(*)) OVER (), 1) AS percentage -- suma total de todos los candidatos
FROM exoplanets_catalog
WHERE planet_status = 'Controversial'
GROUP BY
  detection_type
ORDER BY
  percentage DESC;

-- Obtenemos el número de planetas que están en el status de 'Candidate', agrupados por su detection_type, number_planets y su porcentaje.
SELECT detection_type, COUNT(*) AS number_planets,
	ROUND(COUNT(*) * 100.0/SUM(COUNT(*)) OVER (), 1) AS percentage -- suma total de todos los candidatos
FROM exoplanets_catalog
WHERE planet_status = 'Candidate'
GROUP BY
  detection_type
ORDER BY
  percentage DESC;

-- Obtenemos el número de planetas que están en el status de 'Confirmed', agrupados por su detection_type, number_planets y su porcentaje.
SELECT detection_type, COUNT(*) AS number_planets,
	ROUND(COUNT(*) * 100.0/SUM(COUNT(*)) OVER (), 1) AS percentage -- suma total de todos los candidatos
FROM exoplanets_catalog
WHERE planet_status = 'Confirmed'
GROUP BY
  detection_type
ORDER BY
  percentage DESC;

-- Obtenemos el número de planetas que hay en cada status de los planetas y el porcentaje que representa.
SELECT planet_status, COUNT(*) AS conteo,
ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 1) AS percentage
FROM exoplanets_catalog
GROUP BY planet_status;

-- Obtenemos una tabla con el número de planetas encontrados por detection_type
SELECT detection_type, COUNT(*) AS conteo
FROM exoplanets_catalog
GROUP BY detection_type
ORDER BY COUNT(*) DESC;

-- Obtenemos una tabla con el número de planetas encontrados por detection_type con el promedio de la masa de los exoplanetas
SELECT detection_type, COUNT(*) AS conteo, AVG(mass) AS avg_mass_jup
FROM exoplanets_catalog
GROUP BY detection_type
ORDER BY COUNT(*) DESC;

-- Obtenemos una tabla con el número de planetas encontrados por detection_type y su porcentaje
SELECT detection_type, COUNT(*) AS conteo,
ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 1) AS percentage
FROM exoplanets_catalog
GROUP BY detection_type
ORDER BY COUNT(*) DESC;

-- Obtenemos una tabla con el número de planetas encontrados por detection_type, su porcentaje y masa promedio
SELECT detection_type, COUNT(*) AS conteo,
ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 1) AS percentage, AVG(mass) AS avg_mass_jup
FROM exoplanets_catalog
GROUP BY detection_type
ORDER BY COUNT(*) DESC;

-- Obtenemos el número de exoplanetas por planet_status y el porcentaje que representan.
SELECT
  planet_status,
  COUNT(*) AS total_planets,
  ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 1) AS percentage
FROM exoplanets_catalog
GROUP BY planet_status;

-- Muestra la tabla con los detection_type, con la avg_mass y la medianda del periodo orbital.
SELECT
  detection_type,
  AVG(mass) AS avg_mass,
  PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY orbital_period) AS median_period
FROM exoplanets_catalog
WHERE planet_status = 'Confirmed'
GROUP BY detection_type;

-- Muestra la tabla completa
SELECT * FROM exoplanets_catalog;

-- Obtenemos el porcentaje de valores nulos de algunas columnas:
SELECT
  ROUND((COUNT(*) - COUNT(mass)) * 100.0 / COUNT(*), 1) AS mass_null,
  ROUND((COUNT(*) - COUNT(radius)) * 100.0 / COUNT(*), 1) as radius_null,
  ROUND((COUNT(*) - COUNT(orbital_period)) * 100.0 / COUNT(*), 1) AS orbital_period_null,
  ROUND((COUNT(*) - COUNT(star_metallicity)) * 100.0 / COUNT(*), 1) AS metallicity_nulls,
  ROUND((COUNT(*) - COUNT(temp_calculated)) * 100.0 / COUNT(*), 1) as temp_calculated_null,
  ROUND((COUNT(*) - COUNT(temp_measured)) * 100.0 / COUNT(*), 1) as temp_measured_null,
  ROUND((COUNT(*) - COUNT(geometric_albedo)) * 100.0 / COUNT(*), 1) as geometric_albedo_null,
  ROUND((COUNT(*) - COUNT(detection_type)) * 100.0 / COUNT(*), 1) as detection_type_null,
  ROUND((COUNT(*) - COUNT(molecules)) * 100.0 / COUNT(*), 1) as molecules_null,
  ROUND((COUNT(*) - COUNT(star_distance)) * 100.0 / COUNT(*), 1) as star_distance_null,
  ROUND((COUNT(*) - COUNT(star_mass)) * 100.0 / COUNT(*), 1) as star_mass_null,
  ROUND((COUNT(*) - COUNT(star_sp_type)) * 100.0 / COUNT(*), 1) as star_sp_type_null,
  ROUND((COUNT(*) - COUNT(star_age)) * 100.0 / COUNT(*), 1) as star_age_null,
  ROUND((COUNT(*) - COUNT(star_teff)) * 100.0 / COUNT(*), 1) as teff_null,
  ROUND((COUNT(*) - COUNT(star_detected_disc)) * 100.0 / COUNT(*), 1) as star_detected_disc_null
FROM exoplanets_catalog;

-- Muestra los datos para el detection_type = 'Unconfirmed'
SELECT * FROM exoplanets_catalog WHERE planet_status = 'Unconfirmed';

-- Muestra los datos para el detection_type = 'Retracted'
SELECT * FROM exoplanets_catalog WHERE planet_status = 'Retracted';

-- Muestra los datos para el detection_type = 'Controversial'
SELECT * FROM exoplanets_catalog WHERE planet_status = 'Controversial';

-- Muestra los datos para el detection_type = 'Controversial'
SELECT * FROM exoplanets_catalog WHERE planet_status = 'Candidate';

-- Muestra los datos para el detection_type = 'Confirmed'
SELECT * FROM exoplanets_catalog WHERE planet_status = 'Confirmed';

-- Obtenemos los valores máximo y mínimo de las masas de los exoplanetas.
SELECT MIN(mass) AS min_mass_exoplanet, MAX(mass) AS max_mass_exoplanet
FROM exoplanets_catalog;

-- Obtenemos el nombre de los planetas agrupados y ordenados por su masa y planet_status.
SELECT name, planet_status, mass FROM exoplanets_catalog
	WHERE mass > 40.0
	GROUP BY name, planet_status, mass
	ORDER BY mass DESC;

-- Obtenemos la tabla de los exoplanetas con planet_status = 'Unconfirmed' con su masa.
SELECT name, planet_status, mass
	FROM exoplanets_catalog
	WHERE planet_status = 'Unconfirmed' AND mass IS NOT NULL
	ORDER BY mass DESC;

-- Obtenemos la tabla de los exoplanetas con planet_status = 'Retracted' con su masa.
SELECT name, planet_status, mass
	FROM exoplanets_catalog
	WHERE planet_status = 'Retracted' AND mass IS NOT NULL
	ORDER BY mass DESC;

-- Obtenemos la tabla de los exoplanetas con planet_status = 'Controversial' con su masa.
SELECT name, planet_status, mass
	FROM exoplanets_catalog
	WHERE planet_status = 'Controversial' AND mass IS NOT NULL
	ORDER BY mass DESC;

-- Obtenemos la tabla de los exoplanetas con planet_status = 'Candidate' con su masa.
SELECT name, planet_status, mass
	FROM exoplanets_catalog
	WHERE planet_status = 'Candidate' AND mass IS NOT NULL
	ORDER BY mass DESC;

-- Obtenemos la tabla de los exoplanetas con planet_status = 'Confirmed' con su masa.
SELECT name, planet_status, mass
	FROM exoplanets_catalog
	WHERE planet_status = 'Confirmed' AND mass IS NOT NULL
	ORDER BY mass DESC;