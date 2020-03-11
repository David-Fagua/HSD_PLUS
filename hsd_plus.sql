-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-03-2020 a las 06:18:32
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
-- Estructura de tabla para la tabla `catalogo`
--

CREATE TABLE `catalogo` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `articulofinal` int(11) NOT NULL,
  `descripcion` varchar(350) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `precio_unitario` decimal(10,0) NOT NULL,
  `stock` int(11) NOT NULL,
  `imagen` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `catalogo`
--

INSERT INTO `catalogo` (`codigo`, `nombre`, `articulofinal`, `descripcion`, `fecha`, `precio_unitario`, `stock`, `imagen`) VALUES
(10, 'Hilo', 6, 'hljrorhljfgnkesjigr', '2020-03-18', '20000', 200, 'hilo.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `id_ciudad` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`id_ciudad`, `nombre`) VALUES
(2, 'Medellin'),
(3, 'Cali'),
(4, 'Cartagena'),
(5, 'Boyaca'),
(10, 'Valledupar'),
(13, 'Casanare'),
(17, 'Manizales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desechos`
--

CREATE TABLE `desechos` (
  `id_desecho` int(11) NOT NULL,
  `articulo` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `observaciones` varchar(200) DEFAULT NULL,
  `responsable` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `desechos`
--

INSERT INTO `desechos` (`id_desecho`, `articulo`, `fecha`, `cantidad`, `observaciones`, `responsable`) VALUES
(4, 9, '2020-03-04', 4, 'se Daño', 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario_general`
--

CREATE TABLE `inventario_general` (
  `id_articulo` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `fecha_entrada` date NOT NULL,
  `preciode_compra` decimal(10,0) NOT NULL,
  `disponibilidad` tinyint(4) DEFAULT NULL,
  `peso_libra` decimal(10,0) DEFAULT NULL,
  `cantidad_unitaria` int(11) NOT NULL,
  `color` varchar(20) NOT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `proveedor` int(11) NOT NULL,
  `responsable` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `inventario_general`
--

INSERT INTO `inventario_general` (`id_articulo`, `nombre`, `fecha_entrada`, `preciode_compra`, `disponibilidad`, `peso_libra`, `cantidad_unitaria`, `color`, `estado`, `proveedor`, `responsable`) VALUES
(9, 'Algodon Perchado', '2020-03-11', '200000', 1, '2000', 500, 'verde', 1, 2, 32),
(10, 'Algodon Ligero', '2020-03-10', '1000000', 1, '100000', 1500, 'blanco', 1, 2, 32),
(11, 'Cono de Hilo', '2020-03-17', '5000000', 1, '5000', 1000, 'cafe', 1, 2, 32),
(12, 'Hilo Croche ', '2020-03-18', '100000', 1, '10000', 10000, 'amarillo', 1, 7, 32),
(13, 'Hilo Zelda Form', '2020-03-11', '1000000', 1, '100', 1000, 'azul', 1, 7, 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productofinal_reservas`
--

CREATE TABLE `productofinal_reservas` (
  `id_reserva_reserva` int(11) NOT NULL,
  `id_productofina_final` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_final`
--

CREATE TABLE `producto_final` (
  `id_productof` int(11) NOT NULL,
  `articulo` int(11) NOT NULL,
  `grosor` enum('10','20','30','NA') NOT NULL,
  `fecha_promocion` date DEFAULT NULL,
  `disponibilidad` tinyint(1) DEFAULT NULL,
  `existencias` int(11) NOT NULL,
  `responsable` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto_final`
--

INSERT INTO `producto_final` (`id_productof`, `articulo`, `grosor`, `fecha_promocion`, `disponibilidad`, `existencias`, `responsable`) VALUES
(6, 12, '20', '2020-03-18', 1, 1000, 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_proceso`
--

CREATE TABLE `producto_proceso` (
  `id_proceso` int(11) NOT NULL,
  `fecha_proceso` date DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `articulo_inicial` int(11) DEFAULT NULL,
  `articulo_inicial2` int(11) DEFAULT NULL,
  `producto_final` int(11) NOT NULL,
  `responsable` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto_proceso`
--

INSERT INTO `producto_proceso` (`id_proceso`, `fecha_proceso`, `estado`, `cantidad`, `articulo_inicial`, `articulo_inicial2`, `producto_final`, `responsable`) VALUES
(9, '2020-03-18', 1, 200, 9, 11, 6, 32),
(11, '2020-03-17', 1, 1000, 10, 11, 6, 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id_proveedor` int(11) NOT NULL,
  `nit` varchar(45) NOT NULL,
  `razon_social` varchar(45) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `ciudad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id_proveedor`, `nit`, `razon_social`, `telefono`, `email`, `direccion`, `ciudad`) VALUES
(2, 'adf245', 'Insumos provervios', '2583694', 'provervios@gmail.com', 'calle13#27', 2),
(3, 'asdf123458', 'Cultivos politea', '12345587', 'politea@gmail.com', 'calle45#24', 5),
(7, '12345678', 'Hilanzas Mategam', '1234567890', 'mate@gmail.com', 'as234sd', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_ventas`
--

CREATE TABLE `registro_ventas` (
  `id_venta` int(11) NOT NULL,
  `fecha_venta` date DEFAULT NULL,
  `reserva` int(11) NOT NULL,
  `observaciones` varchar(200) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `presio_total` decimal(10,0) DEFAULT NULL,
  `responsable` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id_reserva` int(11) NOT NULL,
  `fecha_reserva` date DEFAULT NULL,
  `producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_total` decimal(10,0) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 0,
  `observaciones` varchar(200) NOT NULL,
  `cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(2, 'Cliente', '0200-03-04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodocumentos`
--

CREATE TABLE `tipodocumentos` (
  `id_tdocumento` int(11) NOT NULL,
  `abrebiatura` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipodocumentos`
--

INSERT INTO `tipodocumentos` (`id_tdocumento`, `abrebiatura`, `nombre`) VALUES
(1, 'CC', 'Cedula de ciudadania'),
(2, 'CE', 'Cedula de Extranjeria'),
(3, 'TI', 'Targeta de Identidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `imagen` varchar(45) DEFAULT NULL,
  `tipo_documento` int(11) NOT NULL,
  `numerodocumento` varchar(45) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `primer_apellido` varchar(45) NOT NULL,
  `segundo_apellido` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `clave` varchar(45) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `ciudad` int(11) NOT NULL,
  `estado` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `imagen`, `tipo_documento`, `numerodocumento`, `nombres`, `primer_apellido`, `segundo_apellido`, `correo`, `clave`, `telefono`, `ciudad`, `estado`) VALUES
(32, NULL, 1, '09876543245678', 'Harold Samuel', 'Sanchez', 'Marroco', 'ssalguero@misena', '1234567', '64347889', 17, 1),
(35, NULL, 1, '1030621769', 'Samuel', 'Salguero', 'Carrillo', 'ssalguero9@misena.edu.co', '123456789', '123456789', 5, 0),
(45, NULL, 1, '1030010606', 'Karen Patricia', 'Vanegas', 'Salguero', 'Karen@misena.edu.co', '12345', '123456789', 5, 0),
(48, NULL, 1, '10987654321', 'Nathalia', 'Garcia', 'Congo', 'nata@misena.edu.co', '12345', '1234567', 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_roles`
--

CREATE TABLE `usuarios_roles` (
  `roles_id_rol` int(11) NOT NULL,
  `usuarios_id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios_roles`
--

INSERT INTO `usuarios_roles` (`roles_id_rol`, `usuarios_id_usuario`) VALUES
(1, 35),
(2, 45),
(2, 48);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `catalogo`
--
ALTER TABLE `catalogo`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `nombre` (`articulofinal`);

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`id_ciudad`);

--
-- Indices de la tabla `desechos`
--
ALTER TABLE `desechos`
  ADD PRIMARY KEY (`id_desecho`),
  ADD KEY `fkid_desecho_inventario_general` (`articulo`),
  ADD KEY `fkid_desecho_usuarios` (`responsable`);

--
-- Indices de la tabla `inventario_general`
--
ALTER TABLE `inventario_general`
  ADD PRIMARY KEY (`id_articulo`),
  ADD KEY `fkid_articulo_proveedores` (`proveedor`),
  ADD KEY `fkid_articulo_usuarios` (`responsable`);

--
-- Indices de la tabla `productofinal_reservas`
--
ALTER TABLE `productofinal_reservas`
  ADD PRIMARY KEY (`id_reserva_reserva`,`id_productofina_final`),
  ADD KEY `fkproductofinal_reservas_productofinal` (`id_productofina_final`);

--
-- Indices de la tabla `producto_final`
--
ALTER TABLE `producto_final`
  ADD PRIMARY KEY (`id_productof`),
  ADD KEY `fkid_productof_inventario_general` (`articulo`),
  ADD KEY `fkid_productof_usuarios` (`responsable`),
  ADD KEY `fkid_productof_grosor_hilos` (`grosor`);

--
-- Indices de la tabla `producto_proceso`
--
ALTER TABLE `producto_proceso`
  ADD PRIMARY KEY (`id_proceso`),
  ADD KEY `fkid_proceso_inventario_general` (`articulo_inicial`),
  ADD KEY `fk2id_proceso_inventario_general` (`articulo_inicial2`),
  ADD KEY `fkid_proceso_producto_final` (`producto_final`),
  ADD KEY `fkid_proceso_usuarios` (`responsable`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_proveedor`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fknit_ciudades` (`ciudad`);

--
-- Indices de la tabla `registro_ventas`
--
ALTER TABLE `registro_ventas`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `fkid_venta_reservas` (`reserva`),
  ADD KEY `fk2id_venta_usuarios` (`responsable`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `fkid_reserva_producto_final` (`producto`),
  ADD KEY `fkid_reserva_usuarios` (`cliente`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `tipodocumentos`
--
ALTER TABLE `tipodocumentos`
  ADD PRIMARY KEY (`id_tdocumento`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `fkid_usuario_tipodocumentos` (`tipo_documento`),
  ADD KEY `fkid_usuario_ciudades` (`ciudad`);

--
-- Indices de la tabla `usuarios_roles`
--
ALTER TABLE `usuarios_roles`
  ADD PRIMARY KEY (`roles_id_rol`,`usuarios_id_usuario`),
  ADD KEY `fkusuarios_roles_usuarios` (`usuarios_id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `catalogo`
--
ALTER TABLE `catalogo`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  MODIFY `id_ciudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `desechos`
--
ALTER TABLE `desechos`
  MODIFY `id_desecho` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `inventario_general`
--
ALTER TABLE `inventario_general`
  MODIFY `id_articulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `producto_final`
--
ALTER TABLE `producto_final`
  MODIFY `id_productof` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `producto_proceso`
--
ALTER TABLE `producto_proceso`
  MODIFY `id_proceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `registro_ventas`
--
ALTER TABLE `registro_ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tipodocumentos`
--
ALTER TABLE `tipodocumentos`
  MODIFY `id_tdocumento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `catalogo`
--
ALTER TABLE `catalogo`
  ADD CONSTRAINT `fkcodigo_producto_final` FOREIGN KEY (`articulofinal`) REFERENCES `producto_final` (`id_productof`);

--
-- Filtros para la tabla `desechos`
--
ALTER TABLE `desechos`
  ADD CONSTRAINT `fkid_desecho_inventario_general` FOREIGN KEY (`articulo`) REFERENCES `inventario_general` (`id_articulo`),
  ADD CONSTRAINT `fkid_desecho_usuarios` FOREIGN KEY (`responsable`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `inventario_general`
--
ALTER TABLE `inventario_general`
  ADD CONSTRAINT `fkid_articulo_proveedores` FOREIGN KEY (`proveedor`) REFERENCES `proveedores` (`id_proveedor`);

--
-- Filtros para la tabla `productofinal_reservas`
--
ALTER TABLE `productofinal_reservas`
  ADD CONSTRAINT `fkproductofinal_productofinal_reservas` FOREIGN KEY (`id_reserva_reserva`) REFERENCES `reservas` (`id_reserva`),
  ADD CONSTRAINT `fkproductofinal_reservas_productofinal` FOREIGN KEY (`id_productofina_final`) REFERENCES `producto_final` (`id_productof`);

--
-- Filtros para la tabla `producto_final`
--
ALTER TABLE `producto_final`
  ADD CONSTRAINT `fkid_productof_inventario_general` FOREIGN KEY (`articulo`) REFERENCES `inventario_general` (`id_articulo`);

--
-- Filtros para la tabla `producto_proceso`
--
ALTER TABLE `producto_proceso`
  ADD CONSTRAINT `fk2id_proceso_inventario_general` FOREIGN KEY (`articulo_inicial2`) REFERENCES `inventario_general` (`id_articulo`),
  ADD CONSTRAINT `fkid_proceso_inventario_general` FOREIGN KEY (`articulo_inicial`) REFERENCES `inventario_general` (`id_articulo`),
  ADD CONSTRAINT `fkid_proceso_producto_final` FOREIGN KEY (`producto_final`) REFERENCES `producto_final` (`id_productof`),
  ADD CONSTRAINT `fkid_proceso_usuarios` FOREIGN KEY (`responsable`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD CONSTRAINT `fknit_ciudades` FOREIGN KEY (`ciudad`) REFERENCES `ciudades` (`id_ciudad`);

--
-- Filtros para la tabla `registro_ventas`
--
ALTER TABLE `registro_ventas`
  ADD CONSTRAINT `fk2id_venta_usuarios` FOREIGN KEY (`responsable`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `fkid_venta_reservas` FOREIGN KEY (`reserva`) REFERENCES `reservas` (`id_reserva`);

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `fkid_reserva_producto_final` FOREIGN KEY (`producto`) REFERENCES `producto_final` (`id_productof`),
  ADD CONSTRAINT `fkid_reserva_usuarios` FOREIGN KEY (`cliente`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fkid_usuario_ciudades` FOREIGN KEY (`ciudad`) REFERENCES `ciudades` (`id_ciudad`),
  ADD CONSTRAINT `fkid_usuario_tipodocumentos` FOREIGN KEY (`tipo_documento`) REFERENCES `tipodocumentos` (`id_tdocumento`);

--
-- Filtros para la tabla `usuarios_roles`
--
ALTER TABLE `usuarios_roles`
  ADD CONSTRAINT `fkusuarios_roles_usuarios` FOREIGN KEY (`usuarios_id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `fkusuarios_usuarios_roles` FOREIGN KEY (`roles_id_rol`) REFERENCES `roles` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
