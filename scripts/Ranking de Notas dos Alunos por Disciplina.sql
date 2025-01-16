-- Ranking de Notas dos Alunos por Disciplina
SELECT 
    d.nome_disciplina, 
    a.nome AS aluno, 
    n.nota,
    RANK() OVER (PARTITION BY n.id_disciplina ORDER BY n.nota DESC) AS ranking
FROM notas n
JOIN alunos a ON n.id_aluno = a.id_aluno
JOIN disciplinas d ON n.id_disciplina = d.id_disciplina;
