create database db_farmacia_do_bem;

use db_farmacia_do_bem;
create table tb_categoria(
id_categoria bigint auto_increment,
atendimento enum ("Físico", "On-line"),
setores enum ("Cosméticos", "Medicamentos", "Curativos"),
id_farmacia bigint,

primary key (id_categoria)
);

create table tb_produto(
id_produto bigint auto_increment,
nome varchar(30) not null,
preco real,
setor enum ("Beleza", "Saúde"),
marca varchar (30),


fk_categoria bigint, -- declarando a chave primária e secundária.
primary key (id_produto),
foreign key (fk_categoria) references tb_categoria(id_categoria)
);

select * from tb_categoria;

insert into tb_categoria(atendimento, setores) 
values ("Físico", "Cosméticos"), -- 1
("Físico", "Medicamentos"), -- 2
("Físico", "Curativos"), -- 3
("On-line", "Cosméticos"), -- 4
("On-line", "Medicamentos"), -- 5
("On-line", "Curativos"), -- 6
("On-line", "Cosméticos"); -- 7

select * from tb_produto;

insert into tb_produto(nome, preco, setor, marca, fk_categoria)
values ("Shampoo", 15.90, "Beleza", "Niely Gold",1),
		("Neosaldina", 10.90, "Saúde", "Takeda",2),
        ("Esparadrapo", 11.90, "Saúde", "Cremer",3),
        ("Rímel", 60.00, "Beleza", "Maybelline",4),
        ("Luftal", 15.90, "Saúde", "Reckitt",5),
        ("Band-aid", 24.90, "Saúde", "Jhonson & Jhonson",6),
        ("Blush", 35.90, "Beleza", "Vult",1),
        ("Batom", 47.90, "Beleza", "Vult",4);
        
select * from tb_produto;        
 
 select * from tb_produto where preco > 50.00;
 select * from tb_produto where preco < 30.00;
 select * from tb_produto where nome like "%B%";
 select * from tb_produto where preco between 3 and 60;
 
 select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.fk_categoria 
	order by tb_produto.setor;
select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.fk_categoria 
	where tb_categoria.atendimento ="On-line";    









