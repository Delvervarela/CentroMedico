--Backup de DB desde un SCRIPT



DECLARE @fecha varchar (12)
DECLARE @path varchar (100)
DECLARE @name varchar (20)


set @fecha = convert (char(8), GETDATE(), 112) + replace(convert(char (5), GETDATE(), 108), ':', '')
print @fecha
set @path = 'C:\Backup_SQL\CentroMedico' + @fecha + '.bak'
set @name = 'CentroMedico' + @fecha

backup database CentroMedicoDV
to disk = @path
WITH NO_COMPRESSION, NAME = @name
