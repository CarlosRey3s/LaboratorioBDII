use Agroservicio;

/*Realizar 5 consultas (normales) que incluya operadores aritméticos o lógicos, obtención de datos del sistema,
así como cálculos aritméticos sobre cualquier tabla de la Base de 
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
WHERE Empleados.NombresEmpleado = 'María José' AND Empleados.ApellidosEmpleado = 'Rodríguez López'
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

/*Consulta para encontrar los envíos realizados después de cierta fecha y calcular la cantidad total de productos enviados en cada envío*/
SELECT Envios.Fecha_Envío, COUNT	(DetallePedido.ID_Producto) AS CantidadProductosEnviados
FROM Envios
JOIN Pedidos ON Envios.ID_Pedido = Pedidos.ID_Pedido
JOIN DetallePedido ON Pedidos.ID_Pedido = DetallePedido.ID_Pedido
WHERE Envios.Fecha_Envío > '2023-09-02 00:00:00'
GROUP BY Envios.Fecha_Envío;

/*• Realizar 5 consultas de tipo Multitabla, Subconsulta y Joins sobre la Base de Datos.*/

/*Consulta multitabla para obtener las facturas de compras realizadas por un clienteespecifico*/
SELECT Facturas.NumeroFactura, Facturas.Comentario, Clientes.NombreCliente , Clientes.ApellidoCliente 
FROM Facturas
INNER JOIN Clientes ON Facturas.ID_Cliente = Clientes.ID_Cliente
WHERE Facturas.Comentario LIKE 'Compra%' AND Clientes.NombreCliente = 'María Fernanda' AND Clientes.ApellidoCliente = 'López Pérez';


/*Consulta con Subconsulta para encontrar productos con stock inferior al promedio de stock de todos los produtos*/
SELECT NombreProducto,Stock FROM Productos
WHERE Stock <(SELECT AVG (Stock) FROM PRoductos);

/*Consulta Multitabla para obtener la informacion de envio de una factura especifica*/
SELECT Facturas.NumeroFactura,Envios.Fecha_Envío, Envios.Transportista 
FROM Facturas
LEFT JOIN Envios ON Facturas.NumeroFactura = Envios.Número_de_Seguimiento
WHERE Facturas.NumeroFactura = 1001;

/*Consulta con Subconsulta para obtener el cliente que realizó el primer pedido*/
SELECT Clientes.NombreCliente, Clientes.ApellidoCliente
FROM Clientes
WHERE ID_Cliente = (SELECT MIN(ID_Cliente) FROM Pedidos);

---producto mas caro

SELECT NombreProducto,PrecioUnitario
FROM Productos
WHERE PrecioUnitario =(SELECT MAX(PrecioUnitario) FROM Productos);





