create database Panaderia
go
use Panaderia
go
create table Personal(
idpersonal int primary key identity(1,1),
Nombres varchar(20),
Apellidos varchar(20),
Cedula varchar(25),
sexo varchar(5),
Habilitado bit,
fecha datetime
)
go
create table Cargo(
idCargo int primary key identity(1,1),
idtipocargo varchar(50),
idpersonal int,
fecha datetime
)
go
create table tipoCargo(
idtipocargo int primary key identity(1,1),
Cargo varchar(50)
)

go
create table usuario(
idusuario int primary key identity(1,1),
idcargo int,
Loginn varchar(50),
Passord varchar(50),
fecha datetime
)
go
create table producto(
idproducto int primary key identity(1,1),
nombreProducto varchar(100),
CExistencia int,
PrecioAhora float,
fecha datetime
)
go
create table factura(
idfactura int primary key identity(1,1),
idusuario int,
codigoFactura varchar(100),
IvaSubtotal float,
Total float,
fecha datetime
)
go
--Detalle de Factura
create table DF(
idDF int primary key identity(1,1),
idfactura int,
idproducto int,
cantidad int,
PrecioAntiguo float
)