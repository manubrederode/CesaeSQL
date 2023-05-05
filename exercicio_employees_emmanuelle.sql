USE employees;

SELECT * FROM employees WHERE birth_date BETWEEN '1959-01-01' AND '1959-12-31';
SELECT COUNT(*) FROM employees WHERE birth_date BETWEEN '1959-01-01' AND '1959-12-31';
SELECT * FROM employees WHERE birth_date >= '1959-01-01' AND birth_date <= '1959-12-31';
SELECT * FROM employees WHERE birth_date LIKE '1959%';
SELECT * FROM employees WHERE YEAR (birth_date) = 1959;

SELECT * FROM employees WHERE MONTH (birth_date) = 04 AND DAY (birth_date) = 14;
SELECT COUNT(*) FROM employees WHERE MONTH (birth_date) = 04 AND DAY (birth_date) = 14;

SELECT * FROM employees WHERE MONTH (birth_date) = MONTH (now()) AND DAY (birth_date) = DAY (now());
SELECT * FROM employees WHERE MONTH (birth_date) = MONTH (now()) OR DAY (birth_date) = DAY (now());

SELECT * FROM dept_emp WHERE MONTH (from_date) = MONTH (now()) AND DAY (from_date) = DAY (now()) AND YEAR(to_date) = '9999';
SELECT COUNT(*) FROM dept_emp WHERE MONTH (from_date) = MONTH (now()) AND DAY (from_date) = DAY (now()) AND YEAR(to_date) = '9999';

SELECT * FROM dept_emp WHERE to_date = '9999-01-01' AND MONTH (from_date) = MONTH (now()) AND DAY (from_date) = DAY (now());
