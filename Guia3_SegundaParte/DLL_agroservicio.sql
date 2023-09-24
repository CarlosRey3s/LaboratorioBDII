--Ejercicio Clase 1 26/08/2023
-- Bases de Datos dada por e instructor 

--Creacion de BD 
CREATE DATABASE Agroservicio;
use Agroservicio;

--Tablas 
create table Direcciones(
	ID_Direccion int primary key identity(1, 1),
    Linea1 varchar(100),
	CodigoPostal int,
	Pais varchar(50),
	ID_Distrito int not null
);

create table Distritos(
	ID_Distrito int primary key identity(1, 1),
    NombreDistrito varchar(10),
	ID_Municipio int not null
);

create table Municipio(
	ID_Municipio int primary key identity(1, 1),
    NombreMunicipio varchar(10),
	ID_Departamento int not null
);

create table Departamento(
	ID_Departamento int primary key identity(1, 1),
    NombreDepartamento varchar(10)
);

create table Empleados(
	ID_Empleado int primary key identity(1, 1),
	NombresEmpleado varchar(60) not null,
    ApellidosEmpleado varchar(60) not null, 
	Telefono varchar(10) not null,
	Correo varchar(100),
	DUI varchar(60) not null, 
	ISSS varchar(15) not null, 
	ID_Direccion int not null
);
create table Cargo(
	ID_Empleado int primary key identity(1, 1),
	NombresEmpleado varchar(60) not null    
);
create table Clientes(
	ID_Cliente int primary key identity(1, 1),
	NombreCliente varchar(60) not null,
	ApellidoCliente varchar(60) not null,
	Telefono varchar(10) not null,
	Correo varchar(100),
	DUI varchar(60) not null,
	ID_Direccion int not null
);

create table Proveedores(
	ID_Proveedor int primary key identity(1, 1),
	NombreProveedor varchar(60) not null,
	Telefono varchar(10) not null,
	Correo varchar(100) not null,
	ID_Direccion int not null
);

create table Categoria (
    ID_Categoria int primary key identity(1, 1),
    NombreCategoria varchar(100) not null,
    DescripcionCategoria varchar(200)
);

create table Productos (
    ID_Producto int primary key identity(1, 1),
    NombreProducto varchar(100) not null,
    PrecioUnitario decimal(10, 2) not null,
    Stock int not null,
    ID_Categoria int not null,
	ID_Inventario int not  null,
);

create table Facturas(
	ID_Factura int primary key identity(1,1),
	NumeroFactura int not null,
	Comentario varchar(100),
	ID_DetalleFactura int not null,
	ID_Cliente int not null,
	ID_Empleado int not null,

);
create table DetalleFacturas(
	ID_DetalleFactura int primary key identity(1,1),
	CantidadProducto int not null,
	PrecioUnitario decimal(10, 2) not null,
	Subtotal decimal(10, 2) not null,
	Total decimal(10, 2) not null,
	ID_Producto int not null,
);
create table Inventarios(
	ID_Inventario int primary key identity(1,1),
	FechaRegistro datetime not null,
	TipoTransaccion varchar(20) not null,
	cantidad decimal(10, 2) not null,
	Ubicacion varchar(20) not null,
	ID_Producto int not null,
);
---- Nuevo
create table Usuarios(
	ID_Usuario int primary key identity(1,1),
	Usuario varchar(60) not null,
	Clave varchar (60) not null,
	ID_Empleado int not null,
	ID_Rol int not null,
	
);
create table Roles(
	ID_Rol int primary key identity(1,1),
	NombreRol varchar(40) not null
	
);
create table AsignacionRolesOpciones(
	ID_AsignaiconRol int primary key identity(1,1),
	ID_Rol int not null,
	ID_Opcion int not null,
	
);
create table Opciones(
	ID_Opcion int primary key identity(1,1),
	NombreOpcion varchar(40) not null	
);

-- detalle Factura(Id detalle, cantidad produc, categoria ,subtotal, total , precioUNitario)
-- FACTURA (ID, Numfactura, IDCliente,Idempleado,comentario

--asignacion de lllave forania
alter table Direcciones add foreign key (ID_Distrito) references Distritos(ID_Distrito);
alter table Distritos add foreign key (ID_Municipio) references Municipio(ID_Municipio);
alter table Municipio add foreign key (ID_Departamento) references Departamento(ID_Departamento);
alter table Empleados add foreign key (ID_Direccion) references Direcciones(ID_Direccion);
alter table Clientes add foreign key (ID_Direccion) references Direcciones(ID_Direccion);
alter table Proveedores add foreign key (ID_Direccion) references Direcciones(ID_Direccion);
alter table Productos add foreign key (ID_Categoria) references Categoria(ID_Categoria);
alter table Facturas add foreign key (ID_DetalleFactura) references DetalleFacturas(ID_DetalleFactura);
alter table Facturas add foreign key (ID_Cliente) references Clientes(ID_Cliente);
alter table Facturas add foreign key (ID_Empleado) references Empleados(ID_Empleado);
alter table DetalleFacturas add foreign key (ID_Producto) references Productos(ID_Producto);--nuevo
alter table Inventarios add foreign key (ID_Producto) references Productos(ID_Producto);

-----------------------------------------------------------------------------------------------
alter table Usuarios add foreign key (ID_Empleado) references Empleados(ID_Empleado);
alter table Usuarios add foreign key (ID_Rol) references Roles(ID_Rol);
alter table AsignacionRolesOpciones add foreign key (ID_Rol) references Roles(ID_Rol);
alter table AsignacionRolesOpciones add foreign key (ID_Opcion) references Opciones(ID_Opcion);




