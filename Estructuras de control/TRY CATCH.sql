--Esta estructura nos sirve para el manejo de errores en tiempo de ejecucion.

DECLARE @contador INT = 0 -- declaramos e iniciamos variable en 0

WHILE @contador <=10 -- el bucle se detendra cuando el contador llegue a 10

BEGIN
    PRINT @contador
    SET @contador = @contador + 1
    IF @contador = 3
    BREAK
    
END

PRINT 'Sigue ejecutando'

--la parte de begin ayuda a evakuar el codigo que tiene dentro

BEGIN TRY

SET @contador = 'Texto'

END TRY


--nos va a devolver el error de una forma mas detallada.
BEGIN CATCH

PRINT 'no es posible asignar un texto a la variable contador'

END CATCH



