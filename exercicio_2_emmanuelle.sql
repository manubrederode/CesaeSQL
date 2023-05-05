-- exercicio 11:
CREATE DATABASE bd_registo;
USE bd_registo;
CREATE TABLE tb_pessoas (
nome VARCHAR(30),
morada VARCHAR(60),
localidade VARCHAR(30),
limite INT);
INSERT INTO tb_pessoas VALUES
("Emmanuelle Araujo", "Praça do Bocage", "Braga", 56),
("Tania Maria", "Rua Jose Mocarzel", "Niteroi", 79),
("Daniel Araujo", "Rua Teodoro da Silva", "Rio de Janeiro", 152),
("Maria Joaquina", "Av. dos Aliados", "Porto", 1),
("Rui Miguel", "Rua Augusta", "Lisboa", 35);
DESC tb_pessoas;
SELECT * FROM tb_pessoas;

-- exercicio 12 e 13:
USE employees;
SELECT * FROM departments ORDER BY dept_no;
INSERT INTO departments VALUES ("d010", "Compras");
UPDATE departments SET dept_name = "Vendas" WHERE dept_no = "d010";
DELETE FROM departments WHERE dept_no = "d010";

-- exercicio 14:
SELECT * FROM titles WHERE emp_no >= 11500;

SELECT DISTINCT title FROM titles;

-- exercicio 15:
SELECT * FROM titles ORDER BY title DESC;
SELECT * FROM titles ORDER BY emp_no DESC;

-- exercicio 16:
SELECT * FROM departments ORDER BY dept_name LIMIT 5;
SELECT * FROM departments LIMIT 5;

-- exercicio 17:
SELECT * FROM salaries ORDER BY salary DESC LIMIT 1;
SELECT MAX(salary) FROM salaries;
SELECT MIN(salary) FROM salaries;
SELECT MAX(salary) FROM salaries WHERE emp_no = 10001;
SELECT COUNT(*) FROM salaries WHERE salary > 100000;
SELECT COUNT(*) FROM departments;
SELECT COUNT(gender) FROM employees WHERE gender = "F";
SELECT COUNT(gender) FROM employees WHERE gender = "M";
SELECT COUNT(*) FROM employees;

-- exercicio 18:
SELECT AVG(salary) FROM salaries;
SELECT AVG(salary) FROM salaries WHERE from_date >= '2000-01-01' AND to_date <= '2000-12-31';
SELECT SUM(salary) FROM salaries;
SELECT SUM(salary) FROM salaries WHERE to_date = '9999-01-01';
SELECT AVG(salary) FROM salaries WHERE to_date = '9999-01-01';

SELECT * FROM employees WHERE first_name LIKE '%ber%';
SELECT COUNT(*) FROM employees WHERE first_name LIKE '%ber%';
SELECT * FROM titles WHERE title LIKE '%Engineer%';
SELECT COUNT(*) FROM titles WHERE title LIKE '%Engineer%';

-- exercicio 19:
SELECT * FROM dept_emp WHERE dept_no IN ('d004', 'd005', 'd006');
SELECT COUNT(*) FROM dept_emp WHERE dept_no IN ('d004', 'd005', 'd006');
SELECT * FROM employees WHERE last_name IN ('Facello', 'Peac');
SELECT COUNT(*) FROM employees WHERE last_name IN ('Facello', 'Peac');
SELECT last_name, COUNT(*) FROM employees WHERE last_name IN ('Facello', 'Peac') GROUP BY last_name;

-- exercicio 20:
SELECT * FROM dept_emp WHERE dept_no BETWEEN 'd001' AND 'd008';
SELECT * FROM salaries WHERE salary BETWEEN 125000 AND 175000;
SELECT * FROM salaries WHERE salary BETWEEN 125000 AND 175000 ORDER BY salary DESC;
SELECT COUNT(*) FROM salaries WHERE salary BETWEEN 125000 AND 175000;
SELECT COUNT(*) FROM salaries WHERE salary < 125000;

SELECT SUM(salary) AS soma_salario FROM salaries;
SELECT AVG(salary) AS media_salario FROM salaries;

SELECT last_name AS Apelido, COUNT(*) AS Contagem FROM employees WHERE last_name IN ('Facello', 'Peac') GROUP BY last_name;
 






