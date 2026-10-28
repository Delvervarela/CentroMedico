--SP para actualizar los datos de un paciente

--select * from Paciente

Create proc SP_ActualizarPaciente (
									@idpaciente paciente,
									@dni varchar (20), 
									@nombre varchar (50),
									@apellido varchar (50),
									@domicilio varchar (200),
									@telefono varchar (20),
									@email varchar (30),
									@observacion observacion
)
as
set nocount on

if exists (select * from paciente where idPaciente = @idpaciente)

update paciente set dni = @dni,
					nombre = @nombre,
					apellido = @apellido,
					domicilio = @domicilio,
					telefono = @telefono,
					email = @email,
					observacion = @observacion

where idPaciente = @idpaciente

else 
	PRINT'Información invalida, ingresela de nuevo correctamente'

	select * from Paciente
	exec SP_ActualizarPaciente 4, '202314156', 'Carlos', 'Calletano', 'Los pinares', '2222-3840', 'carloscalle@gmail.com', 'Paciente con cupo reservado' 
