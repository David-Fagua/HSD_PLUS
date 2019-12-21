CREATE DATABASE IF NOT EXISTS HSD_Plus;
USE HSD_Plus;

CREATE TABLE IF NOT EXISTS ciudad(
	id_ciudad INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL    
)ENGINE=INNODB;




CREATE TABLE IF NOT EXISTS tipo_documento(
	id_tipo_documento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL
)ENGINE=INNODB;




CREATE TABLE IF NOT EXISTS roles(
	id_rol INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL,
    fecha_de_apertura DATE
)ENGINE=INNODB;




CREATE TABLE IF NOT EXISTS grosor_hilo(
	id_grosor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    medida INT(10) NOT NULL,
    fecha_aprobacion DATE
)ENGINE=INNODB;




CREATE TABLE IF NOT EXISTS proveedores(
	nit INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    razon_social VARCHAR(45) NOT NULL,
    telefono VARCHAR(11) NOT NULL,
    email VARCHAR(45) NOT NULL,
    direccion VARCHAR(45) NOT NULL,
    ciudad_sucursal_principal INT NOT NULL,
    
    CONSTRAINT fknit_ciudad FOREIGN KEY(ciudad_sucursal_principal) REFERENCES ciudad(id_ciudad)
)ENGINE=INNODB;



CREATE TABLE IF NOT EXISTS usuarios(
	id_usuario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre1 VARCHAR(45) NOT NULL,
    nombre2 VARCHAR(45),
    apellido1 VARCHAR(45) NOT NULL,
    apellido2 VARCHAR(45),
    numero_documento INT(20) NOT NULL,
	id_tipo_documento INT NOT NULL,
    telefono VARCHAR (11),
    celular VARCHAR (15),
    email VARCHAR(45) NOT NULL,
    fecha_de_ingreso DATE,
    ciudad_de_residencia INT NOT NULL,
    id_rol INT NOT NULL,
    
    CONSTRAINT fkusuario_tipo_documento FOREIGN KEY(id_tipo_documento) REFERENCES tipo_documento(id_tipo_documento),
    CONSTRAINT fkusuario_ciudad FOREIGN KEY(ciudad_de_residencia) REFERENCES ciudad(id_ciudad),
	CONSTRAINT fkusuario_rol FOREIGN KEY(id_rol) REFERENCES roles(id_rol)
)ENGINE=INNODB;



CREATE TABLE IF NOT EXISTS tipo_de_inventario(
	id_inventario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL,
    fecha_de_apertura DATE,
	id_del_Responsable INT NOT NULL,
    
    CONSTRAINT fkinventario_usuario FOREIGN KEY(id_del_Responsable) REFERENCES usuarios(id_usuario)
)ENGINE=INNODB;




CREATE TABLE IF NOT EXISTS inventario_general(
	id_articulo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL,
    fecha_de_entrada DATE,
    precio_de_compra DECIMAL,
    disponibilidad BOOLEAN,
    peso_en_lbr DECIMAL,
    cantidad_unitaria INT,
    color VARCHAR(20),
    estado BOOLEAN,
	tipo_de_inventario_id_inventario INT NOT NULL,
    id_proveedor INT NOT NULL,
    id_Responsable INT NOT NULL,

    CONSTRAINT fkarticulo_inventario FOREIGN KEY(tipo_de_inventario_id_inventario) REFERENCES tipo_de_inventario(id_inventario),
	CONSTRAINT fkarticulo_nit FOREIGN KEY(id_proveedor) REFERENCES proveedores(nit),
    CONSTRAINT fkarticulo_usuario FOREIGN KEY(id_Responsable ) REFERENCES usuarios(id_usuario)
)ENGINE=INNODB;




CREATE TABLE IF NOT EXISTS producto_final(
	id_productofinal INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fecha_de_apertura DATE,
    precio_por_unidad DECIMAL,
    disponibilidad BOOLEAN,
    cantidad INT,
    id_grosor INT NOT NULL,
    id_Articulo INT NOT NULL,
    id_Responsable  INT NOT NULL,
    Numeración_perteneciente_del_Inventario INT NOT NULL,
    
    CONSTRAINT fkproductofinal_grosor FOREIGN KEY(id_grosor) REFERENCES grosor_hilo(id_grosor),
	CONSTRAINT fkproductofinal_inventario_general FOREIGN KEY(id_Articulo) REFERENCES inventario_general(id_articulo),
	CONSTRAINT fkproductofinal_usuario FOREIGN KEY(id_Responsable) REFERENCES usuarios(id_usuario),
	CONSTRAINT fkproductofinal_inventario FOREIGN KEY(Numeración_perteneciente_del_Inventario ) REFERENCES tipo_de_inventario(id_inventario)
)ENGINE=INNODB;



