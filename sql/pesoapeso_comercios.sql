CREATE DATABASE pesoAPeso;

USE pesoAPeso;

CREATE TABLE comercios
(
    idComercio INT(11) PRIMARY KEY NOT NULL,
    descripcion VARCHAR(255) NOT NULL
);
CREATE TABLE productos
(
    idProducto INT(11) PRIMARY KEY NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    codBarra VARCHAR(255)
);
CREATE TABLE precios
(
    idPrecio INT(11) PRIMARY KEY NOT NULL,
    idProducto INT(11) NOT NULL,
    idComercio INT(11) NOT NULL,
    precioUnitario DOUBLE NOT NULL
);
CREATE TABLE gastos
(
    idGasto INT(11) PRIMARY KEY NOT NULL,
    fecha DATE NOT NULL,
    idComercio INT(11) NOT NULL,
    idProducto INT(11) NOT NULL,
    precioUnitario DOUBLE NOT NULL
);

INSERT INTO pesoAPeso.comercios (idComercio, descripcion) VALUES (1, 'Chino');

INSERT INTO pesoAPeso.comercios (idComercio, descripcion) VALUES (2, 'Verduleria');

INSERT INTO pesoAPeso.comercios (idComercio, descripcion) VALUES (3, 'Carrefour');

INSERT INTO pesoAPeso.comercios (idComercio, descripcion) VALUES (4, 'Coto');
