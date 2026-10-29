--TABLAS TEMPORALES


-- TABLA TEMPORAL EN MEMORIA
--Esta tabla va a existir mientras el script este en ejecucion, ya cuando no esta se destruira

declare @mitabla table (id int identity (1, 1), pais varchar(50))

insert into @mitabla values ('MEXICO')
insert into @mitabla values ('PERU')
insert into @mitabla values ('ECUADOR')
insert into @mitabla values ('HONDURAS')

SELECT * FROM @mitabla


---------------------------------------------------------------

--TABLA TEMPORAL FISICA
--Cuando la creamos va aexistir en la base de datos hasta que reiniciemos el servicio de base de datos y ahi es cuando se va a destruir.

create table #mitabla (id int identity (1, 1), nombre varchar (50), apellido varchar(50))

insert into #mitabla values ('Alex', 'Hunter')
insert into #mitabla values ('Fernando', 'Diez')
insert into #mitabla values ('Ramiro', 'Ramirez')


select * from #mitabla
drop table #mitabla

-----------------------------------------------------------------------------------
--Ejercicio
--Genera una tabla temporal que almacena los turnos de todos los pacientes una vez que se tengan los turnos, se va a conectar con la tabla pacientes  atreves de un inner join

declare @turnos table (id int identity (1, 1), idturno turno, idpaciente paciente)
declare @idpaciente paciente 
set @idpaciente = 9

insert into @turnos (idturno, idpaciente)
select TP.idTurno, p.idPaciente from Paciente P
inner join TurnoPaciente TP
on TP.idPaciente = p.idPaciente


declare @i int , @total int
SET @i = 1
set @total = (select count (*) from @turnos)


while @i <= @total
BEGIN 
	
	if (Select idpaciente from @turnos where id = @i) <> @idpaciente
	delete from @turnos where id= @i

 

 SET @i = @i + 1

END

select * from Paciente P
inner join @turnos T
on T.idpaciente = P.idPaciente


select * from @turnos


----------------------------------------------------------------
--Ejercicio de crear una tabla temporal en la que se pueda ver la informacion del paciente, su turno, su medico y la especialidad del medico

declare @informacionPaciente table (id int identity (1, 1), idturno turno, idpaciente paciente, idmedico medico, idmedicoespecialidad Especialidad, idespecialidad VARCHAR (30))
declare @idpaciente1 paciente
set @idpaciente1 = 9

insert into @informacionPaciente (idturno, idpaciente, idmedico, idmedicoespecialidad, idespecialidad)
select TP.idTurno, P.idPaciente, m.idMedico, ME.idEspecialidad, e.especialidad  from Paciente P
				inner join TurnoPaciente TP
				on tp.idPaciente = p.idPaciente
				inner join Medico M
				on tp.idMedico = m.idMedico
				inner join MedicoEspecialidad ME
				on me.idMedico = m.idMedico 
				inner join Especialidad E
				on e.idEspecialidad = ME.idEspecialidad

declare @contador int  = 1
declare @totalregistros int = (select count (*) from @informacionPaciente)


while @contador <= @totalregistros
BEGIN

		IF (select idpaciente from @informacionPaciente where id = @contador) = 9
		delete from @informacionPaciente where id = @contador

		set @contador = @contador + 1

END


select * from paciente P 
inner join @informacionPaciente PI
on PI.idpaciente = p.idPaciente



SELECT * FROM @informacionPaciente









