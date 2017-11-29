
create table CentroProduccion(
idCentro  serial,
nombre VARCHAR(30),
PRIMARY key (idCentro)
)

create Table apiario(
idApi serial,
idCentro INTEGER,
PRIMARY key (idApi),
FOREIGN key (idCentro) REFERENCES centroProduccion (idCentro)
)

create Table Cajon(
idCajon serial,
idApi INTEGER,
fabrica VARCHAR,
PRIMARY key (idCajon),
FOREIGN key (idApi) REFERENCES apiario (idApi))

create table familia (

idFam serial,
nombre VARCHAR(20),
ubicacion VARCHAR(20),
PRIMARY KEY (IdFam))

create Table colmena(

idColmena serial,
idCajon INTEGER,
idFam INTEGER,
cantidad INTEGER,
calidad VARCHAR(20),
reina VARCHAR(20),
miel VARCHAR(10),
cera INTEGER,
alimentato INTEGER,
cria INTEGER,
pvacios INTEGER,
idColmenaH INTEGER,

PRIMARY key (idColmena),
FOREIGN key (idCajon) REFERENCES cajon (idCajon),
FOREIGN key (idFam) REFERENCES familia (idFam),
FOREIGN KEY (idFam) REFERENCES familia (idFam),
FOREIGN KEY (idColmenaH) references colmena (idColmena))

create table registro (

idRegistro serial,
fecha varchar(10),
recolector varchar(50),
idCol integer,
kilos integer,

PRIMARY KEY (idRegistro),
FOREIGN key (idCol) REFERENCES colmena (idColmena))



INSERT INTO colmena  VALUES (1,1,1,10,,'alta','si','si',1,10,5,10,1)
INSERT INTO colmena  VALUES (2,1,1,10,,'baja','no','si',1,10,5,10,2)
INSERT INTO colmena  VALUES (3,1,1,10,,'media','si','no',1,10,5,10,3)


INSERT INTO registro Values (1,'1-10-2017','juan',1,150)
INSERT INTO registro Values (2,'1-10-2017','pablo',1,150)
INSERT INTO registro Values (3,'1-10-2017','pedro',1,150)