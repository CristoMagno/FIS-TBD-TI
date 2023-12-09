create database `Voltium`;
use Voltium;
CREATE TABLE usuario(
    id integer(10),
    usuario varchar(20), 
    contra varchar(20), 
    tipo varchar(20),
    PRIMARY KEY (id)
);

CREATE TABLE almacenado(
    lote integer(10), 
    origen varchar(50),
    pesoTotal float(10),
    fecha date,
    PRIMARY KEY (lote)
);

CREATE TABLE clasificacion(
    idC integer(10),
    loteC integer(10),
    cantNReutili float(10),
    cantReutili float(10),
    PRIMARY KEY (idC),
    FOREIGN KEY (loteC) REFERENCES almacenado (lote)
);

CREATE TABLE extraccion(
    numDesmontaje integer(10),
    fechaExtraccion DATE,
    lote integer(10),
    ctiAluminio float(10),
    ctiCobre float(10),
    ctiCobalto float(10),
    ctiNiquel float(10),
    ctiManganeso float(10),
    PRIMARY KEY (numDesmontaje),
    FOREIGN KEY (lote) REFERENCES almacenado (lote)
);



create user 'Normal' Identified by 'prime';
grant insert on Voltium.usuario to 'Normal';
grant select on Voltium.usuario to 'Normal';
grant update on Voltium.usuario to 'Normal';
show grants for 'Normal';

create user 'Super' Identified by 'dios';
GRANT ALL PRIVILEGES ON Voltium.usuario TO 'Super';
SHOW GRANTS FOR 'Super';
