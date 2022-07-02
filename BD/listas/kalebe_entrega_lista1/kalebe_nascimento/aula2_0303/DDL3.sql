-- 1. Criando banco de dados
CREATE DATABASE LojaBD;

-- 2. Use  - USE <nome do BD>- para selecionar o bando a ser usado

-- 3. Criando tabela clientes
CREATE TABLE  clientes
(
    idcliente INT(6) PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30)  NOT NULL,
    email VARCHAR(50) NULL,
    celular CHAR(11) NOT NULL,
    limite DECIMAL(10,2) NOT NULL,
    estado CHAR(2) NOT NULL,
    cidade VARCHAR(30) NOT NULL,
    bairro VARCHAR(25) NOT NULL,
    endereco VARCHAR(30) NOT NULL,
    nascimento  DATE NOT NULL
);

-- 4. Criando tabela clientes
CREATE TABLE funcionario
(
    idfuncionario INT(2) PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    email VARCHAR(50) NOT NULL,
    celular CHAR(11) NOT NULL,
    salario DECIMAL(10,2) NULL,
    cargo CHAR(2) NULL,
    dataadmissao DATE NOT NULL
);

-- 5. - SHOW TABLES <nome do BD> - p/ mostrar as tabelas do banco selecionado