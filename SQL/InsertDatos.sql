select * from cargo
go
select * from tipoCargo
insert into tipoCargo values('Administrador')
insert into tipoCargo values('Coordinador')
insert into tipoCargo values('Cajero')
insert into tipoCargo values('Vigilante')
insert into tipoCargo values('GuardaEspalda')
insert into tipoCargo values('limpiadoras')
insert into tipoCargo values('Ejecutivo de Ventas')

go
select * from Personal

insert into Personal values('Maria Amalia','Lopez Perez','001-080808-00M','F','1',getdate())
insert into Personal values('Karina Keyla','Gonzales Reyes','001-090809-00K','F','1',getdate())
insert into Personal values('Marianela Morena','Vaca Garcia','001-070708-00M','F','1',getdate())
insert into Personal values('Roger Leyton','Gustavo Mendoza','001-040307-00R','F','1',getdate())
insert into Personal values('Maria Amalia','Lopez Perez','001-020387-00M','F','1',getdate())
go

select * from Cargo
select * from tipoCargo

insert into Cargo Values(1,1,getdate())
insert into Cargo Values(3,2,getdate())


go
 

 --update usuario set idcargo = 2 
	--			where idusuario = 1

	select * from producto
	go
	select * from factura
	select * from DF
	--delete factura
	--delete DF

	select * from producto
	select * from usuario
	SELECT * FROM Cargo
	INSERT INTO usuario	VALUES ('2','ramirez','12345',GETDATE())
	----------------------------------------------------------------------
	----------------------------------------------------------------------

	select * from producto
	go
	select * from factura
	select * from DF

	select * from producto
	insert into producto values('pan dulce','70','15',GETDATE())
	insert into producto values('pan de manjar','70','15',GETDATE())
	insert into producto values('pan Muerto','70','20',GETDATE())
	insert into producto values('Conos','70','15',GETDATE())
	insert into producto values('Picos','70','15',GETDATE())
	insert into producto values('Donalds con caramelo','70','15',GETDATE())
	insert into producto values('Donalds de chocolate','70','15',GETDATE())
	insert into producto values('Pan de coco','70','15',GETDATE())

---------------------------------------------------------------------------------
-------------------------------------------------------------------------------
select * from factura
SELECT * FROM DF

SELECT* FROM producto

SELECT * FROM usuario
	select * from DF
	go
		DELETE factura
		DELETE DF


	EXECUTE dbo.insertFactural 'ramirez'

	EXECUTE [dbo].[insertDF] 'pan de manjar','20'
	
	