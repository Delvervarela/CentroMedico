--select * from Paciente


EXEC ALTA_PACIENTE '20212151', 'Jorge', 'Nyugen', '20150312', 'calle 15', 'HON', '2231-4789', 'jorge@gmail.com', 'sin observaciones' 

--Este SP nos sirve para insertar datos de un nuevo paciente a la tabla pacientes y no permite que el paciente que ya ha sido ingresado se repita
alter proc ALTA_PACIENTE(
						@dni varchar (20),
						@nombre varchar (50),
						@apellido varchar (50),
						@fnacimiento varchar (8),
						@domicilio varchar (50),
						@idpais varchar (3),
						@tel varchar (20),
						@email varchar (30),
						@observacion varchar (1000)= ''
						)
AS

if NOT exists (select * from Paciente where dni=@dni)
BEGIN
	INSERT INTO Paciente (dni, nombre, apellido, fnacimiento, domicilio, idpais, telefono, email, observacion)
	values (@dni, @nombre, @apellido, @fnacimiento, @domicilio, @idpais, @tel, @email, @observacion)
	PRINT 'El paciente se agregÓ correctamente'
	RETURN
END

ELSE
BEGIN
	
	PRINT 'EL PACIENTE YA EXISTE'

END