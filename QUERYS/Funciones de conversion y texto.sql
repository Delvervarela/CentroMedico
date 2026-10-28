--Funciones LEFT AND RIGHT
--LEFT nos sirve para tomar los valores a la izquierda de un texto o un numero
DECLARE @var1 varchar(25)
set @var1 = 'Ramiro'
--print LEFT (@var1, 2)


DECLARE @var2 varchar(25)
set @var2 = 'Gonzales'
--print RIGHT (@var2, 2)--Asi mismo con right solo que toma los valores de la derecha

print left (@var1, 1) + left (@var2, 1) --podemos hacer combinaciones de iniciales por ejemplo

--ejercicio de conseguir las iniciales de los pacientes
select * from Paciente
select LEFT(nombre, 1) as InicialNombre, LEFT (apellido,1) as InicialApellido from Paciente


--Funcion LEN (lenght --largo)
--Esta funcion nos sirve para contar cuantos caracteres de largo tiene un texto o un numero
--podemos combinarla con LEFT AND RIGHT


DECLARE @var4 varchar(25)
set @var4 = 'Ramiro'

print left (@var4, len(@var4)-1)
--print len(@var4) 


--Ejercicio de la funcion len de obtener la cantidad de caracteres que tiene el campo domcilio de la tabla paciente
select domicilio, LEN(domicilio) as CaracteresDomicilio from Paciente


--Funciones LOWER Y UPPER
--Funcion lower - convierte toda la cadena de caracteres en minuscula
--Funcion upper - convierte los caracteres en mayuscula
declare @var5 varchar(20)
declare @var6 varchar(20)

set @var5 = 'Alex'
set @var6 = 'Hunter'

print lower(@var5)+ ' ' + upper (@var6)

--Ejercicio de poner en minuscula, mayuscula y dejarlos con la inicial mayuscula los nombres de la tabla Paciente
select * from Paciente

select LOWER(nombre) as NombreMinuscula, LOWER(apellido) as ApellidoMinuscula from Paciente


--Funcion replace
--Nos sirve para remplazar caracteres de una palabra por ejmplo
declare @var7 varchar (20)
declare @var8 varchar (20)

set @var7 = 'Rigobert"o"'
set @var8 = 'C@stro'

select REPLACE(@var7, '"', '') as Remplazo
select REPLACE(@var8, '@', 'a')
--recibe 3 parametros (el primero es la cadena de caracteres en la que queremos remplazar, el segundo es el caracter que queremos remplazar y el tercero es el caracter con el que vamos a remplazarlo)

select * from Paciente
select REPLACE (nombre, 'Jorge', 'Tomas') from Paciente where idPaciente = 10

update Paciente set nombre = 'Jorge' where nombre = 'Tomas' and apellido = 'Ramirez'


--Funcion Replicate
--Nos permite repetir una cantidad de caracteres las veces que nosostros queramos


print replicate ('0', 5) --toma 2 parametros (el primero es el caracter que queremos repetir y el segundo es las veces que queremos que se repita)


--Funciones LTRIM Y RTRIM
--Permiten eliminar los espacios de una cadena de caracteres ya sea a la izq o der
declare @var7 varchar (20)
declare @var8 varchar (20)

set @var7 = '     Rigoberto     '
set @var8 = 'Castro               '

select ltrim(rtrim(@var7)) + ' ' + ltrim(rtrim(@var8)) +  '    *     ' --Ordena el nombre para que no haya espacios



--Funcion CONCAT
--Podemos concatenar 2 o mas valores
declare @var7 varchar (20)
declare @var8 varchar (20)

set @var7 = '     Rigoberto     '
set @var8 = 'Castro' 

select concat (ltrim(rtrim(@var7)) + ' ' + ltrim(rtrim(@var8)), 'A', 'B', 'C')

select CONCAT (nombre, apellido) As NombreConcatenado from Paciente



--Funcion GETDATE y GETUTCDATE
--Se utilizan para almacenar en campos fecha, la hora y fecha en que fueron almacenados

select GETDATE() as HoraHonduras --nos dara la fecha y hora de cuando lo ejecutamos
select GETUTCDATE() as HoraMeridiano --este nos dara la hora universal que esta en el meridiano de greenwich


--Funcion DATEADD
SELECT DATEADD(DAY, -2, GETDATE()) --ESTE NOS SIRVE PARA ARREGLAR UN DESFASE HORARIO (PARA DIAS)
SELECT DATEADD(HOUR, 3, GETDATE()) -- " "- PARA HORAS


--Funcion datediff

select DATEDIFF(year, GETDATE(), '20170214') --para ver la diferencia de tiempo, basicamente es una comparacion
select DATEDIFF(MONTH, '20170214',GETDATE())


--Funcion datepart

select DATEPART(DAY, GETDATE()) --nos permite obner un intervalo especifico de una fecha


--Funcion Isdate
--nos permite evaluar si una feha especifica tiene correcto el formato
select ISDATE ('20190214')


if ISDATE ('20190131') = 1
	print 'Fecha Correcta'
else
	print 'Fecha Incorrecta'


--Funciones CAST Y CONVERT
--cast nos sirve para convertir tipos de datos en otro, que sea del mismo genero, por ejemplo decimal a int, pero no a varchar 
--convert nos permite convertir con mas detalle los tipos de datos

declare @numero money
set @numero = 500.40
print @numero

--select CAST (@numero as int) as Numero
--select monto, CAST(monto as int) as Monto from pago	


--Convert
declare @fecha datetime
set @fecha = GETDATE()
print @fecha
select CONVERT(char(20), @fecha, 111 )
