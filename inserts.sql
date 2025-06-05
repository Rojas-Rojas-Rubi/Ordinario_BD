-- Insertar regiones
INSERT INTO region(nombre) VALUES
('Cañada'),
('Costa'),
('Chinantla'),
('Istmo'),
('Mixteca'),
('Papaloapan'),
('Sierra Mazateca'),
('Sierra Norte'),
('Sierra Sur'),
('Valles Centrales');

-- Insertar municipios
INSERT INTO municipio(nombre, id_region) VALUES
('Santa María Huatulco', 2),
('Puerto Escondido', 2),
('San Pedro Pochutla', 2),
('Puerto Ángel', 2),
('Juchitán de Zaragoza', 4),
('San Dionisio del Mar', 4),
('Salina Cruz', 4),
('Santiago Jamiltepec', 2),
('Santiago Llano Grande', 2),
('San Pedro Mixtepec', 2);

-- Insertar playas
INSERT INTO playas (nombre, descripcion, atractivo, id_municipio) VALUES 
('Playa Zicatela', 'Hermosura de arena fina y gris, mar azul turquesa transparente, de aguas cálidas y, grandes olas.', 'torneo internacional de surf.', 2),
('Playa Mazunte', 'Aguas cálidas, por lo que no es ideal para nadar si no tienes mucho entrenamiento.', 'las mejores puestas de sol', 3),
('Playa Zipolite', 'Ambiente libre y relajado, es la única playa nudista oficial de México.', 'Ideal para practicar nudismo y yoga frente al mar.', 3),
('Puerto Ángel', 'Aguas calmas, turquesas y cristalinas, en las que podrás nadar, bucear y descubrir su hermosa flora y fauna.', 'El ambiente de Puerto Ángel es muy familiar', 4),
('Playa Bachoco', 'Oleaje moderado, arena dorada y aguas verdes cristalinas,', 'Proyección de películas al aire libre', 2),
('Playa Carizalillo', 'Agua verde esmeralda, arena dorada cuenta con formaciones rocosas y una vegetación tan verde como el mar.', 'Es una playa tranquila, paradisíaca, pequeña y con ambiente familiar', 2),
('Bahías de Huatulco', 'Montañas, palmeras, arena y mar, aguas tranquilas, serenas y cálidas.', 'En ella podrás disfrutar nueve playas: Conejos, Tangolunda, Chahué, Santa Cruz, Órgano, Maguey, Cacaluta, Chachacual y San Agustín.', 1),
('Playa Marinero', 'Golfo de arenas blancas y mar azul turquesa tiene un pequeño puerto.', 'podrás caminar y recorrer admirando el mar y las aves, y descansar en alguno de sus restaurantes saboreando un delicioso platillo.', 2),
('Playa Mermejita', 'Arenas negras volcánicas, aguas turquesas.', 'Durante el invierno, en la Playa Mermejita podrás observar las ballenas, un espectáculo único que ofrece la naturaleza.', 3),
('Playa San Agustino', 'Mar abierto, arena dorada, aguas cálidas, pertenece a un área protegida.', 'en este lugar llegan las tortugas golfinas, que son cuidadas y protegidas por los habitantes del lugar.', 1);

-- Insertar actividades (sin id_playas)
INSERT INTO actividad (nombre, tipo) VALUES
('Buceo y Snorkel', 'Aventura Acuática'),
('Surf', 'Deporte'),
('Paseos en Barco', 'Turismo'),
('Avistamiento de Tortugas Marinas', 'Turismo'),
('Recorrido por Manglares', 'Turismo'),
('Caminatas, baños de sol', 'Turismo'),
('Yoga en la playa', 'Actividad Física'),
('Pesca', 'Turismo'),
('Ecoturismo', 'Turismo'),
('Gastronomía Local', 'Turismo');

-- Insertar relaciones playa-actividad
INSERT INTO playa_actividad (id_playa, id_actividad) VALUES
(4, 1),
(1, 2),
(5, 2),
(6, 2),
(7, 3),
(7, 5),
(10, 4),
(2, 6),
(2, 7),
(6, 8),
(3, 7),
(9, 9),
(8, 10);
