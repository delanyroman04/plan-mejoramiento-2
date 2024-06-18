-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-06-2024 a las 18:05:55
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `estudiante`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_CREAR` (IN `_ID` INT(10), IN `_NOMBRE` VARCHAR(20))   BEGIN 

INSERT INTO estudiante (id, nombre)
VALUES (_id, _marca);

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ELIMINAR` (IN `_ID` INT(10))   BEGIN 

DELETE FROM estudiante WHERE id = _ID;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LISTAR` (IN `_ID` INT(10))   BEGIN 

SELECT*FROM estudiante;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MODIFICAR` (IN `_ID` INT(10), IN `_NOMBRE` VARCHAR(20))   BEGIN 

UPDATE estudiante SET id = _ID, nombre = _Nombre WHERE id = _ID;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MOSTRAR` (IN `_ID` INT(10))   BEGIN 

SELECT*FROM ESTUDIANTE WHERE ID = _ID;

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `id` int(10) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`id`, `nombre`) VALUES
(0, ''),
(1, 'Samuel'),
(2, 'Javier'),
(3, 'Samir');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
