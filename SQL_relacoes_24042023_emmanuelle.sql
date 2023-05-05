-- exercicio um para um:
CREATE DATABASE relacoes;

USE relacoes;

CREATE TABLE alunos (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome VARCHAR(100),
turma VARCHAR(5)
);

CREATE TABLE contactos (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
telefone VARCHAR(20),
estudante_id INT NOT NULL,
CONSTRAINT fk_idestudante FOREIGN KEY (estudante_id) REFERENCES alunos (id)
);

INSERT INTO alunos (nome, turma) VALUES
("Manuel Silva", "304d"),
("João Pereira", "101a"),
("Maria Silva", "101a"),
("Rita Esteves", "304d");

INSERT INTO contactos (id, telefone, estudante_id) VALUES
(1,"(+351)919191919",1),
(2, "(+351)939393939", 2),
(3, "(+351)929292929", 3),
(4, "(+351)253147896", 4);

SELECT * FROM alunos;
SELECT * FROM contactos;

SELECT alunos.nome, contactos.telefone
FROM alunos
INNER JOIN contactos
ON alunos.id = contactos.estudante_id;

-- exercicio um para muitos:

CREATE TABLE clientes (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome VARCHAR(100),
data_nascimento DATE
);

CREATE TABLE pedidos (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
qt_itens INT(10),
total float,
cliente_id INT NOT NULL,
FOREIGN KEY (cliente_id) REFERENCES clientes (id)
);

INSERT INTO clientes (nome, data_nascimento) VALUES
("Maria Silva", "1991-05-01"),
("João Magalhães", "1985-02-04"),
("Paulo Carvalho", "1995-06-01"),
("Joana Silva", "1990-02-20");

INSERT INTO pedidos (qt_itens, total, cliente_id) VALUES
(5,214.54,1),
(3,120.00,1),
(2,89.47,1);

SELECT * FROM clientes;
SELECT * FROM pedidos;

SELECT clientes.nome, pedidos.id AS pedido, pedidos.qt_itens, pedidos.total
FROM clientes
INNER JOIN pedidos
ON clientes.id = pedidos.cliente_id
WHERE pedidos.cliente_id = 1;

-- exercicio muitos para muitos:
CREATE TABLE disciplinas (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
disciplina VARCHAR(100)
);

CREATE TABLE alunos_disciplinas (
aluno_id INT NOT NULL,
disciplina_id INT NOT NULL,
FOREIGN KEY (aluno_id) REFERENCES alunos(id),
FOREIGN KEY (disciplina_id) REFERENCES disciplinas(id),
PRIMARY KEY (aluno_id, disciplina_id)
);

INSERT INTO disciplinas (disciplina) VALUES
("Matemática"),
("Química"),
("Português");

INSERT INTO alunos_disciplinas (aluno_id, disciplina_id) VALUES
(1,1),
(1,2),
(1,3),
(2,1),
(2,2),
(2,3),
(3,1),
(3,2),
(3,3),
(4,2);

SELECT alunos.nome, disciplinas.disciplina
FROM disciplinas
INNER JOIN alunos_disciplinas
ON disciplinas.id = alunos_disciplinas.disciplina_id
INNER JOIN alunos
ON alunos.id = alunos_disciplinas.aluno_id;

