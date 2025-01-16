-- Alunos com Todas as Notas Acima de 7
SELECT 
    a.nome AS aluno
FROM notas n
JOIN alunos a ON n.id_aluno = a.id_aluno
GROUP BY a.id_aluno, a.nome
HAVING MIN(n.nota) > 7;
