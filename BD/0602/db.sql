-- criar banco de dados
CREATE DATABASE escola;

-- usar tabela
USE escola;

-- criar tabela curso
CREATE TABLE curso (
    idcurso INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    coordenador VARCHAR(50)
);

-- criar tabela turma
CREATE TABLE turma (
    idturma INT PRIMARY KEY AUTO_INCREMENT,
    ano INT,
    semestre INT,
    fkcurso INT                             -- necessario ser o msm tipo e tamanho do dado da outra tabela
    FOREIGN KEY(fkcurso)                    -- necessario a declaração de foreign key
        REFERENCES curso(idcurso)
);

CREATE TABLE aluno (
    cpf CHAR(11) PRIMARY KEY,
    nome VARCHAR(50),
    email VARCHAR(200)
);

CREATE TABLE turma_aluno (
    fkturma INT,
    fkaluno CHAR(11)                        
    PRIMARY KEY(fkturma, fkaluno),          -- bloqueia a repetição  do cadaastro do msm aluno na msm turma
    FOREIGN KEY(fkturma) REFERENCES turma(idturma),
    FOREIGN KEY(fkaluno) REFERENCES aluno(cpf)
);