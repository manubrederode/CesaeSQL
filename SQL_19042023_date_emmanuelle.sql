USE sakila;
SELECT * FROM category;

-- ADDDATE: adiona ou diminui
SELECT last_update, ADDDATE(last_update, '5 DAYS') AS 'Nova Data'
FROM category;

SELECT last_update, ADDDATE(last_update, '-5 DAYS') AS 'Nova Data'
FROM category;

-- ADDTIME: na query abaixo acrescentou 3 dias e 2 horas
SELECT last_update, ADDTIME(last_update, '3 02:00:00') AS 'Nova Data e Hora'
FROM category;

-- DATEDIFF: calcula a diferença entre datas
SELECT return_date AS 'Data de Devolução', rental_date AS 'Data de Aluguer', DATEDIFF(return_date, rental_date) AS 'Nº de Dias'
FROM rental;

-- DATE_FORMAT:
SELECT rental_date AS 'Data de Aluguer', 
DATE_FORMAT(rental_date, '%d/%m/%y') AS 'Novo Formato',
DATE_FORMAT(rental_date, '%D/%M/%Y') AS 'Novo Formato2'
FROM rental;

-- DAY, MONTH, YEAR:
SELECT rental_date AS 'Data de Aluguer', 
DAY(rental_date) AS 'Dia',
MONTH(rental_date) AS 'Mês',
YEAR(rental_date) AS 'Ano'
FROM rental;

-- DAYOFWEEK, DAYOFYEAR, WEEKOFYEAR:
SELECT rental_date AS 'Data de Aluguer', 
DAYOFWEEK(rental_date) AS 'Dia Semana',
DAYOFYEAR(rental_date) AS 'Dia do Ano',
WEEKOFYEAR(rental_date) AS 'Semana do Ano'
FROM rental;

-- Soma dos Pagamentos por mes:

SELECT MONTH(payment_date) AS 'Mês', SUM(payment.amount) AS 'Total Por Mês'
FROM payment
GROUP BY MONTH(payment_date);

-- Soma dos Pagamentos por cliente e por mes: (falta terminar)

SELECT CONCAT(first_name, ' ', last_name) AS 'Nome Completo Cliente', 
	MONTH(payment_date) AS 'Mês', 
	SUM(payment.amount) AS 'Total Por Mês'
FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id, MONTH(payment_date)
ORDER BY customer.customer_id;






