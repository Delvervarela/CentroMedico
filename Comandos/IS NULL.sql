-- IS NULL sirve para no dejar vacio el valor de una variable por decirlo asi

--por ejemplo:

DECLARE @ordenamiento CHAR (1)
DECLARE @valorordenamiento CHAR (1)

SET @valorordenamiento = ISNULL (@ordenamiento, 'A')

PRINT @valorordenamiento

-- se la agrega es is null a la variable que queda dentro de un parentesis
-- junto con el valor que le queremos agregar a la variable en caso de que sea null.


