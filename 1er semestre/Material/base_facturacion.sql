-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-03-2023 a las 14:55:04
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

DROP DATABASE IF EXISTS `facturacion`;
CREATE DATABASE  IF NOT EXISTS `facturacion`;
USE `facturacion`;
--
-- Base de datos: `facturacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `codart` int(11) NOT NULL,
  `detalle` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `unidad` char(4) COLLATE utf8_bin DEFAULT NULL,
  `puv` decimal(10,0) DEFAULT NULL,
  `iva` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`codart`, `detalle`, `unidad`, `puv`, `iva`) VALUES
(200, 'Tornillo rosca madera 1x20', 'un', '35', 0.21),
(300, 'Masilla sintética uso madera', 'kg', '1580', 0.21),
(400, 'Somier 1 1/2 plaza', 'un', '35000', 0.21),
(500, 'silla metálica tapizada gris', 'un', '2500', 0.21),
(502, 'Silla de roble color natural estilo Luis XV', 'un', '19000', 0.21),
(503, 'Silla laqueda color blanco', 'un', '16800', 0.21),
(600, 'Mesa circular tapa de vidrio', 'un', '15246', 0.21),
(601, 'Mesa rectangular de madera de roble color natural', 'un', '28921', 0.21),
(605, 'Barniz color cedro x 1 ', 'lt', '2500', 0.15),
(606, 'Barniz color cedro x 2', 'lt', '2600', 0.15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `codcliente` int(11) NOT NULL,
  `apellido` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `nombre` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `codpostal` int(11) DEFAULT NULL,
  `condiva` decimal(3,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tabla con datos de los clientes';

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`codcliente`, `apellido`, `nombre`, `codpostal`, `condiva`) VALUES
(100, 'Perez', 'Gabriel', 5500, '0'),
(101, 'Gomez', 'Catalina', 5501, '0'),
(102, 'Barroso', 'Lautaro', 5500, '0'),
(103, 'Balmaceda', 'Natalia', 5502, '0'),
(104, 'Baez', 'Carlos', 5502, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envios`
--

CREATE TABLE `envios` (
  `codtransp` int(11) NOT NULL,
  `codpostal` int(11) NOT NULL,
  `costo` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `nrofact` int(11) NOT NULL,
  `codcliente` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `hora` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Describe la cabecera de la factura';

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`nrofact`, `codcliente`, `fecha`, `hora`) VALUES
(1000, 100, '2023-03-29 00:00:00', '10:00:00'),
(1001, 101, '2023-03-29 00:00:00', '10:15:00'),
(1002, 102, '2023-03-30 00:00:00', '10:20:00'),
(1003, 101, '2023-03-30 00:00:00', '09:20:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_cuerpo`
--

CREATE TABLE `factura_cuerpo` (
  `nrofact` int(11) NOT NULL,
  `codart` int(11) NOT NULL,
  `cantidad` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `factura_cuerpo`
--

INSERT INTO `factura_cuerpo` (`nrofact`, `codart`, `cantidad`) VALUES
(1000, 200, '25.00'),
(1000, 300, '50.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidades`
--

CREATE TABLE `localidades` (
  `codpostal` int(11) NOT NULL,
  `localidad` varchar(60) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `localidades`
--

INSERT INTO `localidades` (`codpostal`, `localidad`) VALUES
(1000, 'Cap Federal'),
(5501, 'Godoy Cruz'),
(1110, 'Gran Bs As'),
(5502, 'Lujan de Cuyo'),
(5515, 'Maipú'),
(5500, 'Mendoza'),
(1001, 'Zona 1'),
(1002, 'Zona 2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transportes`
--

CREATE TABLE `transportes` (
  `codtransp` int(11) NOT NULL,
  `nombretransporte` varchar(45) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `transportes`
--

INSERT INTO `transportes` (`codtransp`, `nombretransporte`) VALUES
(1, 'Buenos Aires'),
(2, 'El cordobés'),
(3, 'Independencia'),
(4, 'Furlán'),
(5, 'Correo Argentino'),
(6, 'Andreanni'),
(7, 'OCA');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`codart`),
  ADD KEY `detalleArticulos` (`detalle`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`codcliente`),
  ADD KEY `apellido` (`apellido`),
  ADD KEY `odpostal` (`codpostal`);

--
-- Indices de la tabla `envios`
--
ALTER TABLE `envios`
  ADD PRIMARY KEY (`codtransp`,`codpostal`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`nrofact`);

--
-- Indices de la tabla `factura_cuerpo`
--
ALTER TABLE `factura_cuerpo`
  ADD PRIMARY KEY (`nrofact`,`codart`);

--
-- Indices de la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD PRIMARY KEY (`codpostal`),
  ADD KEY `Localidades` (`localidad`);

--
-- Indices de la tabla `transportes`
--
ALTER TABLE `transportes`
  ADD PRIMARY KEY (`codtransp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
