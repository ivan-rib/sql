create database OLDTech_Ltda_filial;
use OLDTech_Ltda_filial;

create table if not exists vendas_filial(
	nota_fiscal  int auto_increment primary key,
    vendedor varchar(50),
    total float
    );
    