USE [Panaderia]
GO
/****** Object:  StoredProcedure [dbo].[insertPersonal]    Script Date: 13/10/2016 9:23:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[insertPersonal] 
	-- Add the parameters for the stored procedure here
	@Nombres varchar(50),
	@Apellidos varchar(50),
	@Cedula varchar(50),
	@Sexo varchar(5),
	@Habilitado varchar(5),
	@tipoCargo varchar(100)
AS
BEGIN

begin try
 declare @bit bit, @idPesonal int
	set @bit = CAST(@Habilitado as bit)
	
	
insert into Personal values(rtrim(@Nombres),rtrim(@Apellidos),rtrim(@Cedula),rtrim(@Sexo),rtrim(@bit),GETDATE())

	 set @idPesonal =  [dbo].[IdDelPersonal] (@Cedula)
	insert into Cargo values (RTRIM(@tipoCargo),@idPesonal, GETDATE())

end try
begin catch
    print 'Datos incorrecto'
end catch
END
go
create PROCEDURE [dbo].[insertUsuario] 
	-- Add the parameters for the stored procedure here
	@idcargo varchar(5),
	@login varchar(50),
	@password varchar(50)
	
AS
BEGIN

begin try
 declare  @idC int
	set @idC = CAST(@idcargo as int)
	
	
insert into usuario values(rtrim(@idC),rtrim(@login),rtrim(@password),GETDATE())


end try
begin catch
    print 'Datos incorrecto'
end catch
END
go


------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[insertFactural] 
	-- Add the parameters for the stored procedure here
	@login varchar(50)	
AS
BEGIN

begin try
 declare  @idC int, @codigo int ,  @fecha int
	set @idC = [dbo].[FIdusarios] (rtrim(@login))
	set @codigo = (select max(idfactura) from factura)

	set @fecha = DATENAME(YEAR, GETDATE());
	if(@codigo is null)
	begin
	set @codigo = 1
	end
	
insert into factura values(@idC,rtrim(@fecha+(@codigo+1)),'','',GETDATE())


end try
begin catch
    print 'Datos incorrecto'
end catch
END

go
select * from factura
------------------------------------------------------------------------
------------------------------------------------------------------------
go
CREATE PROCEDURE [dbo].[insertDF] 
	-- Add the parameters for the stored procedure here
	@NombreProducto varchar(50),
	@Cantidad varchar(50)
AS
BEGIN

begin try
 declare  @idfactura int, @idproducto int, @precio float, @CANTI INT,@total float
 set @idfactura = (select MAX(idfactura) from factura)
	set @idproducto = 	[dbo].[FuncionIdProducto] (@NombreProducto)
	set @precio = [dbo].[FuncionPrecioproducto] (@NombreProducto)
	SET @CANTI = CAST(@Cantidad AS int)
	set @total = (@CANTI*@precio)


insert into DF values(rtrim(@idfactura),rtrim(@idproducto),@CANTI,@precio,@total)
update factura set IvaSubtotal = IvaSubtotal + (@precio*0.15), Total =Total+@precio where idfactura = @idfactura

end try
begin catch
    print 'Datos incorrecto'
end catch
END
---------------------------------------------------------
-------------------------
--go
--select * from Cargo
--select * from usuario
select * from DF

	select * from factura go 
--	--delete factura
	
--	select * from producto

--select	
--  exec [dbo].[insertFactural] 'ramirez'


--declare @fecha varchar(50)

--set @fecha =  DATENAME(YEAR, GETDATE());

--print @fecha