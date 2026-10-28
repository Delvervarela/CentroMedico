--select * from Turno
--select * from TurnoPaciente
--select * from Paciente


exec ALTA_Turno '20190502 08:20', 5, 2, 'El Paciente tiene que estar en ayunas'

--Este SP nos sirve para insertar datos de un nuevo paciente a la tabla pacientes y no permite que el paciente que ya ha sido ingresado se repita
create proc ALTA_Turno(
						@fecha char (14),
						@idpaciente paciente,
						@idmedico medico,
						@observacion observacion
						)
AS

/*
  Estado = 0 (pendiente)
  Estado = 1 (realizadp)
  Estado = 2 (cancelado)

*/

if NOT exists (select top 1 idTurno from Turno where fechaTurno=@fecha)
BEGIN
	INSERT INTO Turno( fechaTurno, estadoTurno, observacion)
	values (@fecha, 0, @observacion)

	declare @axidturno turno
	set @axidturno = @@IDENTITY --Aqui se almacena el ultimo valor que se inserto en la tabla turno (id del turno)

	INSERT INTO TurnoPaciente (idTurno, idPaciente, idMedico)
	values (@axidturno, @idpaciente, @idmedico)
	PRINT 'El turno se agregó correctamente'
	RETURN
END

ELSE
BEGIN
	
	PRINT 'EL TURNO YA EXISTE'

END