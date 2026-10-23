/* El operador IN se utiliza para comparar un valor con una lista de valores. Si el valor coincide con alguno 
de los valores en la lista, la condición se evalúa como verdadera.

por ejemplo: */

SELECT * FROM turno WHERE estadoTurno IN (2, 1, 3);

---El resultado de esta consulta será una fila que cumpla al menos una de las condiciones: que el estadoTurno sea 2, 1 o 3.

--otro ejemplo seria:

SELECT * FROM paciente WHERE apellido IN ('Perez', 'Ramirez', 'Gonzalez');

--el resultado de esta consulta será una fila que cumpla al menos una de las condiciones: que el apellido sea 'Perez', 'Ramirez' o 'Gonzalez'.