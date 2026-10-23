-- La clausula TOP se utiliza en SQL para limitar el número de filas devueltas por una consulta.

-- Por ejemplo:

SELECT TOP 1 * FROM paciente;

-- El resultado de esta consulta será la primera fila de la tabla paciente, ya que se ha especificado que solo se desea obtener una fila.

--ya si queremos obtener las 5 primeras filas de la tabla paciente, podemos hacer lo siguiente: 

SELECT TOP 5 * FROM paciente;

-- El resultado de esta consulta será las primeras 5 filas de la tabla paciente, ya que se ha especificado que solo se desea obtener 5 filas.
