create database Panaderia
go
use Panaderia
go
create table personal ( 
idPersonal int primary key identity (1,1) not null,
Nombre varchar(20),
Apellido varchar (20),
Direccion varchar (100),
EstadoCivil varchar (10),
Sexo varchar (10),
telefono int,
Estado bit, 
Fecha datetime 
) 
go
create table Cargo ( 
idCargo int primary key identity (1,1),
TipoDeCargo varchar(50),
idPesonal int,
Fecha datetime


)
go
create table Usuario ( 
idusuario int primary key identity (1,1),
idcargo  int,
Loginn varchar (50),
passord varchar (50),
fecha datetime 
)
go

create table producto (
idproducto int primary key identity (1,1),
nombreProducto varchar (100),
Cexitencia int,
PrecioAhora float,
fecha datetime

)
go

create table factura(
idfactura int primary key identity (1,1),
idusaurio int,
codigoFactura varchar (100),
IvaSubtotal float,
Total float,
fecha datetime
)
go
--Detalle de factura
create table DF(
idDF int primary key identity (1,1),
idfactura int,
idproducto int,
cantidad int,
PrecioAntiguo float,

)