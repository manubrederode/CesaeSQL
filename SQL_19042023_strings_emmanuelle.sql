USE sakila;

SELECT first_name, CHAR_LENGTH(first_name) AS "Número de Caracteres" FROM customer;

-- exercicio 26:
SELECT address_id, address, CHAR_LENGTH(postal_code) AS "Caracteres Codigo Postal"
FROM address
ORDER BY address_id DESC;

-- CONCAT:
SELECT CONCAT('O filme ', title, ' é do ano ', release_year, '.') AS 'Ano Filme' FROM film;

-- exercicio 27:
SELECT actor_id AS 'Código Ator', CONCAT(first_name, ' ', last_name) AS 'Nome Completo Ator'
FROM actor;

-- CONCAT WS:
SELECT actor_id AS 'Código Ator', CONCAT_WS(', ', last_name, first_name) AS 'Nome Completo Ator'
FROM actor;

-- FORMAT:
SELECT customer_id AS 'Código Cliente', amount, FORMAT(amount, 1) AS 'Montante Arredondado'
FROM payment;

-- INSTR: in string, diz a posição do caractere definido
SELECT email, INSTR(email, '@')
FROM customer;

-- LCASE: colocar em letras minúsculas
SELECT LCASE(email), INSTR(email, '@') FROM customer;

-- UCASE: tudo em maiuscula:
SELECT UCASE(email), INSTR(email, '@') FROM customer;

-- LEFT: 
SELECT title, LEFT(title, 5) FROM film;

-- o -1 tira o espaço no final da palavra:
SELECT title, LEFT(title, INSTR(title, ' ')-1) AS 'Primeiro Nome' FROM film;

-- exercicio 28:
SELECT address_id, LEFT(last_update,10) AS 'Data'
FROM address
WHERE address_id > 150;

-- REPLACE: não altera a tabela, só visualmente.
SELECT REPLACE (name, 'Action', 'Ação') FROM category;

-- exercicio 29:
SELECT REPLACE(first_name, 'MARY', 'Mary') AS 'Nome', REPLACE(last_name, 'SMITH', 'Smith') AS 'Sobrenome'
FROM customer
WHERE last_name = 'SMITH';

-- RIGHT:
SELECT RIGHT(last_update, 8) AS 'Hora' FROM category;

-- SUBSTR:
SELECT SUBSTR(last_update, 6,2) AS 'Mês'
FROM category;

-- exercicio 30:
SELECT country_id, country, UCASE(country) AS 'País CX Alta' FROM country;
