# Análisis Bluetab

Este proyecto contiene el análisis de calificaciones y avance académico de estudiantes usando Python y pandas.

## Archivos incluidos

### Datos originales
- `Asignaturas.csv` - Datos de materias
- `estudiantes.csv` - Información de estudiantes  
- `Inscripcion.csv` - Datos de inscripciones

### Análisis principal
- `prueba_tecnica_bluetab.ipynb` - Notebook principal con los ejercicios

### Base de datos
- `create_database.sql` - Ejemplo Script SQL para crear tablas y cargar datos
- `modelo.jpg` - Diagrama del modelo de base de datos

### Resultados generados
- `estudiantes_sobre_promedio.csv` - Estudiantes con calificaciones arriba del promedio
- `top_10_mayor_avance.csv` - Top 10 estudiantes con mayor avance
- `bottom_10_menor_avance.csv` - Bottom 10 estudiantes con menor avance

## Lo que hace

**Ejercicio 1**: Encontrar las 3 mejores calificaciones por materia y genera un CSV con estudiantes arriba del promedio.

**Ejercicio 2**: Calcular el porcentaje de avance por estudiante y crea rankings de TOP 10 y BOTTOM 10.

**Pregunta 3**: Explicar cómo cargar los datos a una base usando Apache Airflow.

**Pregunta 4**: Describir limpieza de datos con Power BI.

## Resultados

Se generan 3 archivos CSV:
- `estudiantes_sobre_promedio.csv`
- `top_10_mayor_avance.csv` 
- `bottom_10_menor_avance.csv`

## Cómo se ejecutó

### Análisis con Python
1. Instalar pandas: `pip install pandas`
2. Abrir el notebook en Jupyter
3. Ejecutar las celdas en orden

### Base de datos SQL
- Creacion de tablas e insertar los datos
