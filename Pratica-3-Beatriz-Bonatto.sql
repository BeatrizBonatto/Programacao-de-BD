-- 1. Listar o nome da pessoa do empréstimo de número 1.
select p.pes_nome
from pessoa p, emprestimo e 
where p.pes_cod = e.pes_cod and e.emp_cod = 1;

-- 2. Listar todas as editoras ordenadas por ordem alfabética.
select * 
from editora
order by edi_descricao ;

-- 3. Exibir os títulos dos livros que começam com a letra A.
select * 
from livro
where liv_titulo like 'A%';

-- 4. Exibir os títulos dos livros que começam com a letra A e que tenham o ano de publicação maior que 2013.
select * 
from livro
where liv_titulo like 'A%' and anopublicacao > 2013;

-- 5. Exibir a quantidade de telefones que possuem DDD igual a 12.
select count(tel_cod) 
from telefone
where tel_ddd = 12;

-- 6. Listar a quantidade de empréstimo por aluno. (exiba: - pes_nro_matricula e - quantidade).
select a.pes_nro_matricula, count(e.pes_cod)
from aluno a, emprestimo e
where a.pes_cod = e.pes_cod 
group by a.pes_cod;

-- > trazendo os alunos sem numero matricula
select a.pes_nro_matricula, count(e.pes_cod)
from aluno a
right join emprestimo e
on a.pes_cod = e.pes_cod
group by a.pes_cod;

-- 7. Listar as editoras e os seus livros. (exiba: - edi_cod,edi_descricao, - liv_cod).
select e.edi_cod, e.edi_descricao , l.liv_cod
from editora e, livro l
where e.edi_cod = l.edi_cod;

-- 8. Listar os códigos dos exemplares (exe_cod), a descrição (exe_descricao) do empréstimo realizado em uma determinada data.
-- agrupar exemplares por data de emprestimo
select ex.exe_cod, ex.exe_descricao, e.emp_data_emprestimo
from emprestimo e, exemplar ex ;

select * from exemplar;
select * from item_emprestimo;
select * from emprestimo
-- 9. Listar os livros que possuam mais de 3 exemplares.


-- 10. Listar os professores (nome e titulação) com seus respectivos telefones. OBS: Listar também os professores que não tenham telefone.


-- 11. Listar o livro (liv_titulo) mais antigo da biblioteca


-- 12. Exibir o nome da pessoa que mais emprestou livro na biblioteca.


-- 13. Listar a quantidade de exemplares por livro.


-- 14. Listar os livros (liv_titulo) que começam com A e possuem ano de publicação maior que 2011.


-- 15. Listar os livros emprestados pela pessoa de código 1 (Listar liv_titulo)


-- 16. Criar mais 7 consultas (Perguntas e Respostas), seguindo as sintaxes apresentadas na imagem a seguir. OBS: Usar Union para representar o FULL OUTER JOIN.

