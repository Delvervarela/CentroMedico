
--Ejemplo:

SELECT estadoTurno FROM turno GROUP BY estadoTurno HAVING COUNT (estadoTurno) =3

--el resultado que nos dara es mostranos los estado turno con valores igual a 3.