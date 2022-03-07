CREATE DATABASE CLINICA_BOA_SAUDE;
USE CLINICA_BOA_SAUDE;

#CRIANDO PACIENTE (CODPAC, NOME, ENDEREÇO, TELEFONE)

CREATE TABLE IF NOT EXISTS PACIENTE (
	codpac integer auto_increment,
    nome varchar(50) not null,
    endereço varchar(100) not null, 
    telefone varchar(14) not null,
    constraint paciente_pkey primary key (codpac)    
);

INSERT INTO PACIENTE(nome, endereço, telefone) values
	("João","Rua 1 ","9809-9756"),
	("José ","Rua B ","3621-8978"),
	("Maria ","Rua 10 ","4567-9872"),
	("Joana ","Rua J ","3343-9889");
    
 #CRIANDO MÉDICO (CRM, NOME, ENDEREÇO, TELEFONE, ESPECIALIDADE)
 CREATE TABLE IF NOT EXISTS MEDICO(
	crm varchar(10) not null,
    nome varchar(50)  not null,
    endereço varchar(100) not null,
    telefone varchar(14) not null,
    especialidade varchar(50) not null,
    constraint medico_pkey primary key (crm)    
);

ALTER TABLE MEDICO ADD COLUMN ESPECIALIDADE VARCHAR(50);
INSERT INTO MEDICO (crm, nome, endereço, telefone, especialidade) values
	("18739", "Elias", "Rua X", "8738-1221", "Pediatria"),
	("7646", "Ana", "Av Z", "7829-1233", "Obstetricia"),
	("39872", "Pedro", "Tv H", "9888-2333", "Oftalmologia");
#CRIANDO CONVÊNIO (codconv, nome)


CREATE TABLE IF NOT EXISTS CONVENIO(
	codconv integer not null,
    nome varchar(30) not null,
    constraint convenio_pkey primary key(codconv)
);
INSERT INTO CONVENIO(codconv, nome) values 
	("189","Cassi"),
	("232","Unimed"),
	("454","Santa Casa"),
	("908","Copasa"),
	("435","São Lucas");

#CONSULTA (CODIGO CONSULTA, DATA, HORÁRIO, MEDICO, PACIENTE, CONVENIO, PORCENT)

CREATE TABLE IF NOT EXISTS CONSULTA(
	codconsulta integer auto_increment,
    dataconsulta varchar(10) not null,
    horario varchar(10) not null,
    crmmedico varchar(10), #váriavel que receberá a chave do médico (crm)
    codpaciente integer, #váriavel que receberá o paciente (codpac)
    codconvenio integer, #váriavel que receberá CODCONV (codconv)
    porcent varchar(10) not null,
    constraint consulta_pkey primary key (codconsulta),
    #CHAVES ESTRANGEIRAS
    constraint consulta_fkey foreign key (crmmedico) references MEDICO(crm),
    constraint consulta_fkey1 foreign key (codpaciente) references PACIENTE(codpac),
    constraint consulta_fkey2 foreign key (codconvenio) references CONVENIO (codconv)
);
ALTER TABLE CONSULTA ADD COLUMN crm VARCHAR(10);

INSERT INTO CONSULTA(dataconsulta, horario, crm, codpaciente, codconvenio, porcent) values
	("10/05/2013","10:00","18739","1","189","5"),
	("12/05/2013","10:00","7646","2","232","10"),
	("12/05/2013","11:00","18739","3","908","15"),
	("13/05/2013","10:00","7646","4","435","13"),
	("14/05/2013","13:00","7646","2","232","10"),
	("14/05/2013","14:00","39872","1","189","5");  

#TABELA ATENDE (MEDICO, CONVENIO)
CREATE TABLE IF NOT EXISTS ATENDE(
	crm varchar(10),
    codconv integer,
    #CHAVE PRIMARIA
    constraint atende_pkey primary key (crm, codconv),    
    #CHAVE estrangeira
    constraint atende_fkey foreign key (crm) references MEDICO(crm),
    constraint atende_fkey2 foreign key (codconv) references CONVENIO(codconv)      
);
INSERT INTO ATENDE (crm, codconv) values
	("18739","189"),
    ("18739","908"),
    ("7646","232"),
    ("39872","189");
#POSSUI (PACIENTE, CONVENIO, TIPO, VENCIMENTO)

CREATE TABLE IF NOT EXISTS POSSUI(
	codpac integer,
    codconv integer,
    tipo char(2),
    vencimento varchar(10),
    
    constraint possui_pkey primary key (codpac,codconv),
    constraint possui_fkey foreign key (codpac) references PACIENTE(codpac),
    constraint possui_fkey2 foreign key (codconv) references CONVENIO(codconv)
);

insert into Possui (codpac, codconv, tipo, vencimento) values
	("1","189","E","31/12/2016"),
    ("2","232","S","31/12/2014"),
    ("3","908","S","31/12/2017"),
    ("4","435","E","31/12/2016"),
    ("1","232","S","31/12/2015");

#questão 1

select * from PACIENTE;

UPDATE PACIENTE SET endereço = "Rua do bonde" WHERE codpac = 1;

#QUESTÃO 2

UPDATE PACIENTE SET endereço = "Rua z", telefone = "9838-7867" WHERE crm = 18739;

#Questão 3

UPDATE POSSUI SET TIPO = "S";

#QUESTÃO 4 

DELETE FROM POSSUI where codpac = 2;

#QUESTÃO 5

delete from consulta where dataconsulta = "14/05/2013" and horario = "14:00";

#QUESTÃO 6

ALTER TABLE MEDICO RENAME COLUMN ESPECIALIDADE TO ESPECIALIZACAO;

#QUESTÃO 7

ALTER TABLE CONVENIO MODIFY NOME VARCHAR(200);

#QUESTÃO 8

ALTER TABLE CONSULTA ADD COLUMN VALOR VARCHAR(8) DEFAULT "RS 100,00";
UPDATE CONSULTA SET VALOR = "RS100,00";



