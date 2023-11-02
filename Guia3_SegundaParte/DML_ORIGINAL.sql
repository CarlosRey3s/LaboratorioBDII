USE Agroservicio

insert into Departamentos values
--	ID_Departamento, Departamento, Pais 
	('AH', 'Ahuachap�n', 'El Salvador'),
	('CA', 'Caba�as', 'El Salvador'),
	('CH', 'Chalatenango', 'El Salvador'),
	('CU', 'Cuscatl�n', 'El Salvador'),
	('LL', 'La Libertad', 'El Salvador'),
	('LP', 'La Paz', 'El Salvador'),
	('LU', 'La Uni�n', 'El Salvador'),
	('MO', 'Moraz�n', 'El Salvador'),
	('SA', 'Santa Ana', 'El Salvador'),
	('SM', 'San Miguel', 'El Salvador'),
	('SS', 'San Salvador', 'El Salvador'),
	('SV', 'San Vicente', 'El Salvador'),
	('SO', 'Sonsonate', 'El Salvador'),
	('US', 'Usulut�n', 'El Salvador');
go

select * from Departamentos;

go
-- Municipios
insert into Municipios values
--	ID_Municipio, Municipio, ID_Departamento
	('AHN', 'Ahuachap�n Norte', 'AH'),
	('AHC', 'Ahuachap�n Centro', 'AH'),
	('AHS', 'Ahuachap�n Sur', 'AH'),
	('CAE', 'Caba�as Este', 'CA'),
	('CAO', 'Caba�as Oeste', 'CA'),
	('CHN', 'Chalatenango Norte', 'CH'),
	('CHC', 'Chalatenango Centro', 'CH'),
	('CHS', 'Chalatenango Sur', 'CH'),
	('CUN', 'Cuscatl�n Norte', 'CU'),
	('CUS', 'Cuscatl�n Sur', 'CU'),
	('LLN', 'La Libertad Norte', 'LL'),
	('LLC', 'La Libertad Centro', 'LL'),
	('LLO', 'La Libertad Oeste', 'LL'),
	('LLE', 'La Libertad Este', 'LL'),
	('LLS', 'La Libertad Sur', 'LL'),
	('LLT', 'La Libertad Costa', 'LL'),
	('LPO', 'La Paz Oeste', 'LP'),
	('LPC', 'La Paz Centro', 'LP'),
	('LPE', 'La Paz Este', 'LP'),
	('LUN', 'La Uni�n Norte', 'LU'),
	('LUS', 'La Uni�n Sur', 'LU'),
	('MON', 'Moraz�n Norte', 'MO'),
	('MOS', 'Moraz�n Sur', 'MO'),
	('SAN', 'Santa Ana Norte', 'SA'),
	('SAC', 'Santa Ana Centro', 'SA'),
	('SAE', 'Santa Ana Este', 'SA'),
	('SAO', 'Santa Ana Oeste', 'SA'),
	('SMN', 'San Miguel Norte', 'SM'),
	('SMC', 'San Miguel Centro', 'SM'),
	('SMO', 'San Miguel Oeste', 'SM'),
	('SSN', 'San Salvador Norte', 'SS'),
	('SSO', 'San Salvador Oeste', 'SS'),
	('SSE', 'San Salvador Este', 'SS'),
	('SSC', 'San Salvador Centro', 'SS'),
	('SSS', 'San Salvador Sur', 'SS'),
	('SVN', 'San Vicente Norte', 'SV'),
	('SVS', 'San Vicente Sur', 'SV'),
	('SON', 'Sonsonate Norte', 'SO'),
	('SOC', 'Sonsonate Centro', 'SO'),
	('SOE', 'Sonsonate Este', 'SO'),
	('SOO', 'Sonsonate Oeste', 'SO'),
	('USN', 'Usulut�n Norte', 'US'),
	('USE', 'Usulut�n Este', 'US'),
	('USO', 'Usulut�n Oeste', 'US');
