-- Alunos com Mais de 2 Registros de Acesso
SELECT 
    a.nome, 
    COUNT(ac.id_acesso) AS total_acessos
FROM acessos ac
JOIN alunos a ON ac.id_aluno = a.id_aluno
GROUP BY a.id_aluno, a.nome
HAVING COUNT(ac.id_acesso) > 1;
