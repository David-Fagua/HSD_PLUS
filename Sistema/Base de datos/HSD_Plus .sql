CREATE DATABASE IF NOT EXISTS HSD_Plus;
USE HSD_Plus;
CREATE TABLE IF NOT EXISTS proveedores(
	nit INT NOT NULL,
    razon_social VARCHAR(45) NOT NULL,
    telefono INT NOT NULL,
    email VARCHAR(45) NOT NULL,
    direccion VARCHAR(45) NOT NULL,
    ciudad VARCHAR(45) NOT NULL,
    PRIMARY KEY(Nit)
)ENGINE=INNODB;



CREATE TABLE IF NOT EXISTS roles(
	id_rol INT NOT NULL,
    nombre VARCHAR(45) NOT NULL,
    fecha_de_apertura DATE,
    PRIMARY KEY(id_rol)
)ENGINE=INNODB;





CREATE TABLE IF NOT EXISTS administrador(
	id_administrador INT NOT NULL,
    nombre VARCHAR(45) NOT NULL,
    apellido VARCHAR(45) NOT NULL,
    cedula INT NOT NULL,
    telefono INT NOT NULL,
    celular INT NOT NULL,
    email VARCHAR(45) NOT NULL,
    fecha_de_ingreso DATE,
    PRIMARY KEY(id_administrador),
    roles_id_rol INT NOT NULL,
    CONSTRAINT fkadministrador_rol
    FOREIGN KEY(roles_id_rol)
    REFERENCES roles(id_rol)
)ENGINE=INNODB;






CREATE TABLE IF NOT EXISTS cliente(
	id_cliente INT NOT NULL,
    nombre VARCHAR(45) NOT NULL,
    apellido VARCHAR(45) NOT NULL,
    cedula INT NOT NULL,
    telefono INT NOT NULL,
    celular INT NOT NULL,
    email VARCHAR(45) NOT NULL,
    PRIMARY KEY(id_cliente),
    roles_id_rol INT NOT NULL,
    CONSTRAINT fkcliente_rol
    FOREIGN KEY(roles_id_rol)
    REFERENCES roles(id_rol)
)ENGINE=INNODB;



CREATE TABLE IF NOT EXISTS inventarios(
	id_inventario INT NOT NULL,
    nombre VARCHAR(45) NOT NULL,
    fecha_de_apertura DATE,
    PRIMARY KEY(id_inventario),
	administrador_id_administrador INT NOT NULL,
    CONSTRAINT fkinventario_administrador
    FOREIGN KEY(administrador_id_administrador)
    REFERENCES administrador(id_administrador)
)ENGINE=INNODB;




CREATE TABLE IF NOT EXISTS inventario_general(
	id_articulo INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    fecha_de_entrada DATE,
    precio_de_compra DECIMAL,
    disponibilidad ENUM('SI','NO'),
    peso_en_lbr DECIMAL,
    cantidad_unitaria INT,
    color VARCHAR(20),
    grosor ENUM('pequeño','mediano','grande'),
    estado ENUM('bueno','malo'),
    PRIMARY KEY(id_articulo),
	inventarios_id_inventario INT NOT NULL,
    CONSTRAINT fkarticulo_inventario
    FOREIGN KEY(inventarios_id_inventario )
    REFERENCES inventarios(id_inventario),
	proveedores_nit INT NOT NULL,
    CONSTRAINT fkarticulo_nit
    FOREIGN KEY(proveedores_nit)
    REFERENCES proveedores(nit),
	administrador_id_administrador INT NOT NULL,
    CONSTRAINT fkarticulo_administrador
    FOREIGN KEY(administrador_id_administrador)
    REFERENCES administrador(id_administrador)
)ENGINE=INNODB;




