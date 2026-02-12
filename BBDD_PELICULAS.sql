
CREATE SCHEMA BBDD_EJERCICIO_PELICULAS;

USE BBDD_EJERCICIO_PELICULAS;

CREATE TABLE peliculas (
id INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(150) NOT NULL,
anio YEAR NOT NULL,
duracion INT NOT NULL,
genero VARCHAR(50) NOT NULL,
adultos BOOLEAN NOT NULL
);


INSERT INTO peliculas (   titulo, anio, duracion, genero, adultos) VALUES
('The Godfather',1972,175,'Crimen',0),
('The Godfather Part II',1974,202,'Crimen',0),
('Pulp Fiction',1994,154,'Crimen',1),
('Forrest Gump',1994,142,'Drama',0),
('The Dark Knight',2008,152,'Acción',0),
('Fight Club',1999,139,'Drama',1),
('Inception',2010,148,'Ciencia ficción',0),
('The Matrix',1999,136,'Ciencia ficción',0),
('The Shawshank Redemption',1994,142,'Drama',0),
('Interstellar',2014,169,'Ciencia ficción',0),
('Gladiator',2000,155,'Acción',0),
('Titanic',1997,195,'Romance',0),
('Avatar',2009,162,'Ciencia ficción',0),
('Saving Private Ryan',1998,169,'Bélico',1),
('The Silence of the Lambs',1991,118,'Thriller',1),
('Se7en',1995,127,'Thriller',1),
('Goodfellas',1990,146,'Crimen',1),
('The Departed',2006,151,'Crimen',1),
('Whiplash',2014,106,'Drama',0),
('La La Land',2016,128,'Musical',0),
('The Lord of the Rings: The Fellowship of the Ring',2001,178,'Fantasía',0),
('The Lord of the Rings: The Two Towers',2002,179,'Fantasía',0),
('The Lord of the Rings: The Return of the King',2003,201,'Fantasía',0),
('Star Wars: A New Hope',1977,121,'Ciencia ficción',0),
('Star Wars: The Empire Strikes Back',1980,124,'Ciencia ficción',0),
('Star Wars: Return of the Jedi',1983,131,'Ciencia ficción',0),
('Back to the Future',1985,116,'Aventura',0),
('Jurassic Park',1993,127,'Aventura',0),
('The Lion King',1994,88,'Animación',0),
('Toy Story',1995,81,'Animación',0),
('Finding Nemo',2003,100,'Animación',0),
('Shrek',2001,90,'Animación',0),
('The Incredibles',2004,115,'Animación',0),
('WALL·E',2008,98,'Animación',0),
('Up',2009,96,'Animación',0),
('Spirited Away',2001,125,'Animación',0),
('Princess Mononoke',1997,134,'Animación',1),
('The Green Mile',1999,189,'Drama',1),
('The Truman Show',1998,103,'Drama',0),
('The Social Network',2010,120,'Drama',0),
('Joker',2019,122,'Drama',1),
('Black Panther',2018,134,'Acción',0),
('Iron Man',2008,126,'Acción',0),
('The Avengers',2012,143,'Acción',0),
('Avengers: Endgame',2019,181,'Acción',0),
('Dune',2021,155,'Ciencia ficción',0),
('Mad Max: Fury Road',2015,120,'Acción',1),
('The Revenant',2015,156,'Aventura',1),
('Parasite',2019,132,'Thriller',1),
('Oldboy',2003,120,'Thriller',1),
('The Pianist',2002,150,'Drama',1),
('The Wolf of Wall Street',2013,180,'Biografía',1),
('Her',2013,126,'Drama',0),
('Gravity',2013,91,'Ciencia ficción',0),
('The Shape of Water',2017,123,'Fantasía',1),
('Get Out',2017,104,'Terror',1),
('It',2017,135,'Terror',1),
('The Conjuring',2013,112,'Terror',1),
('A Quiet Place',2018,90,'Terror',0),
('The Exorcist',1973,122,'Terror',1),
('The Shining',1980,144,'Terror',1),
('Blade Runner',1982,117,'Ciencia ficción',1),
('Blade Runner 2049',2017,164,'Ciencia ficción',1),
('Alien',1979,117,'Ciencia ficción',1),
('Aliens',1986,137,'Ciencia ficción',1),
('The Terminator',1984,107,'Acción',1),
('Terminator 2: Judgment Day',1991,137,'Acción',0),
('Rocky',1976,120,'Drama',0),
('Raging Bull',1980,129,'Biografía',1),
('Taxi Driver',1976,113,'Drama',1),
('Casablanca',1942,102,'Romance',0),
('Citizen Kane',1941,119,'Drama',0),
('Psycho',1960,109,'Terror',1),
('Vertigo',1958,128,'Suspense',0),
('Rear Window',1954,112,'Suspense',0),
('12 Angry Men',1957,96,'Drama',0),
('Schindler''s List',1993,195,'Drama',1),
('American Beauty',1999,122,'Drama',1),
('No Country for Old Men',2007,122,'Crimen',1),
('The Big Lebowski',1998,117,'Comedia',1),
('Amélie',2001,122,'Romance',0),
('The Intouchables',2011,112,'Drama',0),
('City of God',2002,130,'Crimen',1),
('Pan''s Labyrinth',2006,118,'Fantasía',1),
('Roma',2018,135,'Drama',1),
('Slumdog Millionaire',2008,120,'Drama',0),
('Million Dollar Baby',2004,132,'Drama',1),
('The King''s Speech',2010,118,'Biografía',0),
('Argo',2012,120,'Thriller',0),
('Moonlight',2016,111,'Drama',1),
('Manchester by the Sea',2016,137,'Drama',1),
('Birdman',2014,119,'Drama',1),
('Django Unchained',2012,165,'Western',1),
('Inglourious Basterds',2009,153,'Bélico',1),
('The Hateful Eight',2015,168,'Western',1),
('La vita è bella',1997,116,'Drama',0),
('Requiem for a Dream',2000,102,'Drama',1),
('Memento',2000,113,'Thriller',1),
('Eternal Sunshine of the Spotless Mind',2004,108,'Drama',0),
('Donnie Darko',2001,113,'Drama',1);


