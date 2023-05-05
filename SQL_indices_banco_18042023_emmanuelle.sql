-- exercicio 21:

CREATE DATABASE banco;
CREATE TABLE contas (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    sobrenome VARCHAR(100),
    saldo INT,
    data_nascimento DATE
);

INSERT INTO contas (nome, sobrenome, saldo, data_nascimento) VALUES
	("Rui", "Guerra", 1000, "2000-01-01"),
    ("Manuel", "Silva", 1500, "2010-01-01"),
	("Maria", "Guerra", 2000, "2000-01-20");
    
CREATE INDEX index_saldo ON contas (saldo);