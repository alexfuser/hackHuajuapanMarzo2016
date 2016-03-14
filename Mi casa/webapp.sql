-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-03-2016 a las 02:43:39
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `webapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `family`
--

CREATE TABLE IF NOT EXISTS `family` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `cant_fam` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `img_comp` varchar(255) DEFAULT NULL,
  `img_selfie` varchar(255) DEFAULT NULL,
  `lon` varchar(20) DEFAULT NULL,
  `lat` varchar(20) DEFAULT NULL,
  `id_session` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `family`
--

INSERT INTO `family` (`id`, `name`, `last_name`, `edad`, `cant_fam`, `address`, `img_comp`, `img_selfie`, `lon`, `lat`, `id_session`) VALUES
(1, 'José Omar ', 'Vásquez ', 24, '2', 'Oaxaca esquina 12', '', '', '', '', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `program`
--

CREATE TABLE IF NOT EXISTS `program` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hour` varchar(10) DEFAULT NULL,
  `day` int(255) DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  `id_family` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(11) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `session`
--

INSERT INTO `session` (`id`, `level`, `ref`, `number`, `password`) VALUES
(1, 1, 'user', '9511864309', 'pass2016'),
(2, 1, 'user', '9511884808', 'Huajuapan'),
(3, 2, 'familia', '1234567890', 'joven'),
(4, 1, 'user', '9512433313', 'Oaxaca1'),
(5, 1, 'user', '9512365588', 'perro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tokens`
--

CREATE TABLE IF NOT EXISTS `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hour` varchar(10) DEFAULT NULL,
  `dia` date DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `id_family` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tokens`
--

INSERT INTO `tokens` (`id`, `hour`, `dia`, `cant`, `status`, `id_family`, `id_user`) VALUES
(1, '3', '2016-03-13', 1, 'true', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matricula` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `about` varchar(255) DEFAULT NULL,
  `img_selfie` varchar(255) DEFAULT NULL,
  `into` varchar(255) DEFAULT NULL,
  `lengua` varchar(255) DEFAULT NULL,
  `id_session` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `matricula`, `name`, `last_name`, `place`, `about`, `img_selfie`, `into`, `lengua`, `id_session`) VALUES
(1, 'LM99078', 'Roberto', NULL, '1', 'Me gusta patinar', 'img', '2900', 'Zapoteco', 1),
(2, 'LE98047B', 'Erick', NULL, '2', 'Odio los mariscos', 'img', '2360', 'Ninguna', 2),
(3, 'LD8968', 'Elizabeth', NULL, '3', '', 'img', '1000', 'Mixe', 4),
(4, 'Ld79978', 'Pedro', NULL, '1', 'Algo', 'img', '3000', 'Mixe', 5);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
