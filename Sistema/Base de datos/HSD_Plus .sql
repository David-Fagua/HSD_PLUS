CREATE DATABASE IF NOT EXISTS HSD_Plus;
USE HSD_Plus;

CREATE TABLE IF NOT EXISTS ciudad(
	id_ciudad INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    PRIMARY KEY(id_ciudad)
)ENGINE=INNODB;


CREATE TABLE IF NOT EXISTS proveedores(
	nit INT NOT NULL AUTO_INCREMENT,
    razon_social VARCHAR(45) NOT NULL,
    telefono INT NOT NULL,
    email VARCHAR(45) NOT NULL,
    direccion VARCHAR(45) NOT NULL,
    PRIMARY KEY(Nit),
            ciudad_id_ciudad INT NOT NULL,
    CONSTRAINT fknit_ciudad
    FOREIGN KEY(ciudad_id_ciudad)
    REFERENCES ciudad(id_ciudad)
)ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS roles(
	id_rol INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    fecha_de_apertura DATE,
    PRIMARY KEY(id_rol)
)ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS tipo_documento(
	id_tipo_documento INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    PRIMARY KEY(id_tipo_documento)
)ENGINE=INNODB;



CREATE TABLE IF NOT EXISTS usuarios(
	id_usuario INT NOT NULL AUTO_INCREMENT,
    nombre1 VARCHAR(45) NOT NULL,
    nombre2 VARCHAR(45),
    apellido1 VARCHAR(45) NOT NULL,
    apellido2 VARCHAR(45),
    numero_documento INT NOT NULL,
    telefono INT (7),
    celular INT,
    email VARCHAR(45) NOT NULL,
    fecha_de_ingreso DATE,
    PRIMARY KEY(id_usuario),
		tipo_documento_id_tipo_documento INT NOT NULL,
    CONSTRAINT fkusuario_tipo_documento
    FOREIGN KEY(tipo_documento_id_tipo_documento)
    REFERENCES tipo_documento(id_tipo_documento),
        ciudad_id_ciudad INT NOT NULL,
    CONSTRAINT fkusuario_ciudad
    FOREIGN KEY(ciudad_id_ciudad)
    REFERENCES ciudad(id_ciudad),
        roles_id_rol INT NOT NULL,
    CONSTRAINT fkusuario_rol
    FOREIGN KEY(roles_id_rol)
    REFERENCES roles(id_rol)
)ENGINE=INNODB;


CREATE TABLE IF NOT EXISTS tipo_de_inventario(
	id_inventario INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    fecha_de_apertura DATE,
    PRIMARY KEY(id_inventario),
		usuarios_id_usuario INT NOT NULL,
    CONSTRAINT fkinventario_usuario
    FOREIGN KEY(usuarios_id_usuario)
    REFERENCES usuarios(id_usuario)
)ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS grosor_hilo(
	id_grosor INT NOT NULL AUTO_INCREMENT,
    medida INT NOT NULL,
    fecha_aprobacion DATE,
    PRIMARY KEY(id_grosor)    
)ENGINE=INNODB;


CREATE TABLE IF NOT EXISTS inventario_general(
	id_articulo INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    fecha_de_entrada DATE,
    precio_de_compra DECIMAL,
    disponibilidad BOOLEAN,
    peso_en_lbr DECIMAL,
    cantidad_unitaria INT,
    color VARCHAR(20),
    estado BOOLEAN,
    PRIMARY KEY(id_articulo),
		tipo_de_inventario_id_inventario INT NOT NULL,
    CONSTRAINT fkarticulo_inventario
    FOREIGN KEY(tipo_de_inventario_id_inventario)
    REFERENCES tipo_de_inventario(id_inventario),
		proveedores_nit INT NOT NULL,
    CONSTRAINT fkarticulo_nit
    FOREIGN KEY(proveedores_nit)
    REFERENCES proveedores(nit),
		usuarios_id_usuario INT NOT NULL,
    CONSTRAINT fkarticulo_usuario
    FOREIGN KEY(usuarios_id_usuario)
    REFERENCES usuarios(id_usuario)
)ENGINE=INNODB;




