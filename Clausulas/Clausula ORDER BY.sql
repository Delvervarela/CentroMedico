-- La clasula ORDER BY se utiliza en SQL para ordenar los resultados de una consulta en un orden específico, 
--ya sea ascendente (ASC) o descendente (DESC).

--por ejemplo:

SELECT * FROM paciente ORDER BY fechaNacimiento ASC;

--El resultado de esta consulta será todas las filas de la tabla paciente ordenadas por fechaNacimiento en orden ascendente.

---si queremos ordenar por apellido en orden descendente, podemos hacer lo siguiente:   

SELECT * FROM paciente ORDER BY fechaNacimiento DESC;

-- Ahi nos retornara todas las filas de la tabla paciente ordenadas por fechaNacimiento en orden descendente.


--Podemos combinar las clausulas ORDER BY con la TOP para obtener un resultado ordenado y limitado al mismo tiempo. 
--Por ejemplo, si queremos obtener los 5 pacientes más jóvenes, podemos hacer lo siguiente:

SELECT TOP 5 * FROM paciente ORDER BY fechaNacimiento DESC;

-- El resultado de esta consulta será las 5 filas de la tabla paciente con las fechas de nacimiento más recientes,