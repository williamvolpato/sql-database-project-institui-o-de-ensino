-- Melhor Aluno por Disciplina
WITH ranking_notas AS (
	SELECT
		n.id_disciplina,
        d.nome_disciplina,
        n.id_aluno,
        a.nome AS nome_aluno,
        n.nota,
        RANK() OVER (PARTITION BY n.id_disciplina ORDER BY n.nota DESC) AS rank_disciplina
	FROM Notas n
    JOIN Alunos a ON n.id_aluno = a.id_aluno
    JOIN Disciplinas d ON n.id_disciplina = d.id_disciplina
)
SELECT id_disciplina, nome_disciplina, id_aluno, nome_aluno, nota
FROM ranking_notas
WHERE rank_disciplina = 1;