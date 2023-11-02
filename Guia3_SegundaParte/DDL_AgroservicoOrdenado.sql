-- Creación de la base de datos
CREATE DATABASE Agroservicio;
USE Agroservicio;
-- Tablas
CREATE TABLE Departamentos (
    ID_Departamento CHAR(2) PRIMARY KEY,
    NombreDepartamento VARCHAR(60) NOT NULL,
    Pais VARCHAR(60)	
);
CREATE TABLE Municipios (
    ID_Municipio CHAR(3) PRIMARY KEY,
    NombreMunicipio VARCHAR(60) NOT NULL,
    ID_Departamento CHAR(2) NOT NULL,
    FOREIGN KEY (ID_Departamento) REFERENCES Departamentos (ID_Departamento)
);
CREATE TABLE Distritos (
    ID_Distrito VARCHAR(5) PRIMARY KEY,
    NombreDistrito VARCHAR(60),
    ID_Municipio CHAR(3) NOT NULL,
    FOREIGN KEY (ID_Municipio) REFERENCES Municipios (ID_Municipio)
);
CREATE TABLE Direcciones(
	ID_Direccion INT PRIMARY KEY IDENTITY(1,1),
	Linea1 VARCHAR(100) NOT NULL,
	linea2 VARCHAR(100),
	ID_Distrito VARCHAR(5) NOT NULL,
	CodigoPostal INT,
	FOREIGN KEY (ID_Distrito) REFERENCES Distritos (ID_Distrito)
);

CREATE TABLE Empleados (
    ID_Empleado INT PRIMARY KEY IDENTITY(1, 1),
    NombresEmpleado VARCHAR(60) NOT NULL,
    ApellidosEmpleado VARCHAR(60) NOT NULL,
	FechaNac DATE NOT NULL, 
    Telefono VARCHAR(10) NOT NULL,
    Correo VARCHAR(100),
    DUI VARCHAR(60) NOT NULL,
    ISSS VARCHAR(15) NOT NULL,
    ID_Direccion INT NOT NULL,
    FOREIGN KEY (ID_Direccion) REFERENCES Direcciones (ID_Direccion)
);
CREATE TABLE Clientes (
    ID_Cliente INT PRIMARY KEY IDENTITY(1, 1),
    NombreCliente VARCHAR(60) NOT NULL,
    ApellidoCliente VARCHAR(60) NOT NULL,
    Telefono VARCHAR(10) NOT NULL,
    Correo VARCHAR(100),
    DUI VARCHAR(60) NOT NULL,
	TipoCliente VARCHAR (40) NOT NULL,
	FechaRegistro DATE NOT NULL, 
    ID_Direccion INT NOT NULL,
    FOREIGN KEY (ID_Direccion) REFERENCES Direcciones (ID_Direccion)
);