go
select * from Municipios;

go

insert into Distritos values
-- ID_Distrito, Distrito, ID_Municipio
-- Ahuachapan
	('AHN01', 'Atiquizaya', 'AHN'),
	('AHN02', 'El Refugio', 'AHN'),
	('AHN03', 'San Lorenzo', 'AHN'),
	('AHN04', 'Tur�n', 'AHN'),
	('AHC01', 'Ahuachap�n', 'AHC'),
	('AHC02', 'Apaneca', 'AHC'),
	('AHC03', 'Concepci�n de Ataco', 'AHC'),
	('AHC04', 'Tacuba', 'AHC'),
	('AHS01', 'Guaymango', 'AHS'),
	('AHS02', 'Jujutla', 'AHS'),
	('AHS03', 'San Francisco Men�ndez', 'AHS'),
	('AHS04', 'San Pedro Puxtla', 'AHS'),
-- Caba�as
	('CAE01', 'Sensuntepeque', 'CAE'),
	('CAE02', 'Victoria', 'CAE'),
	('CAE03', 'Dolores', 'CAE'),
	('CAE04', 'Guacotecti', 'CAE'),
	('CAE05', 'San Isidro', 'CAE'),
	('CAO01', 'Ilobasco', 'CAO'),
	('CAO02', 'Tejutepeque', 'CAO'),
	('CAO03', 'Jutiapa', 'CAO'),
	('CAO04', 'Cinquera', 'CAO'),
-- Chalatenango
	('CHN01', 'La Palma', 'CHN'),
	('CHN02', 'Cital�', 'CHN'),
	('CHN03', 'San Ignacio', 'CHN'),
	('CHC01', 'Nueva Concepci�n', 'CHC'),
	('CHC02', 'Tejutla', 'CHC'),
	('CHC03', 'La Reina', 'CHC'),
	('CHC04', 'Agua Caliente', 'CHC'),
	('CHC05', 'Dulce Nombre de Mar�a', 'CHC'),
	('CHC06', 'El Para�so', 'CHC'),
	('CHC07', 'San Fernando', 'CHC'),
	('CHC08', 'San Francisco Moraz�n', 'CHC'),
	('CHC09', 'San Rafael', 'CHC'),
	('CHC10', 'Santa Rita', 'CHC'),
	('CHS01', 'Chalatenango', 'CHS'),
	('CHS02', 'Arcatao', 'CHS'),
	('CHS03', 'Azacualpa', 'CHS'),
	('CHS04', 'Comalapa', 'CHS'),
	('CHS05', 'Concepci�n Quezaltepeque', 'CHS'),
	('CHS06', 'El Carrizal', 'CHS'),
	('CHS07', 'La Laguna', 'CHS'),
	('CHS08', 'Las Vueltas', 'CHS'),
	('CHS09', 'Nombre de Jes�s', 'CHS'),
	('CHS10', 'Nueva Trinidad', 'CHS'),
	('CHS11', 'Ojos de Agua', 'CHS'),
	('CHS12', 'Potonico', 'CHS'),
	('CHS13', 'San Antonio de La Cruz', 'CHS'),
	('CHS14', 'San Antonio Los Ranchos', 'CHS'),
	('CHS15', 'San Francisco Lempa', 'CHS'),
	('CHS16', 'San Isidro Labrador', 'CHS'),
	('CHS17', 'San Jos� Cancasque', 'CHS'),
	('CHS18', 'San Miguel de Mercedes', 'CHS'),
	('CHS19', 'San Jos� Las Flores', 'CHS'),
	('CHS20', 'San Luis del Carmen', 'CHS'),
