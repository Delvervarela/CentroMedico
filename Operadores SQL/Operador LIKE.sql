--el operador LIKE se utiliza para buscar un patrón específico en una columna de texto. 
--Se puede utilizar con los comodines % y _ para representar cualquier número de caracteres o un solo carácter, respectivamente.

--por ejemplo:

SELECT * FROM paciente WHERE nombre LIKE 'berto%';

--El resultado de esta consulta será una fila que cumpla la condición: que el nombre comience o tenga simitud con 'berto'.

