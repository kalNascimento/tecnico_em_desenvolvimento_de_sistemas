CREATE DATABASE julgamento;


USE julgamento;


CREATE TABLE testemunha (
    cpf INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    email VARCHAR(50)
);


CREATE TABLE processor (
    idprocesso INT PRIMARY KEY AUTO_INCREMENT,
    juiz VARCHAR(50)
);


CREATE TABLE livro_autor (
    fktestemunha INT,
    fkprocesso INT,                        
    PRIMARY KEY(fktestemunha, fkprocesso),
    FOREIGN KEY(fktestemunha) REFERENCES livro(idprocesso),
    FOREIGN KEY(fkprocesso) REFERENCES autor(idtestemunha)
);