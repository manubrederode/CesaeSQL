-- criar uma base de dados:
CREATE DATABASE teste2;

-- mostrar as bases de dados existentes:
SHOW DATABASES;

-- eliminar uma base de dados:
DROP DATABASE teste2;

-- exercício 3:
CREATE DATABASE computador;
SHOW DATABASES;
DROP DATABASE computador;

-- para realizar uma ação é necessário selecionarmos a base: USE <nomedabase>

-- criar tabelas na base de dados, já criando as colunas:
CREATE TABLE teste1.tabela1 (
coluna1 int,
coluna2 VARCHAR(60));

-- eliminar tabelas:
DROP TABLE tabela1;

-- exercicio 4:
CREATE DATABASE teste_tipo_dados;
CREATE TABLE teste_tipo_dados.tab_texto (
nome CHAR(20) NOT NULL,
morada VARCHAR(60),
profissao MEDIUMTEXT);

-- exercicio 5:
CREATE TABLE teste_tipo_dados.tab_cadastro (
nome VARCHAR(100) NOT NULL,
sobrenome VARCHAR(100) NOT NULL);

-- exercicio 6:
CREATE TABLE teste_tipo_dados.tab_produtos (
cod_produto INT NOT NULL,
nome_produto VARCHAR(100),
preco_produto DECIMAL,
quantidade INT,
PRIMARY KEY (cod_produto));

INSERT INTO teste_tipo_dados.tab_produtos VALUES
(1, "computador", 1800, 100),
(2, "monitor", 500, 220),
(3, "rato", 20, 1000),
(4, "teclado", 50, 300);

USE teste_tipo_dados;
SELECT * FROM tab_produtos;

-- exercicio 7:
USE teste_tipo_dados;
CREATE TABLE tab_numeros (
cod_produto INT NOT NULL,
preco DOUBLE,
quantidade INT,
repor BOOL);

INSERT INTO tab_numeros VALUES
(

