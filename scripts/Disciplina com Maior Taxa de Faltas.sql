-- Disciplina com Maior Taxa de Faltas
-- Identificar a disciplina com a maior soma de faltas entre todos os alunos.
SELECT
	d.nome_disciplina,
    SUM(f.faltas) AS total_faltas
FROM Frequencias f
JOIN disciplinas d ON f.id_disciplina = d.id_disciplina
GROUP BY d.nome_disciplina
ORDER BY total_faltas DESC
LIMIT 1;