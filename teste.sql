/*para acessar um banco de dados*/
USE teste;

/*para criar uma tabela*/
CREATE TABLE tb_colaboradores (
id_colaborador INT NOT NULL,
nome VARCHAR(50),
data_nascimento DATE,
localidade VARCHAR(30),
PRIMARY KEY (id_colaborador));

/*para inserir dados em uma tabela*/
INSERT INTO tb_colaboradores VALUES
(1, 'Emmanuelle Araujo', '1985/09/27', 'Rio de Janeiro'),
(2, 'Ana Rita', '1995/11/27', 'Braga'),
(3, 'Anne Sophie', '1998/09/30', 'Paris'),
(4, 'Elisabete Gonçalves', '1989/10/07', 'Paris');

INSERT INTO tb_colaboradores VALUES
(5, 'Tania Nunes', '1956/02/05', 'Rio de Janeiro'),
(6, 'Rui Miguel', '1987/06/20', 'Braga'),
(7, 'Daniel Araujo', '1955/10/17', 'Rio de Janeiro'),
(8, 'Renata Coelho', '1982/06/16', 'Rio de Janeiro');

INSERT INTO tb_colaboradores VALUES (8, 'Renata Coelho', '1982/06/16', 'Rio de Janeiro');

/*para deletar uma tabela*/
DROP TABLE tb_colaboradores;

/*para deletar um registo*/
DELETE FROM tb_colaboradores WHERE id_colaborador=8;
DELETE FROM tb_colaboradores WHERE nome LIKE 'An%';

/*para alterar tabela*/
ALTER TABLE teste.tb_colaboradores
CHANGE COLUMN localidade localidade VARCHAR(25);



