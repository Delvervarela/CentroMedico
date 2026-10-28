sp_help ALTA_Turno --Ayuda par ver la informacion de forma detallada de tablas, SP, etc...
sp_helptext alta_turno --solo se puede utilizar para ver la informacion del SP

select * from Paciente 

--Sentencias DDL --Basicamente nos sirve para alterar la estructura de las tablas

ALTER TABLE Paciente add estado smallint -- este nos sirve para agregar un nuevo campo a la tabla paciente

ALTER TABLE Paciente ALTER COLUMN estado bit-- nos sirve para cambiarle el tipo de dato al campo

ALTER TABLE Paciente DROP COLUMN estado --Nos sirve para borrar el campo estado de la tabla estado