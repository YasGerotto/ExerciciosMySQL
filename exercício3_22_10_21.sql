create database db_escola;

use db_escola;
create table tb_alunes(
id_alunes bigint(4)auto_increment,
nome varchar(100) not null,
turma varchar(100) not null,
email varchar (100) not null,
nota real,




primary key (id_alunes)
);


insert into tb_alunes (nome, turma, email, nota)
values ("Mariana Lima", "5º ano B", "maria@marilima.com.br", 5);
insert into tb_alunes (nome, turma, email, nota)
values ("Juliano Ramos", "5º ano B", "juliano@ramos.com.br", 6);
insert into tb_alunes (nome, turma, email, nota)
values ("Bruna Tavares", "5º ano B", "bruna@tavares.com.br", 7);
insert into tb_alunes (nome, turma, email, nota)
values ("Jady Andrade","5º ano B","jady@andrade.com.br", 4);
insert into tb_alunes (nome, turma, email, nota)
values ("Murilo Souza", "5º ano B", "murilo@souza.com.br", 3);
insert into tb_alunes (nome, turma, email, nota)
values ("Kaique Gerotto","5º ano B", "kaique@gerotto.com.br", 8);
insert into tb_alunes (nome, turma, email, nota)
values ("Carol Bastos", "5º ano B", "Carol@bastos.com.br", 9);
insert into tb_alunes (nome, turma, email, nota)
values ("Gabriela Barcelos", "5º ano B", "gabriela@barcelos.com.br", 3);







select * from tb_alunes where nota <=7;
select * from tb_alunes where nota >7;

















