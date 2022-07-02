-- criar banco de dados
CREATE DATABASE livraria;

-- usar tabela
USE livraria;

-- criar tabela curso
CREATE TABLE autor (
    idautor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    dataNascimento DATE,
    email VARCHAR(100)
);

-- criar tabela turma
CREATE TABLE livro (
    idlivro INT PRIMARY KEY AUTO_INCREMENT,
    anoLancamento INT,
    nome VARCHAR(50)
);

-- criar tabela de fk's
CREATE TABLE livro_autor (
    fklivro INT,
    fkautor INT,                        
    PRIMARY KEY(fklivro, fkautor),
    FOREIGN KEY(fklivro) REFERENCES livro(idlivro),
    FOREIGN KEY(fkautor) REFERENCES autor(idautor)
);