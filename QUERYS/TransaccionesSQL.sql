--TRANSACCIONES
--podemos aplicarla en un script determinado o un SP. se va a ejecutar una transaccion, si se valida se hace un commit o si no se hace un rollback
--una transaccion se utiliza para evaluar una porsion de datos, en la que estamos actualizando datos o borrando dato

select * from Paciente

BEGIN TRAN 
	UPDATE Paciente SET telefono = '4444-4444' where apellido = 'Lopez'
if @@ROWCOUNT = 1--nos dice cuantos registros fueron modificados en la isntruccion anterior
	commit tran
else 
	rollback tran

---------------------

select * from Turno
select * from PagoPaciente

begin tran 
	delete from Turno where estadoTurno=5
if @@ROWCOUNT = 1
	commit tran
else
	rollback tran