-- Cuscatl�n
	('CUN01', 'Suchitoto', 'CUN'),
	('CUN02', 'San Jos� Guayabal', 'CUN'),
	('CUN03', 'Oratorio de Concepci�n', 'CUN'),
	('CUN04', 'San Bartolom� Perulap�a', 'CUN'),
	('CUN05', 'San Pedro Perulap�n', 'CUN'),
	('CUS01', 'Cojutepeque', 'CUS'),
	('CUS02', 'San Rafael Cedros', 'CUS'),
	('CUS03', 'Candelaria', 'CUS'),
	('CUS04', 'Monte San Juan', 'CUS'),
	('CUS05', 'El Carmen', 'CUS'),
	('CUS06', 'San Cristobal', 'CUS'),
	('CUS07', 'Santa Cruz Michapa', 'CUS'),
	('CUS08', 'San Ram�n', 'CUS'),
	('CUS09', 'El Rosario', 'CUS'),
	('CUS10', 'Santa Cruz Analquito', 'CUS'),
	('CUS11', 'Tenancingo', 'CUS'),
-- La Libertad
	('LLN01', 'Quezaltepeque', 'LLN'),
	('LLN02', 'San Mat�as', 'LLN'),
	('LLN03', 'San Pablo Tacachico', 'LLN'),
	('LLC01', 'San Juan Opico', 'LLC'),
	('LLC02', 'Ciudad Arce', 'LLC'),
	('LLO01', 'Col�n', 'LLO'),
	('LLO02', 'Jayaque', 'LLO'),
	('LLO03', 'Sacacoyo', 'LLO'),
	('LLO04', 'Tepecoyo', 'LLO'),
	('LLO05', 'Talnique', 'LLO'),
	('LLE01', 'Antiguo Cuscatl�n', 'LLE'),
	('LLE02', 'Huiz�car', 'LLE'),
	('LLE03', 'Nuevo Cuscatl�n', 'LLE'),
	('LLE04', 'San Jos� Villanueva', 'LLE'),
	('LLE05', 'Zaragoza', 'LLE'),
	('LLS01', 'Comasagua', 'LLS'),
	('LLS02', 'Santa Tecla', 'LLS'),
	('LLT01', 'Chiltiup�n', 'LLT'),
	('LLT02', 'Jicalapa', 'LLT'),
	('LLT03', 'La Libertad', 'LLT'),
	('LLT04', 'Tamanique', 'LLT'),
	('LLT05', 'Teotepeque', 'LLT'),
-- La Paz
	('LPO01', 'Cuyultitan', 'LPO'),
	('LPO02', 'Olocuilta', 'LPO'),
	('LPO03', 'San Juan Talpa', 'LPO'),
	('LPO04', 'San Luis Talpa', 'LPO'),
	('LPO05', 'San Pedro Masahuat', 'LPO'),
	('LPO06', 'Tapalhuaca', 'LPO'),
	('LPO07', 'San Francisco Chinameca', 'LPO'),
	('LPC01', 'El Rosario', 'LPC'),
	('LPC02', 'Jerusal�n', 'LPC'),
	('LPC03', 'Mercedes La Ceiba', 'LPC'),
	('LPC04', 'Para�so de Osorio', 'LPC'),
	('LPC05', 'San Antonio Masahuat', 'LPC'),
	('LPC06', 'San Emigdio', 'LPC'),
	('LPC07', 'San Juan Tepezontes', 'LPC'),
	('LPC08', 'San Lu�s La Herradura', 'LPC'),
	('LPC09', 'San Miguel Tepezontes', 'LPC'),
	('LPC10', 'San Pedro Nonualco', 'LPC'),
	('LPC11', 'Santa Mar�a Ostuma', 'LPC'),
	('LPC12', 'Santiago Nonualco', 'LPC'),
	('LPE01', 'San Juan Nonualco', 'LPE'),
	('LPE02', 'San Rafael Obrajuelo', 'LPE'),
	('LPE03', 'Zacatecoluca', 'LPE'),
