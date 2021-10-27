create database db_pizzaria_legal;


use db_pizzaria_legal;
create table tb_categoria(
id_pizza bigint auto_increment ,
tamanho enum ("Broto", "Grande"),
tipo enum ("Doce", "Salgada"),

primary key (id_pizza)
);

create table tb_produto(
id_produto  bigint auto_increment,
sabor_pizza varchar(30) not null,
preco decimal(10,2),
comborda enum ("Cheddar", "Catupiry" , "Nenhum"),

fk_categoria bigint, -- Declarando chave primaria e secundaria
primary key (id_produto),
foreign key (fk_categoria) references tb_categoria(id_pizza)
);

select * from tb_categoria;

insert into tb_categoria (tamanho, tipo) values ("Grande", "Salgada"), -- 1
("Broto", "Salgada"), -- 2
("Grande", "Doce"), -- 3
("Broto", "Doce"); -- 4


select * from tb_produto;
insert into tb_produto (sabor_pizza, preco, comborda, fk_categoria)
values ("Frango com Catupiry", 49.90, "Catupiry",1),
("Quatro Queijos", 29.99, "Nenhum", 2),
("Chocolate", 60.00, "Nenhum", 3),
("Beijinho", 39.90, "Nenhum",4),
("Baiana", 25.90, "Cheddar", 1),
("Portuguesa", 32.40, "Catupiry",2);

select * from tb_produto where  preco < 45.00;
select * from tb_produto where preco between 29.00 and 60.00;
select * from tb_produto where sabor_pizza like "C%";
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_produto;
select * from tb_produto inner join tb_categoria on tb_categoria.is = tb_produto.id_pizza and tb_categoria.tipo = "Doce";






