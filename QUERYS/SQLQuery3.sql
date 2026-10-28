SELECT TOP (1000) [idPais]
      ,[pais]
  FROM [CentroMedicoDV].[dbo].[Pais]


  select * from Medico
  select * from TurnoPaciente
  select * from TurnoEstado
  select * from Turno
  select * from Paciente
  select * from Pago
  select * from PagoPaciente
  select * from Concepto
  select * from Especialidad


  -- Comando INSERT 
  insert into Paciente (dni, nombre, apellido, fnacimiento, domicilio, 
                        idpais, telefono, email, observacion)

                        values ('47851236', 'Ramiro', 'Ramirez', '1999-07-24', 'la villa', 'HON', '4444-4010', 'ramirez@gmail.com', 'sin observaciones'),
                               ('20231245', 'Alex', 'Hunter', '2016-04-20', 'Cerro leona', 'HON', '3333-3333', 'Alexh@gmail.com', 'paciente derivado')

-- Instert para la tabla turno
insert into Turno(fechaTurno, estadoTurno, observacion)
values ('2009-05-20', 8, 'Sin observacion')

--Insert para la tabla turno paciente
insert into TurnoPaciente (idTurno, idPaciente, idMedico)
values (10, 10, 3)

-- Insert para la tabla medico
insert into Medico (nombre, apellido)
values ('Karon', 'Jung')

-- Insert para la tabla concepto
insert into Concepto (descripcion)
values ('Radiografia')

--Insert para la tabla pago
insert into Pago (concepto, fechaPago, monto, estado, OBS)
values (2, '2019-02-15', 4500, 0, 'pago pendiente'),
       (1, '2019-05-20', 6800, 0, 'pago pendiente'),
       (2, '2019-09-27', 5600, 0, 'pago pendiente')

--Insert para la tabla pago paciente
insert into PagoPaciente (idpago, idpaciente, idturno)
values (1,1,2),
       (2,8,1),
       (3,5,2)

--Insert para la tabla especialidad
insert into Especialidad (especialidad)
values  ('Traumatologia'),
        ('Clinica Médica'),
        ('Gastroenterologia'),
        ('Pediatria'),
        ('Psiquiatria')

--Clausula TOP  

SELECT TOP 8 nombre, apellido, idpais from Paciente

--Clausula ORDER BY 

select *from Paciente order by fnacimiento desc

 --Clausulas top y order by

 select top 1 * from Paciente order by fnacimiento 

 --Clausula DISTINCT

   select distinct fnacimiento from Paciente

   --Clausula Group by  

   select idpais from Paciente group by idpais

   --Clausula WHERE
   select * from Paciente where fnacimiento = '2019-04-17'



