USE employees;

CALL sp_colab_dept('%G%','Facello','Development');

SELECT * FROM employees
INNER JOIN