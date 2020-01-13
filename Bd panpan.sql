--create database Panpan
go
use Panpan
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
Fecha datetime ,

)

drop table personal
go

INSERT into Personal  values ('Karla Maria','Perez Lopez','Carretera Norte','Soltera','F','22222222','1',GETDATE())
INSERT into Personal  values ('Josefina Rosa','Mendoza Hernandez','Rontonda Cristo Rey','Soltera','F','22224444','1',GETDATE())



SELECT * FROM Personal
GO
SELECT IdPersonal, Nombre, Apellido, Direccion FROM Personal



UPDATE Personal set EstadoCivil = 'Casada'
Where IdPersonal = 1
GO


DELETE Personal where IdPersonal = 1


