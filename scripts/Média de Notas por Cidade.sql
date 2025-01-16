-- Média de Notas por Cidade
SELECT
	a.cidade,
    AVG(n.nota) AS media_notas
FROM Notas n
JOIN Alunos a ON n.id_aluno = a.id_aluno
GROUP BY a.cidade;