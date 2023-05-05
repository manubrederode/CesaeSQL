USE employees;
-- UNION: não duplica resultados.
SELECT dept_no FROM departments UNION SELECT dept_no FROM dept_emp;

-- UNION ALL: traz resultados duplicados.
SELECT dept_no FROM departments UNION ALL SELECT dept_no FROM dept_emp;

-- GROUP BY:
SELECT gender, COUNT(gender) AS Contagem_Genero FROM employees
GROUP BY gender;

-- exercicio 23:
SELECT hire_date AS "Data de Contratação", COUNT(hire_date) AS numero_contratacoes
FROM employees
GROUP BY hire_date
ORDER BY numero_contratacoes DESC;

-- HAVING (semelhante ao WHERE): usando com funções de agregação
SELECT title AS Cargos, COUNT(title) AS Qtd_Cargos
FROM titles
GROUP BY title
HAVING Qtd_Cargos > 50000
ORDER BY Qtd_Cargos DESC;

-- numero de pessoas com o mesmo nome:
SELECT first_name AS "Nome", COUNT(first_name) AS "Quantidade"
FROM employees
GROUP BY first_name
ORDER BY Quantidade DESC;

