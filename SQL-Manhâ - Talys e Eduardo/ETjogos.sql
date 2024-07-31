CREATE DATABASE etjogos;
USE etjogos;

create table usuario(
cpf varchar(11) primary key,
senha varchar(23),
login varchar(12),
email varchar(30)
);

create table jogos(
cod varchar(11),
descricao varchar(23),
genero varchar(12),
lancamento varchar(12),
 primary key(cod)
);

create table produtos(
cod varchar(11) primary key,
descricao varchar(23),
nome varchar(12),
preco varchar(30),
FK_cod_jogos varchar(11),
foreign key(FK_cod_jogos) references jogos(cod)
);


create table pagamento(
cod varchar(11) primary key,
nome varchar(23),
id varchar(12)
);
#----------------------------------

create table usuariojogos(
FK_cpf_usuario varchar(11),
FK_cod_jogos varchar(11),
foreign key(FK_cpf_usuario) references usuario(cpf),
foreign key(FK_cod_jogos) references jogos(cod),
primary key(FK_cod_jogos,FK_cpf_usuario)
);

create table usuariosprodutospagamento(
FK_cpf_usuario varchar(11),
FK_cod_produtos varchar(11),
FK_cod_pagamento varchar(11),
foreign key(FK_cpf_usuario) references usuario(cpf),
foreign key(FK_cod_produtos) references produtos(cod),
foreign key(FK_cod_pagamento) references pagamento(cod),
primary key(FK_cpf_usuario,FK_cod_produtos,FK_cod_pagamento)
)
