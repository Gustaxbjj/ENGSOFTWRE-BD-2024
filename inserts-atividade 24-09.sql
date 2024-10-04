-- Inserts para a tabela curso
INSERT INTO curso (nome) VALUES 
('Ciência da Computação'), 
('Engenharia Elétrica'), 
('Matemática');

-- Inserts para a tabela aluno
INSERT INTO aluno (telefone, email, nome, nasc, FK_curso_id) VALUES 
('11234567890', 'joao.silva@example.com', 'João Silva', '1995-05-20', 1), 
('11987654321', 'maria.souza@example.com', 'Maria Souza', '1998-09-15', 2), 
('11876543210', 'pedro.lima@example.com', 'Pedro Lima', '1997-01-10', 3);

-- Inserts para a tabela professor
INSERT INTO professor (siape, nome, email) VALUES 
(123456, 'Professor A', 'professor.a@example.com'), 
(654321, 'Professor B', 'professor.b@example.com'), 
(111111, 'Professor C', 'professor.c@example.com');

-- Inserts para a tabela disciplina
INSERT INTO disciplina (nome, FK_prof_siape) VALUES 
('Algoritmos', 123456), 
('Circuitos Elétricos', 654321), 
('Cálculo I', 111111);

-- Inserts para a tabela alunodisciplina
INSERT INTO alunodisciplina (FK_aluno_mat, FK_disciplina_id, nota) VALUES 
(1, 1, 8.5), 
(1, 3, 7.0), 
(2, 2, 9.0), 
(3, 3, 6.5);

-- Inserts para a tabela cursodisciplina
INSERT INTO cursodisciplina (FK_curso_id, FK_disciplina_id) VALUES 
(1, 1), 
(2, 2), 
(3, 3);