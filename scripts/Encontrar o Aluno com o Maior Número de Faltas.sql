-- Encontrar o Aluno com o Maior Número de Faltas
SELECT 
    f.id_aluno, 
    a.nome, 
    SUM(f.faltas) AS total_faltas
FROM frequencias f
JOIN alunos a ON f.id_aluno = a.id_aluno
GROUP BY f.id_aluno, a.nome
ORDER BY total_faltas DESC
LIMIT 1;
