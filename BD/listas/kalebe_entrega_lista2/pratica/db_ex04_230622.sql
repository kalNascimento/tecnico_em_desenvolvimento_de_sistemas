CREATE DATABASE temporada;


USE temporada;


CREATE TABLE timeFut (
    idtimeFut INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    treinador VARCHAR(60)
);


CREATE TABLE torneio (
    idtorneio INT PRIMARY KEY AUTO_INCREMENT,
    localidade VARCHAR(50)
);


CREATE TABLE torneio_timeFut (
    fktorneio INT,
    fktimeFut INT,                        
    PRIMARY KEY(fktorneio, fktimeFut),
    FOREIGN KEY(fktorneio) REFERENCES torneio(idtorneio),
    FOREIGN KEY(fktimeFut) REFERENCES timeFut(idtimeFut)
);