/* ¿Cuántas películas tienen una duración superior a 120 minutos? */

SELECT titulo, duracion
FROM peliculas
WHERE duracion > 120;

/* ¿Cuántas películas tienen contenido adulto? */

SELECT titulo, adultos
FROM peliculas
WHERE adultos = 1;

/* ¿Cuál es la película más antigua registrada en la base de datos? */

SELECT titulo, anio
FROM peliculas
ORDER BY anio ASC
LIMIT 1;

/* Muestra el promedio de duración de las películas agrupado por género. */

-- Uso de AVG para calcular el promedio y al resultado se le nombra con un alias.

SELECT genero, AVG(duracion) AS promedio_duracion
FROM peliculas
GROUP BY genero
ORDER BY promedio_duracion DESC;

/* ¿Cuántas películas por año se han registrado en la base de datos? Ordena de mayor a menor. */

-- Uso de COUNT(*) para contabilizar las peliculas que se han registrado anualmente y al resultado se le nombra con un alias.

SELECT anio, COUNT(*) AS total_peliculas
FROM peliculas
GROUP BY anio
ORDER BY total_peliculas DESC;

/* ¿Cuál es el año con más películas en la base de datos */

-- misma lógica que la consulta anteior, limitando el resultado a 1, nos da el año con más películas. 


SELECT anio, COUNT(*) AS total_peliculas
FROM peliculas
GROUP BY anio
ORDER BY total_peliculas DESC
LIMIT 1;

/* Obtén un listado de todos los géneros y cuántas películas corresponden a cada uno.*/

-- COUNT contabiliza por columna y después las agrupamos y ordenamos. 


SELECT genero, COUNT(*) AS total_genero
FROM peliculas
GROUP BY genero
ORDER BY total_genero DESC;

/* Muestra todas las películas cuyo título contenga la palabra "Godfather" (puedes usar cualquier
palabra). */

-- Uso LIKE para buscar un valor concreto dentro de una columna y % significa que puede haber texto antes o después. 

SELECT titulo
FROM peliculas
WHERE titulo LIKE "%Godfather%";


