
---Ejercicio de SP 


--Este procedure vamos a obtener el nombre, apellido, el pais, el turno, el estado del turno, la fecha que se agendo el turno y el medico que va atender el paciente 
alter Proc SP_ObtenerPacienteyPais (
								@pa int
)
as
set nocount on

if exists (select idPaciente from Paciente where idPaciente = @pa)

select P.nombre + ' ' + p.apellido as Nombre, p.idpais as Pais, t.idTurno as Turno, te.descripcion as EstadoTurno ,  t.fechaTurno, m.nombre + ' '  +  m.apellido as Medico from Paciente P
										inner join TurnoPaciente TP
										on tp.idPaciente = P.idPaciente
										inner join Turno T
										inner join TurnoEstado TE
										on TE.idEstado = T.estadoTurno
										on TP.idTurno = t.idTurno
										inner join Medico M
										on TP.idMedico = m.idMedico
										inner join Pais PA
										on PA.idPais = P.idpais
										where P.idPaciente = @pa

else 
Print 'Este paciente no existe'

exec SP_ObtenerPacienteyPais 9


select * from TurnoEstado

select * from paciente

select * from TurnoPaciente
select * from Turno
select * from PacienteLog
select * from Especialidad
select * from MedicoEspecialidad
select * from Medico

select * from TurnoPacientes
alter table PacienteLog add Nombre varchar (50)

exec ALTA_Turno '20261205', 12, 1, 9, 'Realizado'





