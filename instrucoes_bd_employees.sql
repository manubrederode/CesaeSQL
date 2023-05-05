USE employees;
SELECT * FROM employees;

SELECT first_name, gender FROM employees WHERE gender= "M";

SELECT first_name, gender, birth_date FROM employees WHERE birth_date >= "1960/01/01" ORDER BY birth_date;