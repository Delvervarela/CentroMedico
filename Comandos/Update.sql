-- El comando update se utiliza en SQL para modificar los datos existentes en una tabla. 
--Se puede utilizar para actualizar uno o varios registros a la vez, y se puede especificar qué registros se deben 
--actualizar mediante una cláusula WHERE.

--por ejemplo:

UPDATE paciente SET observacionTurno = 'Paciente con fiebre' 

--el resultado de esta consulta será que se actualizará la columna observacionTurno de todos los registros de la tabla paciente,
--y se establecerá el valor 'Paciente con fiebre' en esa columna para todos los registros. 

--Si queremos ser mas especificos con el comando, seria:

UPDATE paciente SET observacionTurno = 'Paciente con fiebre' WHERE idPaciente = 1;

-- Ahi se actualizara el campo observacionTurno del paciente con idPaciente = 1, 
--y se establecerá el valor 'Paciente con fiebre' en esa columna para ese registro en particular.