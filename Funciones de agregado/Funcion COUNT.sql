-- La funcion COUNT nos sirve para hacer conteos.

--por ejemplo:

SELECT COUNT (*) FROM Paciente

-- El resultado de esta consulta sera que va a contar todas las filas que hay en la tabla paciente 

-- si queremos una consulta mas especifica podemos hacer esto:

SELECT COUNT (idPacientes) FROM Paciente WHERE apellido = 'Perez'

-- El resultado sera que nos va a mostrar todos los resultados de los registros con apellido perez


