use catalogo;

-- 1. Quais as gravadoras que não possuem CDs cadastrados com preço inferior a 80,00?
select grav_codigo, grav_nome 
from gravadora
where NOT EXISTS (
	select * 
    from CD
	where cd.grav_codigo= gravadora.grav_codigo
);

-- 2. Quais os CDs que têm o preço igual ao maior preço de cada gravadora?
select cd_nome from cd 
where cd_preco_venda in (
	select max(cd_preco_venda) 
	from cd
	group by grav_codigo
);
 
 
-- 3. Quais os CDs que têm preço inferior a qualquer outro CD da gravadora com código 10?


-- 4. Quais CDs têm o preço de venda menor que a média de preço de venda de todas as gravadoras?


/* 5. Liste os nomes dos CDs que tenham preço de venda maior que 10,00 reais ou a gravadora seja a de
código 3, ordenados por ordem alfabética decrescente dos nomes dos CDs. Exibir os nomes dos CDs em
iniciando com a letra maiúscula.*/


/*6. Exibir o nome, a data de lançamento e nome da gravadora dos CDs que possuem data de lançamento
em um intervalo de datas.*/


-- 7. Exibir o nome do Cd e de suas gravadoras, exiba também os CD´S que não possuam gravadoras.


-- 8. Listar quantas músicas que há em cada CD. (Exibir código do CD e a quantidade de música).


-- 9. Definir a qual categoria (cat_codigo) cada Cd pertence.


-- 10. Listar o nome do CD indicado para cada CD gravado.


/*12. Liste o código, nome, preço de venda, o tempo de duração total, o nome da gravadora do CD de
código 101.*/


-- 13. Listar o nome das gravadoras que possuem mais de 2 Cds relacionados a ela.


-- 14. Listar o nome da música de maior duração.


/*15. Listar o nome das músicas, a faixa e o nome do CD em que está a música, apenas os Cds de código
102 e 103.*/


/*16. Listar (um único resultado) os autores (código autor, nome autor) com código menor que 10 e as
músicas (código música, nome musica) com código menor que 15. (Utilizarem UNION).*/

