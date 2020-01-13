CREATE DATABASE Heladeria
go
USE Heladeria
go

CREATE TABLE Personal (
idPersonal int primary key identity (1,1) not null,
Nombre varchar(20),
Apellido varchar (20),
Direccion varchar (100),
Cedula varchar (14),
EstadoCivil varchar (10),
Sexo varchar (10),
telefono int,
Estado bit, 
Fecha datetime ,
) 
 
INSERT INTO Personal  VALUES ('Alejandra Jefferyng','Calderon Bohorquez','V Libertad','0010812930022u','Casada','F','22222222','1',GETDATE())
INSERT INTO Personal  VALUES ('Angel Jose','Calderon Bohorquez','V Libertad','0010811220055v','Soltero','M','22226598','1',GETDATE())
INSERT INTO Personal  VALUES ('Gonzalo David','Diaz Molina','V Flor','0010889563222u','Casada','F','22228596','1',GETDATE())
INSERT INTO Personal  VALUES ('Angel Jose','Calderon Bohorquez','V Venezuela','0010811748596v','Soltero','M','22226598','1',GETDATE())
INSERT INTO Personal  VALUES ('Ivonne ','Gutierrez Molina','V Reconcialicion','0010889564523u','Casada','F','23568596','1',GETDATE())
INSERT INTO Personal  VALUES ('Angel Jose','Calderon Bohorquez','V Venezuela','0010811749632v','Soltero','M','25966598','1',GETDATE())
SELECT * FROM Personal
go


UPDATE Personal set EstadoCivil = 'Soltera'
Where IdPersonal = 1

--///////////////////////////////////////////////////////////////////////////////////////////////
CREATE TABLE Cargo ( 
idCargo int primary key identity (1,1),
idTipoDeCargo int,
idPesonal int,
Fecha datetime
)

INSERT INTO Cargo  VALUES ('0025','13',GETDATE())
INSERT INTO Cargo  VALUES ('0036','14',GETDATE())
INSERT INTO Cargo  VALUES ('0085','15',GETDATE())
INSERT INTO Cargo  VALUES ('0065','16',GETDATE())
SELECT * FROM Cargo
go
--///////////////////////////////////////////////////////////////////////////////////////////////
CREATE TABLE TipoCargo ( 
idtipoCargo int primary key identity (1,1),
Cargo varchar (50)

)
INSERT INTO TipoCargo  VALUES ('Despachador')
INSERT INTO TipoCargo  VALUES ('Gerente')  
INSERT INTO TipoCargo  VALUES ('Cajero') 
INSERT INTO TipoCargo  VALUES ('Limpieza') 
INSERT INTO TipoCargo  VALUES ('Administrador') 
INSERT INTO TipoCargo  VALUES ('CPF') 
SELECT * FROM TipoCargo
go
--///////////////////////////////////////////////////////////////////////////////////////////////


CREATE TABLE Usuario ( 
idusuario int primary key identity (1,1),
idcargo  int,
Loginn varchar (50),
Contraseña varchar (50),
Fecha datetime 
)
INSERT INTO Usuario  VALUES ('1','aleca','qwerty',GETDATE())
INSERT INTO Usuario  VALUES ('2','dlg','gonzalo16',GETDATE())
INSERT INTO Usuario  VALUES ('3','jos23','diazstereo',GETDATE())
INSERT INTO Usuario  VALUES ('4','val34','rety65',GETDATE())
SELECT * FROM Usuario
go
--///////////////////////////////////////////////////////////////////////////////////////////////
CREATE TABLE Producto (
idproducto int primary key identity (1,1),
NombreProducto varchar (100),
Cexitencia int,
PrecioAhora float,
Fecha datetime
)
drop table Producto
INSERT INTO Producto  VALUES ('malteada','2','96',GETDATE())
INSERT INTO Producto  VALUES ('cono','4','85',GETDATE())
INSERT INTO Producto  VALUES ('sunday','5','85',GETDATE())
SELECT * FROM Producto
go
--///////////////////////////////////////////////////////////////////////////////////////////////
CREATE TABLE DPRODU (
IdDprodu int primary key identity (1,1),
TipoProducto varchar (20),
Fecha datetime
)


INSERT INTO DPRODU  VALUES ('Malteada doble',GETDATE())
INSERT INTO DPRODU  VALUES ('Cono doble',GETDATE())
INSERT INTO DPRODU  VALUES ('Malteada doble',GETDATE())
INSERT INTO DPRODU  VALUES ('Sunday grande',GETDATE())
SELECT * FROM DPRODU
go
--///////////////////////////////////////////////////////////////////////////////////////////////


CREATE TABLE Factura(
idfactura int primary key identity (1,1),
idusaurio int,
codigoFactura varchar (100),
IvaSubtotal float,
Total float,
fecha datetime
)

INSERT INTO Factura  VALUES ('1','008596','2.5','4.5',GETDATE())
INSERT INTO Factura  VALUES ('2','008536','2.5','456',GETDATE())
INSERT INTO Factura  VALUES ('3','008574','2.5','968',GETDATE())
INSERT INTO Factura  VALUES ('4','008578','2.5','36',GETDATE())
SELECT * FROM Factura
go
--///////////////////////////////////////////////////////////////////////////////////////////////
CREATE TABLE DF(
idDF int primary key identity (1,1),
idfactura int,
idproducto int,
Cantidad int,
CantExtra int,
TipExtra varchar (20),
PrecioAntiguo float,
Totalpr float (10)
)
--drop table DF
INSERT INTO DF  VALUES ('2','23','48','85','--','45','74')
SELECT * FROM DF
go
--///////////////////////////////////////////////////////////////////////////////////////////////
CREATE TABLE Compra(
idCompra int primary key identity (1,1),
CodigoCompra int,
idUsuario int,
fecha datetime
)
go

CREATE TABLE DCompra (
idDCompra int primary key identity (1,1),
idProducto int,
Cantidad int,
Precio int,
Total int
)
