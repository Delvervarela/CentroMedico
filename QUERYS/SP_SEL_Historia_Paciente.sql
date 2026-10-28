--SP para obtener la historia clinica de un paciente

exec SEL_HistoriaPaciente 5


create proc SEL_HistoriaPaciente(
							@idpaciente paciente)

as
set nocount on


IF EXISTS (select * from Paciente P
					inner join HistoriaPaciente HP
					on HP.idPaciente = P.idPaciente
					inner join Historia H
					on H.idHistoria = HP.idHistoria
					inner join MedicoEspecialidad ME
					on ME.idMedico = HP.idMedico
					inner join Medico M
					on m.idMedico = ME.idMedico
					where P.idPaciente = @idpaciente)


select * from HistoriaPaciente

select * from Paciente P
inner join HistoriaPaciente HP
on HP.idPaciente = P.idPaciente
inner join Historia H
on H.idHistoria = HP.idHistoria
inner join MedicoEspecialidad ME
on ME.idMedico = HP.idMedico
inner join Medico M
on m.idMedico = ME.idMedico
where P.idPaciente = @idpaciente

ELSE
	PRINT 'No existen historias clinicas para el paciente'



-------------------------------------------------------------------
--Sp para ver las especialidad existentes

create proc SP_EspecialidadesMedicas

as
set nocount on


if exists (select * from Especialidad)
select * from Especialidad

else
	select 0 as resultado

exec SP_EspecialidadesMedicas
