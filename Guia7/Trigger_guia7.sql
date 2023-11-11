CREATE TRIGGER DespuesInsertarEmpleado
ON Empleados
AFTER INSERT
AS
BEGIN
    -- Verificar si la inserci�n proviene del procedimiento AgregarNuevoEmpleado
    IF EXISTS (SELECT * FROM inserted WHERE NombresEmpleado IS NOT NULL)
    BEGIN
        -- Realizar la inserci�n o actualizaci�n en la misma tabla
        -- En este caso, se actualizar� un campo a un valor espec�fico
        UPDATE Empleados
        SET Correo = 'actualizado@correo.com'
        WHERE ID_Empleado IN (SELECT ID_Empleado FROM inserted);
        
        -- Mensaje al finalizar la operaci�n del trigger
        PRINT 'Se ha realizado una actualizaci�n despu�s de la inserci�n desde el procedimiento AgregarNuevoEmpleado.';
    END
END;