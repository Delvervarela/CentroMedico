--SP para ver si los pacientes tienen turnos
ALTER proc SELECT_TurnosPaciente(
								@idpaciente paciente
								)

AS
set nocount on

if exists (SELECT * FROM Paciente P
					inner join TurnoPaciente TP
					on TP.idPaciente = P.idPaciente
					INNER JOIN Turno T
					on T.idTurno = TP.idTurno
					inner join MedicoEspecialidad ME
					on ME.idMedico = tp.idMedico
					where p.idPaciente = @idpaciente)

SELECT * FROM Paciente P
inner join TurnoPaciente TP
on TP.idPaciente = P.idPaciente
INNER JOIN Turno T
on T.idTurno = TP.idTurno
inner join MedicoEspecialidad ME
on ME.idMedico = tp.idMedico
where p.idPaciente = @idpaciente

else
print 'Este paciente no tiene turnos'

exec SELECT_TurnosPaciente 7