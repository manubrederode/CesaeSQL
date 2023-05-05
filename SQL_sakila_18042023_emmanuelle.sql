USE sakila;

SELECT * FROM actor;
SELECT actor_id, first_name FROM actor;

SELECT title, release_year, COUNT(release_year) AS "Filmes Por Ano"
FROM film
GROUP BY "Filmes Por Ano";

-- Listar Filmes por Linguagem:
SELECT film.title AS "Filmes", language.name AS "Idioma"
FROM film
INNER JOIN language
ON film.language_id = language.language_id;

UPDATE film SET language_id = 2 WHERE rental_duration = 6;
UPDATE film SET language_id = 5 WHERE rental_duration = 7;
UPDATE film SET language_id = 4 WHERE rental_duration = 3;

-- Contar Filmes por Linguagem:
SELECT language.name, COUNT(name) AS "Idioma"
FROM film
INNER JOIN language
ON film.language_id = language.language_id
GROUP BY name;


