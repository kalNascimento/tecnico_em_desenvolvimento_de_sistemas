CREATE DATABASE escola;


USE escola;


CREATE TABLE professor (
    idprofessor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    telefone INT(11),
    email VARCHAR(100)
);


CREATE TABLE materia (
    idmateria INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50)
);


CREATE TABLE livro_autor (
    fkprofessor INT,
    fkmateria INT,                      
    FOREIGN KEY(fkprofessor) REFERENCES professor(idprofessor),
    FOREIGN KEY(fkmateria) REFERENCES materia(idmateria)
);