CREATE TABLE IF NOT EXISTS producto_final(
	id_productofinal INT NOT NULL AUTO_INCREMENT,
    fecha_de_apertura DATE,
    precio_por_unidad DECIMAL,
    disponibilidad BOOLEAN,
    cantidad INT,
    PRIMARY KEY(id_productofinal),
		grosor_hilo_id_grosor INT NOT NULL,
    CONSTRAINT fkproductofinal_grosor
    FOREIGN KEY(grosor_hilo_id_grosor)
    REFERENCES grosor_hilo(id_grosor),
		inventario_general_id_articulo INT NOT NULL,
    CONSTRAINT fkproductofinal_inventario_general
    FOREIGN KEY(inventario_general_id_articulo)
    REFERENCES inventario_general(id_articulo),
		usuarios_id_usuario  INT NOT NULL,
    CONSTRAINT fkproductofinal_usuario
    FOREIGN KEY(usuarios_id_usuario )
    REFERENCES usuarios(id_usuario),
		tipo_de_inventario_id_inventario INT NOT NULL,
    CONSTRAINT fkproductofinal_inventario
    FOREIGN KEY(tipo_de_inventario_id_inventario )
    REFERENCES tipo_de_inventario(id_inventario)
)ENGINE=INNODB;


CREATE TABLE IF NOT EXISTS producto_proceso(
	id_proceso INT NOT NULL AUTO_INCREMENT,
    fecha_de_apertura DATE,
    estado ENUM('iniciando','en_proceso','terminado'),
    cantidad INT,
    PRIMARY KEY(id_proceso),
		inventario_general_id_articulo INT NOT NULL,
    CONSTRAINT fkproceso_inventario_general
    FOREIGN KEY(inventario_general_id_articulo)
    REFERENCES inventario_general(id_articulo),
		producto_final_id_productofinal INT NOT NULL,
    CONSTRAINT fkproceso_producto_final
    FOREIGN KEY(producto_final_id_productofinal)
    REFERENCES producto_final(id_productofinal),
		usuarios_id_usuario INT NOT NULL,
    CONSTRAINT fkproceso_usuario
    FOREIGN KEY(usuarios_id_usuario)
    REFERENCES usuarios(id_usuario),
		tipo_de_inventario_id_inventario INT NOT NULL,
    CONSTRAINT fkproceso_inventario
    FOREIGN KEY(tipo_de_inventario_id_inventario )
    REFERENCES tipo_de_inventario(id_inventario)
)ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS sobrantes(
	id_sobrante INT NOT NULL AUTO_INCREMENT,
    fecha_de_apertura DATE,
    cantidad INT,
    estado BOOLEAN,
	disponibilidad BOOLEAN,
    observaciones VARCHAR(200),
    PRIMARY KEY(id_sobrante),
		inventario_general_id_articulo INT NOT NULL,
    CONSTRAINT fksobrante_inventario_general
    FOREIGN KEY(inventario_general_id_articulo)
    REFERENCES inventario_general(id_articulo),
		usuarios_id_usuario INT NOT NULL,
    CONSTRAINT fksobrante_usuario
    FOREIGN KEY(usuarios_id_usuario)
    REFERENCES usuarios(id_usuario),
		tipo_de_inventario_id_inventario INT NOT NULL,
    CONSTRAINT fksobrante_inventario
    FOREIGN KEY(tipo_de_inventario_id_inventario )
    REFERENCES tipo_de_inventario(id_inventario)
)ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS desechos(
	id_desecho INT NOT NULL AUTO_INCREMENT,
    fecha_de_apertura DATE,
    cantidad INT,
    observaciones VARCHAR(200),
    PRIMARY KEY(id_desecho),
		sobrantes_id_sobrante INT NOT NULL,
    CONSTRAINT fkdesecho_sobrante
    FOREIGN KEY(sobrantes_id_sobrante )
    REFERENCES sobrantes(id_sobrante)
)ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS reservas(
	id_reserva INT NOT NULL AUTO_INCREMENT,
    fecha_de_reserva DATE,
    cantidad INT,
	precio_por_unidad DECIMAL,
    precio_total DECIMAL,
    estado ENUM('iniciada','proceso','finalizada'),
    observaciones VARCHAR(200),
    PRIMARY KEY(id_reserva),
		producto_final_id_productofinal INT NOT NULL,
    CONSTRAINT fkreserva_producto_final
    FOREIGN KEY(producto_final_id_productofinal)
    REFERENCES producto_final(id_productofinal),
		usuarios_id_usuario INT NOT NULL,
    CONSTRAINT fkreserva_usuario
    FOREIGN KEY(usuarios_id_usuario)
    REFERENCES usuarios(id_usuario)
)ENGINE=INNODB;