CREATE TABLE IF NOT EXISTS materia_prima(
	id_mprima INT NOT NULL,
    cantidad_unitaria INT,
    disponibilidad ENUM('SI','NO'),
    PRIMARY KEY(id_mprima),
	inventario_general_id_articulo INT NOT NULL,
    CONSTRAINT fkmprima_inventario_general
    FOREIGN KEY(inventario_general_id_articulo)
    REFERENCES inventario_general(id_articulo),
	administrador_id_administrador INT NOT NULL,
    CONSTRAINT fkmprima_administrador
    FOREIGN KEY(administrador_id_administrador)
    REFERENCES administrador(id_administrador),
	inventarios_id_inventario INT NOT NULL,
    CONSTRAINT fkmprima_inventario
    FOREIGN KEY(inventarios_id_inventario)
    REFERENCES inventarios(id_inventario)
)ENGINE=INNODB;




CREATE TABLE IF NOT EXISTS producto_final(
	id_productofinal INT NOT NULL,
    fecha_de_apertura DATE,
    precio_por_unidad DECIMAL,
    disponibilidad ENUM('SI','NO'),
    cantidad INT,
    PRIMARY KEY(id_productofinal),
	inventario_general_id_articulo INT NOT NULL,
    CONSTRAINT fkproductofinal_inventario_general
    FOREIGN KEY(inventario_general_id_articulo)
    REFERENCES inventario_general(id_articulo),
	administrador_id_administrador INT NOT NULL,
    CONSTRAINT fkproductofinal_administrador
    FOREIGN KEY(administrador_id_administrador)
    REFERENCES administrador(id_administrador),
    inventarios_id_inventario INT NOT NULL,
    CONSTRAINT fkproductofinal_inventario
    FOREIGN KEY(inventarios_id_inventario )
    REFERENCES inventarios(id_inventario)
)ENGINE=INNODB;




CREATE TABLE IF NOT EXISTS producto_proceso(
	id_proceso INT NOT NULL,
    fecha_de_apertura DATE,
    estado ENUM('iniciando','en_proceso','terminado'),
    cantidad INT,
    PRIMARY KEY(id_proceso),
	materia_prima_id_mprima INT NOT NULL,
    CONSTRAINT fkproceso_materia_prima
    FOREIGN KEY(materia_prima_id_mprima)
    REFERENCES materia_prima(id_mprima),
    producto_final_id_productofinal INT NOT NULL,
    CONSTRAINT fkproceso_producto_final
    FOREIGN KEY(producto_final_id_productofinal)
    REFERENCES producto_final(id_productofinal),
	administrador_id_administrador INT NOT NULL,
    CONSTRAINT fkproceso_administrador
    FOREIGN KEY(administrador_id_administrador)
    REFERENCES administrador(id_administrador),
	inventarios_id_inventario INT NOT NULL,
    CONSTRAINT fkproceso_inventario
    FOREIGN KEY(inventarios_id_inventario )
    REFERENCES inventarios(id_inventario)
)ENGINE=INNODB;




CREATE TABLE IF NOT EXISTS merma(
	id_merma INT NOT NULL,
    fecha_de_apertura DATE,
    disponibilidad ENUM('SI','NO'),
    cantidad INT,
    estado ENUM('BUENO','MALO'),
    PRIMARY KEY(id_merma),
	inventario_general_id_articulo INT NOT NULL,
    CONSTRAINT fkmerma_inventario_general
    FOREIGN KEY(inventario_general_id_articulo)
    REFERENCES inventario_general(id_articulo),
	administrador_id_administrador INT NOT NULL,
    CONSTRAINT fkmerma_administrador
    FOREIGN KEY(administrador_id_administrador)
    REFERENCES administrador(id_administrador),
	inventarios_id_inventario INT NOT NULL,
    CONSTRAINT fkmerma_inventario
    FOREIGN KEY(inventarios_id_inventario )
    REFERENCES inventarios(id_inventario)
)ENGINE=INNODB;




CREATE TABLE IF NOT EXISTS productosdefectuosos(
	id_defecto INT NOT NULL,
    fecha_de_apertura DATE,
    cantidad INT,
    observaciones VARCHAR(200),
    PRIMARY KEY(id_defecto),
	inventario_general_id_articulo INT NOT NULL,
    CONSTRAINT fkdefecto_inventario_general
    FOREIGN KEY(inventario_general_id_articulo)
    REFERENCES inventario_general(id_articulo),
	administrador_id_administrador INT NOT NULL,
    CONSTRAINT fkdefecto_administrador
    FOREIGN KEY(administrador_id_administrador)
    REFERENCES administrador(id_administrador),
	inventarios_id_inventario INT NOT NULL,
    CONSTRAINT fkdefecto_inventario
    FOREIGN KEY(inventarios_id_inventario )
    REFERENCES inventarios(id_inventario)
)ENGINE=INNODB;


























