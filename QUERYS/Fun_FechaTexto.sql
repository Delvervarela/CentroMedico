--Ejercicios de practica - FechaTexto

--Obtener una fecha formato texto, solo se ingresa la fecha como parametro

alter function Fun_FechaTexto (@fecha datetime)

returns varchar (60)

as
BEGIN

		DECLARE @dia varchar(20)
		declare @mes varchar(20)
		declare @fechatexto varchar (30)




		set @dia = (case when datepart(dw,@fecha)= 1 then 'Domingo ' + convert (char (2), datepart(DAY, @fecha))
						 when datepart(dw,@fecha)= 2 then 'Lunes ' + convert (char (2), datepart(DAY, @fecha))
						 when datepart(dw,@fecha)= 3 then 'Martes ' + convert (char (2), datepart(DAY, @fecha))
						 when datepart(dw,@fecha)= 4 then 'Miercoles ' + convert (char (2), datepart(DAY, @fecha))
						 when datepart(dw,@fecha)= 5 then 'Jueves ' + convert (char (2), datepart(DAY, @fecha))
						 when datepart(dw,@fecha)= 6 then 'Viernes ' + convert (char (2), datepart(DAY, @fecha))
						 when datepart(dw,@fecha)= 7 then 'Sabado ' + convert (char (2), datepart(DAY, @fecha))
						 end)

		

		set @mes = (case when DATEPART (mm, @fecha) = 1 then 'Enero'
					when DATEPART (mm, @fecha) = 2 then 'Febrero'
					when DATEPART (mm, @fecha) = 3 then 'Marzo'
					when DATEPART (mm, @fecha) = 4 then 'Abril'
					when DATEPART (mm, @fecha) = 5 then 'Mayo'
					when DATEPART (mm, @fecha) = 6 then 'Junio'
					when DATEPART (mm, @fecha) = 7 then 'Julio'
					when DATEPART (mm, @fecha) = 8 then 'Agosto'
					when DATEPART (mm, @fecha) = 90 then 'Septiembre'
					when DATEPART (mm, @fecha) = 10 then 'Octubre'
					when DATEPART (mm, @fecha) = 11 then 'Noviembre'
					when DATEPART (mm, @fecha) = 12 then 'Diciembre'
					end)


set @fechatexto = @dia + ' de ' + @mes
return @fechatexto 


END


print dbo.Fun_FechaTexto ('20190217')