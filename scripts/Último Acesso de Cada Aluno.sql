-- Último Acesso de Cada Aluno
SELECT 
    a.nome AS aluno, 
    MAX(ac.data_acesso) AS ultimo_acesso
FROM acessos ac
JOIN alunos a ON ac.id_aluno = a.id_aluno
GROUP BY a.id_aluno, a.nome;
