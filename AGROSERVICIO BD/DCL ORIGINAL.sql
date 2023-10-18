USE Agroservicio;

-- Crear usuarios y roles
CREATE LOGIN administrador WITH PASSWORD = 'root';
CREATE USER adminuser FOR LOGIN administrador;
CREATE LOGIN vendedor WITH PASSWORD = 'vendedor';
CREATE USER vendedoruser FOR LOGIN vendedor;
CREATE LOGIN empleadoalmacen WITH PASSWORD = 'empleadoalmacen';
CREATE USER empleadoalmacenuser FOR LOGIN empleadoalmacen;
CREATE LOGIN gerente WITH PASSWORD = 'gerente';
CREATE USER gerenteuser FOR LOGIN gerente;
CREATE LOGIN contadorfinanciero WITH PASSWORD = 'contadorfinanciero';
CREATE USER contadorfinancierouser FOR LOGIN contadorfinanciero;
CREATE LOGIN recursoshumanos WITH PASSWORD = 'recursoshumanos';
CREATE USER recursoshumanosuser FOR LOGIN recursoshumanos;

-- Crear roles
CREATE ROLE Administrador;
CREATE ROLE Vendedor;
CREATE ROLE EmpleadoAlmacen;
CREATE ROLE Gerente;
CREATE ROLE ContadorFinanciero;
CREATE ROLE RecursosHumanos;

-- Asignar usuarios a roles
ALTER ROLE Administrador ADD MEMBER adminuser;
ALTER ROLE Vendedor ADD MEMBER vendedoruser;
ALTER ROLE EmpleadoAlmacen ADD MEMBER empleadoalmacenuser;
ALTER ROLE Gerente ADD MEMBER gerenteuser;
ALTER ROLE ContadorFinanciero ADD MEMBER contadorfinancierouser;
ALTER ROLE RecursosHumanos ADD MEMBER recursoshumanosuser;

-- Asignar permisos

-- Permiso para administrador
USE Agroservicio;
GRANT ALTER ANY DATABASE TO Administrador;
GRANT CREATE PROCEDURE TO Administrador;
GRANT CREATE TABLE TO Administrador;
GRANT EXECUTE TO Administrador;
GRANT VIEW DEFINITION TO Administrador;

-- Permiso para vendedor
GRANT SELECT ON Clientes TO Vendedor;
GRANT SELECT ON Productos TO Vendedor;
GRANT SELECT ON Pedidos TO Vendedor;
GRANT SELECT ON Distritos TO Vendedor;
GRANT SELECT ON Municipio TO Vendedor;
GRANT SELECT ON Departamento TO Vendedor;
GRANT INSERT ON Pedidos TO Vendedor;
GRANT INSERT ON Direcciones TO Vendedor;
GRANT UPDATE ON Pedidos TO Vendedor;

-- Permiso para empleado de almacén
GRANT SELECT ON Productos TO EmpleadoAlmacen;
GRANT SELECT ON Inventarios TO EmpleadoAlmacen;
GRANT SELECT ON Proveedores TO EmpleadoAlmacen;
GRANT SELECT ON Categoria TO EmpleadoAlmacen;
GRANT INSERT ON Inventarios TO EmpleadoAlmacen;
GRANT INSERT ON Categoria TO EmpleadoAlmacen;
GRANT UPDATE ON Inventarios TO EmpleadoAlmacen;

-- Permiso para gerente
GRANT SELECT ON Productos TO Gerente;
GRANT SELECT ON Pedidos TO Gerente;
GRANT SELECT ON Clientes TO Gerente;
GRANT SELECT ON Empleados TO Gerente;
GRANT INSERT ON Empleados TO Gerente;
GRANT INSERT ON Pedidos TO Gerente;
GRANT UPDATE ON Empleados TO Gerente;
GRANT UPDATE ON Pedidos TO Gerente;
GRANT UPDATE ON Productos TO Gerente;
GRANT DELETE ON Pedidos TO Gerente;
GRANT DELETE ON DetalleFacturas TO Gerente;
GRANT DELETE ON Productos TO Gerente;

-- Permiso para contador financiero
GRANT SELECT ON Facturas TO ContadorFinanciero;
GRANT SELECT ON DetalleFacturas TO ContadorFinanciero;
GRANT SELECT ON Inventarios TO ContadorFinanciero;
GRANT INSERT ON Facturas TO ContadorFinanciero;
GRANT INSERT ON DetalleFacturas TO ContadorFinanciero;
GRANT UPDATE ON Facturas TO ContadorFinanciero;
GRANT UPDATE ON DetalleFacturas TO ContadorFinanciero;

-- Permiso para recursos humanos
GRANT SELECT ON Empleados TO RecursosHumanos;
GRANT SELECT ON Usuarios TO RecursosHumanos;
GRANT SELECT ON Distritos TO RecursosHumanos;
GRANT SELECT ON Municipio TO RecursosHumanos;
GRANT SELECT ON Departamento TO RecursosHumanos;
GRANT INSERT ON Empleados TO RecursosHumanos;
GRANT INSERT ON Direcciones TO RecursosHumanos;
GRANT UPDATE ON Empleados TO RecursosHumanos;
GRANT DELETE ON Empleados TO RecursosHumanos;


USE master;
DROP LOGIN vendedor;

select name from sys.server_principals
where type_desc = 'SQL_LOGIN';

select name from sys.database_principals
where type_desc = 'SQL_USER';select name from sys.database_principals where type_desc =
'DATABASE_ROLE';select
 dp.class_desc as 'Tipo de objeto',
 object_name(dp.major_id) as 'Nombre del objeto',
 user_name(dp.grantee_principal_id) as 'Usuario o rol',
 dp.permission_name AS 'Permiso',
 dp.state_desc AS 'Estado del permiso'
from sys.database_permissions dp
where user_name(dp.grantee_principal_id) =
'nombre_de_usuario_o_rol';