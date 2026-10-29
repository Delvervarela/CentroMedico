--JOB_CANCELATURNOSVENCIDOS

update Turno set estadoTurno = 2
SELECT * FROM Turno where CONVERT(char (8), fechaTurno, 112) < convert (char(8), getdate(), 112)
and estadoTurno = 0


