USE sakila;

-- CEIL: arredonda para cima
SELECT amount, CEIL(amount) AS 'Valor Arredondado' FROM payment;

-- FlOOR: arredonda para baixo
SELECT amount, FLOOR(amount) AS 'Valor Arredondado' FROM payment;

-- COUNT:
SELECT COUNT(*) FROM payment;

-- MAX:
SELECT MAX(amount) AS 'Pagamento Máximo' FROM payment;

-- MIN:
SELECT MIN(amount) AS 'Pagamento Mínimo' FROM payment;

-- SUM:
SELECT SUM(amount) AS 'Soma Pagamentos' FROM payment;

-- AVG: média
SELECT AVG(amount) AS 'Média Pagamentos' FROM payment;

SELECT FORMAT(AVG(amount),2) AS 'Média Pagamentos' FROM payment;

-- Listar os pagamentos por nome de cliente:
SELECT CONCAT(first_name, ' ', last_name) AS 'Nome Completo Cliente', SUM(payment.amount) AS 'Pagamento'
FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id
ORDER BY SUM(payment.amount) DESC;

SELECT CONCAT(first_name, ' ', last_name) AS 'Nome Completo Cliente', SUM(payment.amount) AS 'Pagamento'
FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id
HAVING SUM(payment.amount) < 100
ORDER BY SUM(payment.amount) DESC;

SELECT CONCAT(first_name, ' ', last_name) AS 'Nome Completo Cliente', 
	SUM(payment.amount) AS 'Total Compras', 
	COUNT(payment.amount) AS 'Número de Compras',
FORMAT(AVG(payment.amount),2) AS 'Média das Compras'
FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id;

-- exercicio 31:
SELECT COUNT(customer_id) FROM customer;

-- exercicio 32:
USE employees;
SELECT MAX(salary) AS 'Maior Salário' FROM salaries;
SELECT MIN(salary) AS 'Menor Salário' FROM salaries;

SELECT MAX(salary) AS 'Maior Salário', MIN(salary) AS 'Menor Salário' FROM salaries;

SELECT CONCAT(first_name, ' ', last_name) AS 'Nome Completo Funcionário', MAX(salary) AS 'Maior Salário'
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no;

SELECT CONCAT(first_name, ' ', last_name) AS 'Nome Completo Funcionário', MIN(salary) AS 'Menor Salário'
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no;


