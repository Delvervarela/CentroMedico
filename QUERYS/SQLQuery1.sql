--Comando Update

select * from Turno
select * from TurnoPaciente
select * from Medico
select * from Paciente

update Paciente set observacion = 'paciente pendiente' where idPaciente = 4

--Ejercicio
insert into Turno (fechaTurno, estadoTurno, observacion)
values (2019-01-22, 0, 'turno pendiente de aporbación')

insert into TurnoPaciente (idTurno, idPaciente, idMedico)
values (6, 1, 1)

--Comportamiento del comando delete en foreign keys

delete from Paciente where idPaciente = 6

-- lo que ocurrira es que no se podra borrar el paciente, ya que este esta ligado a la tabla TurnoPaciente
-- lo que podemos hacer es borrar el registro de ese turno, en caso de que queramos borrar el usuario
delete from TurnoPaciente where idTurno = 1
--Ya que borramos el registro de la tabla TurnoPaciente, ahora si podemos borrar al usuario

--Ejercicio
delete from Turno where idTurno = 6

--Ejercicio de verificacion de la tabla medico para asegurar de que no permite valores null
select * from Medico
insert into Medico ( nombre, apellido)
values (null, null)

--Ejercicio de verificacion de la propiedad identity de la tabla TurnoEstado de no a yes
Select * from TurnoEstado 
insert into TurnoEstado (descripcion)
values ('Aceptado')
delete from TurnoEstado where idEstado = 7

--Ejercicio de cambiar nombre a un campo de la tabla pago
select * from Pago
update Pago set observación = 'Aceptado'

--Ejercicio Order by
select * from Pago order by FechaPago

--Ejercicio order by y top - Paciente mas joven
select * from Paciente
select top 1 * from Paciente order by fnacimiento desc 

--Funcion MAX Y MIN
select * from Pago
select max (fechaPago) as FechaMaxima from pago

select min (fechaPago) as FechaMinima from Pago

--Funcion SUM
select * from pago
select sum(monto)  as MontoTotal from Pago

-- podemos sumarle a este valor, es agregarle la cantidad que queramos sumar fuera del parentesis, por ejemplo +20.

--Funcion AVG (promedio)
select * from Pago
select avg(monto) as MontoPromedio from Pago
-- Tambien podemos aplicar lo de sumarle cualquier cantidad fuera del parentesis

--Funcion count (contar)
select * from Paciente
select count (idPaciente) as TotalPacientes from Paciente
select count (idPaciente) as TotalLopez from paciente where apellido = 'Lopez'

--Funcion HAVING (a esta funcion se complementa con group by y count)
select * from Turno
select estadoTurno from Turno group by estadoTurno having count(estadoTurno) = 2

--Operadores logicos

--Operador AND
select * from Paciente where apellido = 'Lopez' and nombre = 'carlos' and idPaciente = 5

--Operador or
select * from Paciente where apellido = 'Lopez' or nombre = 'Alex' 

--Operador IN
select * from Turno where estadoTurno in(3, 4, 0)
select * from Paciente where apellido in ('Paredes', 'Lopez')

--Operador LIKE
select * from Paciente where nombre like 'clau%'

--Operador NOT LIKE
select * from Paciente where nombre not like 'clau%'

--operador BETWEEN
select * from Turno where fechaTurno between '1905-07-03' and '2023-03-15 13:00:00'
select * from Turno where estadoTurno between 4 and 7

--Combinacion de operadores
select * from paciente where apellido = 'Hunter' and (nombre = 'Alex' or idPaciente = 1 or idpais = 'HON')
and idPaciente not in (8)



