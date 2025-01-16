-- Alunos e Disciplinas com Notas Abaixo de 6
SELECT 
    a.nome AS aluno, 
    d.nome_disciplina AS disciplina, 
    n.nota
FROM notas n
JOIN alunos a ON n.id_aluno = a.id_aluno
JOIN disciplinas d ON n.id_disciplina = d.id_disciplina
WHERE n.nota < 6;
