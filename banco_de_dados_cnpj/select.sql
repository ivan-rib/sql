use NOVO_MYDB2;

-- SELECT m.descricao as municipio, c.EMPRESAS_cnpj as cnpj, c.CNPJ_ordem , c.CNPJ_dv, c.situacao_cadastral,c.data_situacao_cadastral,c.data_de_inicio_atividade,c.uf, a.porte_empresa, a.razao_social ,b.descricao as naturezas_juridica from ESTABELECIMENTOS c, EMPRESAS a, NATUREZAS_JURIDICAS b, MUNICIPIOS m,
-- CNAEs e	where b.codigo = a.NATUREZAS_JURIDICAS_codigo and a.cnpj = c.EMPRESAS_cnpj and m.codigo = c.MUNICIPIOS_codigo; 

select c.EMPRESAS_cnpj as cnpj, c.CNPJ_ordem , c.CNPJ_dv, a.razao_social, a.porte_empresa, d.descricao as cnae, c.situacao_cadastral, c.data_situacao_cadastral, c.data_de_inicio_atividade, b.descricao as naturezas_juridica, m.descricao as municipio, c.uf 
	from ESTABELECIMENTOS c, EMPRESAS a, NATUREZAS_JURIDICAS b, MUNICIPIOS m, CNAEs d 
		where b.codigo = a.NATUREZAS_JURIDICAS_codigo and a.cnpj = c.EMPRESAS_cnpj and m.codigo = c.MUNICIPIOS_codigo 
			and c.CNAEs_Primario = d.codigo
				and c.CNAEs_Primario = 8593700;




create view select_cassandra as select  c.EMPRESAS_cnpj as cnpj, c.CNPJ_ordem , c.CNPJ_dv, a.razao_social, a.porte_empresa, d.descricao as cnae, c.situacao_cadastral, c.data_situacao_cadastral, c.data_de_inicio_atividade, b.descricao as naturezas_juridica, m.descricao as municipio, c.uf from ESTABELECIMENTOS c, EMPRESAS a, NATUREZAS_JURIDICAS b, MUNICIPIOS m, CNAEs d where b.codigo = a.NATUREZAS_JURIDICAS_codigo and a.cnpj = c.EMPRESAS_cnpj and m.codigo = c.MUNICIPIOS_codigo 
and c.CNAEs_Primario = d.codigo;


select c.codigo, c.descricao , b.razao_social, a.situacao_cadastral, b.porte_empresa, m.descricao 
	from ESTABELECIMENTOS a, EMPRESAS b, MUNICIPIOS m, CNAEs c 
		where  c.codigo = 8593700 and a.CNAEs_Primario = c.codigo;
        
        
create view ensino_idiomas as select c.EMPRESAS_cnpj as cnpj, c.CNPJ_ordem , c.CNPJ_dv, a.razao_social, a.porte_empresa, d.descricao as cnae, c.situacao_cadastral, c.data_situacao_cadastral, c.data_de_inicio_atividade, b.descricao as naturezas_juridica, m.descricao as municipio, c.uf 
	from ESTABELECIMENTOS c, EMPRESAS a, NATUREZAS_JURIDICAS b, MUNICIPIOS m, CNAEs d 
		where b.codigo = a.NATUREZAS_JURIDICAS_codigo and a.cnpj = c.EMPRESAS_cnpj and m.codigo = c.MUNICIPIOS_codigo 
			and c.CNAEs_Primario = d.codigo
				and c.CNAEs_Primario = 8593700;                

                
create view postos_gasolina as select c.EMPRESAS_cnpj as cnpj, c.CNPJ_ordem , c.CNPJ_dv, a.razao_social, a.porte_empresa, d.descricao as cnae, c.situacao_cadastral, c.data_situacao_cadastral, c.data_de_inicio_atividade, b.descricao as naturezas_juridica, m.descricao as municipio, c.uf 
	from ESTABELECIMENTOS c, EMPRESAS a, NATUREZAS_JURIDICAS b, MUNICIPIOS m, CNAEs d 
		where b.codigo = a.NATUREZAS_JURIDICAS_codigo and a.cnpj = c.EMPRESAS_cnpj and m.codigo = c.MUNICIPIOS_codigo 
			and c.CNAEs_Primario = d.codigo
				and c.CNAEs_Primario = 4731800;
        
create view comercio_varejista as select c.EMPRESAS_cnpj as cnpj, c.CNPJ_ordem , c.CNPJ_dv, a.razao_social, a.porte_empresa, d.descricao as cnae, c.situacao_cadastral, c.data_situacao_cadastral, c.data_de_inicio_atividade, b.descricao as naturezas_juridica, m.descricao as municipio, c.uf 
	from ESTABELECIMENTOS c, EMPRESAS a, NATUREZAS_JURIDICAS b, MUNICIPIOS m, CNAEs d 
		where b.codigo = a.NATUREZAS_JURIDICAS_codigo and a.cnpj = c.EMPRESAS_cnpj and m.codigo = c.MUNICIPIOS_codigo 
			and c.CNAEs_Primario = d.codigo
				and c.CNAEs_Primario = 4729602;
                

create view restaurante_similares as select c.EMPRESAS_cnpj as cnpj, c.CNPJ_ordem , c.CNPJ_dv, a.razao_social, a.porte_empresa, d.descricao as cnae, c.situacao_cadastral, c.data_situacao_cadastral, c.data_de_inicio_atividade, b.descricao as naturezas_juridica, m.descricao as municipio, c.uf 
	from ESTABELECIMENTOS c, EMPRESAS a, NATUREZAS_JURIDICAS b, MUNICIPIOS m, CNAEs d 
		where b.codigo = a.NATUREZAS_JURIDICAS_codigo and a.cnpj = c.EMPRESAS_cnpj and m.codigo = c.MUNICIPIOS_codigo 
			and c.CNAEs_Primario = d.codigo
				and c.CNAEs_Primario = 5611201;
                
                
create view varejista_bebidas as select c.EMPRESAS_cnpj as cnpj, c.CNPJ_ordem , c.CNPJ_dv, a.razao_social, a.porte_empresa, d.descricao as cnae, c.situacao_cadastral, c.data_situacao_cadastral, c.data_de_inicio_atividade, b.descricao as naturezas_juridica, m.descricao as municipio, c.uf 
	from ESTABELECIMENTOS c, EMPRESAS a, NATUREZAS_JURIDICAS b, MUNICIPIOS m, CNAEs d 
		where b.codigo = a.NATUREZAS_JURIDICAS_codigo and a.cnpj = c.EMPRESAS_cnpj and m.codigo = c.MUNICIPIOS_codigo 
			and c.CNAEs_Primario = d.codigo
				and c.CNAEs_Primario = 4723700;
                
create view bares as select c.EMPRESAS_cnpj as cnpj, c.CNPJ_ordem , c.CNPJ_dv, a.razao_social, a.porte_empresa, d.descricao as cnae, c.situacao_cadastral, c.data_situacao_cadastral, c.data_de_inicio_atividade, b.descricao as naturezas_juridica, m.descricao as municipio, c.uf 
	from ESTABELECIMENTOS c, EMPRESAS a, NATUREZAS_JURIDICAS b, MUNICIPIOS m, CNAEs d 
		where b.codigo = a.NATUREZAS_JURIDICAS_codigo and a.cnpj = c.EMPRESAS_cnpj and m.codigo = c.MUNICIPIOS_codigo 
			and c.CNAEs_Primario = d.codigo
				and c.CNAEs_Primario = 5611202;
                


        
select * from ensino_idiomas;
        
        

        
        
        
        
        


