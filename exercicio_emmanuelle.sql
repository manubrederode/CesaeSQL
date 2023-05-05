-- Exercicios Emmanuelle Araujo:

-- exercício 3:
CREATE DATABASE computador;
SHOW DATABASES;
DROP DATABASE computador;

-- exercicio 4:
CREATE DATABASE teste_tipo_dados;
USE teste_tipo_dados;
CREATE TABLE tb_texto (
nome CHAR(20) NOT NULL,
morada VARCHAR(60),
profissao MEDIUMTEXT);

-- exercicio 5:
USE teste_tipo_dados;
CREATE TABLE tb_cadastro (
nome VARCHAR(100) NOT NULL,
sobrenome VARCHAR(100) NOT NULL);

-- exercicio 6:
USE teste_tipo_dados;
CREATE TABLE tb_produtos (
cod_produto INT NOT NULL,
nome_produto VARCHAR(100),
preco_produto DOUBLE,
quantidade INT,
PRIMARY KEY (cod_produto));

INSERT INTO teste_tipo_dados.tb_produtos VALUES
(1, "computador", 1800, 100),
(2, "monitor", 500, 220),
(3, "rato", 20, 1000),
(4, "teclado", 50, 300);

USE teste_tipo_dados;
SELECT * FROM tb_produtos;

-- exercicio 7:
USE teste_tipo_dados;
CREATE TABLE tb_numeros (
cod_produto INT NOT NULL,
preco DOUBLE,
quantidade INT,
repor BOOL);

INSERT INTO tb_numeros VALUES
(1, 1800, 100, True),
(2, 500, 220, 0),
(3, 20, 1000, False),
(4, 50, 300, 1);

SELECT * FROM tb_numeros;

CREATE TABLE tb_clientes (
id INT,
nome VARCHAR(40),
data_nascimento DATE);

INSERT INTO tb_clientes VALUES
(1, "Maria João", "1985-09-27"),
(2, "Rui Miguel", "1987-06-20"),
(3, "Rosa Maria", "1956-03-25"),
(4, "Andre Rafael", "2002-01-02"),
(5, "Ana Leonor", "2010-08-07"),
(6, "Tania Maria", "1960-02-05");

-- exercicio 8:
USE teste_tipo_dados;
SELECT * FROM tb_clientes;
INSERT INTO tb_clientes VALUES (7, "Emmanuelle", "1985-09-27");
SELECT * FROM tb_clientes WHERE data_nascimento < "2000-01-01";