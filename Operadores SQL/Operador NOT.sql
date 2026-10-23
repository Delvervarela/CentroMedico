-- El operador NOT se utiliza para negar una condición en una consulta SQL. 
--Cuando se utiliza el operador NOT, la condición se evalúa como verdadera si la condición original es falsa y viceversa.

--por ejemplo:

SELECT * FROM paciente WHERE NOT apellido = 'Perez';

--El resultado de esta consulta será una fila que cumpla la condición: que el apellido no sea 'Perez'.

--otro ejemplo seria:

SELECT * FROM paciente WHERE nombre NOT LIKE 'berto%';

--El resultado de esta consulta será una fila que cumpla la condición: que el nombre no comience o tenga simitud con 'berto'.

