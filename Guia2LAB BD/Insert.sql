-- Gu�a 2 BDII - 2/09/2023
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
	('Juan Carlos','P�rez G�mez','7771234567 ','juan@gmail.com','1234789-2','ISSS12345','3'),
	('Mar�a Jos�','Rodr�guez L�pez','5559876543  ','maria.rodriguez@gmail.com','04598764-3','ISSS543210','6'),
	('Roberto','Mart�nez Garc�a','3331112222   ','roberto.martinez@gmail.com','055111-3','ISSS678901','7'),
	('Ana','L�pez P�rez','4442223333',' ana.lopez@gmail.com ','07522233-3','ISSS135791','4'),
	('Luisa ','S�nchez Rodr�guez  ','6663339999 ',' luisa.sanchez@gmail.com ','06533399-2','ISSS246802','5');

	select * from Empleados;

--Clientes
insert into Clientes values
	('Mar�a Fernanda', 'L�pez P�rez', '555-1234', 'maria@example.com', '12345678-9', '3'),
	('Carlos Alberto', 'Gonz�lez Rodr�guez', '987-6543', 'carlos@example.com', '98765432-1', '7'),
	('Ana Isabel', 'S�nchez Cruz', '444-5678', 'ana@example.com', '44456789-0', '6'),
	('Jos� Luis', 'Ram�rez Mendoza', '777-8901', 'jose@example.com', '77789012-3', '4'),
	('Laura Helena', ' Torres Garc�a', '321-4567', 'laura@example.com', '32145678-4', '5');

	select * from Clientes;

--Proveedores
insert into Proveedores values
	('Agronegocios Flores', '7771112222', 'floresagro@example.com', '3'),
	('Campo Verde SA', '5554443333', 'campoverde@example.com', '5'),
    ('Agroalimentos Rojas', '9998887777', 'rojasagro@example.com', '7'),
    ('Agronegocios Cultiva', '3332221111', 'cultivaagro@example.com', '4'),
    ('Agr�cola AgroFrescos', '6665554444', 'agrofrescos@example.com', '6');

	select * from Proveedores;

--Categoria
insert into Categoria values
    ('Maquinaria Agr�cola', 'Maquinaria para labores agr�colas y de campo'),
    ('Fertilizantes', 'Productos qu�micos y naturales para fertilizaci�n de cultivos'),
    ('Veterinaria', 'Productos y servicios para el cuidado de animales de granja'),
    ('Semillas', 'Semillas de diferentes cultivos y variedades'),
    ('Herramientas Agropecuarias', 'Herramientas espec�ficas para actividades agropecuarias');

	select * from Categoria;

--Productos
insert into Productos values
	('Maquinaria Agr�cola', '2500.00','100','1', '1'),
    ('Fertilizante Org�nico', '25.75', '50', '2', '2'),
    ('Alimento para Ganado', '65.25', '75', '3', '3'),
	('Semillas de Ma�z', '12.50', '200', '4', '4'),
    ('Sistema de Riego por Goteo', '150.00', '50', '5', '5');

	select * from Productos;


insert into Inventarios values
	('2023-09-01 09:15:00', 'Compra', '10.50', 'Almac�n A', '1'),
    ('2023-09-02 14:30:00', 'Venta', '5.75', 'Tienda B', '2'),
    ('2023-09-03 11:45:00', 'Compra', '25.99', 'Almac�n C', '3'),
    ('2023-09-04 16:20:00', 'Venta', '15.25', 'Tienda A', '4'),
    ('2023-09-05 08:10:00', 'Compra', '8.99', 'Almac�n B', '5');

	select * from Inventarios;

--DetalleFacturas
insert into DetalleFacturas values
	('100', '10.50', '1050.00', '1155.00'),
    ('50', '25.75', '1287.50', '1416.25'),
    ('30', '15.20', '456.00', '501.60'),
    ('10', '50.00', '500.00', '550.00'),
    ('25', '8.75', '218.75', '240.63');

	select * from DetalleFacturas;

--Facturas
insert into Facturas values
	(1001, 'Compra de semillas de ma�z', '1', '1', '3'),
    (1002, 'Entrega de fertilizantes', '2', '2', '5'),
    (1003, 'Compra de pesticidas', '3', '3', '7'),
    (1004, 'Venta de herramientas agr�colas', '4', '4', '4'),
    (1005, 'Entrega de productos para la granja', '5', '1', '6');

	select * from Facturas;

--Envios
insert into Envios values
	('2023-09-01 10:00:00', '1001', 'Env�oExpress', '3', '1'),
    ('2023-09-02 11:30:00', '1002', 'RapidEnv�o', '4', '2'),
    ('2023-09-03 09:45:00', '1003', 'DeliverIt', '5', '3'),
    ('2023-09-04 15:20:00', '1004', 'FastDelivery', '6', '4'),
    ('2023-09-05 13:15:00', '1005', 'AgroLog�stica', '7', '5');

	select * from Envios;

--Pedidos
insert into Pedidos values 
	('2023-09-01 09:00:00', 'En Proceso', '1'),
    ('2023-09-02 10:30:00', 'Entregado', '2'),
    ('2023-09-03 11:45:00', 'En Proceso', '3'),
    ('2023-09-04 14:20:00', 'Entregado', '4'),
    ('2023-09-05 15:10:00', 'En Proceso', '5');
	
	select * from Pedidos;

--DetallePedido
insert into DetallePedido values 
	('25.99', '1', '1'),
    ('15.75', '2', '2'),
    ('10.50', '3', '3'),	
    ('30.25', '4', '4'),
    ('8.99', '5', '5');

	select * from DetallePedido;