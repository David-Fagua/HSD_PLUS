-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-01-2020 a las 02:38:46
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hsd_plus`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id_ciudad` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id_ciudad`, `nombre`) VALUES
(1, 'Bogota'),
(2, 'Cali'),
(3, 'Medellin'),
(4, 'Cartagena'),
(15, 'Barranquilla'),
(26, 'nose');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desechos`
--

CREATE TABLE `desechos` (
  `id_desecho` int(11) NOT NULL,
  `fecha_llegada` date DEFAULT NULL,
  `id_sobrante` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `id_Responsable` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `desechos`
--

INSERT INTO `desechos` (`id_desecho`, `fecha_llegada`, `id_sobrante`, `cantidad`, `id_Responsable`) VALUES
(1, '0000-00-00', 2, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grosor_hilo`
--

CREATE TABLE `grosor_hilo` (
  `id_grosor` int(11) NOT NULL,
  `medida` int(11) NOT NULL,
  `fecha_aprobacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `grosor_hilo`
--

INSERT INTO `grosor_hilo` (`id_grosor`, `medida`, `fecha_aprobacion`) VALUES
(1, 10, '2000-01-11'),
(2, 20, '2000-02-22'),
(3, 30, '2000-03-31'),
(4, 40, '2000-05-05'),
(12, 200, '2019-12-11'),
(13, 220, '2019-12-11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario_general`
--

CREATE TABLE `inventario_general` (
  `id_articulo` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `fecha_entrada` date DEFAULT NULL,
  `precio_de_compra` decimal(10,0) DEFAULT NULL,
  `disponibilidad` tinyint(1) DEFAULT NULL,
  `peso_libra` decimal(10,0) DEFAULT NULL,
  `cantidad_unitaria` int(11) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `nit_proveedor` int(11) NOT NULL,
  `id_Responsable` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `inventario_general`
--

INSERT INTO `inventario_general` (`id_articulo`, `nombre`, `fecha_entrada`, `precio_de_compra`, `disponibilidad`, `peso_libra`, `cantidad_unitaria`, `color`, `estado`, `nit_proveedor`, `id_Responsable`) VALUES
(1, 'algodon perchero', '2000-02-01', '50000', 1, '500', 1, 'blanco', 1, 1, 1),
(2, 'poliester', '2001-01-01', '100000', 1, '5500', 500, 'azul', 1, 2, 1),
(3, 'croche', '2002-02-10', '210000', 1, '10000', 1500, 'rojo', 1, 3, 1),
(4, 'hilo poliester', '2005-05-11', '2000', 2, '5000', 2000, 'verde', 2, 1, 3),
(5, 'hilo delgado', '2006-02-11', '250000', 1, '2500', 6000, 'azul', 1, 2, 3),
(6, 'hilo trapero', '0000-00-00', '200000', 1, '3000', 10000, 'morado', 1, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productofinal_reservas`
--

CREATE TABLE `productofinal_reservas` (
  `reservas_id_reserva` int(11) NOT NULL,
  `producto_final_id_productofinal` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_final`
--

CREATE TABLE `producto_final` (
  `id_productofinal` int(11) NOT NULL,
  `fecha_obtencion` date DEFAULT NULL,
  `precio_unitario` decimal(10,0) DEFAULT NULL,
  `disponibilidad` tinyint(1) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `grosor` int(11) NOT NULL,
  `articulo` int(11) NOT NULL,
  `responsable` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto_final`
--

INSERT INTO `producto_final` (`id_productofinal`, `fecha_obtencion`, `precio_unitario`, `disponibilidad`, `cantidad`, `grosor`, `articulo`, `responsable`) VALUES
(1, '2001-01-01', '5000', 1, 10, 1, 4, 1),
(2, '2002-02-12', '6000', 1, 50, 2, 5, 3),
(3, '2003-12-01', '7000', 1, 20, 3, 6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_proceso`
--

CREATE TABLE `producto_proceso` (
  `id_proceso` int(11) NOT NULL,
  `fecha_produccion` date DEFAULT NULL,
  `estado_proceso` enum('iniciando','medio','terminado') DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `articulo` int(11) NOT NULL,
  `producto_final` int(11) NOT NULL,
  `responsable` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto_proceso`
--

INSERT INTO `producto_proceso` (`id_proceso`, `fecha_produccion`, `estado_proceso`, `cantidad`, `articulo`, `producto_final`, `responsable`) VALUES
(4, '0000-00-00', 'iniciando', 10, 1, 1, 1),
(5, '0000-00-00', 'medio', 20, 2, 2, 3),
(6, '0000-00-00', 'terminado', 30, 3, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nit` varchar(45) NOT NULL,
  `razon_social` varchar(45) NOT NULL,
  `telefono` varchar(13) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `direccion` varchar(45) NOT NULL,
  `ciudad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `nit`, `razon_social`, `telefono`, `email`, `direccion`, `ciudad`) VALUES
(1, '12345rdc', 'cultivos las Rosas', '1234567', 'rosasa@gmail.com', 'calle85csur', 2),
(2, '789746cultivo', 'Cultivos de algodonmax', '8523695', 'algodonmax@hotmail.com', 'calle102norte 29', 1),
(3, '852369cult', 'insumosculti', '741258', 'insumos@gmail.com', 'calle73 sur ', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_ventas`
--

CREATE TABLE `registro_ventas` (
  `id_venta` int(11) NOT NULL,
  `fecha_venta` date DEFAULT NULL,
  `productofinal` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` decimal(10,0) DEFAULT NULL,
  `cliente` int(11) NOT NULL,
  `observaciones` varchar(200) DEFAULT NULL,
  `reserva` int(11) NOT NULL,
  `vendedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registro_ventas`
--

INSERT INTO `registro_ventas` (`id_venta`, `fecha_venta`, `productofinal`, `cantidad`, `precio`, `cliente`, `observaciones`, `reserva`, `vendedor`) VALUES
(2, '2010-10-02', 1, 10, '1000', 2, 'ninguna', 2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id_reserva` int(11) NOT NULL,
  `fecha_reserva` date DEFAULT NULL,
  `productofinal` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_total` decimal(10,0) DEFAULT NULL,
  `estado` enum('iniciada','proceso','finalizada') DEFAULT NULL,
  `observaciones` varchar(200) DEFAULT NULL,
  `cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id_reserva`, `fecha_reserva`, `productofinal`, `cantidad`, `precio_total`, `estado`, `observaciones`, `cliente`) VALUES
(1, '0000-00-00', 1, 20, '20000', 'proceso', 'ninguna', 2),
(2, '0000-00-00', 2, 30, '30000', 'iniciada', 'nada ', 2),
(3, '0000-00-00', 3, 50, '50000', 'iniciada', 'ninguna', 2),
(4, '0000-00-00', 1, 60, '60000', 'iniciada', 'nada', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `fecha_apertura` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `nombre`, `fecha_apertura`) VALUES
(1, 'Administrador', '2000-02-01'),
(2, 'Cliente', '2000-02-03'),
(3, 'nose', '2019-12-05'),
(4, 'asdasd', '2019-12-18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sobrantes`
--

CREATE TABLE `sobrantes` (
  `id_sobrante` int(11) NOT NULL,
  `fecha_sobrante` date DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `disponibilidad` tinyint(1) DEFAULT NULL,
  `articulo` int(11) NOT NULL,
  `observaciones` varchar(200) DEFAULT NULL,
  `responsable` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sobrantes`
--

INSERT INTO `sobrantes` (`id_sobrante`, `fecha_sobrante`, `cantidad`, `estado`, `disponibilidad`, `articulo`, `observaciones`, `responsable`) VALUES
(1, '2001-10-10', 1, 1, 1, 1, 'ninguna', 1),
(2, '0000-00-00', 2, 2, 2, 2, 'nada', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `id_tdocumento` int(11) NOT NULL,
  `abrebiatura` varchar(5) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`id_tdocumento`, `abrebiatura`, `nombre`) VALUES
(1, 'TI', 'Targeta de Identidad'),
(2, 'CC', 'Cedula de Ciudadania'),
(3, 'CE', 'Cedula de Extranjeria ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_user` int(3) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `username` varchar(50) NOT NULL,
  `clave1` varchar(50) NOT NULL,
  `clave2` varchar(50) NOT NULL,
  `rol` int(11) NOT NULL,
  `tipo_documento` int(11) NOT NULL,
  `numero_documento` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` varchar(13) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `ciudad` int(11) NOT NULL,
  `status` enum('activo','bloqueado') DEFAULT 'activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_user`, `nombre`, `apellidos`, `username`, `clave1`, `clave2`, `rol`, `tipo_documento`, `numero_documento`, `email`, `telefono`, `foto`, `ciudad`, `status`) VALUES
(1, '', '', 'admin', '123456789', '', 1, 2, '1030621769', 'adminciu@gmail.com', '1234567', 'user-default.png', 2, 'activo'),
(2, '', '', 'juance', '456789231', '', 2, 2, '9632584174', 'juan@gmail.com', '789456321', 'default.png', 3, 'activo'),
(3, '', '', 'adminciu', '456123789', '', 1, 3, '1235468978', 'admin@hotmail.com', '123456789', 'default.png', 4, 'activo'),
(13, 'Samuel', 'Salguero Carrillo', 'ssalguero9', '1234567890', '0987654321', 1, 2, '1030621769', 'ssalguero9@misena.edu.co', '7894562', NULL, 2, 'activo'),
(14, 'Barranquilla', 'vanegas', 'karen@misena', '1234567890', 'lkjhgfds', 1, 2, '1030621769', 'leumas.samo.93@hotmail.com', '8521475', NULL, 2, 'activo'),
(15, 'Barranquilla', 'vanegas', 'karen@misena', '1234567890', 'hjkl', 1, 2, '1030621769', 'salguerito14@gmail.com', '9632584', NULL, 2, 'activo'),
(20, 'Barranquilla', 'vanegas', 'karen', '1234567890', 'ssalguero9', 1, 2, '1030621769', 'jskdd@gmail.com', '7894562', NULL, 2, 'activo'),
(21, 'vanedsa', 'Salguero Carrillo', 'vanedsa@misena', '1030645128vane', '1030645128vane', 1, 2, '1030621769', 'vanedsa@misena', '3195144643', NULL, 2, 'activo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id_ciudad`);

--
-- Indices de la tabla `desechos`
--
ALTER TABLE `desechos`
  ADD PRIMARY KEY (`id_desecho`),
  ADD KEY `fkdesecho_sobrante` (`id_sobrante`),
  ADD KEY `fkdesecho_user` (`id_Responsable`);

--
-- Indices de la tabla `grosor_hilo`
--
ALTER TABLE `grosor_hilo`
  ADD PRIMARY KEY (`id_grosor`);

--
-- Indices de la tabla `inventario_general`
--
ALTER TABLE `inventario_general`
  ADD PRIMARY KEY (`id_articulo`),
  ADD KEY `fkarticulo_nit` (`nit_proveedor`),
  ADD KEY `fkarticulo_user` (`id_Responsable`);

--
-- Indices de la tabla `productofinal_reservas`
--
ALTER TABLE `productofinal_reservas`
  ADD PRIMARY KEY (`reservas_id_reserva`,`producto_final_id_productofinal`),
  ADD KEY `fkproductofinal_reservas_productofinal` (`producto_final_id_productofinal`);

--
-- Indices de la tabla `producto_final`
--
ALTER TABLE `producto_final`
  ADD PRIMARY KEY (`id_productofinal`),
  ADD KEY `fkproductofinal_grosor` (`grosor`),
  ADD KEY `fkproductofinal_articulo` (`articulo`),
  ADD KEY `fkproductofinal_user` (`responsable`);

--
-- Indices de la tabla `producto_proceso`
--
ALTER TABLE `producto_proceso`
  ADD PRIMARY KEY (`id_proceso`),
  ADD KEY `fkproceso_articulo` (`articulo`),
  ADD KEY `fkproceso_productofinal` (`producto_final`),
  ADD KEY `fkproceso_user` (`responsable`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`),
  ADD KEY `fknit_ciudad` (`ciudad`);

--
-- Indices de la tabla `registro_ventas`
--
ALTER TABLE `registro_ventas`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `fkventa_productofinal` (`productofinal`),
  ADD KEY `fk1venta_reserva` (`reserva`),
  ADD KEY `fk2reserva_user` (`cliente`),
  ADD KEY `fk3reserva_user` (`vendedor`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `fkreserva_productofinal` (`productofinal`),
  ADD KEY `fk1reserva_user` (`cliente`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `sobrantes`
--
ALTER TABLE `sobrantes`
  ADD PRIMARY KEY (`id_sobrante`),
  ADD KEY `fksobrante_articulo` (`articulo`),
  ADD KEY `fksobrante_user` (`responsable`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`id_tdocumento`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fkuser_rol` (`rol`),
  ADD KEY `fkuser_ciudad` (`ciudad`),
  ADD KEY `fkuser_tdocumento` (`tipo_documento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id_ciudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `desechos`
--
ALTER TABLE `desechos`
  MODIFY `id_desecho` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `grosor_hilo`
--
ALTER TABLE `grosor_hilo`
  MODIFY `id_grosor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `inventario_general`
--
ALTER TABLE `inventario_general`
  MODIFY `id_articulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `producto_final`
--
ALTER TABLE `producto_final`
  MODIFY `id_productofinal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `producto_proceso`
--
ALTER TABLE `producto_proceso`
  MODIFY `id_proceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `registro_ventas`
--
ALTER TABLE `registro_ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `sobrantes`
--
ALTER TABLE `sobrantes`
  MODIFY `id_sobrante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  MODIFY `id_tdocumento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_user` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `desechos`
--
ALTER TABLE `desechos`
  ADD CONSTRAINT `fkdesecho_sobrante` FOREIGN KEY (`id_sobrante`) REFERENCES `sobrantes` (`id_sobrante`),
  ADD CONSTRAINT `fkdesecho_user` FOREIGN KEY (`id_Responsable`) REFERENCES `usuarios` (`id_user`);

--
-- Filtros para la tabla `inventario_general`
--
ALTER TABLE `inventario_general`
  ADD CONSTRAINT `fkarticulo_nit` FOREIGN KEY (`nit_proveedor`) REFERENCES `proveedor` (`id_proveedor`),
  ADD CONSTRAINT `fkarticulo_user` FOREIGN KEY (`id_Responsable`) REFERENCES `usuarios` (`id_user`);

--
-- Filtros para la tabla `productofinal_reservas`
--
ALTER TABLE `productofinal_reservas`
  ADD CONSTRAINT `fkproductofinal_productofinal_reservas` FOREIGN KEY (`reservas_id_reserva`) REFERENCES `reservas` (`id_reserva`),
  ADD CONSTRAINT `fkproductofinal_reservas_productofinal` FOREIGN KEY (`producto_final_id_productofinal`) REFERENCES `producto_final` (`id_productofinal`);

--
-- Filtros para la tabla `producto_final`
--
ALTER TABLE `producto_final`
  ADD CONSTRAINT `fkproductofinal_articulo` FOREIGN KEY (`articulo`) REFERENCES `inventario_general` (`id_articulo`),
  ADD CONSTRAINT `fkproductofinal_grosor` FOREIGN KEY (`grosor`) REFERENCES `grosor_hilo` (`id_grosor`),
  ADD CONSTRAINT `fkproductofinal_user` FOREIGN KEY (`responsable`) REFERENCES `usuarios` (`id_user`);

--
-- Filtros para la tabla `producto_proceso`
--
ALTER TABLE `producto_proceso`
  ADD CONSTRAINT `fkproceso_articulo` FOREIGN KEY (`articulo`) REFERENCES `inventario_general` (`id_articulo`),
  ADD CONSTRAINT `fkproceso_productofinal` FOREIGN KEY (`producto_final`) REFERENCES `producto_final` (`id_productofinal`),
  ADD CONSTRAINT `fkproceso_user` FOREIGN KEY (`responsable`) REFERENCES `usuarios` (`id_user`);

--
-- Filtros para la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD CONSTRAINT `fknit_ciudad` FOREIGN KEY (`ciudad`) REFERENCES `ciudad` (`id_ciudad`);

--
-- Filtros para la tabla `registro_ventas`
--
ALTER TABLE `registro_ventas`
  ADD CONSTRAINT `fk1venta_reserva` FOREIGN KEY (`reserva`) REFERENCES `reservas` (`id_reserva`),
  ADD CONSTRAINT `fk2reserva_user` FOREIGN KEY (`cliente`) REFERENCES `usuarios` (`id_user`),
  ADD CONSTRAINT `fk3reserva_user` FOREIGN KEY (`vendedor`) REFERENCES `usuarios` (`id_user`),
  ADD CONSTRAINT `fkventa_productofinal` FOREIGN KEY (`productofinal`) REFERENCES `producto_final` (`id_productofinal`);

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `fk1reserva_user` FOREIGN KEY (`cliente`) REFERENCES `usuarios` (`id_user`),
  ADD CONSTRAINT `fkreserva_productofinal` FOREIGN KEY (`productofinal`) REFERENCES `producto_final` (`id_productofinal`);

--
-- Filtros para la tabla `sobrantes`
--
ALTER TABLE `sobrantes`
  ADD CONSTRAINT `fksobrante_articulo` FOREIGN KEY (`articulo`) REFERENCES `inventario_general` (`id_articulo`),
  ADD CONSTRAINT `fksobrante_user` FOREIGN KEY (`responsable`) REFERENCES `usuarios` (`id_user`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fkuser_ciudad` FOREIGN KEY (`ciudad`) REFERENCES `ciudad` (`id_ciudad`),
  ADD CONSTRAINT `fkuser_rol` FOREIGN KEY (`rol`) REFERENCES `roles` (`id_rol`),
  ADD CONSTRAINT `fkuser_tdocumento` FOREIGN KEY (`tipo_documento`) REFERENCES `tipo_documento` (`id_tdocumento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
