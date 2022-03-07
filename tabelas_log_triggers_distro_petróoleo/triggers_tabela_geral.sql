use atividade_final;

-- CRIANDO TABELA GERAL LOCALIDADE 

create table if not exists vendas_geral_localidade(
	ID_GERAL_LOCALIDADE INTEGER AUTO_INCREMENT PRIMARY KEY,
	REGIAO varchar (25),
    UF varchar (25),
    VOLUME float,
    ANO varchar (5),
    PRODUTO VARCHAR (15)
);

-- CRIAÇÃO DA TRIGGER TABELA GERAL LOCALIDADE

DELIMITER $
CREATE TRIGGER tgr_vendas_disel AFTER INSERT ON vendas_diesel_localidade
  FOR EACH ROW
     BEGIN
		 INSERT INTO vendas_geral_localidade (regiao, uf, volume, ano, produto) values (new.regiao, new.uf, new.VENDAS_DIESEL_MIL_M3, new.ano, 'DIESEL');
	 END$     
DELIMITER ;


DELIMITER $
CREATE TRIGGER tgr_vendas_gasolina AFTER INSERT ON vendas_gasolina_localidade
  FOR EACH ROW
     BEGIN
		 INSERT INTO vendas_geral_localidade (regiao, uf, volume, ano, produto) values (new.regiao, new.uf, new.VENDAS_GASOLINA_MIL_M3, new.ano, 'GASOLINA');
	 END$     
DELIMITER ;


DELIMITER $
CREATE TRIGGER tgr_vendas_glp AFTER INSERT ON vendas_glp_localidade
  FOR EACH ROW
     BEGIN
		 INSERT INTO vendas_geral_localidade (regiao, uf, volume, ano, produto) values (new.regiao, new.uf, new.VENDAS_GLP_MIL_M3, new.ano, 'GLP');
	 END$     
DELIMITER ;


DELIMITER $
CREATE TRIGGER tgr_vendas_gN AFTER INSERT ON vendas_gas_natural_localidade
  FOR EACH ROW
     BEGIN
		 INSERT INTO vendas_geral_localidade (regiao, uf, volume, ano, produto) values (new.regiao, new.uf, new.VENDAS_GAS_MILHÕES_DE_M3, new.ano, 'GN');
	 END$     
DELIMITER ;




create table if not exists vendas_geral_distribuidora(
	ID_GERAL_DISTRIBUIDORA INTEGER AUTO_INCREMENT PRIMARY KEY,
	DISTRIBUIDORAS varchar (25),
    PARTICIPACAO_DISTRIBUIDORAS varchar (25),
    PRODUTO VARCHAR (15)
);


DELIMITER $
CREATE TRIGGER tgr_diesel_distribuidora AFTER INSERT ON vendas_diesel_distribuidora
  FOR EACH ROW
     BEGIN
		 INSERT INTO vendas_geral_distribuidora(DISTRIBUIDORAS, PARTICIPACAO_DISTRIBUIDORAS, PRODUTO) values (new.DISTRIBUIDORAS, new.PARTICIPACAO_DISTRIBUIDORAS, 'DIESEL');
	 END$     
DELIMITER ;


DELIMITER $
CREATE TRIGGER tgr_gasolina_distribuidora AFTER INSERT ON vendas_gasolina_distribuidora
  FOR EACH ROW
     BEGIN
		 INSERT INTO vendas_geral_distribuidora(DISTRIBUIDORAS, PARTICIPACAO_DISTRIBUIDORAS, PRODUTO) values (new.DISTRIBUIDORAS, new.PARTICIPACAO_VENDAS, 'GASOLINA');
	 END$     
DELIMITER ;


DELIMITER $
CREATE TRIGGER tgr_glp_distribuidora AFTER INSERT ON vendas_glp_distribuidora
  FOR EACH ROW
     BEGIN
		 INSERT INTO vendas_geral_distribuidora(DISTRIBUIDORAS, PARTICIPACAO_DISTRIBUIDORAS, PRODUTO) values (new.DISTRIBUIDORAS, new.PARTICIPACAO_VENDAS, 'GLP');
	 END$     
DELIMITER ;