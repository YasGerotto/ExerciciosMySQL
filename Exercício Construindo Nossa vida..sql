create database db_construindo_a_nossa_vida;

use  db_construindo_a_nossa_vida;

create table tb_categoria(
id_categoria bigint auto_increment,
tipo enum ("Casa", "Apartamento", "Sítio"),
estado enum ("Construção", "Pronto"),

primary key(id_categoria)

);

create table tb_produto(
id_produto bigint auto_increment, 
imovel varchar (30) not null,
preco real not null,
nome_construtora varchar(35),
est_obra varchar(30),

fk_categoria bigint, -- declaração da chave estrangeira 

primary key (id_produto),
foreign key (fk_categoria) references tb_categoria(id_categoria)

);



insert into tb_categoria (tipo, estado) 
values ("Casa", "Construção"), -- 1
("Casa", "Pronto"), -- 2
("Apartamento", "Construção"), -- 3
("Apartamento", "Pronto"), -- 4
("Sìtio", "Construção"), -- 5
("Sítio", "Pronto"); -- 6


select * from tb_categoria;

insert into tb_produto(imovel, preco, nome_construtora, est_obra, fk_categoria)
values ("Casa",90.000,"RMV","Construção","1"),
		("Casa",590.000,"JJK","Pronto","2"),
		("Apartamento",180.900,"KLI","Construção","3"),
		("Apartamento",195.000,"JKI","Pronto","4"),
        ("Sítio",130.900,"Papagaios","Cosntrução","5"),
        ("Sítio",120.000,"Piriquitos","Pronto","6"),
         ("Casa",75.000,"Janelas","Construção","1"),
         ("Casa",35.000,"Lirios","Construção","1");
         

select * from tb_produto where preco > 50.00;
select * from tb_produto where preco between 3 and 60; 
select * from tb_produto where nome like "%C%";
select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.fk_categoria 
	order by tb_produto.imovel;
    select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.fk_categoria 
	where tb_categoria.tipo ="Pronto";    
 