-- La Uni�n
	('LUN01', 'Anamor�s', 'LUN'),
	('LUN02', 'Bolivar', 'LUN'),
	('LUN03', 'Concepci�n de Oriente', 'LUN'),
	('LUN04', 'El Sauce', 'LUN'),
	('LUN05', 'Lislique', 'LUN'),
	('LUN06', 'Nueva Esparta', 'LUN'),
	('LUN07', 'Pasaquina', 'LUN'),
	('LUN08', 'Polor�s', 'LUN'),
	('LUN09', 'San Jos� La Fuente', 'LUN'),
	('LUN10', 'Santa Rosa de Lima', 'LUN'),
	('LUS01', 'Conchagua', 'LUS'),
	('LUS02', 'El Carmen', 'LUS'),
	('LUS03', 'Intipuc�', 'LUS'),
	('LUS04', 'La Uni�n', 'LUS'),
	('LUS05', 'Meanguera del Golfo', 'LUS'),
	('LUS06', 'San Alejo', 'LUS'),
	('LUS07', 'Yayantique', 'LUS'),
	('LUS08', 'Yucuaiqu�n', 'LUS'),
-- Moraz�n
	('MON01', 'Arambala', 'MON'),
	('MON02', 'Cacaopera', 'MON'),
	('MON03', 'Corinto', 'MON'),
	('MON04', 'El Rosario', 'MON'),
	('MON05', 'Joateca', 'MON'),
	('MON06', 'Jocoaitique', 'MON'),
	('MON07', 'Meanguera', 'MON'),
	('MON08', 'Perqu�n', 'MON'),
	('MON09', 'San Fernando', 'MON'),
	('MON10', 'San Isidro', 'MON'),
	('MON11', 'Torola', 'MON'),
	('MOS01', 'Chilanga', 'MOS'),
	('MOS02', 'Delicias de Concepci�n', 'MOS'),
	('MOS03', 'El Divisadero', 'MOS'),
	('MOS04', 'Gualococti', 'MOS'),
	('MOS05', 'Guatajiagua', 'MOS'),
	('MOS06', 'Jocoro', 'MOS'),
	('MOS07', 'Lolotiquillo', 'MOS'),
	('MOS08', 'Osicala', 'MOS'),
	('MOS09', 'San Carlos', 'MOS'),
	('MOS10', 'San Francisco Gotera', 'MOS'),
	('MOS11', 'San Sim�n', 'MOS'),
	('MOS12', 'Sensembra', 'MOS'),
	('MOS13', 'Sociedad', 'MOS'),
	('MOS14', 'Yamabal', 'MOS'),
	('MOS15', 'Yoloaiqu�n', 'MOS'),
-- Santa Ana
	('SAN01', 'Masahuat', 'SAN'),
	('SAN02', 'Metap�n', 'SAN'),
	('SAN03', 'Santa Rosa Guachipil�n', 'SAN'),
	('SAN04', 'Texistepeque', 'SAN'),
	('SAC01', 'Santa Ana', 'SAC'),
	('SAE01', 'Coatepeque', 'SAE'),
	('SAE02', 'El Congo', 'SAE'),
	('SAO01', 'Candelaria de la Frontera', 'SAO'),
	('SAO02', 'Chalchuapa', 'SAO'),
	('SAO03', 'El Porvenir', 'SAO'),
	('SAO04', 'San Antonio Pajonal', 'SAO'),
	('SAO05', 'San Sebasti�n Salitrillo', 'SAO'),
	('SAO06', 'Santiago de La Frontera', 'SAO'),
