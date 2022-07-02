CREATE DATABASE transportadora;


USE transportadora;


CREATE TABLE cliente (
    idcliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    endereco VARCHAR(50)
);


CREATE TABLE pacote (
    idpacote INT PRIMARY KEY AUTO_INCREMENT,
    remetente VARCHAR(50)
);


CREATE TABLE pacote_cliente (
    fkpacote INT,
    fkcliente INT,                        
    PRIMARY KEY(fkpacote, fkcliente),
    FOREIGN KEY(fkpacote) REFERENCES pacote(idpacote),
    FOREIGN KEY(fkcliente) REFERENCES cliente(idcliente)
);


drop DATABASE pizzaria;
drop DATABASE emopresa;
drop DATABASE julgamento;
drop DATABASE transporadora;
drop DATABASE escola;
drop DATABASE temporada;
drop DATABASE livraria;