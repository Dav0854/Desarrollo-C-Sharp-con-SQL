--Transac SQL Server
declare @bit bit, 
@tinyint tinyint,
@smallint smallint,
@int int,
@bingint bigint,
@decimal decimal (10,3),
@real real,
@double float (53),
@money money

set @bit = 1
print @bit  

set @tinyint = 255
print @tinyint 

set @smallint = 32767
print @smallint

set @int = 642325
print @int

--set @bigint = 56565.234
--print @bigint

set @decimal = 56565.234
print @decimal

set @money = 12.34
print @money


go

Declare @idPersonal UNIQUEIDENTIFIER --Personal unico
set @idPersonal = NEWID ()

print CAST (@idPersonal as varchar (36))

  --VARIABLES EN TRANSAC SQL
  SELECT Nombre FROM Personal where idPersonal = 1
  insert into Personal  values ('maria bermudes','Perez perez','masaya', 'soltero', 'F','22365849',1,getdate())
  insert into Personal  values ('alejandra jefferyng','calderon bohorquez','tipitapa', 'soltero', 'F','22365849',1,getdate())
  insert into Personal  values ('angel jose','caldero bohorquez','managua', 'soltero', 'M','22365849',1,getdate())

declare @nombre varchar (20)
set @nombre = (SELECT Nombre FROM Personal where idPersonal = 1)
print @nombre

go

declare @idmayor varchar (100)
set @idmayor = (SELECT MAX  (idPersonal) FROM Personal)
print @idmayor

declare @idmenor  varchar (100)
set @idmenor = (SELECT MIN  (idPersonal) FROM Personal)
print @idmenor

select * from personal 

declare @telegono varchar (50), @fecha datetime, @apellido varchar (50)
select @telefono = telefono, @fecha = fecha, @apellido = apellido from personal where idPersonal =1)


print @telefono
print @fecha
print @apellido

--Estructura de control
declare @link varchar (100),@VerdaderoLink varchar (100)
set @link = 'www.uni.edu.com'
set @VerdaderoLink = 'www.uni.edu.com'

if @VerdaderoLink = @link
begin

print @link
end

else 
begin 
print 'Esta incorrecto'

end

--Inserccion

declare @nombre varchar (100)
set @nombre = 'alejandra jefferyng'

if Exists (select * personal where nombre = @nombre)
begin 
Update personal set Apellido = 'calderon bohorquez' where nombre = @nombre
end
else
begin
insert into Personal  values ('angel jose','caldero bohorquez','managua', 'soltero', 'M','22365849',1,getdate())
end

go

declare @contador int
set @contador = 0

while (@contador < 100)
begin
set @contador = @contador +1
print 'Contador =' +cast(@contador as varchar)
end

go

select * from Personal 

go

declare @contador int
set @contador = 0

while (@contador < 100)
begin
set @contador = @contador +1

if (@contador %2 = 0)
continue
print 'Contador =' +cast(@contador as varchar)
end

go
-- como usar un try catch
begin try 
declare @divisor int,
@dividendo int,
@resultado int

set @dividendo = 100
set @divisor = 0
-- provocando un herror

set @resultado = @dividendo / @divisor
print 'no hay error'

end try 
begin catch
print 'Se ha producido un herror'
end catch

go

select * from Personal  