CREATE TABLE IF NOT EXISTS Registro_Ventas(
	id_venta INT NOT NULL AUTO_INCREMENT,
    fecha_de_la_venta DATE,
    cantidad INT,
	precio_por_unidad DECIMAL,
    precio_total DECIMAL,
    observaciones VARCHAR(200),
    PRIMARY KEY(id_venta),
		producto_final_id_productofinal INT NOT NULL,
    CONSTRAINT fkventa_producto_final
    FOREIGN KEY(producto_final_id_productofinal)
    REFERENCES producto_final(id_productofinal),
		usuarios_id_usuario INT NOT NULL,
    CONSTRAINT fkventa_usuario
    FOREIGN KEY(usuarios_id_usuario)
    REFERENCES usuarios(id_usuario),
		reservas_id_reserva INT NOT NULL,
    CONSTRAINT fkventa_reserva
    FOREIGN KEY(reservas_id_reserva)
    REFERENCES reservas(id_reserva)    
)ENGINE=INNODB;


CREATE TABLE IF NOT EXISTS productofinal_reservas(
	reservas_id_reserva INT NOT NULL,
    producto_final_id_productofinal  INT NOT NULL,
    PRIMARY KEY(reservas_id_reserva, producto_final_id_productofinal ),
    CONSTRAINT fkproductofinal_reservas_productofinal
    FOREIGN KEY(producto_final_id_productofinal)
    REFERENCES producto_final(id_productofinal),
    CONSTRAINT fkproductofinal_productofinal_reservas
    FOREIGN KEY(reservas_id_reserva)
    REFERENCES reservas(id_reserva)
)ENGINE=INNODB;



INSERT INTO ciudad (`nombre`) 
VALUES  ('bogotá'),
		('medellin'),
		('risaralda'),
		('cali'),
		('funza'),
		('cunadinamarca'),
		('meta'),
		('chinquyinquira'),
		('pereira');
        
INSERT INTO proveedores (`razon_social`, `telefono`, `email`, `direccion`, `ciudad_id_ciudad`) 
VALUES  ('culvos algodonmax', '1234567', 'culmax@hotmail.com', 'calle73#82_58', '1'),
		('culvos algomister', '4567456', 'cualmister@hotmail.com', 'calle72#82_58', '2'),
		('culvos insumosdas', '4568567', 'insumodas@hotmail.com', 'calle73#83_58', '3'),
		('culvos insumax', '6745689', 'insumax@hotmail.com', 'calle73#82_85', '4');
        
INSERT INTO roles (`nombre`, `fecha_de_apertura`) 
VALUES  ('administrador', '2000/01/01'),
		('cliente', '2000/01/01');
        
INSERT INTO tipo_documento (`nombre`) 
VALUES  ('cedula de ciudadania'),
		('cedula de extranjeria'),
		('tarjeta de identidad');
        
