-- El operador BETWEEN se utiliza para filtrar los resultados de una consulta SQL y seleccionar 
--filas que tengan un valor dentro de un rango específico.
-- El operador BETWEEN se utiliza con valores numéricos, de fecha o de texto.

--por ejemplo:

SELECT * FROM turno WHERE fechaTurno BETWEEN '2023-01-01' AND '2023-12-31';

--El resultado de esta consulta será una fila que cumpla la condición: 
--que la fechaTurno esté entre el 1 de enero de 2023 y el 31 de diciembre de 2023.

--si queremos ser mas especificos y filtrar por un rango de fechas y horas, podemos hacer lo siguiente:

SELECT * FROM turno WHERE fechaTurno BETWEEN '2023-01-01 08:00:00' AND '2023-12-31 17:00:00';

-- el resultado de esta consulta será una fila que cumpla la condición:
--que la fechaTurno esté entre el 1 de enero de 2023 a las 08:00:00 y el 31 de diciembre de 2023 a las 17:00:00.