-- San Miguel
	('SMN01', 'Ciudad Barrios', 'SMN'),
	('SMN02', 'Sesori', 'SMN'),
	('SMN03', 'Nuevo Ed�n de San Juan', 'SMN'),
	('SMN04', 'San Gerardo', 'SMN'),
	('SMN05', 'San Luis de La Reina', 'SMN'),
	('SMN06', 'Carolina', 'SMN'),
	('SMN07', 'San Antonio del Mosco', 'SMN'),
	('SMN08', 'Chapeltique', 'SMN'),
	('SMC01', 'San Miguel', 'SMC'),
	('SMC02', 'Comacar�n', 'SMC'),
	('SMC03', 'Uluazapa', 'SMC'),
	('SMC04', 'Moncagua', 'SMC'),
	('SMC05', 'Quelepa', 'SMC'),
	('SMC06', 'Chirilagua', 'SMC'),
	('SMO01', 'Chinameca', 'SMO'),
	('SMO02', 'Nueva Guadalupe', 'SMO'),
	('SMO03', 'Lolotique', 'SMO'),
	('SMO04', 'San Jorge', 'SMO'),
	('SMO05', 'San Rafael Oriente', 'SMO'),
	('SMO06', 'El Tr�nsito', 'SMO'),
-- San Salvador
	('SSN01', 'Aguilares', 'SSN'),
	('SSN02', 'El Paisnal', 'SSN'),
	('SSN03', 'Guazapa', 'SSN'),
	('SSO01', 'Apopa', 'SSO'),
	('SSO02', 'Nejapa', 'SSO'),
	('SSE01', 'Ilopango', 'SSE'),
	('SSE02', 'San Mart�n', 'SSE'),
	('SSE03', 'Soyapango', 'SSE'),
	('SSE04', 'Tonacatepeque', 'SSE'),
	('SSC01', 'Ayutuxtepeque', 'SSC'),
	('SSC02', 'Mejicanos', 'SSC'),
	('SSC03', 'San Salvador', 'SSC'),
	('SSC04', 'Cuscatancingo', 'SSC'),
	('SSC05', 'Ciudad Delgado', 'SSC'),
	('SSS01', 'Panchimalco', 'SSS'),
	('SSS02', 'Rosario de Mora', 'SSS'),
	('SSS03', 'San Marcos', 'SSS'),
	('SSS04', 'Santo Tom�s', 'SSS'),
	('SSS05', 'Santiago Texacuangos', 'SSS'),
-- San Vicente
	('SVN01', 'Apastepeque', 'SVN'),
	('SVN02', 'Santa Clara', 'SVN'),
	('SVN03', 'San Ildefonso', 'SVN'),
	('SVN04', 'San Esteban Catarina', 'SVN'),
	('SVN05', 'San Sebasti�n', 'SVN'),
	('SVN06', 'San Lorenzo', 'SVN'),
	('SVN07', 'Santo Domingo', 'SVN'),
	('SVS01', 'San Vicente', 'SVS'),
	('SVS02', 'Guadalupe', 'SVS'),
	('SVS03', 'Verapaz', 'SVS'),
	('SVS04', 'Tepetit�n', 'SVS'),
	('SVS05', 'Tecoluca', 'SVS'),
	('SVS06', 'San Cayetano Istepeque', 'SVS'),
-- Sonsonate
	('SON01', 'Juay�a', 'SON'),
	('SON02', 'Nahuizalco', 'SON'),
	('SON03', 'Salcoatit�n', 'SON'),
	('SON04', 'Santa Catarina Masahuat', 'SON'),
	('SOC01', 'Sonsonate', 'SOC'),
	('SOC02', 'Sonzacate', 'SOC'),
	('SOC03', 'Nahulingo', 'SOC'),
	('SOC04', 'San Antonio del Monte', 'SOC'),
	('SOC05', 'Santo Domingo de Guzm�n', 'SOC'),
	('SOE01', 'Izalco', 'SOE'),
	('SOE02', 'Armenia', 'SOE'),
	('SOE03', 'Caluco', 'SOE'),
	('SOE04', 'San Juli�n', 'SOE'),
	('SOE05', 'Cuisnahuat', 'SOE'),
	('SOE06', 'Santa Isabel Ishuat�n', 'SOE'),
	('SOO01', 'Acajutla', 'SOO'),
