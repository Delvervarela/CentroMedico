sp_help ALTA_Turno --Ayuda par ver la informacion de forma detallada de tablas, SP, etc...
sp_helptext alta_turno --solo se puede utilizar para ver la informacion del SP

select * from Paciente 

--Sentencias DDL --Basicamente nos sirve para alterar la estructura de las tablas

ALTER TABLE Paciente add estado smallint -- este nos sirve para agregar un nuevo campo a la tabla paciente

ALTER TABLE Paciente ALTER COLUMN estado bit-- nos sirve para cambiarle el tipo de dato al campo

ALTER TABLE Paciente DROP COLUMN estado --Nos sirve para borrar el campo estado de la tabla estado



--Sentencia CREATE (funcion)
--para crear una funcion es muy similar a un SP
CREATE FUNCTION nombrefun (@var int)
RETURNS INT

AS

BEGIN

	SET @var = @var * 5
	return @var
END


--La forma correcta para mandar a llamar una funcion es la siguiente:
select dbo.nombrefun (256) as ResultadoMultiplicacion -- siempre es con un select y es obligatorio poneer el dbo. (esquema)




--Sentencia DROP
--nos permite eliminar una tabla de datos por completo (se tiene que usar con cuidado)
--Tambien nos permite borrar bases de datos

create table Ejemplo (campo1 int, campo2 varchar(50)) --creamos una tabla de ejemplo para borrarla

drop table Ejemplo --con este borramos la tabla





--Sentencia TRUNCATE
--Este ayuda a eliminar los registros de una tabla y resetea los valores de los campos identity
create table Ejemplo (campo0 int identity (1, 1), campo1 int, campo2 varchar(50)) 

select * from Ejemplo

insert into Ejemplo (campo1,campo2)
values ('2','goles'),
	    ('10','atajadas'),
		('5', 'tarjetas amarillas')


TRUNCATE TABLE Ejemplo
