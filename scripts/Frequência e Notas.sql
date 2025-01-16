-- Frequência e Notas
-- Identificar os alunos com altas presenças, mas notas baixas (exemplo: nota < 6)
SELECT
	f.id_aluno,
    a.nome AS nome_aluno,
    f.presencas,
    n.nota,
    d.nome_disciplina
FROM Frequencias f
JOIN Notas n ON f.id_aluno AND f.id_disciplina = n.id_disciplina
JOIN Alunos a ON f.id_aluno = a.id_aluno
JOIN Disciplinas d ON f.id_disciplina = d.id_disciplina
WHERE f.presencas > 20 AND n.nota < 6;