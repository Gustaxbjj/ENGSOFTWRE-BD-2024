create database empresas;

use empresas;

create table empresa(
cod varchar(10),
nome varchar(20),
rua varchar(30),
uf varchar(14),
cidadt varchar(9),

FK_empresa_cod varchar(10),
primary key(cod)
);
#----------------------
create table setor(
cod int,
nome varchar(20),

primary key(cod)
); 
#-------------------
create table funcionario(
cod int,
nome varchar(20),
email varchar(25),
FK_setor_cod int,
cod_gerente int,
foreign key(FK_setor_cod) references setor(cod),
foreign key(cod_gerente) references funcionario(cod),

primary key(cod)
);
#---------------
create table Area(
cod varchar(10),
nome varchar(20),

FK_area_cod varchar(10),
primary key(cod)
);
#-------------
create table projeto(
cod int,
nome varchar(20),

FK_projeto_cod varchar(10),
primary key(cod)
);



#---------------------------------------------------------------------



create table funcionarioprojeto(
FK_funcionario_cod int,
FK_projeto_cod int,

foreign key(FK_funcionario_cod) references funcionario(cod),
foreign key(FK_projeto_cod) references projeto(cod),

primary key(FK_funcionario_cod, FK_projeto_cod)
);

#--------------

create table tel(
FK_setor_cod int,
tel varchar (11),
foreign key(FK_setor_cod) references setor(cod),

primary key (FK_setor_cod, tel)
);

#--------------

create table areaprojeto(
FK_area_cod int,
FK_projeto_cod int,

foreign key (FK_area_cod) references area(cod),
foreign key (FK_projeto_cod) references projeto(cod),

primary key (FK_area_cod, FK_projeto_cod )
);

#-------------

create table projetoempresa(
FK_projeto_cod int,
FK_empresa_cod int,

foreign key (FK_projeto_cod) references projeto(cod),
foreign key (FK_empresa_cod) references empresa(cod),

primary key (FK_empresa_cod, FK_projeto_cod )
);