-- Usulut�n
	('USN01', 'Santiago de Mar�a', 'USN'),
	('USN02', 'Alegr�a', 'USN'),
	('USN03', 'Berl�n', 'USN'),
	('USN04', 'Mercedes Uma�a', 'USN'),
	('USN05', 'Jucuapa', 'USN'),
	('USN06', 'El triunfo', 'USN'),
	('USN07', 'Estanzuelas', 'USN'),
	('USN08', 'San Buenaventura', 'USN'),
	('USN09', 'Nueva Granada', 'USN'),
	('USE01', 'Usulut�n', 'USE'),
	('USE02', 'Jucuar�n', 'USE'),
	('USE03', 'San Dionisio', 'USE'),
	('USE04', 'Concepci�n Batres', 'USE'),
	('USE05', 'Santa Mar�a', 'USE'),
	('USE06', 'Ozatl�n', 'USE'),
	('USE07', 'Tecap�n', 'USE'),
	('USE08', 'Santa Elena', 'USE'),
	('USE09', 'California', 'USE'),
	('USE10', 'Ereguayqu�n', 'USE'),
	('USO01', 'Jiquilisco', 'USO'),
	('USO02', 'Puerto El Triunfo', 'USO'),
	('USO03', 'San Agust�n', 'USO'),
	('USO04', 'San Francisco Javier', 'USO');
go
select * from Distritos;
go
---Ya se ejecuto

-- Inserciones en la tabla Direcciones
INSERT INTO Direcciones (Linea1,linea2,ID_Distrito,CodigoPostal)
VALUES 

	('Calle 2, #1N','Frente al parque','SON02','2311'),
	('Avenida Principal, #5S','Cerca de la playa','SOE01','10001'),
	('Calle 10, #20E', 'Junto al mercado', 'SOO01', '90210'),
    ('Avenida Norte, #123', 'Al lado del cine', 'SOC01', '75001'),
	('Calle Este, #7W', 'En el centro de la ciudad', 'AHS04', '33139'),
	('Avenida Oeste, #3S', 'Cerca del parque', 'SAC01', '60601'),
	('Calle Sur, #15N', 'En la zona residencial', 'USE08', '98101'),
	('Avenida Este, #9E', 'Pr�ximo a la escuela', 'AHS01', '30301'),
	('Calle 5, #30W', 'Junto al supermercado', 'LLO01', '27601'),
	('Avenida 2, #40S', 'Cerca del estadio', 'SON01', '19103');

	select * from Direcciones;
	-- Inserciones en la tabla Empleados
INSERT INTO Empleados (NombresEmpleado, ApellidosEmpleado, FechaNac, Telefono, Correo, DUI, ISSS, ID_Direccion)
VALUES 
    ('Juan Carlos', 'P�rez G�mez', '1990-05-15', '7771234567', 'juan@gmail.com', '1234789-2', 20230102030405, 1),
    ('Mar�a Jos�', 'Rodr�guez L�pez', '1985-09-23', '5559876543', 'maria.rodriguez@gmail.com', '04598764-3', 20221231040506, 2),
    ('Roberto', 'Mart�nez Garc�a', '2001-11-10', '3331112222', 'roberto.martinez@gmail.com', '055111-3', 20211130050607, 3),
    ('Ana', 'L�pez P�rez', '1978-03-06', '4442223333', 'ana.lopez@gmail.com', '07522233-3', 20201029060708, 4),
    ('Luisa', 'S�nchez Rodr�guez', '1995-07-19', '6663339999', 'luisa.sanchez@gmail.com', '06533399-2', 20190928070809, 5),
	('Julia', 'S�nchez Estrada', '1995-08-15', '6643339999', 'julia.sanchez@gmail.com', '06673399-2', 20180827080910, 5);
	
	select * from Empleados;
	
	-- Inserciones en la tabla Clientes
