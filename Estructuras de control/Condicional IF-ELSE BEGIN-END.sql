-- Ejemplo:

DECLARE @idPaciente INT
SET @idPaciente = 7
IF @idPaciente = 7

SELECT * FROM Paciente WHERE idPaciente = @idPaciente


--el resultado sera que nos mostrara al paciente con id 7

--La mejor forma que podemos usar estas condicionales es:

DECLARE @idPaciente INT
DECLARE @idTurno INT

SET @idPaciente = 7

IF @idPaciente = 7

BEGIN
    SET @idTurno = 20

    SELECT *FROM Paciente WHERE idPaciente = @idPaciente
    PRINT @idTurno

END

ELSE

    BEGIN
        PRINT  'no se cumplio la condicion'
    END

--Aqui cubriremos los dos tipos de condiciones, en caso de que se cumpla nos mostrara el paciente con id 7 y el numero 20
-- sino se cumple nos mostrara el mensaje de que no se cumplio la condicion