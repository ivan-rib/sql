create database universidade_soulcode;
use universidade_soulcode;

CREATE TABLE IF NOT EXISTS curso(
	numcurso integer auto_increment,
    nome varchar(50)  not null,
    totalcreditos varchar(2) not null,
    constraint curso_pkey primary key (numcurso) 
);

insert into curso (nome, totalcreditos) values
	("Ciência da computação", "80"),
    ("Engenharia de produção", "80"),
    ("Análise e desenvolvimento de sistemas", "70"),
    ("Pedagogia", "60");      
  
CREATE TABLE IF NOT EXISTS aluno(
	numaluno integer auto_increment,
    nome varchar(50) not null,
    endereco varchar(100) not null,
    cidade varchar(10) not null,
    telefone varchar(14) not null,
    constraint aluno_pkey primary key (numaluno)
    
);


insert into aluno (nome, endereco, cidade, telefone) values
	("Marcos João Casanova", "Rua Maria Teresa", "São Paulo", "11 99999-8888"),
    ("Ailton Castro", "Estrada do bairro", "São Paulo", "11 99999-7777"),
    ("Edvaldo Carlos Silva", "Rua Virginia Modesto", "São Paulo", "11 9888-7777"),
    ("Ivan Ribeiro Araujo", "Rua da Matriz", "São Paulo", "11 9888-6666");    

CREATE TABLE IF NOT EXISTS professor(
	numprof integer auto_increment,
    nome varchar(50) not null,
    areapesquisa varchar(30) not null,
    constraint professor_pkey primary key (numprof)
);

insert into professor (nome, areapesquisa) values
	("Ramon Travanti", "Matemática"),
    ("Marcos Salvador", "Dados"),
    ("Abgair", "Desenvolvimento de Software");      

CREATE TABLE IF NOT EXISTS disciplina(
	numdisp integer auto_increment,
    nome varchar(50) not null,
    quanticreditos varchar(2) not null,
    constraint disciplina_pkey primary key (numdisp)
);

insert into disciplina (nome, quanticreditos) values
	("Banco de Dados", "4"),
    ("Engenharia de Software", "5"),
    ("Cálculo numérico", "6");       

CREATE TABLE IF NOT EXISTS matricula(
	codmatricula integer,
    codaluno integer,	
    constraint matricula_fkey foreign key (codmatricula) references curso(numcurso),
    constraint matricula_fkey1 foreign key (codaluno) references aluno(numaluno)
    );
    
insert into matricula (codmatricula, codaluno) values
	(1, 1),
    (2, 2),
    (3, 3),
    (3, 4);
    
    

CREATE TABLE IF NOT EXISTS aula(
	semestre varchar(15),
    nota numeric(10, 2),
    codaluno integer,
    codprof integer,
    coddisp integer,
    constraint aula_fkey foreign key (codaluno) references aluno(numaluno),
    constraint aula_fkey1 foreign key (codprof) references professor(numprof),
    constraint aula_fkey2 foreign key (coddisp) references disciplina(numdisp)
    );
       
insert into aula (semestre, nota, codaluno, codprof, coddisp) values
	("1ºsemestre 1998", 7, 1, 1, 1),
    ("1ºsemestre 1998", 5, 2, 2, 2),
    ("1ºsemestre 1998", 6, 3, 3, 3),
    ("1ºsemestre 1998", 9, 4, 1, 1);

CREATE TABLE IF NOT EXISTS contem(
	codcurso integer,
    coddisp_contem integer,    
	constraint contem_fkey foreign key (codcurso) references curso(numcurso),
    constraint contem_fkey1 foreign key (coddisp_contem) references disciplina(numdisp)
);

insert into contem(codcurso, coddisp_contem) values
	(1, 1),
    (1, 2),
    (1, 3);   
    
    
