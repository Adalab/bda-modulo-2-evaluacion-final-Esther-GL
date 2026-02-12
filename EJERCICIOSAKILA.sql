USE sakila;

SELECT * FROM film;

/* Selecciona todos los nombres de las películas sin que aparezcan duplicados. */


SELECT film_id, title
FROM film
ORDER BY film_id ASC;

/*  Muestra los nombres de todas las películas que tengan una clasificación de "PG-13". */

SELECT film_id, title, rating 
FROM film
WHERE rating = "PG-13";

/* Encuentra el título y la descripción de todas las películas que contengan la palabra "amazing" en su
descripción.*/

-- Uso LIKE %___% para buscar cualquier parte de la descripción que contenga lo que estoy buscando,

SELECT film_id, title, description 
FROM film
WHERE description LIKE "%amazing%";


/* Encuentra el título de todas las películas que tengan una duración mayor a 120 minutos. */

SELECT film_id, title, length 
FROM film
WHERE length > "120"
ORDER BY length ASC;

/*  . Recupera los nombres de todos los actores. */

SELECT first_name, last_name 
FROM actor;

/* . Encuentra el nombre y apellido de los actores que tengan "Gibson" en su apellido. */

SELECT first_name, last_name 
FROM actor
WHERE last_name = "Gibson";

/* Encuentra los nombres de los actores que tengan un actor_id entre 10 y 20. */

-- Uso BETWEEN para seleccionar los registros dentro del rango que nos solicita la consulta.

SELECT actor_id, first_name, last_name 
FROM actor 
WHERE actor_id BETWEEN 10 AND 20;


/* Encuentra el título de las películas en la tabla film que no sean ni "R" ni "PG-13" en cuanto a su
clasificación. */

SELECT film_id, title, rating 
FROM film
WHERE rating NOT IN ('R', 'PG-13');

/* Encuentra la cantidad total de películas en cada clasificación de la tabla film y muestra la
clasificación junto con el recuento. */

-- Uso COUNT para contar las películas que hay de cada clasificació, poniendo un alias al resultado AS total_peliculas, el GROUP BY agrupa las películas según clasificación.

SELECT rating, COUNT(*) AS total_peliculas
FROM film
GROUP BY rating;

/* Encuentra la cantidad total de películas alquiladas por cada cliente y muestra el ID del cliente, su
nombre y apellido junto con la cantidad de películas alquiladas. */

-- uno rental con customer con INNER JOIN --

SELECT c.customer_id,c.first_name,c.last_name,
COUNT(r.rental_id) AS total_peliculas_alquiladas
FROM customer c
INNER JOIN rental r 
ON c.customer_id = r.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;

/* Encuentra la cantidad total de películas alquiladas por categoría y muestra el nombre de la categoría
junto con el recuento de alquileres. */

/* No hay dos tablas con 1 columna en común, por tanto, para llegar a la consulta se deben usar cuatro tablas
 ( RENTAL => inventory_id => INVENTORY => film_id => FILM_CATEGORY => category_id => CATEGORY)y varios INNER JOIN */
 
SELECT 
    category.name,
    COUNT(*) AS total_alquileres
FROM rental
INNER JOIN inventory
    ON rental.inventory_id = inventory.inventory_id
INNER JOIN film_category
    ON inventory.film_id = film_category.film_id
INNER JOIN category
    ON film_category.category_id = category.category_id
GROUP BY name;

/* Encuentra el promedio de duración de las películas para cada clasificación de la tabla film y
muestra la clasificación junto con el promedio de duración. */

-- Uso AVG(length) que calcula el promedio --

SELECT rating,
AVG(length) AS promedio_duracion
FROM film
GROUP BY rating;

/* Encuentra el nombre y apellido de los actores que aparecen en la película con title "Indian Love". */

/* No hay dos tablas con 1 columna en común, por tanto, para llegar a la consulta se deben usar 3 tablas
 (film → film_actor → actor)y varios INNER JOIN */
 
 /* la relación es la siguiente:
film tiene film_id y title
film_actor conecta film_id con actor_id
actor tiene first_name y last_name */

SELECT actor.first_name, actor.last_name
FROM actor
INNER JOIN film_actor
ON actor.actor_id = film_actor.actor_id
INNER JOIN film
ON film_actor.film_id = film.film_id
WHERE film.title = 'Indian Love';

/* Muestra el título de todas las películas que contengan la palabra "dog" o "cat" en su descripción. */

-- Uso LIKE %___% para buscar cualquier parte de la descripción que contenga lo que estoy buscando, y el operador lógico OR para que al menos se cumpla una de las condiciones de la consulta --

/* dejo esta primera consulta con la columna description, que es donde están los valores que estamos dando a la consulta LIKE */

SELECT title, description
FROM film 
WHERE description LIKE '%dog%' 
   OR description LIKE '%cat%';
   
/* Consulta del ejercicio */

SELECT title
FROM film 
WHERE description LIKE '%dog%' 
   OR description LIKE '%cat%';   
   

/* Encuentra el título de todas las películas que fueron lanzadas entre el año 2005 y 2010. */

-- Uso BETWEEN para buscar un rango concreto en una consulta.

SELECT title, release_year
FROM film
WHERE release_year BETWEEN 2005 AND 2010;


