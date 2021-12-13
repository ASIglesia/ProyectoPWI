-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-12-2021 a las 16:19:49
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gazetadb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticiasgazeta`
--

CREATE TABLE `noticiasgazeta` (
  `id` int(10) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `categoria` varchar(200) NOT NULL,
  `f_imagen` varchar(200) NOT NULL,
  `s_descripcion` text NOT NULL,
  `razon_pop` varchar(50) NOT NULL,
  `LinkArt` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `noticiasgazeta`
--

INSERT INTO `noticiasgazeta` (`id`, `titulo`, `categoria`, `f_imagen`, `s_descripcion`, `razon_pop`, `LinkArt`) VALUES
(1, 'Titulo de la primera noticia', 'quimica', '', 'Introducir una pequeña descripción de la noticia en cuestion. Esta noticia trata de la quimica', 'reciente', ''),
(2, 'Titulo de la segunda noticia', 'programacion', '', 'Introducir una pequeña descripción de la noticia en cuestion', 'reciente', ''),
(3, 'Titulo de la tercera noticia', 'industrial', '', 'Introducir una pequeña descripción de la noticia en cuestion', 'reciente', ''),
(4, 'Titulo de la cuarta noticia', 'fisica', '', 'Introducir una pequeña descripción de la noticia en cuestion', 'reciente', ''),
(5, 'Titulo de la quinta noticia', 'biologia', '', 'Introducir una pequeña descripción de la noticia en cuestion', 'reciente', ''),
(6, 'Titulo de la sexta noticia', 'matematicas', '', 'Introducir una pequeña descripción de la noticia en cuestion', 'reciente', ''),
(7, 'Titulo de la primera noticia Popular', 'quimica', '', 'Introducir una pequeña descripción de la noticia en cuestion. Esta noticia trata de la quimica', 'mas_visto', ''),
(8, 'Titulo de la segunda noticia Popular', 'quimica', '', 'Introducir una pequeña descripción de la noticia en cuestion. Esta noticia trata de la quimica', 'mas_visto', ''),
(9, 'Titulo de la tercera noticia Popular', 'industrial', '', 'Introducir una pequeña descripción de la noticia en cuestion', 'mas_visto', ''),
(10, 'Titulo de la cuarta noticia Popular', 'fisica', '', 'Introducir una pequeña descripción de la noticia en cuestion', 'mas_visto', ''),
(11, 'Titulo de la quinta noticia Popular', 'biologia', '', 'Introducir una pequeña descripción de la noticia en cuestion', 'mas_visto', ''),
(12, 'Titulo de la sexta noticia Popular', 'matematicas', '', 'Introducir una pequeña descripción de la noticia en cuestion', 'mas_visto', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariosgazeta`
--

CREATE TABLE `usuariosgazeta` (
  `id` int(10) NOT NULL,
  `nombre_usuario` varchar(100) NOT NULL,
  `nivel_acceso` varchar(50) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `emailusuario` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuariosgazeta`
--

INSERT INTO `usuariosgazeta` (`id`, `nombre_usuario`, `nivel_acceso`, `contraseña`, `fecha_nacimiento`, `emailusuario`) VALUES
(1, 'admin', 'moderador', 'admin', '1999-06-25', 'asi.iglesias99@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `noticiasgazeta`
--
ALTER TABLE `noticiasgazeta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuariosgazeta`
--
ALTER TABLE `usuariosgazeta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_usuario` (`nombre_usuario`),
  ADD UNIQUE KEY `emailusuario` (`emailusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `noticiasgazeta`
--
ALTER TABLE `noticiasgazeta`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `usuariosgazeta`
--
ALTER TABLE `usuariosgazeta`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
