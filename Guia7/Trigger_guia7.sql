CREATE TRIGGER DespuesInsertarEmpleado
ON Empleados
AFTER INSERT
AS
BEGIN
    -- Verificar si la inserción proviene del procedimiento AgregarNuevoEmpleado
    IF EXISTS (SELECT * FROM inserted WHERE NombresEmpleado IS NOT NULL)
    BEGIN
        -- Realizar la inserción o actualización en la misma tabla
        -- En este caso, se actualizará un campo a un valor específico
        UPDATE Empleados
        SET Correo = 'actualizado@correo.com'
        WHERE ID_Empleado IN (SELECT ID_Empleado FROM inserted);
        
        -- Mensaje al finalizar la operación del trigger
        PRINT 'Se ha realizado una actualización después de la inserción desde el procedimiento AgregarNuevoEmpleado.';
    END
END;