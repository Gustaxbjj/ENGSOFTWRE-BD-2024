create database cinema;

use cinema;

create table streaming (
cod varchar (10),
nome varchar(20),
valor varchar(30),
FK_streaming_cod varchar(70),

primary key(cod)
);

create table categoria (
cod varchar (10),
nome varchar(20),
FK_categoria_cod varchar(60),

primary key(cod)
);


create table filme (
cod varchar (5),
ano varchar(25),
titulo varchar(30),
resumo varchar(10),
FK_filme_cod varchar(65),
FK_categoria_cod varchar(60),

foreign key (FK_categoria_cod) references categoria(cod),

primary key(cod)
);

create table ator (
cod varchar (10),
nome varchar(20),
nasc varchar(30),
nac varchar(15),

FK_ator_cod varchar(55),

primary key(cod)
);

create table idioma(
FK_filme_cod varchar(65),
idioma varchar(30),
foreign key(FK_filme_cod) references filme(cod),

primary key(Fk_filme_cod,idioma)
);


create table streamingfilme(
FK_streaming_cod varchar(70),
FK_filme_cod varchar(65),

foreign key(FK_streaming_cod) references streaming(cod),
foreign key(FK_filme_cod) references filme(cod),

primary key(FK_streaming_cod,FK_filme_cod)

);

create table atorfilme(
FK_ator_cod varchar(55),
FK_filme_cod varchar(65),

foreign key(FK_ator_cod) references ator(cod),
foreign key(FK_filme_cod) references filme(cod),

primary key(FK_ator_cod, FK_filme_cod)

);


