/* El operador AND se utiliza para combinar dos o más condiciones en una consulta SQL. Cuando se utilizan múltiples condiciones 
con el operador AND, todas las condiciones deben ser verdaderas para que la fila sea incluida en el resultado de la consulta.

Por ejemplo: */

SELECT * FROM Paciente WHERE apellido = 'Roberto' AND idPaciente = 7;

-- el resultado de esta consulta será una fila que cumpla ambas condiciones: que el apellido sea 'Roberto' y que el idPaciente sea 7.