CREATE TABLE IF NOT EXISTS reservas(
	id_reserva INT NOT NULL,
    fecha_de_apertura DATE,
    cantidad INT,
	precio_por_unidad DECIMAL,
    precio_total DECIMAL,
    observaciones VARCHAR(200),
    PRIMARY KEY(id_reserva),
	producto_final_id_productofinal INT NOT NULL,
    CONSTRAINT fkreserva_producto_final
    FOREIGN KEY(producto_final_id_productofinal)
    REFERENCES producto_final(id_productofinal),
	cliente_id_cliente INT NOT NULL,
    CONSTRAINT fkreserva_cliente
    FOREIGN KEY(cliente_id_cliente)
    REFERENCES cliente(id_cliente)
)ENGINE=INNODB;









CREATE TABLE IF NOT EXISTS cliente_reservas(
	reservas_id_reserva INT NOT NULL,
    cliente_id_cliente INT NOT NULL,
    PRIMARY KEY(reservas_id_reserva, cliente_id_cliente),
    CONSTRAINT fkcliente_reservas_cliente
    FOREIGN KEY(cliente_id_cliente)
    REFERENCES cliente(id_cliente),
    CONSTRAINT fkcliente_cliente_reservas
    FOREIGN KEY(reservas_id_reserva)
    REFERENCES reservas(id_reserva)
)ENGINE=INNODB;






CREATE TABLE IF NOT EXISTS Registro_Ventas(
	id_venta INT NOT NULL,
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
	administrador_id_administrador INT NOT NULL,
    CONSTRAINT fkventa_administrador
    FOREIGN KEY(administrador_id_administrador)
    REFERENCES administrador(id_administrador)
)ENGINE=INNODB;






INSERT INTO proveedores (`nit`, `razon_social`, `telefono`, `email`, `direccion`, `ciudad`) 
VALUES ('1234567890', 'campos de algodon sonora', '1234567', 'camposasono@gmail.com', 'calle 73 N 29-50', 'Bogotá'),
	   ('7894561235', 'volcanes pintora', '7654321', 'camposasono@gmail.com', 'calle 37 N 30-58', 'cesar'),
	   ('1234547895', 'insumos piora', '1234785', 'camposasono@gmail.com', 'calle 34 N 32-28', 'arauca'),
       ('1234585214', 'campos tormenta', '1234567', 'camposasono@gmail.com', 'calle 43 N 29-55', 'nicaragua');


       
       
INSERT INTO roles (`id_rol`,`nombre`, `fecha_de_apertura`) 
VALUES ('100','administrador', '2000/01/01'),
	   ('200','cliente', '2000/01/01');
       
       
       
INSERT INTO administrador (`id_administrador`, `nombre`, `apellido`, `cedula`, `telefono`, `celular`, `email`, `fecha_de_ingreso`, `roles_id_rol`) 
VALUES ('10000', 'samuel', 'salguero', '1030621769', '7536548', '3115375124', 'ssalguero@hotmail.com', '2000/10/10', '100'),
	   ('20000', 'giovana', 'rojas', '1030621770', '7536123', '3115375789', 'hrojitas@hotmail.com', '2000/10/10', '100'),
       ('30000', 'juanita', 'fragua', '1020621770', '7586123', '3125865789', 'juanis@hotmail.com', '2000/10/10', '100');
       
       