INSERT INTO usuarios (`nombre1`, `nombre2`, `apellido1`, `apellido2`, `numero_documento`, `telefono`, `celular`, `email`, `fecha_de_ingreso`, `tipo_documento_id_tipo_documento`, `ciudad_id_ciudad`, `roles_id_rol`) 
VALUES 	('samuel', 'andres', 'salguero', 'carrillo', '1030621769', '1234567', '3115375124', 'ssalguero@hotmail.com', '2000/02/01', '1', '1', '1'),
		('harold ', 'giovany', 'rojas ', 'laguna', '2014566321', '7654321', '3106090245', 'jrolas@gmail.com', '2000/02/01', '1', '1', '1'),
		('juan', 'david', 'fagua', 'murillo', '4561238755', '6543217', '3206862456', 'jfragua@hotmail.com', '2000/02/01', '1', '1', '1'),
		('yolanda', 'yaneth', 'carrillo', 'salguero', '39636847', '1235647', '3002005519', 'yola@hotmail.com', '2001/01/01', '1', '1', '2'),
		('vanedsa', 'inez','salguero', 'carrillo', '1030645128', '8526974', '3195144643', 'vanesalguero@hotmail.com', '2001/01/02', '1', '2', '2'),
		('karen', 'patricia', 'vanegas', 'salgado', '1030546468', '5823694', '3142628365', 'karev@hotmail.com', '2006/06/01', '1', '1', '2'),
		('juan ', 'estevan ', 'vanegas', 'sanchez', '1030123456', '8521474', '3106542587', 'juanes@gmail.com', '2010/10/31', '1', '1', '2');

INSERT INTO tipo_de_inventario (`nombre`, `fecha_de_apertura`, `usuarios_id_usuario`) 
VALUES  ('inventario_general', '2000/01/21', '2'),
		('producto_en_proceso', '2000/01/22', '3'),
		('producto_final', '2000/01/23', '1'),
		('sobrantes', '2000/01/23', '2'),
		('desechos', '2000/01/24', '3');
        
        
INSERT INTO grosor_hilo (`medida`, `fecha_aprobacion`) 
VALUES ('100', '2000/02/10'),
		('200', '2000/02/11'),
		('300', '2000/02/12'),
		('400', '2000/02/13');
        
INSERT INTO inventario_general (`nombre`, `fecha_de_entrada`, `precio_de_compra`, `disponibilidad`, `peso_en_lbr`, `cantidad_unitaria`, `color`, `estado`, `tipo_de_inventario_id_inventario`, `proveedores_nit`, `usuarios_id_usuario`) 
VALUES ('algodon blaco', '2000/02/01', '500000', '1', '1000', '100', 'blanco', '1', '2', '1', '1'),
		('algodon gris ', '2000/02/02', '500000', '1', '1000', '100', 'gris', '1', '2', '2', '1'),
		('polietileno', '2000/02/03', '400000', '1', '1000', '100', 'amarillo', '1', '2', '3', '1'),
		('rodillos de carton', '2000/02/04', '100000', '1', '500', '100', 'cafe', '1', '2', '4', '1'),
		('quimicos', '2000/02/05', '600000', '1', '1000', '50', 'no aplica', '1', '2', '1', '1'),
		('poliester', '2000/02/06', '550000', '1', '1000', '100', 'azul', '1', '2', '2', '1'),
		('suministros oficina', '2000/02/07', '200000', '1', '60', '0', 'no aplica', '1', '2', '3', '1'),
		('hilo de algodon', '2000/02/08', '0', '0', '500', '70', 'amarillo', '0', '2', '4', '1'),
		('hilo de algodon', '2000/02/09', '0', '1', '500', '80', 'azul', '1', '2', '1', '1'),
		('hilo croche', '2000/02/10', '0', '1', '500', '80', 'rojo', '1', '2', '2', '1'),
		('hilo choche', '2000/02/11', '0', '1', '600', '90', 'verde', '1', '2', '3', '1'),
		('hilo trapero', '2000/02/12', '0', '1', '600', '90', 'blanco', '1', '2', '4', '1'),
		('hilo poliester', '2000/02/13', '0', '0', '600', '80', 'naranja', '0', '2', '1', '1'),
		('hilo poliester', '2000/02/14', '0', '1', '600', '80', 'violeta', '1', '2', '2', '1');
        
INSERT INTO  producto_final(`fecha_de_apertura`, `precio_por_unidad`, `disponibilidad`, `cantidad`, `grosor_hilo_id_grosor`, `inventario_general_id_articulo`, `usuarios_id_usuario`, `tipo_de_inventario_id_inventario`) 
VALUES 	('2000/03/01', '100000', '1', '1000', '1', '8', '1', '4'),
		('2000/03/02', '100000', '1', '1500', '1', '9', '2', '4'),
		('2000/03/03', '100000', '1', '2000', '2', '10', '3', '4'),
		('2000/03/04', '150000', '1', '800', '2', '11', '1', '4'),
		('2000/03/05', '120000', '1', '700', '3', '12', '2', '4'),
		('2000/03/06', '110000', '0', '0', '3', '13', '3', '4');
        
