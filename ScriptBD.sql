create database `bateria`;
create table usuario(
    usuario varchar (30), 
    contra VARCHAR(20), 
    tipo varchar(20));

create table recoleccion(
    pesoTotalB float(10),
    origenR varchar(50), 
    lote integer(10), 
    fechaR date,
    primary key (lote));

create table clasificacion(
    lote integer(10),
    cantidadT integer(10),
    reutili integer(10),
    nReutili integer(10),
    foreign key (lote) references recoleccion (lote)
);


create table extraccion(
    lote integer(10),
    nombreM varchar(30),
    cantidadM integer(10),
    tipoM varchar(30),
    fechaRE date,
    bodegaA varchar(10),
    numDesmontaje integer(10),
    primary key (numDesmontaje),
    foreign key (lote) references recoleccion (lote)
);
