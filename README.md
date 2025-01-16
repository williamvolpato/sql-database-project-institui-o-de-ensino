# Projeto de Banco de Dados SQL - Instituição de Ensino

Este repositório contém os scripts SQL desenvolvidos para um projeto de banco de dados acadêmico, voltado para gerenciar informações de alunos, disciplinas, frequências e acessos.

## Conteúdo

### **Scripts de Criação e Inserção**
- **Criação do Banco e Tabelas.sql**: Criação do banco de dados e estrutura de tabelas.
- **Inserindo Dados.sql**: Inserção inicial de registros fictícios.

### **Stored Procedures**
- **Procedure InserirAluno.sql**: Procedure para inserir alunos e registros associados na tabela de acessos.

### **Consultas Avançadas**
- **Melhor Aluno por Disciplina.sql**: Consulta para encontrar o melhor aluno em cada disciplina.
- **Frequência e Notas.sql**: Relatório de alunos com alta frequência e notas baixas.
- **Média de Notas por Cidade.sql**: Calcula a média de notas dos alunos agrupados por cidade.
- **Alunos com Desempenho Consistente.sql**: Identifica alunos cuja menor nota seja superior a um limite.
- **Disciplina com Maior Taxa de Faltas.sql**: Retorna a disciplina com a maior soma de faltas.
- **Histórico de Acessos por Aluno.sql**: Cria um histórico acumulativo de acessos por aluno.
- **Encontrar o Aluno com o Maior Número de Faltas.sql**: Encontra o aluno com a maior soma de faltas.
- **Média de Notas por Disciplina.sql**: Calcula a média das notas por disciplina.
- **Alunos com Mais de 2 Registros de Acesso.sql**: Lista os alunos com mais de dois registros na tabela de acessos.
- **Alunos e Disciplinas com Notas Abaixo de 6.sql**: Lista alunos com notas abaixo de 6 em suas disciplinas.
- **Ranking de Notas dos Alunos por Disciplina.sql**: Gera um ranking de notas por disciplina.
- **Frequência Total (Presenças + Faltas) por Aluno.sql**: Calcula a frequência total de presenças e faltas de cada aluno.
- **Último Acesso de Cada Aluno.sql**: Identifica a data do último acesso de cada aluno.
- **Alunos com Todas as Notas Acima de 7.sql**: Lista alunos cuja menor nota é maior que 7.
- **Disciplinas com a Maior Soma de Faltas.sql**: Retorna a disciplina com o maior número total de faltas.
- **Alunos que Não Têm Registro de Acesso.sql**: Lista os alunos que não possuem registros na tabela de acessos.

### **Exemplos de Inserção**
- **50 Alunos Inseridos via Procedure.sql**: Exemplo de 50 inserções feitas utilizando a procedure `InserirAluno`.