CREATE TABLE IF NOT EXISTS producto_proceso(
	id_proceso INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fecha_de_apertura DATE,
    estado_del_proceso ENUM('iniciando','medio','terminado'),
    cantidad INT,
	id_articulo INT NOT NULL,
    id_producto_final INT NOT NULL,
    id_Responsable INT NOT NULL,
    Numeración_perteneciente_del_Inventario INT NOT NULL,
    
    CONSTRAINT fkproceso_inventario_general FOREIGN KEY(id_articulo) REFERENCES inventario_general(id_articulo),
	CONSTRAINT fkproceso_producto_final FOREIGN KEY(id_producto_final) REFERENCES producto_final(id_productofinal),
	CONSTRAINT fkproceso_usuario FOREIGN KEY(id_Responsable) REFERENCES usuarios(id_usuario),
	CONSTRAINT fkproceso_inventario FOREIGN KEY(Numeración_perteneciente_del_Inventario ) REFERENCES tipo_de_inventario(id_inventario)
)ENGINE=INNODB;




CREATE TABLE IF NOT EXISTS sobrantes(
	id_sobrante INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fecha_de_apertura DATE,
    cantidad INT,
    estado BOOLEAN,
	disponibilidad BOOLEAN,
	id_articulo INT NOT NULL,
	observaciones VARCHAR(200),
    id_Responsable INT NOT NULL,
    Numeración_perteneciente_del_Inventario INT NOT NULL,
    
    CONSTRAINT fksobrante_inventario_general FOREIGN KEY(id_articulo) REFERENCES inventario_general(id_articulo),
	CONSTRAINT fksobrante_usuario FOREIGN KEY(id_Responsable) REFERENCES usuarios(id_usuario),
	CONSTRAINT fksobrante_inventario FOREIGN KEY(Numeración_perteneciente_del_Inventario ) REFERENCES tipo_de_inventario(id_inventario)
)ENGINE=INNODB;



CREATE TABLE IF NOT EXISTS desechos(
	id_desecho INT NOT NULL AUTO_INCREMENT  PRIMARY KEY,
    fecha_de_apertura DATE,
    cantidad INT,
    observaciones VARCHAR(200),
	id_del_sobrante INT NOT NULL,
        
    CONSTRAINT fkdesecho_sobrante FOREIGN KEY(id_del_sobrante ) REFERENCES sobrantes(id_sobrante)
)ENGINE=INNODB;




CREATE TABLE IF NOT EXISTS reservas(
	id_reserva INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fecha_de_reserva DATE,
    cantidad INT,
    precio_por_unidad DECIMAL,
    precio_total DECIMAL,
    estado ENUM('iniciada','proceso','finalizada'),
    observaciones VARCHAR(200),
	id_productofinal INT NOT NULL,
    id_usuario_cliente INT NOT NULL,

    CONSTRAINT fkreserva_producto_final FOREIGN KEY(id_productofinal) REFERENCES producto_final(id_productofinal),
    CONSTRAINT fkreserva_usuario FOREIGN KEY(id_usuario_cliente) REFERENCES usuarios(id_usuario)
)ENGINE=INNODB;




CREATE TABLE IF NOT EXISTS Registro_Ventas(
	id_venta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fecha_de_la_venta DATE,
    cantidad INT,
	precio_por_unidad DECIMAL,
    precio_total DECIMAL,
    observaciones VARCHAR(200),
    id_productofinal INT NOT NULL,
    id_reserva INT NOT NULL,
   	id_usuario_cliente INT NOT NULL,
	
    CONSTRAINT fkventa_producto_final FOREIGN KEY(id_productofinal) REFERENCES producto_final(id_productofinal),
    CONSTRAINT fkventa_reserva FOREIGN KEY(id_reserva) REFERENCES reservas(id_reserva),
    CONSTRAINT fkventa_usuario FOREIGN KEY(id_usuario_cliente) REFERENCES usuarios(id_usuario)
    
)ENGINE=INNODB;


CREATE TABLE IF NOT EXISTS productofinal_reservas(
	reservas_id_reserva INT NOT NULL,
    producto_final_id_productofinal  INT NOT NULL,
    cantidad INT NOT NULL,
    PRIMARY KEY(reservas_id_reserva, producto_final_id_productofinal ),
    CONSTRAINT fkproductofinal_reservas_productofinal
    FOREIGN KEY(producto_final_id_productofinal)
    REFERENCES producto_final(id_productofinal),
    CONSTRAINT fkproductofinal_productofinal_reservas
    FOREIGN KEY(reservas_id_reserva)
    REFERENCES reservas(id_reserva)
)ENGINE=INNODB;



