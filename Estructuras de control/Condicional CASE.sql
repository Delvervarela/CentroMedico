-- La condicional CASE nos permite tomar desiciones en funcion al valor de una variable o un campo.

--ejemplo:

DECLARE @valor INT
DECLARE @resultado CHAR(10)= ''

SET @valor = 10

SET @resultado = (CASE WHEN @valor = 10 THEN 'ROJO'
                       WHEN @valor = 20 THEN 'AMARILLO'
                       WHEN @valor = 30 THEN 'AZUL'

                  ELSE 'GRIS'
                  END)
PRINT @resultado

-- Aqui como le asiganmos 10 a la variable valor nos dara de resultado 'rojo', si le llegamos a poner 50 a la variable valor
-- Solo cumpliriamos la variable else que nos mostraria en pantalla 'Gris'

--Tambien lo podemos aplicar con un select 

SELECT *, (CASE WHEN estadoTurno = 1 THEN 'ROJO'
                WHEN estadoTurno  = 2 THEN 'AMARILLO'
                WHEN estadoTurno  = 3 THEN 'AZUL'
                ELSE 'GRIS'
         
          END) AS colorTurno FROM turno

-- El resultado que nos daria es que iria hasta la tabla turno y buscaria los estadosTurno que cumplan con el valor que pedimos
-- ademas que nos mostraria una columna extra donde nos dice en color de cada numero.