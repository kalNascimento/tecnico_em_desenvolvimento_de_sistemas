CREATE DATABASE empresa;


USE empresa;


CREATE TABLE administrador (
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL,
    nome VARCHAR(50) NOT NULL,
    senha VARCHAR(50) NOT NULL
);


CREATE TABLE setor (
    codsetor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    salario DECIMAL(8,2) NULL,
    jornadaDiaria TIME NULL
);


CREATE TABLE vagas (
    codvagas INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(50) NULL,
    prazoinicial DATE NOT NULL,
    prazoFinal DATE NULL,
    fkadm INT,
    FOREIGN KEY(fkadm)
        REFERENCES administrador(email)
);


CREATE TABLE candidato (
    cpf INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    estadocivil VARCHAR(20) NULL,
    uf CHAR(2) NULL
);


CREATE TABLE setor_vagas (
    fksetor INT,
    fkvagas INT,                        
    FOREIGN KEY(fksetor) REFERENCES setor(codsetor),
    FOREIGN KEY(fkvagas) REFERENCES vagas(codvagas)
);


CREATE TABLE vagas_candidato (
    fkvagas INT,
    fkcandidato INT,                        
    FOREIGN KEY(fkvagas) REFERENCES vagas(codvagas),
    FOREIGN KEY(fkcandidato) REFERENCES candidato(cpf)
);