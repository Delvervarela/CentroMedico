--SP para eliminar un turno

--select * from Turno
--select * from turnopaciente

alter proc SP_EliminarTurno(
							@idturno turno)

as
set nocount on

if exists (select * from turno where idTurno=@idturno)

BEGIN
delete from TurnoPaciente where idTurno=@idturno
Delete from Turno where idTurno=@idturno

END


else
print 'Este turno ingresado ya existe'

exec SP_EliminarTurno 11

select * from Turno
select * from TurnoPaciente

