-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 13-03-2016 a las 02:15:28
-- Versión del servidor: 10.0.17-MariaDB
-- Versión de PHP: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hack`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `id_Actividad` varchar(4) NOT NULL,
  `Tipo_Actividad` varchar(20) NOT NULL,
  `Nombre_Actividad` varchar(30) NOT NULL,
  `Descripcion_Actividad` varchar(150) NOT NULL,
  `Horario` varchar(11) NOT NULL,
  `Cupo` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`id_Actividad`, `Tipo_Actividad`, `Nombre_Actividad`, `Descripcion_Actividad`, `Horario`, `Cupo`) VALUES
('CACF', 'Deportivo', 'Activacion Fisica', 'Lunes,Miercoles,Viernes', '18:00-19:00', 20),
('CBMS', 'Cultural', 'Bailes Modernos', 'Lunes,Miercoles,Viernes', '17:00-19:00', 30),
('CCAD', 'Educativo', 'Computacion', 'Lunes,Miercoles,Viernes', '16:00-18:00', 16),
('CCAV', 'Educativo', 'Computacion', 'Lunes,Miercoles,Viernes', '16:00-18:00', 16),
('CCNI', 'Educativo', 'Computacion', 'Lunes,Miercoles,Viernes', '16:00-18:00', 32),
('CCYM', 'Cultural', 'Cumbia y merengue', 'Lunes - Viernes', '17:00-19:00', 80),
('CDAC', 'Cultural', 'Danza Clasica', 'Martes,Jueves', '17:00-18:00', 25),
('CDIB', 'Educativo', 'Dibujo', 'Lunes,Miercoles', '16:00-18:00', 20),
('CDIN', 'Educativo', 'Diseno de invitaciones', 'Viernes', '16:00-18:00', 16),
('CENB', 'Educativo', 'Ingles basico', 'Martes - Jueves', '16:00-18:00', 25),
('CENI', 'Educativo', 'Ingles Intermedio', 'Lunes,Miercoles,Viernes', '16:30-18:30', 25),
('CLAA', 'Educativo', 'De la lectura a la aventura', 'Lunes - Viernes', '17:00-18:00', 25),
('CPIN', 'Educativo', 'Pintura', 'Martes,Jueves', '16:00-18:00', 20),
('CRUM', 'Cultural', 'Rumba Matutino', 'Lunes-Viernes', '07:00-08:00', 80),
('CRUV', 'Cultural', 'Rumba Vespertino', 'Lunes-Viernes', '19:00-20:00', 80),
('CSYB', 'Cultural', 'Salsa y Bachata', 'Lunes - Viernes', '19:00-21:00', 70),
('CTKD', 'Deportivo', 'Tae Kwon do', 'Lunes - Viernes', '16:00-17:00', 40),
('RAJZ', 'Educativa', 'Ajedrez', 'Lunes - Viernes', '17:00-20:00', 30),
('RBMX', 'Deportiva', 'BMX', 'Lunes,Martes,Miercoles', '16:00-20:00', 15),
('RIMU', 'Cultural', 'Iniciacion Musical', 'Lunes - Viernes', '17:00-20:00', 20),
('RLPM', 'Social', 'Ludoteca Publica Nacional', 'Lunes - Viernes', '16:00-20:00', 80),
('RLSM', 'Cultural', 'Lenguaje de senias Mexicanas', 'Lunes,Miercoles,Viernes', '17:00-20:00', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido`
--

CREATE TABLE `contenido` (
  `id_Contenido` varchar(4) NOT NULL,
  `Hora` varchar(5) NOT NULL,
  `Ponente` varchar(50) NOT NULL,
  `Ubicacion` varchar(30) DEFAULT NULL,
  `Cupo` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_registro`
--

CREATE TABLE `detalle_registro` (
  `id_Visitante` int(5) NOT NULL,
  `id_Evento` int(3) NOT NULL,
  `Fecha_In` datetime NOT NULL,
  `id_Actividad` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id_Evento` int(3) NOT NULL,
  `Tipo_Evento` varchar(30) NOT NULL,
  `Nombre_Evento` varchar(30) NOT NULL,
  `Descripcion_Evento` varchar(30) NOT NULL,
  `Fecha_In` datetime NOT NULL,
  `Duracion` varchar(2) NOT NULL,
  `id_Contenido` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `userid` int(2) NOT NULL,
  `user` varchar(10) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`userid`, `user`, `password`) VALUES
(1, 'jonathan', '12345');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitante`
--

CREATE TABLE `visitante` (
  `id_Visitante` int(5) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `AP_Paterno` varchar(30) NOT NULL,
  `AP_Materno` varchar(30) NOT NULL,
  `Edad` int(2) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Contraseña` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `visitante`
--

INSERT INTO `visitante` (`id_Visitante`, `Nombre`, `AP_Paterno`, `AP_Materno`, `Edad`, `Correo`, `Contraseña`) VALUES
(1, 'jonathan', 'ramirez', 'jimenez', 21, 'jonathan@correo.com', '1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`id_Actividad`);

--
-- Indices de la tabla `contenido`
--
ALTER TABLE `contenido`
  ADD PRIMARY KEY (`id_Contenido`);

--
-- Indices de la tabla `detalle_registro`
--
ALTER TABLE `detalle_registro`
  ADD KEY `id_Evento` (`id_Evento`),
  ADD KEY `id_Actividad` (`id_Actividad`),
  ADD KEY `id_Visitante` (`id_Visitante`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id_Evento`,`Fecha_In`),
  ADD KEY `id_Contenido` (`id_Contenido`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`userid`);

--
-- Indices de la tabla `visitante`
--
ALTER TABLE `visitante`
  ADD PRIMARY KEY (`id_Visitante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `userid` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `contenido`
--
ALTER TABLE `contenido`
  ADD CONSTRAINT `FK_ContEven` FOREIGN KEY (`id_Contenido`) REFERENCES `eventos` (`id_Contenido`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_registro`
--
ALTER TABLE `detalle_registro`
  ADD CONSTRAINT `FK_DRVist` FOREIGN KEY (`id_Visitante`) REFERENCES `visitante` (`id_Visitante`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `FK_EvenDR` FOREIGN KEY (`id_Evento`) REFERENCES `detalle_registro` (`id_Visitante`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
