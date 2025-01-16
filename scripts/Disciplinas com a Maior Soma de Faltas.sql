-- Disciplinas com a Maior Soma de Faltas
SELECT 
    d.nome_disciplina, 
    SUM(f.faltas) AS total_faltas
FROM frequencias f
JOIN disciplinas d ON f.id_disciplina = d.id_disciplina
GROUP BY d.nome_disciplina
ORDER BY total_faltas DESC
LIMIT 1;
