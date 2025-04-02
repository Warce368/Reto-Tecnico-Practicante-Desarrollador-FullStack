-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-04-2025 a las 07:41:37
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `busesdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bus`
--

CREATE TABLE `bus` (
  `id` bigint(20) NOT NULL,
  `activo` bit(1) NOT NULL,
  `caracteristicas` varchar(255) DEFAULT NULL,
  `fecha_creacion` datetime(6) DEFAULT NULL,
  `numero_bus` varchar(255) DEFAULT NULL,
  `placa` varchar(255) DEFAULT NULL,
  `marca_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bus`
--

INSERT INTO `bus` (`id`, `activo`, `caracteristicas`, `fecha_creacion`, `numero_bus`, `placa`, `marca_id`) VALUES
(1, b'1', 'Aire acondicionado', '2025-03-31 22:16:39.000000', '123', 'ABC123', 1),
(2, b'0', 'Sin aire acondicionado', '2025-03-31 22:16:39.000000', '456', 'XYZ456', 2),
(3, b'1', 'Aire acondicionado, WiFi', '2025-04-01 23:19:53.000000', '112', '789DEF', 1),
(4, b'1', 'Asientos reclinables, Climatización', '2025-04-01 23:19:53.000000', '113', '234GHI', 2),
(5, b'1', 'Pantalla LCD, WiFi', '2025-04-01 23:19:53.000000', '114', '567JKL', 3),
(6, b'1', 'Accesible para discapacitados, WiFi', '2025-04-01 23:19:53.000000', '115', '890MNO', 4),
(7, b'1', 'Reproductor de DVD, Climatización', '2025-04-01 23:19:53.000000', '116', '345PQR', 5),
(8, b'1', 'Pantalla LCD, Aire acondicionado', '2025-04-01 23:19:53.000000', '117', '678STU', 6),
(9, b'0', 'Asientos cómodos, WiFi', '2025-04-01 23:19:53.000000', '118', '901VWX', 7),
(10, b'1', 'Aire acondicionado, Reproductor de DVD', '2025-04-01 23:19:53.000000', '119', '234YZA', 8),
(11, b'1', 'Accesible para discapacitados, WiFi', '2025-04-01 23:19:53.000000', '120', '567BCD', 9),
(12, b'1', 'Aire acondicionado, Pantalla LCD', '2025-04-01 23:19:53.000000', '121', '890EFG', 10),
(13, b'1', 'Reproductor de DVD, Asientos reclinables', '2025-04-01 23:19:53.000000', '122', '123HJK', 11),
(14, b'1', 'WiFi, Climatización', '2025-04-01 23:19:53.000000', '123LMN', '456IJK', 12),
(15, b'1', 'Pantalla LCD, Accesible para discapacitados', '2025-04-01 23:19:53.000000', '124OPQ', '789MNO', 13),
(16, b'1', 'Aire acondicionado, WiFi', '2025-04-01 23:19:53.000000', '125RST', '234OPQ', 14),
(17, b'1', 'Reproductor de DVD, WiFi', '2025-04-01 23:19:53.000000', '126UVW', '567PQR', 15),
(18, b'1', 'Aire acondicionado, Pantalla LCD', '2025-04-01 23:19:53.000000', '127XYZ', '890STU', 16),
(19, b'0', 'Asientos cómodos, WiFi', '2025-04-01 23:19:53.000000', '128ABC', '123VWX', 17),
(20, b'1', 'Accesible para discapacitados, Climatización', '2025-04-01 23:19:53.000000', '129DEF', '456YZA', 18),
(21, b'1', 'Aire acondicionado, Reproductor de DVD', '2025-04-01 23:19:53.000000', '130GHI', '789BCD', 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id`, `nombre`) VALUES
(1, 'Volvo'),
(2, 'Scania'),
(3, 'Fiat'),
(4, 'Volvo'),
(5, 'Mercedes'),
(6, 'Scania'),
(7, 'MAN'),
(8, 'Iveco'),
(9, 'Ford'),
(10, 'Toyota'),
(11, 'Isuzu'),
(12, 'Renault'),
(13, 'Chevrolet'),
(14, 'Volvo'),
(15, 'Mercedes'),
(16, 'Scania'),
(17, 'MAN'),
(18, 'Iveco'),
(19, 'Ford'),
(20, 'Toyota'),
(21, 'Isuzu'),
(22, 'Renault'),
(23, 'Chevrolet');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6mmbt43kmdip2jh71qpynr0xl` (`marca_id`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bus`
--
ALTER TABLE `bus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `bus`
--
ALTER TABLE `bus`
  ADD CONSTRAINT `FK6mmbt43kmdip2jh71qpynr0xl` FOREIGN KEY (`marca_id`) REFERENCES `marca` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
