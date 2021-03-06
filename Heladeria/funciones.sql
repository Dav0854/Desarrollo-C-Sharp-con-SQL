USE [Heladeria]
GO
/****** Object:  UserDefinedFunction [dbo].[FIdusuarios]    Script Date: 27/10/2016 8:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER FUNCTION [dbo].[FIdusuarios] (@login varchar (50))

RETURNS INT 
AS
BEGIN
	DECLARE @idusuario INT;

	SELECT @idusuario = u. idusuario FROM Usuario u inner join Cargo c
	ON u.idcargo = c.idcargo inner join Personal p
	ON c.idPesonal = p.idPersonal
	WHERE u.Loginn = @login

	RETURN @idusuario;
END
GO

CREATE FUNCTION [dbo].[FuncionIdProducto] (@Producto varchar (50))
RETURNS INT 
AS
BEGIN
	DECLARE @precio INT;
	SELECT @precio = p.PrecioAhora FROM Producto p WHERE p.NombreProducto = @Producto

	RETURN @precio;

	END
	GO

	CREATE FUNCTION [dbo].[FuncionpPrecioProducto] (@Producto varchar (50))
	RETURNS float 
	AS
	BEGIN
	DECLARE @precio INT;

	SELECT @precio = p.PrecioAhora FROM  Producto p WHERE p.NombreProducto = @producto

	RETURN @precio;
	END 
	GO

	SELECT * FROM Factura
	SELECT * FROM DF

	SELECT * FROM Usuario

	EXECUTE dbo.FuncionIdProducto 'Calderon Bohorquez'
	


