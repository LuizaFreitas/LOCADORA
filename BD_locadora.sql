create database Locadora;

use Locadora;


create table Veiculo (
VeiculoID int key,
Cadastro varchar(50),
Placa char(10),
Cor varchar(50),
TipodeCombustivel varchar(50),
Modelo varchar(50),
Fabricante varchar(50));
desc Veiculo;

create table Clientes (
ClientesID int key,
RG char(13),
CPF char(14),
Endereço varchar(50),
Estado char(2),
Cidade varchar(50),
CEP char(10),
Complemento varchar(50));
desc Clientes;

create table Telefone (
TelefoneID int key,
ClientesID int,
numero varchar(20),
foreign key (ClientesID)
references
Clientes(ClientesID));

desc Telefone;

Create table orcamento (
idorcamento int key,
idcliente int,
carro int,
dataSaida date,
dataRetorno date,
valordiaria float(10),
valortotal varchar(10));
desc orcamento;

create table entrada (
identrada int key,
idorcamento int,
data date,
valor float(10),
foreign key (idorcamento)
references
orcamento (idorcamento));
desc entrada;

create table caixa (
idcaixa int key,
idSaida int,
idRetorno int );
desc caixa;

create table saida (
idRetorno int key,
valor float(10));
desc saida;
