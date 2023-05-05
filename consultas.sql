USE teste;

-- selecionar o 8º pais:
SELECT * FROM tb_pais WHERE cod_pais=8;

-- selecionar os paises que começam com a letra F:
SELECT * FROM tb_pais WHERE pais LIKE 'F%';

-- selecionar os paises que terminam com a:
SELECT * FROM tb_pais WHERE pais LIKE '%a';

INSERT INTO tb_pais VALUES (11, 'Irlanda'); 

-- selecionar os paises que tenham r como segundo caractere:
SELECT * FROM tb_pais WHERE pais LIKE '_r%';
 
-- selecionar os paises que tenham an ou na:
SELECT * FROM tb_pais WHERE pais LIKE '%an%';
SELECT * FROM tb_pais WHERE pais LIKE '%na%';

-- selecionar os paises que terminam com a ou com o:
SELECT * FROM tb_pais WHERE pais LIKE '%a' OR pais LIKE '%o';

-- ordenar pelo pais por ordem alfabetica:
SELECT * FROM tb_pais ORDER BY pais;
SELECT * FROM tb_pais ORDER BY pais DESC;

-- apagar os paises que começam por F:
DELETE FROM tb_pais WHERE pais LIKE 'F%';

