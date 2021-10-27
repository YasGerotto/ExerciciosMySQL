create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id_categoria bigint auto_increment,
tipo enum ("Java", "CSS", "HTML"),
estado enum ("Cursando", "Concluido"),

primary key(id_categoria)

);

create table tb_produto(
id_produto bigint auto_increment, 
nome varchar (30) not null,
preco real not null,
date_conclusão date,
carga_hora real,

fk_categoria bigint, -- declaração da chave estrangeira 

primary key (id_produto),
foreign key (fk_categoria) references tb_categoria(id_categoria)

);


insert into tb_categoria (tipo, estado) 
values ("Java", "Cursando"), -- 1
("Java", "concluido"), -- 2
("CSS", "Cursando"), -- 3
("CSS", "Concluido"), -- 4
("HTML", "Cursando"), -- 5
("HTML", "Concluido"); -- 6


select * from tb_categoria;

insert into tb_produto(nome, preco, date_conclusão, carga_hora, fk_categoria)
values ("Java",70.00,"2021-10-28",150,"1"),
		("Java",25.00,"2022-11-30",150,"2"),
		("CSS",28.90,"2021-10-25",200,"3"),
		("CSS",18.90,"2021-11-01",150,"4"),
        ("HTML",19.90,"2021-07-14",90,"5"),
        ("HTML",12.90,"2021-11-10",60,"6");
       

select * from tb_produto where preco > 50.00;
select * from tb_produto where preco between 3 and 60; 
select * from tb_produto where nome like "%J%";
select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.fk_categoria 
	order by tb_produto.date_conclusão;
    select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.fk_categoria 
	where tb_categoria.tipo ="Java";    