CREATE TABLE Proveedores (
    ID_Proveedor INT PRIMARY KEY IDENTITY(1, 1),
    NombreProveedor VARCHAR(60) NOT NULL,
    Telefono VARCHAR(10) NOT NULL,
    Correo VARCHAR(100) NOT NULL,
	FechaRegistro DATE, -- no esta decidido
    ID_Direccion INT NOT NULL,
    FOREIGN KEY (ID_Direccion) REFERENCES Direcciones (ID_Direccion)
);
--nuevas tablas
CREATE TABLE Pedidos(
	ID_Pedido INT PRIMARY KEY IDENTITY (1,1),
	FechaPedido DATETIME NOT NULL,
	FechaRecibido DATETIME NOT NULL,
	Comentario VARCHAR(100),
	ID_Proveedor INT NOT NULL,
	FOREIGN KEY (ID_Proveedor) REFERENCES Proveedores (ID_Proveedor)
);
CREATE TABLE Categoria (
    ID_Categoria INT PRIMARY KEY IDENTITY(1, 1),
    NombreCategoria VARCHAR(100) NOT NULL,
    DescripcionCategoria VARCHAR(200)
)
CREATE TABLE Productos (
    ID_Producto INT PRIMARY KEY IDENTITY(1, 1),
    NombreProducto VARCHAR(100) NOT NULL,
    PrecioUnitario DECIMAL(10, 2) NOT NULL,
	FechaVencimiento DATE,
    Stock INT NOT NULL,
	Descripcion VARCHAR (100),
    ID_Categoria INT NOT NULL,
	FOREIGN KEY (ID_Categoria) REFERENCES Categoria (ID_Categoria),
	
);
CREATE TABLE Compras(
	ID_Compra INT PRIMARY KEY IDENTITY (1,1),
	Cantidad INT NOT NULL,
	PrecioUnidad MONEY NOT NULL,
	DescuetoUnidad MONEY NOT NULL,
	Comentarios VARCHAR(200),
	ID_Producto INT NOT NULL,
	ID_Pedido INT NOT NULL,
	FOREIGN KEY (ID_Producto) REFERENCES Productos (ID_Producto),
	FOREIGN KEY (ID_Pedido) REFERENCES Pedidos (ID_Pedido)
);
CREATE TABLE Inventarios (
    ID_Inventario INT PRIMARY KEY IDENTITY(1, 1),
    FechaRegistro DATETIME NOT NULL,
    TipoTransaccion VARCHAR(20) NOT NULL,
    Cantidad DECIMAL(10, 2) NOT NULL,
    Ubicacion VARCHAR(20) NOT NULL,
    ID_Producto INT NOT NULL,
    FOREIGN KEY (ID_Producto) REFERENCES Productos (ID_Producto)
);
CREATE TABLE DetalleFacturas (
    ID_DetalleFactura INT PRIMARY KEY IDENTITY(1, 1),
    CantidadProducto INT NOT NULL,
    PrecioUnitario DECIMAL(10, 2) NOT NULL,
    Subtotal DECIMAL(10, 2) NOT NULL,
	IMPUESTO_IVA DECIMAL(10,2) NOT NULL,
    Total DECIMAL(10, 2) NOT NULL,
    ID_Producto INT NOT NULL,
	FOREIGN KEY (ID_Producto) REFERENCES Productos (ID_Producto),

);
CREATE TABLE Facturas (
    ID_Factura INT PRIMARY KEY IDENTITY(1, 1),
    NumeroFactura INT NOT NULL,
    Comentario VARCHAR(100),
	FormaDePago VARCHAR(34) NOT NULL,
    ID_DetalleFactura INT NOT NULL,
    ID_Cliente INT NOT NULL,
    ID_Empleado INT NOT NULL,
	FOREIGN KEY (ID_DetalleFactura) REFERENCES DetalleFacturas(ID_DetalleFactura),
	FOREIGN KEY (ID_Cliente) REFERENCES Clientes (ID_Cliente),
	FOREIGN KEY (ID_DetalleFactura) REFERENCES DetalleFacturas (ID_DetalleFactura),
);
CREATE TABLE Roles (
    ID_Rol INT PRIMARY KEY IDENTITY(1, 1),
    NombreRol VARCHAR(40) NOT NULL
);
CREATE TABLE Usuarios (
    ID_Usuario INT PRIMARY KEY IDENTITY(1, 1),
    Usuario VARCHAR(60) NOT NULL,
    Clave VARCHAR(60) NOT NULL,
    ID_Empleado INT NOT NULL,
    ID_Rol INT NOT NULL,
	FOREIGN KEY (ID_Empleado) REFERENCES Empleados (ID_Empleado),
	FOREIGN KEY (ID_Rol) REFERENCES Roles (ID_Rol)
);
CREATE TABLE Opciones (
    ID_Opcion INT PRIMARY KEY IDENTITY(1, 1),
    NombreOpcion VARCHAR(40) NOT NULL
);

CREATE TABLE AsignacionRolesOpciones (
    ID_AsignacionRol INT PRIMARY KEY IDENTITY(1, 1),
    ID_Rol INT NOT NULL,
    ID_Opcion INT NOT NULL,
	FOREIGN KEY (ID_Rol) REFERENCES Roles (ID_Rol),
	FOREIGN KEY (ID_Opcion) REFERENCES Opciones (ID_Opcion)
);

