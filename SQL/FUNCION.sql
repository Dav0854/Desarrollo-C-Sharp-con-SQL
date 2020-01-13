use [Panaderia]
go
create function [dbo].[FIdusuarios](@login varchar(50))
returns int
as
begin
declare @idusuario int;

select @idusuario = u.idusuario from usuario u inner join Cargo c
					on u.idcargo = c.idCargo inner join Personal p
					on c.idpersonal = p.idpersonal
					where u.Loginn = @login

return @idusuario;
end

-----------------------------------------------------------------
-------------------------------------------------------------------
go
create function [dbo].[FuncionIdProducto](@producto varchar(50))
returns int
as
begin
	declare @idproducto int;

	select @idproducto = p.idproducto from producto p where p.nombreProducto = @producto

	return @idproducto;
	end


------------------------------------------------------------------------
------------------------------------------------------------------------
GO
create function [dbo].[FuncionPrecioproducto](@producto varchar (50))
returns float
as
begin
	declare @precio int;

	select @precio = p.PrecioAhora from producto p where p.nombreProducto = @producto
	return @precio;
	end






