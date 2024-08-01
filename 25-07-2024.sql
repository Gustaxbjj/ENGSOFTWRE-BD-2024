create database hospital;
use hospital;


CREATE TABLE medico(
esp VARCHAR(10),
crm INT,
nome VARCHAR(14),

PRIMARY KEY(crm)
);




CREATE table ala(
id int primary key,
nome varchar(26)
);

CREATE TABLE quarto(
num INT,
andar VARCHAR(29),

FK_id_ala int,
FOREIGN KEY (FK_id_ala) REFERENCES	ala(id),

PRIMARY KEY(num)
);


CREATE TABLE paciente(
	nome VARCHAR(20),
	cpf INT,
	FK_num_quarto int,
    entrada DATE,
    saida DATE,
    
	FOREIGN KEY(FK_num_quarto)references quarto(num),

	PRIMARY KEY(cpf)
);
#------------------------------------------------- EM CIMA SÃO AS ENTIDADES	

CREATE TABLE enfermeira(
cre INT,
nome VARCHAR (23),

FK_enfermeira varchar(29),
foreign key(FK_enfermeira_cre) references enfermeira(cre),

PRIMARY KEY(cre)
);
CREATE TABLE medicopaciente(
FK_crm_medico int,
FK_cpf_paciente int,
data varchar(12),
hora varchar(34),

FOREIGN KEY(FK_crm_medico) references medico(crm),
FOREIGN KEY(FK_cpf_paciente) references paciente(cpf),

PRIMARY KEY(FK_crm_medico,FK_cpf_paciente)
);

CREATE TABLE enfermeiraAla(
FK_id_ala int,
FK_cre_enfermeira int,

FOREIGN KEY(FK_id_ala) references ala(id),
FOREIGN KEY(FK_cre_enfermeira) references enfermeira(cre),

PRIMARY KEY(FK_id_ala,FK_cre_enfermeira)
);