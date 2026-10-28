--Clausulas JOIN

--INNER JOIN
--nos permite cruzar tablas por campos que tienen en comun para darnos un resultado mas amplio

select * from Paciente
select * from TurnoPaciente

select * from Paciente P 
INNER JOIN TurnoPaciente T
on T.idPaciente = P.idPaciente

--En esta consulta nos daria de resultado los pacientes que han sacado turnos y la informacion de sus turnos en la tabla turnopaciente

select * from Medico M
inner join TurnoPaciente P 
on M.idMedico = P.idMedico


-- LEFT JOIN
--nos permite obtener los registros de la tabla izquierda y solamente los de la derecha que coincidan con la clausula on
select * from Medico M
left join TurnoPaciente P 
on M.idMedico = P.idMedico

--El resultado de esto seria que nos muestre todos los doctores, pero si los registros no tienen coincidencias solo aparecera null, caso contrario de que si, apareceran registros
--en este caso veremos los doctores que se les asigno un turno para atender un paciente



---Clausula RIGHT JOIN
select * from Paciente P 
RIGHT JOIN TurnoPaciente T
on T.idPaciente = P.idPaciente

--Aqui solo muestra los datos que coinciden en la tabla derecha(turnopaciente) muestra resultados iguales al inner join al menos en esta consulta.



---consejos a tener en cuenta a la hora de hacer joins

--asegurar que se este haciendo conexion con otra tabla siempre por la PK
-- se tiene que colocar de lado izquierdo la primer tabla que aparece conectada al inner join
--Utilizar alias de tablas para evitar la ambiguedad de campos



select * from Paciente p 
inner join PagoPaciente pg
on pg.idpaciente = p.idPaciente
inner join Pago 
on Pago.idPago = pg.idpago
inner join Turno t
on t.idTurno = pg.idturno

--por ejemplo este inner join de varias tablas, en las que podemos ver a los pacientes que tienen turnos y pagos relacionados a su nombre


-----------------------------------------------------------------------------


--CLAUSULAS UNION
--nos permite unir el resultado de dos consultas distintas

select * from Paciente where idpais = 'MEX'
union 
select * from Paciente where idpais = 'HON'  


