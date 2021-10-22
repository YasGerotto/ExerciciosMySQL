create database db_rh;


use db_rh;
create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null, 
cargo varchar (255) not null, 
email varchar (255) not null, 
codinome varchar(255) not null, 
salario decimal(10,2),


primary key (id)


);

insert into tb_funcionarios(nome, cargo, email, codinome,  salario)
values ("Mariana", "Auxiliar ADM", "mariana@mariana.com.br", "Mari", 1420.00);
insert into tb_funcionarios(nome, cargo, email, codinome,  salario)
values ("Julia", "Jovem Aprendiz", "jujuba@julia.com.br", "Juba", 1620.00);
insert into tb_funcionarios(nome, cargo, email, codinome,  salario)
values ("Gustavo", "Auxiliar ADM", "guga@gus.com.br", "Gu", 2100.00);
insert into tb_funcionarios(nome, cargo, email, codinome,  salario)
values ("Maichel James", "Contador", "michel@james,com.br","James",2200.00);
insert into tb_funcionarios(nome, cargo, email, codinome,  salario)
values ("Kaique","Jovem Aprendiz"," kaka@kaique.com.br", "Kaa", 1100.00);


select * from  db_rh.tb_funcionarios where salario >2000.00;


select * from tb_funcionarios where salario <2000.00;




