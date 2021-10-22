create database db_ecommerce;

use db_ecommerce;
create table tb_produto(
id_prod bigint auto_increment,
nome varchar(100) not null,
categoria varchar (100) not null,
preco decimal(10,2),
quantidade bigint not null,
primary key (id_prod)


);

insert into tb_produto(nome, categoria, preco, quantidade)
values ("Televisão", "Eletrônicos", 5060.00,50);
insert into tb_produto(nome, categoria, preco, quantidade)
values ("Geladeira", "Eletrodomesticos", 2100.00,80);
insert into tb_produto(nome, categoria, preco, quantidade)
values ("MIcroondas", "Eletrodomesticos", 300.00,65);
insert into tb_produto(nome, categoria, preco, quantidade)
values ("Armários", "Móveis", 405.00,30);
insert into tb_produto(nome, categoria, preco, quantidade)
values ("Sofás", "Móveis", 380.00,15);
insert into tb_produto(nome, categoria, preco, quantidade)
values ("Vaso de Flor", "decoração", 58.00,240);
insert into tb_produto(nome, categoria, preco, quantidade)
values ("Computador", "Eletrônicos", 3560.00,98);
insert into tb_produto(nome, categoria, preco, quantidade)
values ("Mesa de cozinha", "Móveis", 4800.00,48);

select * from `db_ecommerce`.`tb_produto` where preco > 500.00; 

select * from tb_produto where preco < 500.00;

update `db_ecommerce`.`tb_produto`
set `quantidade` = '420' where(`id_prod`='6');

