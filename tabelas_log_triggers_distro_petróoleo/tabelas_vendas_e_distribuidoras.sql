use atividade_final;

create table if not exists vendas_diesel_localidade(
	REGIAO varchar (25),
    UF varchar (25),
    VENDAS_DIESEL_MIL_M3 float,
    ANO varchar (5)
);     


 
create table if not exists vendas_diesel_distribuidora(
	DISTRIBUIDORAS varchar (25),
    PARTICIPACAO_DISTRIBUIDORAS float    
);


create table if not exists vendas_gasolina_localidade(
	REGIAO varchar (25),
    UF varchar (25),
    ANO varchar (5),
    VENDAS_GASOLINA_MIL_M3 float    
);

create table if not exists vendas_gasolina_distribuidora(
	DISTRIBUIDORAS varchar (25),
    PARTICIPACAO_VENDAS float    
);


create table if not exists vendas_glp_localidade(
	REGIAO varchar (25),
    UF varchar (25),
    VENDAS_GLP_MIL_M3 float,
    ANO varchar (5)
);


create table if not exists vendas_glp_distribuidora(
	DISTRIBUIDORAS varchar (25),
    PARTICIPACAO_VENDAS float    
);


create table if not exists vendas_gas_natural_localidade(
	REGIAO varchar (25),
    UF varchar (25),
    VENDAS_GAS_MILHÕES_DE_M3 float,
    ANO varchar (5)
);

create table if not exists consumo_gas_natural_localidade(
	REGIAO varchar (25),
    UF varchar (25),
    CONSUMO_GAS_MIL_DE_M3 float,
    ANO varchar (5)
);


