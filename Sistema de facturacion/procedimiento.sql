USE [dbventas]
GO
/****** Object:  StoredProcedure [dbo].[insertfacturaKKKKK]    Script Date: 25/01/2017 19:09:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Procedimiento mostrar
create proc spmostrar_categoria
as
select top 200 * from categoria
order by idcategoria
go

--Procedimiento buscar
create proc spbuscar_categoria
@textobuscar varchar (50)
as
select * from categoria
where nombre like  @textobuscar + '%'
go

--Procedimiento insertar
create proc spinsertar_categoria
@idcategoria int output,
@nombre varchar (50),
@apellido varchar (256)
as
insert into categoria (nombre, descripcion)
values (@nombre,@apellido)
go

--Procedimiento editar
create proc speditar_categoria
@idcategoria int,
@nombre varchar (50),
@descripcion varchar (256)
as
update categoria set nombre=@nombre, 
descripcion=@descripcion
where idcategoria=@idcategoria
go


--Procedimiento eliminar
create proc speliminar_categoria
@idcategoria int
as
delete from categoria
where idcategoria=@idcategoria
go
