# ENA
ENA AIEP
CREATE DATABASE ena
USE ena
CREATE TABLE Usuario (
	id_usuario INT UNSIGNED AUTO_INCREMENT NOT NULL,
	n_usuario VARCHAR(60) NOT NULL,
	contraseña VARCHAR(20) NOT NULL,
	PRIMARY KEY(id_usuario)
);

CREATE TABLE Asignacion (
	id_asignacion INT UNSIGNED AUTO_INCREMENT NOT NULL,
	n_asignacion VARCHAR(60) NOT NULL,
	PRIMARY KEY (id_asignacion)
)

CREATE TABLE Encargado (
	id_encargado INT UNSIGNED AUTO_INCREMENT NOT NULL,
	n_encargado VARCHAR(60) NOT NULL,
	PRIMARY KEY (id_encargado)
)

CREATE TABLE Depto (
	id_depto INT UNSIGNED AUTO_INCREMENT NOT NULL,
	n_depto VARCHAR(60) NOT NULL,
	PRIMARY KEY (id_depto)
)

CREATE TABLE Gerencia (
	id_gerencia INT UNSIGNED AUTO_INCREMENT NOT NULL,
	n_gerencia VARCHAR(60) NOT NULL,
	PRIMARY KEY(id_gerencia)
)

CREATE TABLE Estado (
	id_estado INT UNSIGNED AUTO_INCREMENT NOT NULL,
	estado VARCHAR(30) NOT NULL,
	PRIMARY KEY(id_estado)
)

CREATE TABLE Gerencia_Depto (
	id_ger_dep INT UNSIGNED AUTO_INCREMENT NOT NULL,
	id_depto INT UNSIGNED NOT NULL,
	id_gerencia INT UNSIGNED NOT NULL,
	PRIMARY KEY(id_ger_dep),
	FOREIGN KEY(id_depto) REFERENCES Depto(id_depto),
	FOREIGN KEY(id_gerencia) REFERENCES Gerencia(id_gerencia)
)

CREATE TABLE Asignacion_encargado(
	id_asig_encar INT UNSIGNED AUTO_INCREMENT NOT NULL,
	id_encargado INT UNSIGNED NOT NULL,
	id_asignacion INT UNSIGNED NOT NULL,
	PRIMARY KEY(id_asig_encar),
	FOREIGN KEY(id_encargado) REFERENCES Encargado(id_encargado),
	FOREIGN KEY(id_asignacion) REFERENCES Asignacion(id_asignacion)
)

CREATE TABLE Requerimientos (
	id_requerimiento INT UNSIGNED AUTO_INCREMENT NOT NULL,
	gerencia INT UNSIGNED NOT NULL,
	depto INT UNSIGNED NOT NULL,
	asignacion INT UNSIGNED NOT NULL,
	encargado INT UNSIGNED NOT NULL,
	descripcion VARCHAR(100) NOT NULL,
	estado INT UNSIGNED NOT NULL,
	usuario INT UNSIGNED NOT NULL,
	PRIMARY KEY(id_requerimiento),
	FOREIGN KEY(gerencia) REFERENCES Gerencia(id_gerencia),
	FOREIGN KEY(depto) REFERENCES Depto(id_depto),
	FOREIGN KEY(asignacion) REFERENCES Asignacion(id_asignacion),
	FOREIGN KEY(encargado) REFERENCES Encargado(id_encargado),
	FOREIGN KEY(estado) REFERENCES Estado(id_estado),
	FOREIGN KEY(usuario) REFERENCES Usuario(id_usuario)
)

INSERT INTO usuario
VALUES (1,'admin','admin')

INSERT INTO gerencia 
VALUES (1,'Clientes'),
       (2,'Comercio')

INSERT INTO depto
VALUES (1,'Servicio al Cliente'),
       (2,'Postventa'),
       (3,'Ventas'),
       (4,'Productos')

INSERT INTO gerencia_depto
VALUES (1,1,1),
       (2,2,1),
       (3,3,2),
       (4,4,2)

INSERT INTO asignacion
VALUES (1,'Abastecimiento'),
       (2,'TIC')	

INSERT INTO encargado
VALUES (1,'Alejandro Fuentes'),
       (2,'Juan Valdez'),
       (3,'Pedro Correa'),
       (4,'Juan Fuentes'),
       (5,'Pedro Valdez'),
       (6,'Alejandro Correa')

INSERT INTO asignacion_encargado
VALUES (1,1,1),
       (2,2,1),	
       (3,3,1),	
       (4,4,2),	
       (5,5,2),	
       (6,6,2)

INSERT INTO estado
VALUES (1,'Abierto'),
	(2,'Cerrado')

Gerencias: Clientes,Comercio
Depto Clientes: Servicio al Cliente,Postventa
Depto Comercio: Ventas,Productos

Asignacion: Abastecimiento,TIC

Encargado Abastecimiento: Alejandro Fuentes, Juan Valdez, Pedro Correa
Encargado TIC: Juan Fuentes, Pedro Valdez, Alejandro Correa

Usuario:Admin Password:Admin