INSERT INTO cliente (`id_cliente`, `nombre`, `apellido`, `cedula`, `telefono`, `celular`, `email`, `roles_id_rol`) 
VALUES ('2000001', 'ana', 'arieta', '456678921', '2586974', '3558965745', 'arl@gmail.com', '200'),
	   ('2000002', 'bersabed', 'bernal', '456456921', '2587894', '3558852445', 'bersaber@gmail.com', '200'),
       ('2000003', 'carlos', 'cogua', '457894921', '2582574', '3118965745', 'carco@gmail.com', '200'),
       ('2000004', 'david', 'fagua', '456678921', '2586974', '3558965745', 'jdf@gmail.com', '200'),
       ('2000005', 'eugenia', 'hernandez', '656678921', '2588526', '3578925745', 'eugeer@gmail.com', '200'),
       ('2000006', 'favian', 'fonseca', '123678921', '254564', '3558965745', 'fafo@gmail.com', '200'),
       ('2000007', 'javier', 'jungla', '456677891', '2598774', '3118965745', 'jaju@gmail.com', '200'),
       ('2000008', 'karen', 'garecia', '454568921', '2586974', '355789745', 'k graccia@gmail.com', '200'),
       ('2000009', 'lore', 'enciso', '456625821', '2963974', '3558964565', 'loree@gmail.com', '200'),
       ('2000010', 'maria', 'mueca', '4655421', '24566974', '355894565', 'mm@gmail.com', '200'),
       ('2000011', 'natalia', 'guarda', '456678921', '2586974', '3558965745', 'nagu@gmail.com', '200');
       
       
INSERT INTO inventarios (`id_inventario`, `nombre`, `fecha_de_apertura`, `administrador_id_administrador`) 
VALUES ('1000', 'inventario_general', '2000/10/11', '10000'),
       ('2000', 'materia_prima', '2000/10/11', '20000'),
       ('3000', 'producto_en_proceso', '2000/10/11', '30000'),
       ('4000', 'producto_final', '2000/10/11', '10000'),
       ('5000', 'merma', '2000/10/11', '20000'),
       ('6000', 'productos_defectuosos', '2000/10/11', '30000');
       
       
       
INSERT INTO inventario_general(`nombre`, `fecha_de_entrada`, `precio_de_compra`, `disponibilidad`, `peso_en_lbr`, `cantidad_unitaria`, `color`, `grosor`, `estado`, `inventarios_id_inventario`, `proveedores_nit`, `administrador_id_administrador`) 
VALUES  ('suministros', '2000/01/30', '100000', 'si', '3000', '1', 'amarillo', '0', 'bueno', '1000', '1234547895', '10000'),
		('hilo_croche', '2000/01/31', '200000', 'no', '0', '54', 'azul', '3', 'malo', '1000', '1234547895', '10000'),
        ('hilo_algodon', '2000/02/01', '1000000', 'si', '0', '20', 'rojo', '1', 'bueno', '1000', '1234547895', '20000'),
        ('hilo_polietileno', '2000/02/02', '500000', 'si', '0', '25', 'verde', '3', 'bueno', '1000', '1234547895', '20000'),
        ('hilo_delgado', '2000/02/03', '300000', 'si', '0', '30', 'cafe', '1', 'malo', '1000', '1234547895', '10000'),
        ('escobas', '2000/02/04', '50000', 'si', '0', '15', 'gris', '3', 'bueno', '1000', '1234547895', '10000'),
        ('camisas', '2000/02/05', '120000', 'si', '0', '50', 'morado', '1', 'bueno', '1000', '1234547895', '10000'),
        ('algodon_blanco', '2000/02/06', '600000', 'no', '100000', '1', 'blanco', '1', 'malo', '1000', '1234547895', '10000'),
        ('algodon_gris', '2000/02/07', '900000', 'si', '200000', '1', 'gris', '2', 'bueno', '1000', '1234547895', '10000'),
        ('polietileno', '2000/02/10', '800000', 'si', '300000', '1', 'gris', '2', 'bueno', '1000', '1234547895', '10000'),
        ('plastico', '2000/02/15', '300000', 'si', '500000', '1', 'verde', '3', 'malo', '1000', '1234547895', '10000'),
        ('vocanes_de_carton', '2000/03/20', '520000', 'si', '0', '35', 'cafe', '3', 'bueno', '1000', '1234547895', '10000'),
        ('madejas_de_madera', '2000/03/15', '580000', 'no', '0', '20', 'cafe', '2', 'bueno', '1000', '1234547895', '10000'),
        ('palos_de_escoba', '2000/03/17', '2000000', 'si', '0', '40', 'verde', '1', 'malo', '1000', '1234547895', '10000');
        
        
        
	
