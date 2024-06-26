insert into pessoa (pes_cod,pes_nome,cpf,rg,email) values(1,'Ana',11111111111,2894587,'ana@gmail.com');
insert into pessoa (pes_cod,pes_nome,cpf,rg,email) values(2,'Raul',22222222222,3894587,'raul@gmail.com');
insert into pessoa (pes_cod,pes_nome,cpf,rg,email) values(3,'Laura',33333333333,4894587,'laura@gmail.com');
insert into pessoa (pes_cod,pes_nome,cpf,rg,email) values(4,'Juliana',44444444444,5894587,'pasquini.juliana@gmail.com');
insert into pessoa (pes_cod,pes_nome,cpf,rg,email) values(5,'Adriana',55555555555,6894587,'adriana@gmail.com');

insert into professor (pes_cod,titulacao) values (4,'mestrado');
insert into professor (pes_cod,titulacao) values (5,'doutorado');


insert into aluno (pes_cod,pes_nro_matricula) values (1,34567890);
insert into aluno (pes_cod,pes_nro_matricula) values (2,34567891);
insert into aluno (pes_cod,pes_nro_matricula) values (3,34567892);


insert into telefone (tel_cod,tel_numero,tip_descricao,tel_ddd,pes_cod) values (1,39234444,'RESIDENCIAL',12,1);
insert into telefone (tel_cod,tel_numero,tip_descricao,tel_ddd,pes_cod) values (2,39244446,'PROFISSIONAL',12,2);
insert into telefone (tel_cod,tel_numero,tip_descricao,tel_ddd,pes_cod) values (3,39244447,'PROFISSIONAL',12,4);
insert into telefone (tel_cod,tel_numero,tip_descricao,tel_ddd,pes_cod) values (4,39244447,'PROFISSIONAL',12,5);

insert into editora (edi_cod,edi_descricao) values (1,'Campus');
insert into editora (edi_cod,edi_descricao) values (2,'Pearson');


insert into livro values (1,'Sistema de BD',3,'2008',2);
insert into livro  values (2,'Banco de Dados',1,'2006',1);
insert into livro  values (3,'LP',1,'2006',1);
insert into livro  values (4,'Projeto de BD',1,'2009',2);
insert into livro  values (5,'Eng.Software',2,'2008',1);
insert into livro values (6,'Marketing',2,'2008',1);
insert into livro  values (7,'Projeto de Redes',2,'2008',1);


insert into exemplar values (5,1,1,null);
insert into exemplar values (6,2,1,null);
insert into exemplar values(7,3,1,null);
insert into exemplar values(8,4,1,null);

insert into exemplar values(1,1,2,null);
insert into exemplar values(2,2,2,null);
insert into exemplar values(3,3,2,null);
insert into exemplar values(4,4,2,null);


insert into exemplar values(9,1,3,null);
insert into exemplar values(10,2,3,null);
insert into exemplar values(11,3,3,null);
insert into exemplar values(12,4,3,null);

insert into exemplar values(13,1,4,null);
insert into exemplar values(14,2,4,null);
insert into exemplar values(15,3,4,null);
insert into exemplar values(16,4,4,null);

insert into exemplar values(17,1,5,null);
insert into exemplar values(18,2,5,null);
insert into exemplar values(19,3,5,null);
insert into exemplar values(20,4,5,null);

insert into EMPRESTIMO values
(1,1,date_format('2015-11-03','%Y-%m-%d'),date_format('2015-11-18','%Y-%m-%d')),
(2,1,date_format('2015-11-03','%Y-%m-%d'),date_format('2015-11-18','%Y-%m-%d')),
(3,2,date_format('2015-11-03','%Y-%m-%d'),date_format('2015-11-18','%Y-%m-%d')),
(4,2,date_format('2015-11-03','%Y-%m-%d'),date_format('2015-11-18','%Y-%m-%d')),
(5,3,date_format('2015-11-03','%Y-%m-%d'),date_format('2015-11-18','%Y-%m-%d')),
(6,3,date_format('2015-11-03','%Y-%m-%d'),date_format('2015-11-18','%Y-%m-%d')),
(7,4,date_format('2015-11-03','%Y-%m-%d'),date_format('2015-11-18','%Y-%m-%d')),
(8,4,date_format('2015-11-03','%Y-%m-%d'),date_format('2015-11-18','%Y-%m-%d')),
(9,5,date_format('2015-11-03','%Y-%m-%d'),date_format('2015-11-18','%Y-%m-%d')),
(10,5,date_format('2015-11-03','%Y-%m-%d'),date_format('2015-11-18','%Y-%m-%d')),
(11,5,date_format('2015-11-03','%Y-%m-%d'),date_format('2015-11-18','%Y-%m-%d')),
(12,5,date_format('2015-11-03','%Y-%m-%d'),date_format('2015-11-18','%Y-%m-%d')),
(13,5,date_format('2015-10-10','%Y-%m-%d'),date_format('2015-10-25','%Y-%m-%d'));

insert into item_emprestimo values(1,1);
insert into item_emprestimo values(1,2);
insert into item_emprestimo values(2,4);
insert into item_emprestimo values(3,1);
insert into item_emprestimo values(4,2);
insert into item_emprestimo values(5,2);
insert into item_emprestimo values(6,1);
insert into item_emprestimo values(7,2);
insert into item_emprestimo values(8,2);
insert into item_emprestimo values(9,2);
insert into item_emprestimo values(10,3);
insert into item_emprestimo values(11,6);
insert into item_emprestimo values(12,6);
insert into item_emprestimo values(13,7);
insert into item_emprestimo values(7,4);



insert into DEVOLUCAO values
(1,date_format(now(),'%Y-%m-%d'),1,1),
(2,date_format(now(),'%Y-%m-%d'),3,1),
(3,date_format(now(),'%Y-%m-%d'),10,3),
(4,date_format(now(),'%Y-%m-%d'),9,5),
(5,date_format(now(),'%Y-%m-%d'),7,4);


