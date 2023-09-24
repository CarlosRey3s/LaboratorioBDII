use  Agroservicio;
/* create password  and user admnin*/
CREATE LOGIN  administrador
WITH PASSWORD  = 'root';
CREATE USER  adminuser
FOR LOGIN administrador;

/* create password and user seller*/
CREATE LOGIN vendedor
WITH PASSWORD = 'vendedor';
CREATE USER vendedoruser
FOR LOGIN vendedor; 

/* create password  and user Employee*/
CREATE LOGIN empleadoalmacen
WITH PASSWORD = 'empleadoalmacen';
CREATE USER empleadoalmacenuser
FOR LOGIN empleadoalmacen;

/* create password  and user manager*/
CREATE LOGIN gerente
WITH PASSWORD = 'gerente';
CREATE USER gerenteuser
FOR LOGIN gerente;

/* create password  and user counter*/
CREATE LOGIN contadorfinanciero
WITH PASSWORD = 'contadorfinanciero';
CREATE USER contadorfinancierouser
FOR LOGIN contadorfinanciero;

/* create password  and user human resource*/
CREATE LOGIN recursoshumanos
WITH PASSWORD = 'recursoshumanos';
CREATE USER recursoshumanosuser
FOR LOGIN recursoshumanos;

/*CREANDO LOS ROLES */
CREATE ROLE Administrador;
CREATE ROLE Vendedor;
CREATE ROLE EmpleadoAlmacen;
CREATE ROLE Gerente;
CREATE ROLE ContadorFinanciero;
CREATE ROLE RecursosHumanos;


/* AGREGAR USUARIO A LOS ROLES*/
ALTER ROLE Administrador  ADD MEMBER adminuser;
ALTER ROLE Vendedor  ADD MEMBER vendedoruser;
ALTER ROLE EmpleadoAlmacen ADD MEMBER empleadoalmacenuser;
ALTER ROLE Gerente ADD MEMBER gerenteuser;
ALTER ROLE ContadorFinanciero ADD MEMBER contadorfinancierouser;
ALTER ROLE RecursosHumanos ADD MEMBER recursoshumanosuser;


-- Otorgar permisos de administración al rol
USE master;
GRANT ALTER ANY DATABASE TO Administrador;
GRANT CREATE PROCEDURE TO Administrador;
GRANT CREATE TABLE TO Administrador;
GRANT EXECUTE TO Administrador;
GRANT VIEW DEFINITION TO Administrador;


/* OTORGANDO PERDMISOS AL ROL DE VENDEDOR*/
-- Para acceder a información sobre los clientes a los que atiende.
GRANT SELECT ON Clientes TO Vendedor;

-- Para ver detalles sobre los productos disponibles y sus precios.
GRANT SELECT ON Productos TO Vendedor;
-- Para consultar el estado de los pedidos realizados por los clientes.
GRANT SELECT ON Pedidos TO Vendedor;
-- Para seleccionar distrito del cliente en la tabla Distrito.
GRANT SELECT ON Distritos TO Vendedor;--error
-- Para seleccionar Municipio del cliente en la tabla Municipio.
GRANT SELECT ON Municipio TO Vendedor;
-- Para agregar las direcciones del cliente de sus pedidos en la tabla Departamento.
GRANT SELECT ON Departamento TO Vendedor;
-- Para insertar registros de nuevos pedidos en la tabla Pedidos.
GRANT INSERT ON Pedidos TO Vendedor;
-- Para insertar registros de datos del cliente en la tabla Direcciones.
GRANT INSERT ON Direcciones TO Vendedor;
-- Para actualizar el estado de los pedidos en la tabla Pedidos.
GRANT UPDATE ON Pedidos TO Vendedor;

/* OTORGANDO PERDMISOS AL ROL DE Empleado*/
-- Para acceder a información sobre el inventario de productos y su disponibilidad en el almacén.
GRANT SELECT ON Productos TO EmpleadoAlmacen;
-- Para consultar los registros de movimientos de inventario, como recepción de mercancía y preparación de pedidos.
GRANT SELECT ON Inventarios TO EmpleadoAlmacen;
-- Para acceder a información sobre los proveedores de productos y su información de contacto.
GRANT SELECT ON Proveedores TO EmpleadoAlmacen;
-- Para acceder a la información sobre las categorías de productos.
GRANT SELECT ON Categoria TO EmpleadoAlmacen;
-- Para registrar la recepción de mercancía y preparación de pedidos en la tabla Inventarios.
GRANT INSERT ON Inventarios TO EmpleadoAlmacen;
-- Para registrar nuevas categorías de productos.
GRANT INSERT ON Categoria TO EmpleadoAlmacen;
-- Para actualizar registros en la tabla Inventarios cuando se realicen cambios en los niveles de inventario.
GRANT UPDATE ON Inventarios TO EmpleadoAlmacen;