INSERT INTO Clientes (NombreCliente, ApellidoCliente, Telefono, Correo, DUI,TipoCliente, FechaRegistro, ID_Direccion)
VALUES ('Mar�a Fernanda', 'L�pez P�rez', '555-1234', 'maria@example.com', '12345678-9','Ganadero','2023-05-24',3),
       ('Carlos Alberto', 'Gonz�lez Rodr�guez', '987-6543', 'carlos@example.com', '98765432-1','Jardinero','2023-02-01',4),
       ('Ana Isabel', 'S�nchez Cruz', '444-5678', 'ana@example.com', '44456789-0','Agricultor','2023-06-06',5),
       ('Jos� Luis', 'Ram�rez Mendoza', '777-8901', 'jose@example.com', '77789012-3','Agricultor','2023-11-01', 6),
       ('Laura Helena', 'Torres Garc�a', '321-4567', 'laura@example.com', '32145678-4','Ganadero','2023-05-04', 7);
select * from Clientes;

	   -- Inserciones en la tabla Proveedores
INSERT INTO Proveedores (NombreProveedor, Telefono, Correo, ID_Direccion)
VALUES ('Agronegocios Flores', '7771112222', 'floresagro@example.com', 3),
       ('Campo Verde SA', '5554443333', 'campoverde@example.com', 6),
       ('Agroalimentos Rojas', '9998887777', 'rojasagro@example.com', 9),
       ('Agronegocios Cultiva', '3332221111', 'cultivaagro@example.com', 8),
       ('Agr�cola AgroFrescos', '6665554444', 'agrofrescos@example.com', 7);
select * from Proveedores;

-- Insertar 5 registros de la tabla pedido
INSERT INTO Pedidos (FechaPedido, FechaRecibido, Comentario, ID_Proveedor)
VALUES
    ('2023-10-31 09:00:00', '2023-11-07 14:30:00', 'Primer pedido', 1),
    ('2023-11-01 10:15:00', '2023-11-08 15:45:00', 'Segundo pedido', 2),
    ('2023-11-02 11:30:00', '2023-11-09 12:15:00', 'Tercer pedido', 3),
    ('2023-11-03 12:45:00', '2023-11-10 13:30:00', 'Cuarto pedido', 4),
    ('2023-11-04 13:15:00', '2023-11-11 14:00:00', 'Quinto pedido', 5);
select * from Pedidos;

-- Inserciones en la tabla Categoria
INSERT INTO Categoria (NombreCategoria, DescripcionCategoria)
VALUES ('Maquinaria Agr�cola', 'Maquinaria para labores agr�colas y de campo'),
       ('Fertilizantes', 'Productos qu�micos y naturales para fertilizaci�n de cultivos'),
       ('Veterinaria', 'Productos y servicios para el cuidado de animales de granja'),
       ('Semillas', 'Semillas de diferentes cultivos y variedades'),
       ('Veneno', 'Estos pesticidas matan o repelen insectos');
select * from Categoria;

-- Inserciones en la tabla 
INSERT INTO Productos (NombreProducto, PrecioUnitario,FechaVencimiento,Descripcion, Stock, ID_Categoria)
VALUES ('Tractor Kubota',50.000,'','ninguna', 10, 1),
       ('Fertilizante Org�nico', 25.75,'2026-09-07','', 20, 2),
       ('Alimento para Ganado', 65.25,'2025-01-09','', 35, 3),
       ('Semillas de Ma�z', 12.50,'2025-07-19','', 15, 4),
       ('Insecticidas', 12.50,'2025-07-15','', 12, 5);
select * from Productos;

INSERT INTO Compras (Cantidad, PrecioUnidad, DescuetoUnidad, Comentarios, ID_Producto, ID_Pedido)
VALUES
    (10,10.000,0, 'Tractor compacto Kubota (menos de 30 HP):', 1, 1),
    (20, 24.99, 2.00, ' Compra  de Fertilizante Org�nico', 2, 2),
    (35, 12.50, 0.75, 'Compra de Alimento para Ganado', 3, 3),
    (15, 9.99, 1.25, 'Compra de Semillas de Ma�z', 4, 4),
    (12, 18.75, 1.00, 'Compra de Sistema de Riego por Goteo', 5, 5);
