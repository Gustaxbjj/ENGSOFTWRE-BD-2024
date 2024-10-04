# Liste os nomes de todos os alunos e seus respectivos cursos
SELECT a.nome AS NomeAluno, c.nome AS NomeCurso FROM
aluno a INNER JOIN curso c ON c.id = a.FK_curso_id;

# Liste os nomes de todos os professores e as disciplinas que eles ministram
select p.nome AS Professor,  d.nome AS Disciplina FROM professor p inner join disciplina d ON p.siape = d.FK_prof_siape;

# Liste os nomes de todos os alunos e a nota mais alta que eles obtiveram em qualquer disciplina
select a.nome AS aluno, MAX(ad.nota) As NotaMaisAlta from aluno a inner join alunodisciplina ad ON ad.FK_aluno_mat = a.mat GROUP BY a.nome;

# Liste todas as disciplinas que têm alunos matriculados, mostrando o nome da disciplina e a quantidade de alunos matriculados em cada uma
select d.nome AS nomeDadisciplina, count(ad.FK_aluno_mat) AS QntdAlunos from alunodisciplina ad inner join disciplina d ON d.id = ad.FK_disciplina_id group by d.nome;

# DESAFIO!!
# Encontra os alunos matriculados nas disciplinas ministradas por um professor cujo e-mail é "professor@exemplo.com"
select a.nome As AlunosMatriculados from aluno a
inner join alunodisciplina ad  ON a.mat = ad.FK_aluno_mat
inner join disciplina d ON d.id = ad.FK_disciplina_id
inner join professor p on p.siape = d.FK_prof_siape
where p.email = 'professor.c@example.com';