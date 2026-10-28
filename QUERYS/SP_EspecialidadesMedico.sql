--SP para ver las especialidades de los medicos



alter proc SP_EspecialidadesMedico (
								@idmedico medico)

as
set nocount on

if exists (select * from Medico M
				inner join MedicoEspecialidad ME
				on me.idMedico = m.idMedico
				inner join Especialidad E
				on e.idEspecialidad = me.idEspecialidad
				where m.idMedico = @idmedico)

select * from Medico M
inner join MedicoEspecialidad ME
on me.idMedico = m.idMedico
inner join Especialidad E
on e.idEspecialidad = me.idEspecialidad
where m.idMedico = @idmedico

else
print 'Este medico no existe'

exec SP_EspecialidadesMedico 1