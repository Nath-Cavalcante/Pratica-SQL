-- Crie o banco de dados
CREATE DATABASE db_ecommerce_eletro;

-- Selecionando  o banco de dados
USE db_ecommerce_eletro;

-- Criando a Tabela
CREATE TABLE tb_mercadoria(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
produto VARCHAR(255) NOT NULL,
marca VARCHAR(255) NOT NULL,
valor DECIMAL(10, 2) NOT NULL,
quantidade int
);

-- Inserindo os valores
INSERT INTO tb_mercadoria(produto, marca, valor, quantidade)
values("Geladeira", "Consul", 5600.00, 3);
INSERT INTO tb_mercadoria(produto, marca, valor, quantidade)
values("Televisão", "Samsung", 3700.00, 7);
INSERT INTO tb_mercadoria(produto, marca, valor, quantidade)
values("Batedeira", "Mondial", 300.00, 2);
INSERT INTO tb_mercadoria(produto, marca, valor, quantidade)
values("Fritadeira", "Philco", 400.00, 4);
INSERT INTO tb_mercadoria(produto, marca, valor, quantidade)
values("Microondas", "Cadence", 3000.00, 3);
INSERT INTO tb_mercadoria(produto, marca, valor, quantidade)
values("Fogão", "Cadence", 1400.00, 6);
INSERT INTO tb_mercadoria(produto, marca, valor, quantidade)
values("Liquidificador", "Oster", 450.00, 5);
INSERT INTO tb_mercadoria(produto, marca, valor, quantidade)
values("Lava-louças", "Brastemp", 4000.00, 1);

--  produtos com o valor maior do que 500
SELECT*FROM tb_mercadoria where valor > 500;

--  produtos com o valor menor do que 500
SELECT*FROM tb_mercadoria where valor < 500;

-- atualização de registro
UPDATE tb_mercadoria SET valor = 450.00 WHERE id = 4;