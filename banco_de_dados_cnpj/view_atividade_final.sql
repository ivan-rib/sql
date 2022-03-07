use atividade_final;


delimiter //
create procedure preco_medio()
	-- CREATE temporary table temporario_medio as select ano , uf, round (avg(preco_medio), 3) as preco_medio_gasolina, preco_medio_diesel, preco_medio_glp from preco_medio_gasolina, preco_medio_diesel, preco_medio_glp where  uf = 'São Paulo' group by ano;
    select * from preco_medio_g_d_p;
        // 

CREATE view preco_medio_g_d_p as select pmg.ano as ano_g, pmg.preco_medio_gasolina, pmg.uf as uf_g , pmd.ano as ano_d, pmd.preco_medio_diesel, pmd.uf as uf_d, pmglp.ano as ano_glp, pmglp.preco_medio_glp, pmglp.uf as uf_glp
			from preco_medio_gasolina pmg, preco_medio_diesel pmd ,preco_medio_glp pmglp;
				
                
call preco_medio();

select * from preco_medio_g_d_p;

drop procedure preco_medio;
drop view preco_medio_g_d_p;
select avg(preco_medio) from preco_medio_gasolina where ano = '2020' 



CREATE VIEW preco_medio_gasol as select ano, uf, round(avg(preco_medio_gasolina), 3) as preco_medio_gasolina from preco_medio_gasolina WHERE uf = 'São Paulo'group by ano;

CREATE VIEW preco_medio_die as select ano, uf, round(avg(preco_medio_diesel), 3) as preco_medio_diesel from preco_medio_diesel WHERE uf = 'São Paulo'group by ano;

CREATE VIEW preco_medio_gl as select ano, uf, round(avg(preco_medio_glp), 3) as preco_medio_glp from preco_medio_glp WHERE uf = 'São Paulo' group by ano;

select * from preco_medio_die ;
select * from preco_medio_gl ;
SELECT * from preco_medio_gasol;

select * from preco_medio_die
natural left join preco_medio_gl
natural left join preco_medio_gasol;


CREATE VIEW preco_medio_gl_teste as select ano, uf, round(avg(preco_medio_glp), 3) as preco_medio_glp from preco_medio_glp WHERE uf = all;
select * from preco_medio_gl_teste;
drop view preco_medio_gl_teste;
