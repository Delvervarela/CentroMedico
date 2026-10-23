-- La clausula GROUP BY se utiliza en SQL para agrupar filas que tienen los mismos valores en una o más columnas.

--por ejemplo:

SELECT idPais FROM paciente GROUP BY idPais;

-- la consulta nos retornara una lista de todos los idPais distintos que existen en la tabla paciente, sin duplicados.

