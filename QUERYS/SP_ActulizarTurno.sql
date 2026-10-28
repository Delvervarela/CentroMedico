--SP para actualizar un turno

alter PROC SP_ActulizarTurno (
								@idturno turno,
								@estadoturno tinyint,
								@observacion observacion
)
as
set nocount on

if exists (select * from Turno where idTurno=@idturno)

update Turno set estadoTurno = @estadoturno,
				 observacion = @observacion

where idTurno = @idturno

else
	select 0 as resultado



select * from Turno

exec SP_ActulizarTurno 2, 4, 'El paciente ha sido atendido'

