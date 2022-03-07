use NOVO_MYDB2;

-- --------
create table if not exists registro_log_CNAEs(
	usuario_log varchar (45) not null,
	data_log text,
	tipo_registro text
    )
    
delimiter $
create trigger tgr_CNAEs_insert after insert on CNAEs
	for each row
		begin
			insert into registro_log_CNAEs(usuario_log, data_log,tipo_registro) values
		    (current_user,current_timestamp,'Item inserido de forma automatizada pelo GCloud');
		END $

create table if not exists registro_log_municipios(
	usuario_log varchar (45) not null,
	data_log text,
	tipo_registro text
    )
    
delimiter $
create trigger tgr_municipios_insert after insert on MUNICIPIOS
	for each row
		begin
			insert into registro_log_municipios(usuario_log, data_log,tipo_registro) values
		    (current_user,current_timestamp,'Item inserido de forma automatizada pelo GCloud');
		END $
        
create table if not exists registro_log_natureza_jud(
	usuario_log varchar (45) not null,
	data_log text,
	tipo_registro text
    )
    
delimiter $
create trigger tgr_juridicas_insert after insert on NATUREZAS_JURIDICAS
	for each row
		begin
			insert into registro_log_natureza_jud(usuario_log, data_log,tipo_registro) values
		    (current_user,current_timestamp, 'Item inserido de forma automatizada pelo GCloud');
		END $
    
create table if not exists registro_log_empresas(
	usuario_log varchar (45) not null,
	data_log text,
	tipo_registro text
    )
    
    
delimiter $
create trigger tgr_empresas_insert after insert on EMPRESAS
	for each row
		begin
			insert into registro_log_empresas(usuario_log, data_log,tipo_registro) values
		    (current_user,current_timestamp, 'Item inserido de forma automatizada pelo GCloud');
		END $
        
        
insert into EMPRESAS(cnpj, razao_social, NATUREZAS_JURIDICAS_codigo, qualificacao_do_responsavel, capital_social,porte_empresa,ente_federativo_responsavel) values
					(244749587,'GABRIEL JUNIOR 11236632460',2135,50,"5000.00",1,"");

select * from EMPRESAS;

alter table EMPRESAS WHERE natureza_juridica SET NATUREZAS_JURIDICAS_codigo











