/* el operador OR se utiliza para combinar dos o más condiciones en una consulta SQL. Cuando se utilizan múltiples 
condiciones con el operador OR, al menos una de las condiciones debe ser verdadera para que la fila sea incluida en el resultado de la consulta.

por ejemplo: */

SELECT * FROM Paciente WHERE apellido = 'Perez' OR nombre = 'Roberto' OR idPaciente = 7;

--El resultado de esta consulta será una fila que cumpla al menos una de las condiciones: que el apellido sea 'Perez', 
--o que el nombre sea 'Roberto', o que el idPaciente sea 7.