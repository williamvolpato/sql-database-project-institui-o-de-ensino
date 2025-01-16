-- Inserir dados em Alunos
INSERT INTO Alunos (nome, data_nascimento, cidade)
VALUES 
('Carlos Silva', '2005-03-10', 'São Paulo'),
('Ana Santos', '2006-07-15', 'Rio de Janeiro'),
('Mariana Oliveira', '2005-11-23', 'Belo Horizonte'),
('João Costa', '2004-02-05', 'Curitiba'),
('Pedro Almeida', '2003-09-17', 'Porto Alegre');

-- Inserir dados em Disciplinas
INSERT INTO Disciplinas (nome_disciplina)
VALUES 
('Matemática'),
('Português'),
('História'),
('Ciências'),
('Geografia');

-- Inserir dados em Professores
INSERT INTO Professores (nome, especialidade)
VALUES 
('Professor A', 'Matemática'),
('Professor B', 'Português'),
('Professor C', 'História'),
('Professor D', 'Ciências'),
('Professor E', 'Geografia');

-- Inserir dados em Notas
INSERT INTO Notas (id_aluno, id_disciplina, nota, data_avaliacao)
VALUES 
(1, 1, 8.5, '2025-01-10'),
(2, 2, 7.0, '2025-01-12'),
(3, 3, 6.0, '2025-01-15'),
(4, 4, 5.5, '2025-01-18'),
(5, 5, 9.0, '2025-01-20');

-- Inserir dados em Acessos
INSERT INTO Acessos (id_aluno, data_acesso)
VALUES 
(1, '2025-01-01'),
(2, '2025-01-02'),
(3, '2025-01-03'),
(4, '2025-01-04'),
(5, '2025-01-05');

-- Inserir dados em Frequencias
INSERT INTO Frequencias (id_aluno, id_disciplina, presencas, faltas)
VALUES 
(1, 1, 20, 2),
(2, 2, 18, 4),
(3, 3, 15, 7),
(4, 4, 22, 1),
(5, 5, 25, 0);
