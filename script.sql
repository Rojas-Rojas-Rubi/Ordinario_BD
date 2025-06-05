CREATE DATABASE playas_Oaxaca;
USE playas_Oaxaca;

-- Tabla de regiones
CREATE TABLE region (
    id_region INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50)
);

-- Tabla de municipios
CREATE TABLE municipio (
    id_municipio INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    id_region INT,
    FOREIGN KEY (id_region) REFERENCES region(id_region)
);

-- Tabla de playas
CREATE TABLE playas (
    id_playas INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    descripcion TEXT,
    atractivo TEXT,
    id_municipio INT,
    FOREIGN KEY (id_municipio) REFERENCES municipio(id_municipio)
);

-- Tabla de actividades turísticas (sin id_playas)
CREATE TABLE actividad (
    id_actividad INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    tipo VARCHAR(50)
);

-- Tabla de actividades en playas (relación muchos a muchos)
CREATE TABLE playa_actividad (
    id_playa INT,
    id_actividad INT,
    PRIMARY KEY (id_playa, id_actividad),
    FOREIGN KEY (id_playa) REFERENCES playas(id_playas),
    FOREIGN KEY (id_actividad) REFERENCES actividad(id_actividad)
);
