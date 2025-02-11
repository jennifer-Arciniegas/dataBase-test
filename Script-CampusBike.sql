create database campusBike;
use campusBike;

create table proveedor (IDproveedor int auto_increment primary key, NIT varchar(50)not null, nombre varchar(50) not null, apellido varchar(50) not null, telefono varchar(11) not null, correo varchar(50) not null, direccion varchar(50) not null, ciudad varchar(50) not null );
create table cliente (IDcliente int auto_increment primary key, nombre varchar(50) not null, apellido varchar(50) not null, genero enum('femenino', 'masculino') not null, direccion varchar(50) not null, telefono varchar(12) not null, correo varchar(50) not null, ciudad varchar(50) not null);
create table producto (IDproducto int auto_increment primary key, nombre varchar(50) not null, categoria enum('Bicicleta', 'Repuesto', 'Accesorio') not null, precio decimal not null, cantidad int not null, id_proveedor int, foreign key(id_proveedor) references proveedor(IDproveedor));
create table factura (IDfactura int auto_increment primary key, fecha date not null, precio_Total decimal not null, id_cliente int, id_producto int, foreign key(id_cliente) references cliente(IDcliente), foreign key(id_producto)  references proveedor(IDproveedor));
describe  factura ;
