README – 


Ejercicios SQL con Sakila.

Este ejercicio consiste en practicar consultas SQL sobre la base de datos Sakila, enfocándose en las tablas film, actor, customer, rental, inventory, film_category y category. El objetivo es entender cómo filtrar, agrupar, contar y relacionar datos usando diferentes tipos de consultas.


OBJETIVOS DE APREDIZAJE:

Familiarizarse con SELECT, WHERE, GROUP BY, COUNT y AVG.

Practicar filtros simples y avanzados, incluyendo operadores lógicos como AND, OR y NOT IN.

Entender cómo unir tablas usando INNER JOIN para relacionar información dispersa entre varias tablas.

Aprender a buscar patrones en textos con LIKE y comodines (%).

Aplicar conceptos de agregación para generar estadísticas sobre los datos de películas y alquileres.

Comprender la estructura y relaciones de la base de datos Sakila, incluyendo film, actor, customer, rental y category.





Ejercicio Películas API → DataFrame


Este proyecto tiene como objetivo consumir datos de una API de películas, procesarlos en Python y almacenarlos en un DataFrame de pandas. Los datos incluyen información como título, año, duración, género y si es para adultos o no.



REQUISITOS.

Python 3.x

Librerías:

pandas

requests (si se consume API real)

mysql-connector-python (opcional para MySQL)



FLUJO DEL EJERCICIO.

Obtención de datos
Se consume la API que devuelve un listado de películas en formato JSON. Cada registro contiene información detallada sobre la película.

Procesamiento de los datos
Se extraen únicamente los campos necesarios (titulo, año, duracion, genero, adultos) y se organizan en una estructura uniforme lista para análisis.

Creación del DataFrame
Los datos procesados se cargan en un DataFrame de pandas, que permite:

Visualizar la información de forma tabular.

Filtrar películas por género, año o si son para adultos.

Realizar cálculos y estadísticas como duración media o conteo por género.




RESULTADOS ESPERADOS.

Un DataFrame de 100 filas y 5 columnas, donde cada fila representa una película y cada columna representa un atributo relevante.

Datos organizados y listos para análisis, reportes o exportación a bases de datos como MySQL.





Ejercicios SQL con BBDD_PELICULAS.

Este ejercicio consiste en practicar consultas SQL sobre la BBDD_PELICULAS, creada desde el incio y rellenada con los datos de la API del ejercicio anterior. El objetivo es entender cómo filtrar, agrupar, contar y relacionar datos usando diferentes tipos de consultas.


OBJETIVOS DE APREDIZAJE:


Al igual que en el primer ejercicio.

Familiarizarse con SELECT, WHERE, GROUP BY, COUNT y AVG.

Practicar filtros simples y avanzados, incluyendo operadores lógicos como AND, OR y NOT IN.

Entender cómo unir tablas usando INNER JOIN para relacionar información dispersa entre varias tablas.

Aprender a buscar patrones en textos con LIKE y comodines (%).

Aplicar conceptos de agregación para generar estadísticas sobre los datos de películas y alquileres.

Comprender la estructura y relaciones de la base de datos Sakila, incluyendo film, actor, customer, rental y category.

