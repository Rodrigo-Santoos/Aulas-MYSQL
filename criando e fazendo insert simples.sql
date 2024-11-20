/*criando database*/
create database carros;

/*usando a database carros*/
use carros;

/*criando a tabela marcas*/
create table marcas(
	id 	 int not null auto_increment,
    primary key (id),
    nome_marca varchar(255) not null
);

/*adicionando uma nova coluna*/
alter table marcas add origem varchar(255);

/*inserindo dados marcas*/
insert into marcas (nome_marca, origem) 
	values 
    ("Audi", "alemão"), 
    ("porsche", "Áustria"),
    ("Ferrari ", "italiana"),
    ("bmw", "Alemanha"),
    ("toyota", "Japão"),
	("jaguar", "Inglaterra");

select * from cliente;

/*criando a tabela inventario*/
create table inventario(
	id int not null primary key,
    modelo varchar (255) not null,
    transmissao varchar(255) not null,
    motor double not null,
    combustivel varchar(255) not null,
    marcas_id int not null,
    foreign key (marcas_id) references marcas(id)
);

/*inserindo dados inventario*/
insert into inventario (id,modelo, transmissao, motor, combustivel, marcas_id) 
	values 
    (1,"Audi", "bom", 2.0, "100",1);

/*criando a tabela cliente*/
create table cliente(
	id int not null primary key,
    nome varchar(255) not null,
    sobrenome varchar(255) not null,
    endereco varchar(255) not null
);

/*inserindo dados cliente*/
insert into cliente (id,nome, sobrenome, endereco) 
	values 
    (1,"Rodrigo", "Oliveira", "rua nao sei bem");