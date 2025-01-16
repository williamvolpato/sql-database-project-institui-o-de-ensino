-- Alunos com Desempenho Consistente
-- Encontrar alunos que tiveram todas as notas acima de 7 em todas as disciplinas.
SELECT n.id_aluno, a.nome AS nome_aluno
FROM Notas n
JOIN Alunos a ON n.id_aluno = a.id_aluno
GROUP BY n.id_aluno, a.nome
HAVING MIN(n.nota) > 7;
