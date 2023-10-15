USE Agroservicio;

GO
CREATE FUNCTION dbo.CalcularMontoTotalFactura(@facturaID INT)
RETURNS DECIMAL(10,2)
AS
BEGIN
	DECLARE @MontoTotal DECIMAL (10,2)
	SELECT	@MontoTotal = SUM(PrecioUnitario * CantidadProducto)
	FROM DetalleFacturas
	WHERE ID_DetalleFactura =@facturaID
	RETURN @Montototal
END

SELECT dbo.CalcularMontoTotalFactura(1) AS MontoTotalFactura1;

---------------------------------------------------------------------
CREATE FUNCTION dbo.ObtenerFacturasPorCliente (@ClienteID INT)
RETURNS TABLE
AS
RETURN
(
    SELECT ID_Factura, Fecha, Monto
    FROM Facturas 
    WHERE ID_Cliente = @ClienteID
);
SELECT ID_Factura, Fecha, Monto
FROM dbo.ObtenerFacturasPorCliente(1)