INSERT INTO producto_proceso (`fecha_de_apertura`, `estado`, `cantidad`,`inventario_general_id_articulo`, `producto_final_id_productofinal`, `usuarios_id_usuario`, `tipo_de_inventario_id_inventario`) 
VALUES  ('2001/01/01', 'en_proceso', '100', '1', '1', '1', '3'),
	    ('2001/01/01', 'terminado ', '100', '2', '2', '2', '3'),
		('2001/01/01', 'terminado', '100', '3', '3', '3', '3');
        
INSERT INTO sobrantes (`fecha_de_apertura`, `cantidad`, `estado`, `disponibilidad`, `observaciones`, `inventario_general_id_articulo`, `usuarios_id_usuario`, `tipo_de_inventario_id_inventario`) 
VALUES  ('2000/06/01', '10', '1', '1', 'a partir de la fecha hace parte del inventario general', '1', '1', '5'),
		('2000/06/01', '5', '1', '1', 'a partir de la fecha hace parte del inventario general', '2', '2', '5'),
		('2000/06/01', '10', '1', '1', 'a partir de la fecha hace parte del inventario general', '3', '3', '5'),
		('2000/06/02', '6', '1', '1', 'a partir de la fecha hace parte del inventario general', '4', '1', '5'),
		('2000/06/03', '2', '0', '0', 'a partir de la fecha queda  en desechos', '5', '2', '5');
        
INSERT INTO desechos (`fecha_de_apertura`, `cantidad`, `observaciones`, `sobrantes_id_sobrante`) VALUES ('2000-06-03', '2', 'no se puede volver a usar', '5');

INSERT INTO reservas (`fecha_de_reserva`, `cantidad`, `precio_por_unidad`, `precio_total`, `estado`, `observaciones`, `producto_final_id_productofinal`, `usuarios_id_usuario`) 
VALUES  ('2000/03/01', '10', '100000', '10000000', 'finalizada', 'se vendio', '1', '4'),
		('2000/03/02', '10', '100000', '10000000', 'finalizada', 'se vendio', '2', '5'),
		('2000/03/03', '10', '100000', '10000000', 'finalizada', 'se vendio', '3', '6'),
		('2000/03/04', '10', '120000', '10000000', 'finalizada', 'se vendio', '4', '7'),
		('2000/03/05', '20', '120000', '12000000', 'finalizada', 'se vendio', '5', '4'),
		('2000/03/06', '30', '100000', '10000000', 'proceso', 'ninguna', '6', '5'),
		('2000/03/07', '40', '200000', '20000000', 'iniciada', 'ninguna', '1', '6'),
		('2000/03/08', '15', '250000', '25000000', 'proceso', 'ninguna', '2', '7'),
		('2000/03/09', '12', '100000', '1000000', 'iniciada', 'ninguna', '3', '4'),
		('2000/03/10', '16', '100000', '10000000', 'finalizada', 'se vendio', '4', '5');
        
INSERT INTO registro_ventas (`fecha_de_la_venta`, `cantidad`, `precio_por_unidad`, `precio_total`, `observaciones`, `producto_final_id_productofinal`, `usuarios_id_usuario`, `reservas_id_reserva`) 
VALUES  ('2000/03/15', '10', '100000', '10000000', 'ninguna', '1', '4', '1'),
		('2000/03/16', '10', '100000', '10000000', 'ninguna', '2', '5', '2'),
		('2000/03/17', '10', '100000', '10000000', 'ninguna', '3', '6', '3'),
		('2000/03/18', '10', '120000', '10000000', 'ninguna', '4', '7', '4'),
		('2000/03/19', '20', '120000', '12000000', 'ninguna', '5', '4', '5'),
		('2000/03/20', '16', '100000', '10000000', 'ninguna', '6', '5', '10');
