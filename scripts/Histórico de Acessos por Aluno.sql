-- Histórico de Acessos por Aluno
-- Criar um histórico de acessos acumulativo para cada aluno.
SELECT 
    a.id_aluno,
    a.nome AS nome_aluno,
    ac.data_acesso,
    COUNT(ac.id_acesso) OVER (PARTITION BY ac.id_aluno ORDER BY ac.data_acesso) AS acessos_acumulados
FROM Acessos ac
JOIN Alunos a ON ac.id_aluno = a.id_aluno;
