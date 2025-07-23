-- Crie o banco de dados
CREATE DATABASE db_registro_alunos;

-- Selecionando  o banco de dados
USE db_registro_alunos;

-- Criando a Tabela
CREATE TABLE tb_alunos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
idade int,
serie VARCHAR(255) NOT NULL,
nota DECIMAL (4,1) NOT NULL
);

-- Inserindo os valores
INSERT INTO tb_alunos(nome, idade, serie, nota)
values("Nathalia", 13, "8º Ano", 8.0 );
INSERT INTO tb_alunos(nome, idade, serie, nota)
values("Rafael", 15, "1ª Série EM", 6.5 );
INSERT INTO tb_alunos(nome, idade, serie, nota)
values("Lilian", 10, "5º Ano", 7.2 );
INSERT INTO tb_alunos(nome, idade, serie, nota)
values("Silvia", 17,"3ª Série EM", 10 );
INSERT INTO tb_alunos(nome, idade, serie, nota)
values("Luiz", 8, "3º Ano", 8.5 );
INSERT INTO tb_alunos(nome, idade, serie, nota)
values("Raquel", 9, "4º Ano", 0 );
INSERT INTO tb_alunos(nome, idade, serie, nota)
values("Eduardo", 16, "2ª Série EM", 5.5 );
INSERT INTO tb_alunos(nome, idade, serie, nota)
values("Joyce", 7, "2º Ano", 6.9 );

--  estudantes com a nota maior do que 7.0
SELECT*FROM tb_alunos where nota > 7.0;

--  estudantes com a nota menor do que 7.0
SELECT*FROM tb_alunos where nota < 7.0;

-- atualização de registro
UPDATE tb_alunos SET nota = 6.5 WHERE id = 6;