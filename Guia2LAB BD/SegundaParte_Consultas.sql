use Agroservicio;

/*Realizar 5 consultas (normales) que incluya operadores aritm�ticos o l�gicos, obtenci�n de datos del sistema,
as� como c�lculos aritm�ticos sobre cualquier tabla de la Base de 
Datos.*/

/* Consultar la lista de productos que tienen un precio unitario mayor que $50 y un stock mayor o igual a 100 unidades*/
SELECT NombreProducto,PrecioUnitario, Stock 
FROM Productos
WHERE PrecioUnitario > 50 AND Stock >= 100;

/*Consulta para calcular el total de ventas realizadas por un empleado especifico en una factura.*/
SELECT Empleados.NombresEmpleado, Empleados.ApellidosEmpleado, Facturas.NumeroFactura,
		SUM(DetalleFacturas.Total) AS TotalVentas
FROM Empleados
JOIN Facturas ON Empleados.ID_Empleado = Facturas.ID_Empleado
JOIN DetalleFacturas ON Facturas.ID_DetalleFactura = DetalleFacturas.ID_DetalleFactura
WHERE Empleados.NombresEmpleado = 'Mar�a Jos�' AND Empleados.ApellidosEmpleado = 'Rodr�guez L�pez'
GROUP BY Empleados.NombresEmpleado, Empleados.ApellidosEmpleado, Facturas.NumeroFactura;

--CLIENTES QUE AN ECHO PEDIDOS 

SELECT Clientes.NombreCliente, Clientes.ApellidoCliente
FROM Clientes
LEFT JOIN Pedidos ON Clientes.ID_Cliente = Pedidos.ID_Cliente
WHERE Pedidos.ID_Pedido IS NOT NULL;

/*Consulta para calcualr el promedio de precio unitario de los produtos en una categoria*/
SELECT Categoria.NombreCategoria, AVG(Productos.PrecioUnitario) AS PromedioPrecioUnitario
FROM Categoria
JOIN Productos ON Categoria.ID_Categoria = Productos.ID_Categoria
GROUP BY Categoria.NombreCategoria;

/*Consulta para encontrar los env�os realizados despu�s de cierta fecha y calcular la cantidad total de productos enviados en cada env�o*/
SELECT Envios.Fecha_Env�o, COUNT	(DetallePedido.ID_Producto) AS CantidadProductosEnviados
FROM Envios
JOIN Pedidos ON Envios.ID_Pedido = Pedidos.ID_Pedido
JOIN DetallePedido ON Pedidos.ID_Pedido = DetallePedido.ID_Pedido
WHERE Envios.Fecha_Env�o > '2023-09-02 00:00:00'
GROUP BY Envios.Fecha_Env�o;

/*� Realizar 5 consultas de tipo Multitabla, Subconsulta y Joins sobre la Base de Datos.*/

/*Consulta multitabla para obtener las facturas de compras realizadas por un clienteespecifico*/
SELECT Facturas.NumeroFactura, Facturas.Comentario, Clientes.NombreCliente , Clientes.ApellidoCliente 
FROM Facturas
INNER JOIN Clientes ON Facturas.ID_Cliente = Clientes.ID_Cliente
WHERE Facturas.Comentario LIKE 'Compra%' AND Clientes.NombreCliente = 'Mar�a Fernanda' AND Clientes.ApellidoCliente = 'L�pez P�rez';


/*Consulta con Subconsulta para encontrar productos con stock inferior al promedio de stock de todos los produtos*/
SELECT NombreProducto,Stock FROM Productos
WHERE Stock <(SELECT AVG (Stock) FROM PRoductos);

/*Consulta Multitabla para obtener la informacion de envio de una factura especifica*/
SELECT Facturas.NumeroFactura,Envios.Fecha_Env�o, Envios.Transportista 
FROM Facturas
LEFT JOIN Envios ON Facturas.NumeroFactura = Envios.N�mero_de_Seguimiento
WHERE Facturas.NumeroFactura = 1001;

/*Consulta con Subconsulta para obtener el cliente que realiz� el primer pedido*/
SELECT Clientes.NombreCliente, Clientes.ApellidoCliente
FROM Clientes
WHERE ID_Cliente = (SELECT MIN(ID_Cliente) FROM Pedidos);

---producto mas caro

SELECT NombreProducto,PrecioUnitario
FROM Productos
WHERE PrecioUnitario =(SELECT MAX(PrecioUnitario) FROM Productos);





