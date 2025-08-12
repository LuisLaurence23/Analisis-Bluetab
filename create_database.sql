CREATE DATABASE IF NOT EXISTS bluetab;
USE bluetab;

CREATE TABLE asignatura (
    asignatura_id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    semestre INT NOT NULL
);

CREATE TABLE estudiante (
    numero_cuenta BIGINT PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL
);

CREATE TABLE inscripcion (
    curso_id INT PRIMARY KEY,
    calificacion DECIMAL(3,1),
    numero_cuenta BIGINT,
    asignatura_id INT,
    FOREIGN KEY (asignatura_id) REFERENCES asignatura(asignatura_id),
    FOREIGN KEY (numero_cuenta) REFERENCES estudiante(numero_cuenta)
);

-- Cambiar las rutas por las de tu sistema
-- LOAD DATA LOCAL INFILE 'C:\\tu_ruta\\Asignaturas.csv'

LOAD DATA LOCAL INFILE 'Asignaturas.csv'  -- Ruta relativa (si están en el mismo directorio)
INTO TABLE asignatura
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(asignatura_id, nombre, semestre);

LOAD DATA LOCAL INFILE 'estudiantes.csv'
INTO TABLE estudiante
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(numero_cuenta, nombre);

LOAD DATA LOCAL INFILE 'Inscripcion.csv'
INTO TABLE inscripcion
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(curso_id, calificacion, @num_cuenta, asignatura_id)
SET numero_cuenta = @num_cuenta;

-- Verificar carga de datos
SELECT COUNT(*) as total_asignaturas FROM asignatura;
SELECT COUNT(*) as total_estudiantes FROM estudiante;
SELECT COUNT(*) as total_inscripciones FROM inscripcion;

-- Verificar valores de las tablas
SELECT *
FROM inscripcion
LIMIT 5;

SELECT *
FROM estudiante
LIMIT 5;

SELECT *
FROM asignatura
LIMIT 5;

