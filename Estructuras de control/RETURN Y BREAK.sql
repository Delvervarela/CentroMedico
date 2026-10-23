--Instruccion RETURN, esta nos sirve para salir de un script donde se esta ejecutando lineas coninstrucciones y no se ejecuta nada mas.

--para este ejemplo vamos a utilizar el contador que ya habia hecho:

DECLARE @contador INT = 0 -- declaramos e iniciamos variable en 0

WHILE @contador <=10 -- el bucle se detendra cuando el contador llegue a 10

BEGIN
    PRINT @contador
    SET @contador = @contador + 1
    IF @contador = 3
    RETURN
    
END
-- El resultado de esto seria que cuando el contador llegue a 3, este automaticamente se detiene y nos muestra el resultado que seria 0, 1 y 2.

--Instruccion BREAK, esta instruccion nos sirve muy similar al return, el BREAK rompe el bucle antes de que termine pero termina de ejecutar la instrucciones

--por ejemplo:

DECLARE @contador INT = 0 -- declaramos e iniciamos variable en 0

WHILE @contador <=10 -- el bucle se detendra cuando el contador llegue a 10

BEGIN
    PRINT @contador
    SET @contador = @contador + 1
    IF @contador = 3
    BREAK
    
END

PRINT 'Sigue ejecutando'

-- El resultado de esta seria que el bucle comenzaria pero como esta el BREAK romperia el bucle hasta contar hasta 3 (0, 1 y 2)
-- y seguiria con la instruccion del print 'sigue ejecutando'
