drop database dbvendas;
CREATE DATABASE dbvendas;
USE dbvendas;
select * FROM Clientes;
select * FROM Itens_Ped;

CREATE TABLE Clientes(
Codcli int primary key auto_increment not null,
Nome varchar(40) not null,
Ender varchar(45),
Bairro varchar(20),
Cidade varchar(20),
CEP varchar(9),
UF char(2),
Email varchar(30),
Fone varchar(10),
Celular varchar(10)
);

CREATE TABLE Produtos(
CodProd int primary key auto_increment not null,
Descricao varchar(30),
Preco numeric(10,2),
Unidade char(2),
Qtde_inicial numeric(10,2),
Data_cad date,
Qtde_atual numeric(10,2)
);


CREATE TABLE Pedidos(
CodPed int primary key auto_increment not null,
CodCliente int,
nomeCli varchar(40),
Data date,
foreign key(CodCliente) references Clientes(CodCli)
);

CREATE TABLE Itens_Ped(
CodPed int primary key not null,
CodProd int not null,
NomeCli varchar(40),
ProdDesc varchar(30),
Quantidade numeric(10, 2),
foreign key(CodProd) references Produtos(CodProd),
foreign key(CodPed) references Pedidos(CodPed) 
);

