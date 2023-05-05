USE employees;

SELECT employees.emp_no, employees.first_name, employees.last_name, salaries.salary 
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no;

SELECT employees.first_name, employees.gender, titles.title
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no;

-- Só genero F e não são engenheiras:
SELECT employees.emp_no, employees.first_name, employees.gender, titles.title
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE gender = "F" AND title NOT LIKE "%Engineer%";

SELECT employees.emp_no, employees.first_name, employees.gender, titles.title
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE gender = "F" OR title NOT LIKE "%Engineer%";

USE constraints;

SELECT pessoas2.id, pessoas2.nome, enderecos.rua, enderecos.numero
FROM pessoas2
INNER JOIN enderecos
ON pessoas2.id = enderecos.pessoa2_id;

SELECT pessoas2.id, pessoas2.nome, enderecos.rua, enderecos.numero
FROM pessoas2
RIGHT JOIN enderecos
ON pessoas2.id = enderecos.pessoa2_id;

SELECT pessoas2.id, pessoas2.nome, enderecos.rua, enderecos.numero
FROM pessoas2
LEFT JOIN enderecos
ON pessoas2.id = enderecos.pessoa2_id;


