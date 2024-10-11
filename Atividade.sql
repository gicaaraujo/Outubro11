create database ger_join;

create table funcionario(
cod_fun int auto_increment primary key not null,
nome_fun varchar (255),
especialidade varchar (255)
);

create table dependentes(
cod_depen int auto_increment primary key not null,
nome_depen varchar (255),
cod_fun int,
foreign key (cod_fun) references funcionario (cod_fun)
);

insert into funcionario (nome_fun, especialidade)
values ("José", "engenheiro"),
("João", "mestre de obras"),
 ("Maria", "contabilista");
 
 
 insert into dependentes (nome_depen, cod_fun)
values ("Pedro",1),
("Alice",1),
 ("Luana",3);
 
 select *from funcionario;
 
 select *from dependentes;
 
 select funcionario.nome_fun, dependentes.nome_depen
 from funcionario
 inner join dependentes
 on funcionario.cod_fun = dependentes.cod_fun
 where funcionario.cod_fun = 1;
 
 select funcionario.nome_fun, dependentes.nome_depen
 from funcionario
 left join dependentes
 on funcionario.cod_fun = dependentes.cod_fun
 where nome_depen is null;

select funcionario.nome_fun, dependentes.nome_depen
 from funcionario
 right join dependentes
 on funcionario.cod_fun = dependentes.cod_fun;