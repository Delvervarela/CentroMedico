--la funcion EXISTS como lo dice su nombre, nos sirve para saber si algo existe

-- voy a usar el ejemplo de la condicional que hice anteriormente

DECLARE @idPaciente INT
DECLARE @idTurno INT

SET @idPaciente = 7

IF @idPaciente = 7

BEGIN
    SET @idTurno = 20

    SELECT *FROM Paciente WHERE idPaciente = @idPaciente
    PRINT @idTurno

    IF EXISTS (SELECT * FROM paciente WHERE idPaciente = 4)
    PRINT 'EXISTE'

END


-- Supongamos que se cumple la condicion de que idpaciente es igual a 7, el resultado que veriamos es la informacion del paciente con id 7
-- el numero 20 de idTurno
-- y si existe el paciente con id 4 nos mostraria un mensaje de que existe.
