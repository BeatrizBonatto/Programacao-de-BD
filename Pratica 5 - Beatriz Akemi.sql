use catalogo;

-- 1. Quais as gravadoras que não possuem CDs cadastrados com preço inferior a 80,00?
select grav_codigo, grav_nome 
from gravadora
where not exists (
	select * 
    from cd
	where cd.grav_codigo= gravadora.grav_codigo
    and cd.cd_preco_venda < 80.00
);

-- 2. Quais os CDs que têm o preço igual ao maior preço de cada gravadora?
select cd_nome 
from cd 
where cd_preco_venda in (
	select max(cd_preco_venda) 
	from cd
	group by grav_codigo
);

-- 3. Quais os CDs que têm preço inferior a qualquer outro CD da gravadora com código 10?
select *
from cd c
where cd_preco_venda < any (
    select cd_preco_venda
    from cd
    where grav_codigo = 10 and cd.cd_codigo != c.cd_codigo
);

-- 4. Quais CDs têm o preço de venda menor que a média de preço de venda de todas as gravadoras?
select *
from cd
where cd_preco_venda < (
    select avg(cd_preco_venda)
    from cd
);

/* 5. Liste os nomes dos CDs que tenham preço de venda maior que 10,00 reais ou a gravadora seja a de
código 3, ordenados por ordem alfabética decrescente dos nomes dos CDs. Exibir os nomes dos CDs em
iniciando com a letra maiúscula.*/
select upper(cd_nome) as cd_nome_upper
from cd
where cd_preco_venda > 10.00 or grav_codigo = 3
order by cd_nome desc;

/* 6. Exibir o nome, a data de lançamento e nome da gravadora dos CDs que possuem data de lançamento
em um intervalo de datas.*/
select cd.cd_nome, cd.cd_data_lancamento, g.grav_nome
from cd
join gravadora g on cd.grav_codigo = g.grav_codigo
where cd_data_lancamento 
	between '2023-01-01' and '2023-12-31';

-- 7. Exibir o nome do CD e de suas gravadoras, exiba também os CDs que não possuam gravadoras.
select cd.cd_nome, coalesce(g.grav_nome, 'Sem gravadora') as gravadora
from cd
left join gravadora g on cd.grav_codigo = g.grav_codigo;

-- 8. Listar quantas músicas há em cada CD. (Exibir código do CD e a quantidade de músicas).
select cd_codigo, count(*) as quantidade_musicas
from faixa
group by cd_codigo;

-- 9. Definir a qual categoria (cat_codigo) cada CD pertence.
select cd.cd_codigo, cd_nome, cat_codigo
from cd
join cd_categoria on cd.cd_preco_venda 
	between cd_categoria.menor_preco and cd_categoria.maior_preco;

-- 10. Listar o nome do CD indicado para cada CD gravado.
select cd1.cd_nome as cd_nome, cd2.cd_nome as cd_indicado_para
from cd cd1
left join cd cd2 on cd1.cd_indicado = cd2.cd_codigo;

/* 12. Liste o código, nome, preço de venda, o tempo de duração total, o nome da gravadora do CD de
código 101.*/
select cd.cd_codigo, cd.cd_nome, cd.cd_preco_venda, sum(musica.mus_duracao) as duracao_total, gravadora.grav_nome
from cd
join faixa on cd.cd_codigo = faixa.cd_codigo
join musica on faixa.mus_codigo = musica.mus_codigo
join gravadora on cd.grav_codigo = gravadora.grav_codigo
where cd.cd_codigo = 101
group by cd.cd_codigo, cd.cd_nome, cd.cd_preco_venda, gravadora.grav_nome;

-- 13. Listar o nome das gravadoras que possuem mais de 2 CDs relacionados a ela.
select gravadora.grav_nome
from gravadora
join cd on gravadora.grav_codigo = cd.grav_codigo
group by gravadora.grav_codigo
having count(*) > 2;

-- 14. Listar o nome da música de maior duração.
select mus_nome
from musica
where mus_codigo = (
    select mus_codigo
    from musica
    order by mus_duracao desc
    limit 1
);

/* 15. Listar o nome das músicas, a faixa e o nome do CD em que está a música, apenas os Cds de código
102 e 103.*/
select m.mus_nome, f.faixa_numero, c.cd_nome
from musica m
join faixa f on m.mus_codigo = f.mus_codigo
join cd c on f.cd_codigo = c.cd_codigo
where c.cd_codigo in (102, 103);

/* 16. Listar (um único resultado) os autores (código autor, nome autor) com código menor que 10 e as
músicas (código música, nome musica) com código menor que 15. (Utilizarem UNION).*/
select aut_codigo as codigo, aut_nome as nome
from autor
where aut_codigo < 10
union
	select mus_codigo as codigo, mus_nome as nome
	from musica
	where mus_codigo < 15;
