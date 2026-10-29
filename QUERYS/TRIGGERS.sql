--TRIGGERS

--Un TRIGGER es un desencadenador o disparador de un evento
--pueden ser cuando se inserta, actualiza o borra registros de una tabla

--se puede almacenar un registro de log, se pueden cargar datos en una tabla, se puede emitir alertas, gurdar datos y poder mandarlos a quien sea 

-------------------------------------------------------------------------
--TRIGGER PARA INSERT
select * from PacienteLog

create trigger PacienteCreado on Paciente
AFTER INSERT 
AS

	IF(SELECT idpais from inserted) = 'MEX'
	insert into PacienteLog (idpaciente, idpais, fechaAlta)
		select i.idPaciente, i.idpais, GETDATE() from inserted i

exec ALTA_PACIENTE '22331478', 'Rodolfo', 'Sanchez', '20230214 13:34', 'Altamira', 'PER', '2239-4678', 'rodosa@gmail.com', 'Sin observaciones'
select * from Paciente
--TRIGUER UPDATE
--Este trigger se va a disparar cuando se actualize un registro de nuestras tablas

alter table pacientelog  add fechamodificacion datetime

alter TRIGGER PacientesModificados on Paciente
After update
as

if exists (select idpaciente from PacienteLog
			where idpaciente = (select idpaciente from inserted))

		Update PacienteLog set fechamodificacion = GETDATE()
			where idpaciente = (select idpaciente from inserted)

else
	insert into PacienteLog (idpaciente, idpais, fechamodificacion)
	select idpaciente, idpais, GETDATE() from inserted



	select * from Paciente
	select * from PacienteLog
	update paciente set nombre = 'Ramiro Romero' where idPaciente = 8




---------------------------------------------------------------------------------------------------
--Ejercicio trigger
/* Crear un nuevo campo en la tabla pacientelog (fechaBaja) que se debe actualizar al eliminar un paciente
-Agregar un nuevo paciente
-agregar el campo a la tabla
-crear el trigger 
-eliminar el paciente
-comprobar
*/

ALTER Table pacienteLog add fechaBaja datetime
select * from PacienteLog

alter trigger PacienteBorrado on Paciente
for delete
as

if exists (select idpaciente from PacienteLog
			where idpaciente = (select idpaciente from deleted))

			update PacienteLog set fechaBaja = GETDATE()
				where idpaciente = (select idpaciente from deleted)

else 
		insert into PacienteLog (idpaciente, idpais, fechaBaja)
		select idpaciente, idpais, GETDATE() from deleted


select * from Paciente
delete from paciente where idPaciente = 14
