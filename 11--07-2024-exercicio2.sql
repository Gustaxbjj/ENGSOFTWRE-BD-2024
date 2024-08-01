Create database empresa;

use empresa;

create table profissional(
cod varchar(11),
nome varchar(100),
tel varchar(11),
FK_profissional_cod varchar(11),

primary key(cod)
);

create table servico(
cod int,
nome varchar(100),
FK_servico_cod varchar(12),

primary key(cod)
);

CREATE TABLE cliente (
    email VARCHAR(30),
    nome VARCHAR(100),
    FK_cliente_email VARCHAR(13),
    PRIMARY KEY (email)
);

create table clienteservico(

FK_cliente_email varchar(13),
FK_servico_cod int,

foreign key(FK_cliente_email) references cliente(email),
foreign key(FK_servico_cod) references servico(cod),

primary key(FK_cliente_email,FK_servico_cod)
);

create table profissionalservico(

FK_profissional_cod varchar(11),
FK_servico_cod int,

foreign key(FK_profissional_cod) references profissional(cod),
foreign key(FK_servico_cod) references servico(cod),

primary key(FK_profissional_cod,FK_servico_cod)
);

