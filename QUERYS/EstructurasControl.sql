--Condicional if - else

declare @idpaciente int 
declare @idturno int

set @idpaciente = 7


IF @idpaciente = 7
BEGIN
	set @idturno = 20
	select * from Paciente where idPaciente=@idpaciente
	print @idturno
END
	ELSE 
BEGIN
		PRINT'No se cumplio la condición'
END

--para que nos de resultado se tiene que cumplir la condicion si o si.

--Funcion exists
--Usamos el condicional que hicimos anteriormente
declare @idpaciente1 int 
declare @idturno1 int

set @idpaciente1 = 7


IF @idpaciente1 = 7
BEGIN
	set @idturno1 = 20
	select * from Paciente where idPaciente=@idpaciente1
	print @idturno1

	IF  exists (select * from Paciente where idPaciente = 4) --(Anidado)
	print 'Existe'
	
	ELSE
	PRINT 'No existe'

END

--Estructura while
declare @contador int =0
while @contador <= 10
		
BEGIN

	print @contador
	set @contador = @contador +1
	
END

--Condicional CASE
declare @valor int
declare @resultado char (10)= ''
set @valor = 20

set @resultado = (case when @valor = 10 then 'ROJO'
					   when @valor = 20 then 'AZUL'
					   when @valor = 30 then 'AMARILLO'
					   END)
	PRINT @resultado

--podemos utilizarla en un select
select * from Turno
select *, (case when estadoTurno = 0 then 'ROJO'
				when estadoTurno = 3 then 'AZUL'
				when estadoTurno = 4 then 'AMARILLO'
				ELSE 'GRIS'
				end
) AS ColorEstadoTurno from Turno

--Ejercicio prueba para actualizar los numeros de telefono de los pacientes de una tabla
select * from Paciente

update paciente set telefono = (case when nombre = 'Jorge' then '2291-3943'
									 when nombre = 'Carlos' then '2291-4012'
									 when nombre = 'Claudio' then '2291-1715'
									 when nombre = 'Leandro' then '2291-1010'
									 when nombre = 'Ramiro' then '2291-1011'
									 when nombre = 'Alex' then '2291-7012'
end)


--Instruccion Return
declare @contador1 int =0
while @contador1 <= 10
		
BEGIN

	print @contador1
	set @contador1 = @contador1 +1
	if @contador1 = 3
	return
	print 'Hola'
END

---deja de contar y no sigue la isntruccion de imprimir el tercer hola

--Instruccion BREAK
declare @contador2 int =0
while @contador2 <= 10
		
BEGIN

	print @contador2
	set @contador2 = @contador2 +1
	if @contador2 = 3
	BREAK
END
	print 'Sigue ejecutando'

--El break rompe el ciclo pero termina de ejecutar la instrucciones, como el printe que tenemos debajo


--Estructura TRY CATCH
declare @contador int 
BEGIN TRY
set @contador = 'texto'
END TRY 

BEGIN CATCH
	Print 'No es posible asignar un texto a la variable @contador'
END CATCH