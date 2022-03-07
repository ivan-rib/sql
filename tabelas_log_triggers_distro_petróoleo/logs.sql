use atividade_final;

-- ----------------------------------------
-- registro_log_vendas_diesel_localidade
-- ----------------------------------------

create table if not exists registro_log_vendas_diesel_localidade(
	usuario_log varchar (45) not null,
	data_log text,
	tipo_registro text
    )
    
delimiter $
create trigger tgr_diesel_localidade_insert after insert on vendas_diesel_localidade
	for each row
		begin
			insert into registro_log_vendas_diesel_localidade(usuario_log, data_log,tipo_registro) values
		    (current_user,current_timestamp,'Item inserido de forma automatizada pelo GCloud');
		END $
        
-- ----------------------------------------
-- registro_log_vendas_diesel_distribuidora
-- ----------------------------------------    
        
        
create table if not exists registro_log_vendas_diesel_distribuidora(
	usuario_log varchar (45) not null,
	data_log text,
	tipo_registro text
    )
    
delimiter $
create trigger tgr_diesel_distribuidora_insert after insert on vendas_diesel_distribuidora
	for each row
		begin
			insert into registro_log_vendas_diesel_distribuidora(usuario_log, data_log,tipo_registro) values
		    (current_user,current_timestamp,'Item inserido de forma automatizada pelo GCloud');
		END $
        
	
-- ----------------------------------------
-- registro_log_vendas_gasolina_localidade
-- ----------------------------------------  

create table if not exists registro_log_vendas_gasolina_localidade(
	usuario_log varchar (45) not null,
	data_log text,
	tipo_registro text
    )
    
delimiter $
create trigger tgr_gasolina_localidade_insert after insert on vendas_gasolina_localidade
	for each row
		begin
			insert into registro_log_vendas_gasolina_localidade(usuario_log, data_log,tipo_registro) values
		    (current_user,current_timestamp,'Item inserido de forma automatizada pelo GCloud');
		END $        
        
drop trigger tgr_gasolina_localidade_insert;
        
-- ----------------------------------------
-- registro_log_vendas_gasolina_distribuidora
-- ---------------------------------------- 

create table if not exists registro_log_vendas_gasolina_distribuidora(
	usuario_log varchar (45) not null,
	data_log text,
	tipo_registro text
    )
    
delimiter $
create trigger tgr_gasolina_distribuidora_insert after insert on vendas_gasolina_distribuidora
	for each row
		begin
			insert into registro_log_vendas_gasolina_distribuidora(usuario_log, data_log,tipo_registro) values
		    (current_user,current_timestamp,'Item inserido de forma automatizada pelo GCloud');
		END $      

-- ----------------------------------------
-- registro_log_vendas_glp_localidade
-- ----------------------------------------


create table if not exists registro_log_vendas_glp_localidade(
	usuario_log varchar (45) not null,
	data_log text,
	tipo_registro text
    )
    
delimiter $
create trigger tgr_glp_localidade_insert after insert on vendas_glp_localidade
	for each row
		begin
			insert into registro_log_vendas_glp_localidade(usuario_log, data_log,tipo_registro) values
		    (current_user,current_timestamp,'Item inserido de forma automatizada pelo GCloud');
		END $  

-- ----------------------------------------
-- registro_log_vendas_glp_distribuidoras
-- ----------------------------------------

create table if not exists registro_log_vendas_glp_distribuidora(
	usuario_log varchar (45) not null,
	data_log text,
	tipo_registro text
    )
    
delimiter $
create trigger tgr_glp_distribuidora_insert after insert on vendas_glp_distribuidora
	for each row
		begin
			insert into registro_log_vendas_glp_distribuidora(usuario_log, data_log,tipo_registro) values
		    (current_user,current_timestamp,'Item inserido de forma automatizada pelo GCloud');
		END $  



-- ----------------------------------------
-- registro_log_vendas_gas_natural_localidade
-- ----------------------------------------

create table if not exists registro_log_vendas_gas_natural_localidade(
	usuario_log varchar (45) not null,
	data_log text,
	tipo_registro text
    )
    
delimiter $
create trigger tgr_natural_localidade_insert after insert on vendas_gas_natural_localidade
	for each row
		begin
			insert into registro_log_vendas_gas_natural_localidade(usuario_log, data_log,tipo_registro) values
		    (current_user,current_timestamp,'Item inserido de forma automatizada pelo GCloud');
		END $  


-- ----------------------------------------
-- registro_log_consumo_natural_localidade
-- ----------------------------------------

create table if not exists registro_log_consumo_natural_localidade(
	usuario_log varchar (45) not null,
	data_log text,
	tipo_registro text
    )
    
delimiter $
create trigger tgr_Cconsumo_natural_insert after insert on consumo_gas_natural_localidade
	for each row
		begin
			insert into registro_log_consumo_natural_localidade(usuario_log, data_log,tipo_registro) values
		    (current_user,current_timestamp,'Item inserido de forma automatizada pelo GCloud');
		END $ 



