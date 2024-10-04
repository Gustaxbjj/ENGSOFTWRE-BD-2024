CREATE DATABASE iniciojoin;
USE iniciojoin;

CREATE TABLE curso(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50)
);

CREATE TABLE aluno(
	mat INT PRIMARY KEY AUTO_INCREMENT,
    telefone VARCHAR(11),
    email VARCHAR(30) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    nasc DATE,
    FK_curso_id INT,
    FOREIGN KEY(FK_curso_id) REFERENCES curso(id)
);

CREATE TABLE professor(
	siape INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(30) NOT NULL
);

CREATE TABLE disciplina(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    FK_prof_siape INT,
    FOREIGN KEY(FK_prof_siape) REFERENCES professor(siape)
);

CREATE TABLE alunodisciplina(
	FK_aluno_mat INT,
    FK_disciplina_id INT,
    nota DOUBLE,
    PRIMARY KEY(FK_aluno_mat, FK_disciplina_id),
    FOREIGN KEY(FK_aluno_mat) REFERENCES aluno(mat),
    FOREIGN KEY(FK_disciplina_id) REFERENCES disciplina(id)
);

CREATE TABLE cursodisciplina(
	FK_curso_id INT,
    FK_disciplina_id INT,
    PRIMARY KEY(FK_curso_id, FK_disciplina_id),
    FOREIGN KEY(FK_curso_id) REFERENCES curso(id),
    FOREIGN KEY(FK_disciplina_id) REFERENCES disciplina(id)
);