INSERT INTO ciudad (`nombre`) VALUES ('Bogota'),
 ('Medellin'),
 ('Cali'),
 ('Boyaca');
 
INSERT INTO tipo_documento (`nombre`) 
VALUES  ('Cedula de cidadania'),
		('Cedula de Extranjeria '),
		('Tarjeta de Identidad');
        
INSERT INTO roles (`nombre`, `fecha_de_apertura`) VALUES ('Administrador ', '2000/01/01'), ('Cliente', '2000/01/01');

INSERT INTO grosor_hilo (`medida`, `fecha_aprobacion`) 
VALUES  ('1', '2000/01/02'),
		('2', '2000/01/02'),
		('3', '2000/01/02');
        
INSERT INTO proveedores (`razon_social`, `telefono`, `email`, `direccion`, `ciudad_sucursal_principal`) 
VALUES  ('algodones esperanza', '1234567', 'algodonesperanz@gmail.com', 'calle73 ', '1'),
		('algodonmax', '7894562', 'algomax@hotmail.com', 'calle734', '2'),
		('Dotamax', '2583694', 'dota@hotmail.com', 'calle735 ', '3');
        
        
INSERT INTO usuarios (`nombre1`, `nombre2`, `apellido1`, `apellido2`, `numero_documento`, `id_tipo_documento`, `telefono`, `celular`, `email`, `fecha_de_ingreso`, `ciudad_de_residencia`, `id_rol`) 
VALUES ('samuel', 'junior ', 'salguero', 'carrillo', '1030621769', '1', '2583694', '3125375124', 'ssalguero@gmail.com', '2000/01/01', '1', '1'),
		('Harold ', 'Giovany', 'Rojas', 'Laguna', '1236547452', '1', '2587415', '3115365589', 'hrojas@gmail.com', '2000/01/01', '1', '1'),
		('Juan ', 'David ', 'Fagua', 'Murillo', '1254789632', '1', '9632584', '3114578965', 'jfagua@hotmail.com', '2000/01/01', '1', '1'),
		('yolanda ', 'yaneth', 'carrillo ', 'pedraza', '169852445', '1', '8523694', '3218596754', 'yola@hotmail.com', '2000/02/01', '3', '2'),
		('lizeth', 'nathalia', 'vargas', 'congo', '1234567895', '3', '8529634', '3105278451', 'nata@hotmail.com', '2000/03/01', '1', '2'),
		('juan', 'felipe', 'vanegas', 'charro', '1216478541', '2', '2583695', '3115375124', 'juanf@hotmail.com', '2000/04/01', '2', '2');

INSERT INTO tipo_de_inventario (`nombre`, `fecha_de_apertura`, `id_del_Responsable`) 
VALUES  ('inventario_general', '2000/01/02', '1'),
		('producto_final', '2000/01/03', '2'),
		('producto_proceso', '2000/01/04', '3'),
		('sobrantes', '2000/01/05', '1');
        





INSERT INTO inventario_general (`nombre`, `fecha_de_entrada`, `precio_de_compra`, `disponibilidad`, `peso_en_lbr`, `cantidad_unitaria`, `color`, `estado`, `tipo_de_inventario_id_inventario`, `id_proveedor`, `id_Responsable`) 
VALUES  ('algodon normal', '2000/06/01', '100000', '1', '100000', '1', 'blanco', '1', '1', '1', '1'),
		('algodon poliester', '2000/06/15', '150000', '1', '150000', '1', 'amarillo', '1', '1', '2', '2'),
		('algodon perchero', '2000/07/01', '200000', '1', '200000', '1', 'azul', '1', '1', '3', '3'),
		('redma de papel', '2000/07/15', '50000', '1', '100000', '40', 'rojo', '1', '1', '1', '1'),
		('volcanes de carton', '2000/08/01', '100000', '1', '120000', '500', 'verde', '1', '1', '2', '2'),
		('hilo crochet', '2000/08/15', '0', '1', '100000', '120', 'blanco', '1', '1', '3', '3'),
		('hilo poliester', '2000/08/30', '0', '0', '140000', '0', 'amarillo', '1', '1', '1', '1'),
		('hilo para camisa fina', '2000/09/01', '0', '1', '180000', '180', 'blanco', '1', '1', '2', '2'),
		('hilo para trapero', '2000/09/15', '0', '0', '190000', '0', 'blanco', '0', '1', '3', '3'),
		('palo de escoba', '2000/10/01', '100000', '0', '190000', '0', 'cafe', '1', '1', '1', '1');
        
