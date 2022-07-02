CREATE DATABASE cinemadb;

USE cinemadb;

CREATE TABLE filmes(
    idfilme INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(30) NOT NULL,
    duracao INT(3) NOT NULL,
    diretor VARCHAR(30) NOT NULL,
    datafilme DATE NOT NULL
);

CREATE TABLE salas(
    idsala INT PRIMARY KEY AUTO_INCREMENT,
    nomesala VARCHAR(20) NOT NULL,
    npoltrona INT(3) NOT NULL,
    tecvisualizacao CHAR(2)
);