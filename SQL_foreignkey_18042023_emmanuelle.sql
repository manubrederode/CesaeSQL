USE constraints;

CREATE TABLE pessoas2 (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    idade INT
);

CREATE TABLE enderecos (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    rua VARCHAR(100),
    numero VARCHAR(10),
    pessoa2_id INT NOT NULL,
    FOREIGN KEY(pessoa2_id) REFERENCES pessoas2 (id)
);

INSERT INTO pessoas2 (nome, idade) VALUES
	("Rui", 30),
    ("Maria", 30),
	("Manuel", 30);
    
SELECT * FROM pessoas2;

INSERT INTO enderecos (rua, numero, pessoa2_id) VALUES ("Rua da Liberdade", "10A", 444);
INSERT INTO enderecos (rua, numero, pessoa2_id) VALUES ("Rua da Liberdade", "10A", 2);

DROP TABLE pessoas2; 