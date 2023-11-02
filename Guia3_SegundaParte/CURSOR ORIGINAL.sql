-- Declarar variables para el cursor
DECLARE @ID_Empleado INT;
DECLARE @NombresEmpleado VARCHAR(60);
DECLARE @ApellidosEmpleado VARCHAR(60);

-- Definir la consulta que representa el conjunto de datos
DECLARE empleado_cursor CURSOR KEYSET
FOR
SELECT ID_Empleado, NombresEmpleado, ApellidosEmpleado
FROM Empleados;

-- Abrir el cursor
OPEN empleado_cursor;

-- Recorrer el conjunto de datos utilizando el cursor
FETCH NEXT FROM empleado_cursor INTO @ID_Empleado, @NombresEmpleado, @ApellidosEmpleado;

WHILE @@FETCH_STATUS = 0
BEGIN
    -- Procesar los datos del empleado aquí
    PRINT 'ID: ' + CAST(@ID_Empleado AS VARCHAR) + ', Nombres: ' + @NombresEmpleado + ', Apellidos: ' + @ApellidosEmpleado;

    -- Obtener el siguiente registro
    FETCH NEXT FROM empleado_cursor INTO @ID_Empleado, @NombresEmpleado, @ApellidosEmpleado;
END

-- Cerrar el cursor
CLOSE empleado_cursor;
DEALLOCATE empleado_cursor;