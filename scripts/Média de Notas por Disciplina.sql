-- Média de Notas por Disciplina
SELECT 
    d.nome_disciplina, 
    AVG(n.nota) AS media_notas
FROM notas n
JOIN disciplinas d ON n.id_disciplina = d.id_disciplina
GROUP BY d.nome_disciplina;
