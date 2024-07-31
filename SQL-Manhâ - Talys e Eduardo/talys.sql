create database primeirobd;
use primeirobd;

create table aluno(
 mat varchar(9),
 nome varchar(50),
 email varchar(30),
 endereco varchar(100),
 primary key(mat)
);

create table turma(
cod varchar(10),
nome varchar(50),
sala varchar(60),
primary key(cod)

);

create table alunoturma(

FK_aluno_mat varchar (9),
FK_turma_cod varchar (10),
foreign key(FK_aluno_mat) references aluno(mat),
foreign key(FK_turma_cod) references turma(cod),
primary key (FK_aluno_mat,FK_turma_cod )

);