/* OTORGANDO PERDMISOS AL ROL DE Gerente*/
-- Para acceder a información sobre el inventario de productos y su disponibilidad en el almacén.
GRANT SELECT ON Productos TO Gerente;
-- Para consultar el estado de los pedidos realizados por los clientes y el historial de ventas.
GRANT SELECT ON Pedidos TO Gerente;
-- Para acceder a información sobre los clientes y su historial de compras.
GRANT SELECT ON Clientes TO Gerente;
-- Para ver detalles de los empleados y gestionar el personal de la tienda.
GRANT SELECT ON Empleados TO Gerente;
-- Para registrar nuevos empleados y gestionar el personal de la tienda.
GRANT INSERT ON Empleados TO Gerente;
-- Para registrar nuevos pedidos realizados por los clientes.
GRANT INSERT ON Pedidos TO Gerente;
-- Para realizar cambios en la programación y la gestión del personal.
GRANT UPDATE ON Empleados TO Gerente;
-- Para actualizar el estado de los pedidos y gestionar las entregas.
GRANT UPDATE ON Pedidos TO Gerente;
-- Para realizar cambios en los detalles de los productos y los precios.
GRANT UPDATE ON Productos TO Gerente;
-- Para eliminar pedidos incorrectos o duplicados en la tabla Pedidos y DetallePedidos.
GRANT DELETE ON Pedidos TO Gerente;
GRANT DELETE ON DetallePedido TO Gerente;
-- Para eliminar productos obsoletos de la tabla Productos.
GRANT DELETE ON Productos TO Gerente;

/* OTORGANDO PERDMISOS AL ROL DE CONTADOR*/
-- Para revisar y analizar las transacciones de ventas y compras en la tabla Facturas.
GRANT SELECT ON Facturas TO ContadorFinanciero;
-- Para obtener detalles sobre los elementos facturados y sus precios unitarios en la tabla DetalleFacturas.
GRANT SELECT ON DetalleFacturas TO ContadorFinanciero;
-- Para verificar el valor del inventario y los registros de transacciones relacionadas en la tabla Inventarios.
GRANT SELECT ON Inventarios TO ContadorFinanciero;
-- Para registrar transacciones de ventas y compras en la tabla Facturas.
GRANT INSERT ON Facturas TO ContadorFinanciero;
-- Para registrar detalles específicos de los elementos facturados en una factura en la tabla DetalleFacturas.
GRANT INSERT ON DetalleFacturas TO ContadorFinanciero;
-- Para realizar correcciones en las facturas emitidas o recibidas en la tabla Facturas.
GRANT UPDATE ON Facturas TO ContadorFinanciero;
-- Para realizar ajustes en los detalles de elementos facturados en la tabla DetalleFacturas.
GRANT UPDATE ON DetalleFacturas TO ContadorFinanciero;

/* OTORGANDO PERDMISOS AL ROL DE RECURSOS HUMANOS*/
-- Para acceder a información de contacto, historiales laborales y otra información relacionada con el empleado en la tabla Empleados.
GRANT SELECT ON Empleados TO RecursosHumanos;
-- Para gestionar cuentas de usuario y permisos en la tabla Usuarios (si es necesario).
GRANT SELECT ON Usuarios TO RecursosHumanos;
-- Para seleccionar distrito de residencia del empleado en la tabla Distrito.
GRANT SELECT ON Distritos TO RecursosHumanos;
-- Para seleccionar Municipio de residencia del empleado en la tabla Municipio.
GRANT SELECT ON Municipio TO RecursosHumanos;
-- Para agregar las direcciones de vivienda del empleado en la tabla Departamento.
GRANT SELECT ON Departamento TO RecursosHumanos;
-- Para registrar nuevos empleados en la tabla Empleados.
GRANT INSERT ON Empleados TO RecursosHumanos;
-- Para agregar nuevas direcciones de vivienda del empleado en la tabla Direcciones.
GRANT INSERT ON Direcciones TO RecursosHumanos;
-- Para actualizar registros de empleados en la tabla Empleados.
GRANT UPDATE ON Empleados TO RecursosHumanos;
-- Para eliminar registros de empleados en la tabla Empleados.
GRANT DELETE ON Empleados TO RecursosHumanos;
