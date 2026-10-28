--select * from Medico
select * from MedicoEspecialidad
select * from Especialidad

EXEC ALTA_MEDICO 'Rigoberto','Mendoza',4 ,'Medico practicante'

CREATE PROC ALTA_MEDICO(
				@nombre varchar (50),
				@apellido varchar (20),
				@idespecialidad int,
				@descripcion varchar (50)
)
AS

set nocount on

IF NOT EXISTS(select top 1 idMedico from Medico where nombre = @nombre and apellido=@apellido)
BEGIN
INSERT INTO Medico ( nombre, apellido)
values (@nombre, @apellido)

declare @auxidmedico int
set @auxidmedico = @@IDENTITY

INSERT INTO medicoEspecialidad (idMedico, idEspecialidad, descripcion)
values (@auxidmedico, @idespecialidad, @descripcion)
PRINT 'El medico se agrego correctamente'
RETURN


END


ELSE

BEGIN

		PRINT 'EL MEDICO YA EXISTE'
		RETURN
END
