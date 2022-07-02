CREATE DATABASE pizzaria;


USE pizzaria;


CREATE TABLE pizzas (
    idpizza INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    ingredientes VARCHAR(50) NOT NULL,
    preçoPequena DECIMAL(5,2) NOT NULL,
    preçoMedia DECIMAL(5,2) NOT NULL,
    preçoGrande DECIMAL(5,2) NOT NULL
);


CREATE TABLE pedido (
    idpedido INT PRIMARY KEY AUTO_INCREMENT,
    datapedido VARCHAR(50) NULL,
    fkbairro INT,
    fkfuncionario INT,
    FOREIGN KEY(fkbairro)
        REFERENCES bairro(idbairro),
    FOREIGN KEY(fkfuncionario)
        REFERENCES funcionario(idfuncionario)
);


CREATE TABLE bairro (
    idbairro INT PRIMARY KEY AUTO_INCREMENT,
    tempoEntrega TIME NOT NULL,
    fkcliente CHAR,
    FOREIGN KEY(fkcliente)
        REFERENCES cliente(idcliente)
);


CREATE TABLE cliente (
    cpf INT(11) PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    telefone INT(11) NOT NULL,
    endereco VARCHAR(100) NOT NULL
);


CREATE TABLE funcionario (
    cpf INT(11) PRIMARY KEY AUTO_INCREMENT,
    celular INT(11) NOT NULL,
    entregador BOOLEAN NOT NULL,
    nome VARCHAR(20) NOT NULL
);


CREATE TABLE pizzas_pedidos (
    fkpizzas INT,
    fkpedidos INT,                        
    FOREIGN KEY(fkpizzas) REFERENCES pizzas(idpizza),
    FOREIGN KEY(fkpedidos) REFERENCES pedidos(idpedido)
);