-- Criando base de dados
CREATE DATABASE bd_cinema;

-- Exibir bases de dados 
SHOW DATABASES bd_cinema;

-- Deletando base de dados
DROP DATABASE bd_cinema;

-- Selecionando banco de dados
USE bd_cinema;

-- Criando uma tabela
CREATE TABLE filme(
    titulo VARCHAR(50),
    genero VARCHAR(20),
    duracao INT
);

-- Listando tabelas do BD
SHOW TABLES;

-- Exibindo a estrutura da tabela
DESC filme;

-- Removendo tabela 
DROP TABLE filme;