INSERT INTO producto_final (`fecha_de_apertura`, `precio_por_unidad`, `disponibilidad`, `cantidad`, `id_grosor`, `id_Articulo`, `id_Responsable`, `Numeración_perteneciente_del_Inventario`) 
VALUES  ('2000/09/01', '2000', '1', '120', '1', '6', '1', '1'),
		('2000/09/15', '3000', '0', '0', '2', '7', '2', '1'),
		('2000/10/01', '4000', '1', '180', '3', '8', '3', '1'),
		('2000/10/15', '5000', '0', '0', '1', '9', '1', '1');
        
        
INSERT INTO producto_proceso (`fecha_de_apertura`, `estado_del_proceso`, `cantidad`, `id_articulo`, `id_producto_final`, `id_Responsable`, `Numeración_perteneciente_del_Inventario`) 
VALUES  ('2000/08/15', 'iniciando', '25', '1', '2', '1', '3'),
		('2000/09/15', 'medio', '15', '2', '4', '2', '3'),
		('2000/06/01', 'terminado', '120', '3', '1', '3', '3');



INSERT INTO sobrantes (`fecha_de_apertura`, `cantidad`, `estado`, `disponibilidad`, `id_articulo`, `observaciones`, `id_Responsable`, `Numeración_perteneciente_del_Inventario`) 
VALUES  ('2000/10/01', '1', '1', '1', '1', 'ninguna', '1', '4'),
		('2000/10/15', '2', '1', '1', '2', 'ninguna', '2', '4'),
		('2000/10/31', '3', '1', '1', '3', 'ninguna', '3', '4'),
		('2000/11/01', '5', '0', '0', '4', 'se pasara para desechos', '1', '4');
        
INSERT INTO desechos (`fecha_de_apertura`, `cantidad`, `observaciones`, `id_del_sobrante`) VALUES ('2000/11/01', '1', 'niguna', '4');


INSERT INTO reservas (`fecha_de_reserva`, `cantidad`, `precio_por_unidad`, `precio_total`, `estado`, `observaciones`, `id_productofinal`, `id_usuario_cliente`) 
VALUES  ('2000/11/01', '10', '2000', '2000', 'iniciada', 'ninguna', '1', '4'),
		('2000/11/02', '20', '3000', '60000', 'iniciada', 'ninguna', '2', '5'),
		('2000/11/03', '30', '4000', '120000', 'iniciada', 'ninguna', '3', '6'),
		('2000/11/03', '50', '5000', '250000', 'proceso', 'ninguna', '4', '4'),
		('2000/11/04', '40', '2000', '80000', 'iniciada', 'ninguna', '1', '5'),
		('2000/11/05', '60', '3000', '180000', 'proceso', 'ninguna', '2', '6'),
		('2000/11/06', '70', '4000', '280000', 'proceso', 'ninguna', '3', '4'),
		('2000/11/07', '80', '5000', '400000', 'proceso', 'ninguna', '4', '5'),
		('2000/11/08', '90', '2000', '180000', 'proceso', 'ninguna', '1', '6'),
		('2000/11/09', '25', '3000', '75000', 'proceso', 'ninguna', '2', '4'),
		('2000/11/10', '30', '4000', '120000', 'proceso', 'ninguna', '3', '5'),
		('2000/11/11', '36', '5000', '180000', 'proceso', 'ninguna', '4', '6'),
		('2000/11/12', '40', '2000', '80000', 'finalizada', 'ninguna', '1', '4'),
		('2000/11/12', '45', '3000', '135000', 'finalizada', 'ninguna', '2', '5'),
		('2000/11/13', '65', '4000', '260000', 'finalizada', 'ninguna', '3', '6'),
		('2000/11/14', '78', '5000', '390000', 'finalizada', 'ninguna', '4', '4'),
		('2000/11/15', '55', '2000', '110000', 'proceso', 'ninguna', '1', '5');
        
        
        
INSERT INTO registro_ventas (`fecha_de_la_venta`, `cantidad`, `precio_por_unidad`, `precio_total`, `observaciones`, `id_productofinal`, `id_reserva`, `id_usuario_cliente`) 
VALUES  ('2000/12/01', '40', '2000', '80000', 'ninguna', '1', '13', '4'),
		('2000/12/02', '45', '3000', '135000', 'ninguna', '2', '14', '5'),
		('2000/12/03', '65', '4000', '260000', 'ninguna', '3', '15', '6'),
		('2000/12/04', '78', '5000', '390000', 'ninguna', '4', '16', '4');