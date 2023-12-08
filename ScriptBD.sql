create database `bateria`;
create table usuario(
    usuario varchar (30), 
    contra varchar(20), 
    tipo varchar(20)
);

create table almacenado(
    lote integer(10), 
    origen varchar(50),
    pesoTotal float(10),
    fecha date
);

create table clasificacion(
    lote integer(10),
    cantNReutili float(10),
    cantReutili float(10),
    total float(10),
    foreign key (total) references almacenado (pesoTotal),
    foreign key (lote) references almacenado (lote)
);


create table extraccion(
    numDesmontaje integer(10),
    fechaExtraccion date,
    lote integer(10),
    ctiAluminio float(10),
    ctiCobre float(10),
    ctiCobalto float(10),
    ctiNiquel float(10),
    ctiManganeso float(10),
    ctiAluminio varchar(10),
    primary key (numDesmontaje),
    foreign key (lote) references almacenado (lote)
);
