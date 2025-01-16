-- Frequência Total (Presenças + Faltas) por Aluno
SELECT 
    a.nome AS aluno, 
    SUM(f.presencas) AS total_presencas, 
    SUM(f.faltas) AS total_faltas,
    (SUM(f.presencas) + SUM(f.faltas)) AS frequencia_total
FROM frequencias f
JOIN alunos a ON f.id_aluno = a.id_aluno
GROUP BY a.id_aluno, a.nome;
