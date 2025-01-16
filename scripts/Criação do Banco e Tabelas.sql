-- Criar o banco de dados
CREATE DATABASE EscolaDB;

-- Usar o banco de dados
USE EscolaDB;

-- Tabela Alunos
CREATE TABLE Alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    data_nascimento DATE,
    cidade VARCHAR(50)
);

-- Tabela Disciplinas
CREATE TABLE Disciplinas (
    id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    nome_disciplina VARCHAR(100)
);

-- Tabela Professores
CREATE TABLE Professores (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    especialidade VARCHAR(100)
);

-- Tabela Notas
CREATE TABLE Notas (
    id_nota INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    id_disciplina INT,
    nota FLOAT,
    data_avaliacao DATE,
    FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno),
    FOREIGN KEY (id_disciplina) REFERENCES Disciplinas(id_disciplina)
);

-- Tabela Acessos
CREATE TABLE Acessos (
    id_acesso INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    data_acesso DATE,
    FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno)
);

-- Tabela Frequencias
CREATE TABLE Frequencias (
    id_frequencia INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    id_disciplina INT,
    presencas INT,
    faltas INT,
    FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno),
    FOREIGN KEY (id_disciplina) REFERENCES Disciplinas(id_disciplina)
);
