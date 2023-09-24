-- Guía 2 BDII - 2/09/2023
-- Inserciones

use Agroservicio;

--Departamento
	insert into Direcciones values
	('Col Madera, Calle 1, #1N', '020281', 'El Salvador', '2'),
	('Col La Frontera, Calle 5, #5G', '020281', 'El Salvador', '2'),
	('Col La sunza, Calle 4, #6D', '020281', 'El Salvador', '3'),
	('Col San Julian, Acajutla, Calle 4, #6D', '020281', 'El Salvador', '4'),
	('Col San Pedro, Calle 2, #6D', '020281', 'El Salvador', '5');

	select * from Direcciones;

-- Municipios
insert into Municipio values
	('Sonsonate', '2'),
	('Ahuachapan', '3'),
	('Santa Ana', '4');

	select * from Municipio;

-- Distritos
insert into Distritos values
	('Nahuizalco', '3'),
	('Izalco', '3'),
	('Acajutla', '3'),
	('Guaymango', '3'),
	('Ahuachapan', '4'),
	('Santa Ana', '5');

select * from Distritos;

-- Departamento
insert into Departamento values
	('Sonsonate'),
	('Ahuachapan'),
	('Santa Ana');

	select * from Departamento;

--Empleados
	insert into Empleados values
	('Juan Carlos','Pérez Gómez','7771234567 ','juan@gmail.com','1234789-2','ISSS12345','3'),
	('María José','Rodríguez López','5559876543  ','maria.rodriguez@gmail.com','04598764-3','ISSS543210','6'),
	('Roberto','Martínez García','3331112222   ','roberto.martinez@gmail.com','055111-3','ISSS678901','7'),
	('Ana','López Pérez','4442223333',' ana.lopez@gmail.com ','07522233-3','ISSS135791','4'),
	('Luisa ','Sánchez Rodríguez  ','6663339999 ',' luisa.sanchez@gmail.com ','06533399-2','ISSS246802','5');

	select * from Empleados;

--Clientes
insert into Clientes values
	('María Fernanda', 'López Pérez', '555-1234', 'maria@example.com', '12345678-9', '3'),
	('Carlos Alberto', 'González Rodríguez', '987-6543', 'carlos@example.com', '98765432-1', '7'),
	('Ana Isabel', 'Sánchez Cruz', '444-5678', 'ana@example.com', '44456789-0', '6'),
	('José Luis', 'Ramírez Mendoza', '777-8901', 'jose@example.com', '77789012-3', '4'),
	('Laura Helena', ' Torres García', '321-4567', 'laura@example.com', '32145678-4', '5');

	select * from Clientes;

--Proveedores
insert into Proveedores values
	('Agronegocios Flores', '7771112222', 'floresagro@example.com', '3'),
	('Campo Verde SA', '5554443333', 'campoverde@example.com', '5'),
    ('Agroalimentos Rojas', '9998887777', 'rojasagro@example.com', '7'),
    ('Agronegocios Cultiva', '3332221111', 'cultivaagro@example.com', '4'),
    ('Agrícola AgroFrescos', '6665554444', 'agrofrescos@example.com', '6');

	select * from Proveedores;

--Categoria
insert into Categoria values
    ('Maquinaria Agrícola', 'Maquinaria para labores agrícolas y de campo'),
    ('Fertilizantes', 'Productos químicos y naturales para fertilización de cultivos'),
    ('Veterinaria', 'Productos y servicios para el cuidado de animales de granja'),
    ('Semillas', 'Semillas de diferentes cultivos y variedades'),
    ('Herramientas Agropecuarias', 'Herramientas específicas para actividades agropecuarias');

	select * from Categoria;

--Productos
insert into Productos values
	('Maquinaria Agrícola', '2500.00','100','1', '1'),
    ('Fertilizante Orgánico', '25.75', '50', '2', '2'),
    ('Alimento para Ganado', '65.25', '75', '3', '3'),
	('Semillas de Maíz', '12.50', '200', '4', '4'),
    ('Sistema de Riego por Goteo', '150.00', '50', '5', '5');

	select * from Productos;


insert into Inventarios values
	('2023-09-01 09:15:00', 'Compra', '10.50', 'Almacén A', '1'),
    ('2023-09-02 14:30:00', 'Venta', '5.75', 'Tienda B', '2'),
    ('2023-09-03 11:45:00', 'Compra', '25.99', 'Almacén C', '3'),
    ('2023-09-04 16:20:00', 'Venta', '15.25', 'Tienda A', '4'),
    ('2023-09-05 08:10:00', 'Compra', '8.99', 'Almacén B', '5');

	select * from Inventarios;

--DetalleFacturas
insert into DetalleFacturas values
	('100', '10.50', '1050.00', '1155.00','1'),
    ('50', '25.75', '1287.50', '1416.25', '2'),
    ('30', '15.20', '456.00', '501.60','3'),
    ('10', '50.00', '500.00', '550.00','4'),
    ('25', '8.75', '218.75', '240.63','5');

	select * from DetalleFacturas;

--Facturas
insert into Facturas values
	(1001, 'Compra de semillas de maíz', '1', '1', '3'),
    (1002, 'Entrega de fertilizantes', '2', '2', '5'),
    (1003, 'Compra de pesticidas', '3', '3', '7'),
    (1004, 'Venta de herramientas agrícolas', '4', '4', '4'),
    (1005, 'Entrega de productos para la granja', '5', '1', '6');

	select * from Facturas;

	------ AGREGADO RECIENTEMENTE
insert into Roles values
	('Administrador'),
	('Vendedor'),
	('EmpleadoAlmacen'),
	('Gerente'),
	('ContadorFinanciero'),
	('RecursosHumanos');

	select * from Roles;

insert into Opciones values 
	('SELECT'),
	('INSERT'),
	('UPDATE'),
	('DELETE');

select * from Opciones;


insert into AsignacionRolesOpciones values 

--Administrador
	('1','1'),
	('1','2'),
	('1','3'),
	('1','4'),

--vendedor
	('2','1'),
	('2','2'),
	('2','3'),
--empleado
	('3','1'),
	('3','2'),
    ('3','3'),
--gerente
	('4','1'),
	('4','2'),
	('4','3'),
	('4','4'),
--contador
	('5','1'),
	('5','2'),
	('5','3'),
-- Recursos Humanos
	('6','1'),
	('6','2'),
	('6','3'),
	('6','4');
select * from AsignacionRolesOpciones;
--ingresando los usuarios
insert into Usuarios values 
	('adminuser','administrador','10','1'),
	('vendedoruser','vendedor','5','2'),
	('empleadoalmacenuser','empleadoalmacen','6','3'),
	('gerenteuser','gerente','7','4'),
	('contadorfinancierouser','contadorfinanciero','8','5'),
	('recursoshumanosuser','recursoshumanos','9','6');
select * from Usuarios;