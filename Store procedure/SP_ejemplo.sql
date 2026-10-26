-- Un store procedure es un conjunto de instrucciones SQL que se almacenan en la base de datos y se pueden ejecutar como una unidad.
--lo que que hace este sp es retornar la informacion de un paciente en base a su idPaciente, ademas de retornar el idPais del paciente

CREATE PROC SP_EJEMPLO (
            @idpaciente INT

)

AS

SELECT apellido, nombre, idPais, observacionTurno, (SELECT idPais from pais ps where ps.idPais = pa.idPais)
from paciente pa where idPaciente = @idPaciente

GO


--para ejecutar el sp se hace de la siguiente manera:
--EXEC SP_ejemplo @idPaciente = 1 - lo que hace es retornar la informacion del paciente con idPaciente = 1GIT 