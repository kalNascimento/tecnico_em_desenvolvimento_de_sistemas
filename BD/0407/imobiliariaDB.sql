-- Criar banco de dados 

CREATE DATABASE imobiliariaDB;

-- selecionar banco de dados

USE imobiliariaDB;

-- criar tabela

CREATE TABLE corretores (
    creci INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    admissaodata DATE NULL
);

CREATE TABLE compradores (
    cpf VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    profissao VARCHAR(20) NULL
);

CREATE TABLE proprietarios (
    cpf VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    estadocivil VARCHAR(15) NULL
);

CREATE TABLE imoveis (
    id INT PRIMARY KEY AUTO_INCREMENT,
    preco DECIMAL(11,2) NOT NULL,
    area VARCHAR(5) NOT NULL
);

CREATE TABLE vendas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    datavenda DATE NOT NULL,
    valorvenda DECIMAL(11,2) NOT NULL,
    valorcommisao DECIMAL(11,2) NULL
);

