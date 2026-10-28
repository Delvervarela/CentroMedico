--Stored Procedure

Create proc SP_Paciente (
						@idPaciente int 



)
as

select * from Paciente where idPaciente = @idPaciente

go


--comando para ejecutar un SP
exec SP_Paciente 7
