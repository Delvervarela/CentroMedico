---VISTAS
--almacena una consulta en la base de datos, cuando la ejecutamos lo que hace es actualizarse con nueva informacion que haya sido ingresada a la base de lo contrario no

create view PacientesTurnosPendientes as 

select p.idPaciente, p.nombre, p.apellido, T.idTurno, t.estadoTurno  from Paciente P 
inner join TurnoPaciente TP
on TP.idPaciente = P.idPaciente
INNER JOIN Turno T
on T.idTurno = TP.idTurno
where isnull(t.estadoTurno, 0) = 0


--Vistas
select * from PacientesTurnosPendientes 
select * from VistaPrueba
select * from EspecialidadesMedicas

