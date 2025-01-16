DELIMITER $$

CREATE PROCEDURE InserirAluno(
    IN nome VARCHAR(100),
    IN dataNascimento DATE,
    IN cidade VARCHAR(50)
)
BEGIN
    -- Verificar se os dados obrigatórios foram fornecidos
    IF nome IS NULL OR nome = '' THEN
        SET @erro = 'O nome do aluno não pode estar vazio.';
        SELECT @erro AS Erro;
    ELSEIF cidade IS NULL OR cidade = '' THEN
        SET @erro = 'A cidade do aluno não pode estar vazia.';
        SELECT @erro AS Erro;
    ELSE
        -- Inserir os dados na tabela alunos
        INSERT INTO alunos (nome, data_nascimento, cidade)
        VALUES (nome, dataNascimento, cidade);

        -- Inserir o registro correspondente na tabela acessos
        INSERT INTO acessos (id_aluno, data_acesso)
        VALUES (LAST_INSERT_ID(), CURDATE());
    END IF;
END $$

DELIMITER ;



CALL InserirAluno('Paulo Henrique', '2003-08-15', 'Porto Alegre');
CALL InserirAluno('Carla Mendes', '2002-04-12', 'Rio de Janeiro');
CALL InserirAluno('Marcos Silva', '2004-11-25', 'Salvador');
CALL InserirAluno('Fernanda Almeida', '2005-07-08', 'Fortaleza');
CALL InserirAluno('Rodrigo Santos', '2002-03-30', 'Recife');
CALL InserirAluno('Juliana Costa', '2004-01-17', 'Belo Horizonte');
CALL InserirAluno('Lucas Pereira', '2003-09-10', 'São Paulo');
CALL InserirAluno('Beatriz Souza', '2005-06-22', 'Curitiba');
CALL InserirAluno('Ana Clara', '2004-05-03', 'Brasília');
CALL InserirAluno('Gustavo Lima', '2003-12-19', 'Manaus');



SELECT * FROM alunos;

SELECT * FROM acessos;

