create table usuario
(
usuario varchar (15) primary key,
nombres varchar (30) not null,
apellidos varchar (30)not null,
direccion varchar (50) not null,
fecha_de_modificacion date null,
ciudad varchar(25) not null
)


create table cliente
(
    Cedula_Ruc varchar (14) primary key,
	nombre1 varchar (15) not null,
	nombre2 varchar (15) null,
	apellido1 varchar (15) not null,
	apellido2 varchar (15) not null,
	direccion varchar (50) not null,
	ciudad varchar(25) not null,
    fecha_de_modificacion date null, 
	Tipo_cliente varchar (15) not null --(mayorista o menorista)
)
ALTER TABLE cliente
ADD fecha_de_modificacion date; 

create table contacto
(
	id_contacto int primary key,
	Cedula_Ruc int not null,
	correo varchar (50) not null,
	tipo_telefono varchar (15) not null,
	numero_telefono varchar (15) not null
)
create table registro_compra
(
	id_compra int primary key,
	id_factura_proveedor int,
    cantidad int not null,
    valor_iva float not null,
	descuento int not null,
	descripcion_de_compra varchar(500) not null
   
)
create table form_pago
(
	id_form_pago int primary key,
	forma_pago varchar (10) not null--(targeta o efectivo)
)
create table proveedor
(
	id_proveedor int primary key ,
	nomb_empresa varchar (50) not null,
	nombre1 varchar (15) not null,
	nombre2 varchar (15) null,
	apellido1 varchar (15) not null,
	apellido2 varchar (15) not null,
	direccion varchar (50) not null,
	correo varchar (50) not null,
	telefono varchar (15) not null,
	extranjeros_sn varchar (1) not null, --(si(s) o no(n))
	pais varchar (15) not null,
	ciudad varchar (25) not null,
	provincia varchar (25) null
)
create table factura_proveedor
(
	id_factura_proveedor int primary key,
	id_proveedor int null,
	numero_factura int not null,
	autorizacion int not null,
    fecha_de_modificacion date null, 
	precio_total float not null
)


create table producto
(
	id_producto int primary key,
	id_categoria int null,
    fecha_de_modificacion date null, 
	codigo_producto varchar (25) not null
)

create table categoria
(
	id_categoria  int primary key,
	tipo varchar (20) not null --(L(Limpieza),C(Comestible),M(Mascota))
	
)

create table marca 
(	
	id_marca int primary key,
	marca varchar (20) not null
)
create table factura
(
	id_factura int primary key,
    id_form_pago int not null,
	Cedula_Ruc varchar (14) not null,
    usuario varchar (15) not null,
	numero_factura varchar (10) not null,
	autorizacion varchar (40) null,
	fecha_factura date null,
    estado varchar (1)  null--(s(si),n(no))
)
create table detalle_factura
(
	id_det_factura int primary key,
	id_factura int not null,
	id_producto int not null,
	precio float not null,
	cantidad int not null,
    valor_iva float not null,
	descuento int not null 
)
create table devolucion
(
	id_devolucion int primary key,
	id_factura int not null,
	fech_hora_devolucion date  null,
	detalle_producto varchar (50)  null,
	descripcion_daño varchar (100)  null,
	estado varchar (1)  null--(s(si),n(no))
	
)