USE teste;
DESC tb_pais; 

-- incluir nova coluna:
ALTER TABLE tb_pais ADD COLUMN capital VARCHAR(30);

SELECT * FROM tb_pais;

INSERT INTO tb_pais VALUES (12, "Alemanha", "Berlim");

-- excluir uma coluna:
ALTER TABLE tb_pais DROP COLUMN capital;

-- Modificar o tipo de campo:
ALTER TABLE tb_pais MODIFY COLUMN capital VARCHAR(50);


UPDATE tb_pais
SET capital = ("Lisboa")
WHERE cod_pais = 1;

UPDATE tb_pais SET capital = ("Madrid") WHERE cod_pais = 2;
