--TRANSAC HELADERIA
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