--ROLES

/*

Hay 3 tipos de roles
1.  
2.
3.

Los permisos se pueden definir a nivel de rol o a nivel de usuario

Creamos un rol en el que solo se puede esditar la tabla turnos y que no se puede editar o hacer algo con la tabla paciente 
se crea el nuevo usuario y se le agrega el rol que habiamos creado previamente.
entramos con el nuevo usuario que se creo en el motor y solo deberia aparecer la tabla turnos ya que es esa a la que le dimos permisos
No podremos entrar o utilizar comandos en otras tablas.

Asi podemos hacer con diferentes tipos de roles y reglas, y asignar roles a diferentes usuarios.
esto nos ayuda a separar bien las areas de nuestra base de datos para que personas que no queramos no puedan acceder a diferentes areas.


--------------------------------------------------------------
Creando y asignando datos desde Transact sql

1. Creamos un nuevo usuario 
2. en el user mappin se le asigna la base de datos
3. Creamos el role

*/

Create role Pagos AUTHORIZATION dbo 

alter role Pagos add member ' Nombre '  ---En esta ocasion como no se puede crear un nuevo lo dejo entrecomillas con el nombre que debe ir

--Con esta opcion deberiamos ver que se le asigno el rol de pagos
--Ya despues se entra al rol y se cambian los permisos que queramos dejar en el rol pagos




-------------------------------------------------------------------

/*
ROLES PREDEFINIDOS DE BASE DE DATOS
 db_owner: Miembros tienen permisos totales.
 db_accessadmin: Miembros pueden administrar grupos de Windows y Logins de SQL Server.
 db_datareader: Miembros tienen permiso de lectura.
 db_datawriter: Miembros pueden agregar, eliminar, o modificar datos en las tablas.
 db_ddladmin: Miembros pueden ejecutar librerías DLL.
 db_securityadmin: Miembros pueden modificar la membresía de Roles y administrar permisos.
 db_backupoperator: Miembros pueden realizar un backup de la BD.
 db_denydatareader: Miembros no pueden visualizar datos dentro de la BD.
 db_denydatawriter: Miembros no pueden modificar o eliminar datos de tablas o vistas.
ROLES DE SERVIDOR
 SysAdmin: Cualquier miembro puede realizar cualquier acción en el servidor SQL.
 ServerAdmin: Cualquier miembro puede establecer opciones de configuración en el servidor SQL.
 SetupAdmin: Cualquier miembro puede administrar servidores remotos y opciones de inicio de SQL
Server.
 Security Admin: Cualquier miembro puede administrar la seguridad del servidor SQL.
 ProcessAdmin: Cualquier miembro puede finalizar un proceso en ejecución en el servidor SQL.
 DbCreator: Cualquier miembro puede crear, modificar, eliminar y restaurar Bases de Datos.
 DiskAdmin: Cualquier miembro puede administrar archivos de datos del servidor SQL.
 BulkAdmin: Cualquier miembro puede ejecutar el comando BULK INSERT

*/