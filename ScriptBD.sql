create database `bateria`;
create table usuario(
    usuario varchar (30), 
    contra VARCHAR(20), 
    tipo varchar(20));

create table recoleccion(
    pesoTotalB float(10),
    origenR varchar(50), 
    lote integer(10), 
    fechaR date);
create table clasificacion(
    tipo varchar(20), 
    cantidad integer(10));


create table extraccion(
    nombreM varchar(30),
    cantidadM integer(10),
    tipoM varchar(30),
    lote integer(10),
    fechaRE date,
    bodegaA varchar(10),
    numDesmontaje integer(10)
);

