CREATE VIEW VistaDirecciones AS
SELECT 
    Dir.ID_Direccion,
    Dir.Linea1,
    Dir.Linea2,
    Dir.CodigoPostal,
    Dis.ID_Distrito,
    Dis.NombreDistrito,
    Mun.ID_Municipio,
    Mun.NombreMunicipio,
    Dep.ID_Departamento,
    Dep.NombreDepartamento,
    Dep.Pais
FROM Direcciones Dir
INNER JOIN Distritos Dis ON Dir.ID_Distrito = Dis.ID_Distrito
INNER JOIN Municipios Mun ON Dis.ID_Municipio = Mun.ID_Municipio
INNER JOIN Departamentos Dep ON Mun.ID_Departamento = Dep.ID_Departamento;


select * from VistaDirecciones;