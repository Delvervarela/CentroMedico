--Esquemas

/*

Un esquema es un espacio de nombres que agrupa objetos (tablas, vistas, SP, funciones, tipos de datos, etc)

-El ususario dbo ve todas todas las tablas de todos los esquemas, pero un usuario solo podra ver los objetos de un esquema en caso de que tenga
asignado un solo esquema, no podra visualizarlos todos.


los esquemas los podemos utilizar si queremeos aislar ciertas tablas de determinado sector de la empresa por ejemplo.

supongamos que queremos que el sector de facturacion queremos que solo visualice ciertas tablas de facturacion o si quisiesemos quecirtas tablas solosean 
visualizadas por administracion podemos hacer un esquema y se colocan los objetos.
-para crearlo vamos al apartadode esquemas y le damos a nuevo esquema y seleccionamos nombre y el owner

-Para esto se necesia crear un nuevo login y usuario
-nos conectamos con el nuevo usurio al motor
--ya en el nuevo usuario no veremos ningun objeto, lo que tenemos que hacer es asignarle el esquema atraves del transact sql

*/

Alter Schema facturacionEjemplo transfer pais --tabla que se le asigna al esquema
Alter Schema facturacionEjemplo transfer medico-- otra tabla

--El usuario que fue creado, solo podra ver los objetos que le fueron asignados a traves del esquema