select * from Compras

-- Inserciones en la tabla Inventarios
INSERT INTO Inventarios (FechaRegistro, TipoTransaccion, Cantidad, Ubicacion, ID_Producto)
VALUES ('2023-09-01 09:15:00', 'Compra', 10.50, 'Almac�n A', 1),
       ('2023-09-02 14:30:00', 'Venta', 5.75, 'Tienda B', 2),
       ('2023-09-03 11:45:00', 'Compra', 25.99, 'Almac�n C', 3),
       ('2023-09-04 16:20:00', 'Venta', 15.25, 'Tienda A', 4),
       ('2023-09-05 08:10:00', 'Compra', 8.99, 'Almac�n B', 5);
select * from Inventarios

-- Inserciones en la tabla DetalleFacturas
INSERT INTO DetalleFacturas (CantidadProducto, PrecioUnitario, Subtotal,IMPUESTO_IVA, Total, ID_Producto)
VALUES (10, 12.50, 125.00,16.25,141.25, 4),
       (4, 25.75, 103.00,13.39,116.39 , 2),
       (4, 12.50, 50.00,6.50, 56.50, 5),
       (15, 12.50, 125.00,16.25,141.25, 4),
       (25,65.25,1.631,0.212,1.843, 3);
select * from DetalleFacturas

-- Inserciones en la tabla Facturas
INSERT INTO Facturas (NumeroFactura, Comentario,FormaDePago, ID_DetalleFactura, ID_Cliente, ID_Empleado)
VALUES (1001, 'Compra de semillas de ma�z','Efectivo', 1, 3, 1),
       (1002, 'Entrega de fertilizantes','Tarjeta de d�bito', 2, 2, 2),
       (1003, 'Compra de Insecticida','Tarjeta de d�bito', 3, 3, 3),
	   (1004, 'Venta de semillas agr�colas','Efectivo', 4, 4, 4),
       (1005, 'Entrega de productos para la granja','Efectivo', 5, 1, 5);
select * from Facturas

	   -- Inserciones en las tablas Roles y Opciones (seguridad de la aplicaci�n)
INSERT INTO Roles (NombreRol)
VALUES ('Administrador'),
       ('Vendedor'),
       ('EmpleadoAlmacen'),
       ('Gerente'),
       ('ContadorFinanciero'),
       ('RecursosHumanos');

INSERT INTO Opciones (NombreOpcion)
VALUES ('SELECT'),
       ('INSERT'),
       ('UPDATE'),
       ('DELETE');

-- Inserciones en la tabla AsignacionRolesOpciones (asignaci�n de permisos)
-- Puedes ajustar esto seg�n las necesidades de tu aplicaci�n.
INSERT INTO AsignacionRolesOpciones (ID_Rol, ID_Opcion)
VALUES
	('1','1'),
	('1','2'),
	('1','3'),
	('1','4'),
	('2','1'),
	('2','2'),
	('2','3'),
	('3','1'),
	('3','2'),
	('3','3'),
	('4','1'),
	('4','2'),
	('4','3'),
	('4','4'),
	('5','1'),
	('5','2'),
	('5','3'),
	('6','1'),
	('6','2'),
	('6','3'),
	('6','4');

-- Inserciones de usuarios con roles
INSERT INTO Usuarios (Usuario, Clave, ID_Empleado, ID_Rol)
VALUES 
	('adminuser','administrador', 1, 1),
	('vendedoruser','vendedor', 2, 2),
	('empleadoalmacenuser','empleadoalmacen', 3, 3),
	('gerenteuser','gerente', 4, 4),
	('contadorfinancierouser','contadorfinanciero', 5, 5),
	('recursoshumanosuser','recursoshumanos', 6, 6);

Select * from Usuarios;