-- Alunos que Não Têm Registro de Acesso
SELECT 
    a.nome AS aluno
FROM alunos a
LEFT JOIN acessos ac ON a.id_aluno = ac.id_aluno
WHERE ac.id_acesso IS NULL;