INSERT INTO materia_prima (`id_mprima`, `cantidad_unitaria`, `disponibilidad`, `inventario_general_id_articulo`, `administrador_id_administrador`, `inventarios_id_inventario`) 
VALUES  ('2000001', '1', 'si', '1', '10000', '2000'),
		('2000002', '1', 'no', '8', '10000', '2000'),
        ('2000003', '1', 'si', '9', '20000', '2000'),
        ('2000004', '1', 'si', '10', '20000', '2000'),
        ('2000005', '1', 'si', '11', '10000', '2000'),
        ('2000006', '35', 'si', '12', '30000', '2000'),
        ('2000007', '20', 'no', '13', '30000', '2000'),
        ('2000008', '40', 'si', '14', '10000', '2000');




INSERT INTO producto_final (`id_productofinal`, `fecha_de_apertura`, `precio_por_unidad`, `disponibilidad`, `cantidad`, `inventario_general_id_articulo`, `administrador_id_administrador`, `inventarios_id_inventario`) 
VALUES  ('4000001', '2001/02/11', '100000', 'no', '10', '2', '20000', '1000'),
		('4000002', '2001/02/12', '200000', 'si', '20', '3', '20000', '1000'),
        ('4000003', '2001/02/13', '300000', 'si', '25', '4', '20000', '1000'),
        ('4000004', '2001/02/14', '400000', 'si', '30', '5', '20000', '1000'),
        ('4000005', '2001/02/15', '500000', 'si', '15', '6', '20000', '1000'),
        ('4000006', '2001/02/16', '600000', 'si', '50', '7', '20000', '1000');
        
        
        
        
INSERT INTO producto_proceso(`id_proceso`, `fecha_de_apertura`, `estado`, `cantidad`, `materia_prima_id_mprima`, `producto_final_id_productofinal`, `administrador_id_administrador`, `inventarios_id_inventario`) 
VALUES  ('3000001', '2000/12/01', 'iniciando', '1', '2000002', '4000001', '10000', '3000'),
		('3000002', '2000/12/02', 'en_proceso', '3', '2000003', '4000002', '20000', '3000'),
        ('3000003', '2000/12/03', 'iniciando', '10', '2000004', '4000003', '30000', '3000'),
        ('3000004', '2000/12/04', 'iniciando', '15', '2000005', '4000004', '20000', '3000'),
        ('3000005', '2000/12/05', 'finalizado', '15', '2000006', '4000005', '10000', '3000');
        
        
INSERT INTO merma (`id_merma`, `fecha_de_apertura`, `disponibilidad`, `cantidad`, `estado`, `inventario_general_id_articulo`, `administrador_id_administrador`, `inventarios_id_inventario`) 
VALUES ('5000001', '2001/02/12', 'si', '1', 'bueno', '2', '10000', '5000'),
       ('5000002', '2001/02/12', 'si', '2', 'bueno', '3', '10000', '5000'),
       ('5000003', '2001/02/13', 'si', '2', 'bueno', '4', '10000', '5000'),
       ('5000004', '2001/02/14', 'si', '1', 'bueno', '5', '10000', '5000'),
       ('5000005', '2001/02/15', 'si', '2', 'bueno', '6', '10000', '5000'),
       ('5000006', '2001/02/16', 'si', '3', 'bueno', '7', '10000', '5000');
       
       
       
INSERT INTO productosdefectuosos (`id_defecto`, `fecha_de_apertura`, `cantidad`, `observaciones`, `inventario_general_id_articulo`, `administrador_id_administrador`, `inventarios_id_inventario`) 
VALUES  ('6000001', '2002/01/01', '1', 'defectuoso', '1', '10000', '6000'),
		('6000002', '2002/01/01', '2', 'defectuoso', '5', '20000', '6000'),
		('6000003', '2002/01/01', '3', 'defectuoso', '8', '30000', '6000'),
		('6000004', '2002/01/01', '4', 'defectuoso', '6', '10000', '6000'),
		('6000005', '2002/01/01', '5', 'defectuoso', '2', '20000', '6000');