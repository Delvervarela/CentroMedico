-- El bucle WHILE nos permite ejecutar un bloque de codigo hasta que se cumpla una condicion   
-- Es decir que se va a ejecutar repetidamente hasta que se cumpla la condicion
 
 
--Vamos a hacer el ejemplo de u contador:

DECLARE @contador INT = 0 -- declaramos e iniciamos variable en 0

WHILE @contador <=10 -- el bucle se detendra cuando el contador llegue a 10

BEGIN
    PRINT @contador
    SET @contador = @contador + 1
    
END

--El resultado que nos dara es que veremos el conteo que inicia en 0 y termina en 10.