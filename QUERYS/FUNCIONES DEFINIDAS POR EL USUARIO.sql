--FUNCIONES DEFINIDAS POR EL USUARIO

--FUNCIONES DE TIPO ESCALARES
--Son funciones que nos permiten recibir uno o mas parametos y deevolver un valor de un tipo especifico

CREATE FUNCTION concatenar (
							 @apellido varchar(50),
							 @nombre varchar (50)
							)
returns varchar(100)

as
BEGIN

		DECLARE @resultado varchar(100)
		set @resultado = @apellido + ', ' + @nombre
		return @resultado


END

select dbo.concatenar('Lopez', 'Roberto')


-----------------------------------------------------

--Funcion para obtener de que pais es el paciente

Create function obtenerPais (
							@idpaciente paciente)
returns varchar (50)

as
BEGIN

			DECLARE @pais varchar (50)
			set @pais = (select pa.pais from Paciente P
						 inner join Pais PA
						 on PA.idPais = P.idpais
						 where idPaciente = @idpaciente)

		return @pais
END


select dbo.obtenerPais (1) as PaisPaciente



select * from Pais
select * from Paciente




---------------------------------------------------------------
--Funciones de tipo tabla
--Nos permiten recibir uno o mas parametros y con ellos realizar acciones adentro de la funcion y retornan un conjunto de registros

CREATE FUNCTION listaPaises ()

returns @paises table(idpais char(3), pais varchar (50))
as
BEGIN

		INSERT INTO @paises values ('HON', 'Honduras')
		INSERT INTO @paises values ('MEX', 'Mexico')
		INSERT INTO @paises values ('NIC', 'Nicaragua')
		INSERT INTO @paises values ('CHI', 'China')
		INSERT INTO @paises values ('PER', 'Perú')

	return

END

select * from dbo.listaPaises () --Tambien lo podemos ver como si fueran tablas temporales (no son iguales obviamente) con datos que nosotros definimos
