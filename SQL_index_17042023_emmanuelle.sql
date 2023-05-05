USE employees;

SELECT * FROM employees WHERE first_name = "Georgi";

CREATE INDEX index_nome ON employees (first_name);
DROP INDEX index_nome ON employees;

