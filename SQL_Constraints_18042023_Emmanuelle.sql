USE employees;

SELECT COUNT(dept_name) FROM departments;

CREATE DATABASE constraints;
USE constraints;
CREATE TABLE pessoas (
	nome VARCHAR(50) NOT NULL,
    idade INT
);

INSERT INTO pessoas (nome, idade) VALUES (NULL, 30);
INSERT INTO pessoas (nome, idade) VALUES ("Rui", NULL);

ALTER TABLE pessoas ADD COLUMN email VARCHAR(100) UNIQUE;

INSERT INTO pessoas VALUES ("Manuel", 30, "manuel@gmail.com");
INSERT INTO pessoas VALUES ("Maria", 30, "manuel@gmail.com");

ALTER TABLE pessoas DROP COLUMN email;

SELECT * FROM pessoas;

DROP TABLE produtos;
CREATE TABLE produtos (
	id INT NOT NULL PRIMARY KEY,
    nome VARCHAR(100),
    sku VARCHAR(20) UNIQUE
);

DELETE FROM pessoas WHERE nome = "Rui";
DELETE FROM pessoas WHERE nome = "mAnuel";

INSERT INTO produtos VALUES (1, "Motherboard", "123456");
INSERT INTO produtos VALUES (NULL, "CAIXA ATX", "abcdef");
INSERT INTO produtos VALUES (1, "CAIXA ATX", "abcdef");
INSERT INTO produtos VALUES (2, "CAIXA ATX", "abcdef");
INSERT INTO produtos VALUES (3, "Monitor", "654321");

SELECT * FROM produtos;

UPDATE produtos SET sku = "987654" WHERE id = 2;

CREATE TABLE frutas (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100)
);

INSERT INTO frutas (nome) VALUES ("Laranja");
INSERT INTO frutas (nome) VALUES ("Maçã");
INSERT INTO frutas (nome) VALUES ("Pêra");

SELECT * FROM frutas;

DELETE FROM frutas WHERE id = 3;

INSERT INTO frutas (nome) VALUES ("Manga");