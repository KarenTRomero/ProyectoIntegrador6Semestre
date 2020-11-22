-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2020 a las 18:58:30
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mathmind`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `division`
--

CREATE TABLE `division` (
  `id_divi` int(11) NOT NULL,
  `nom_niño` varchar(45) NOT NULL,
  `edad` varchar(11) NOT NULL,
  `grado` varchar(11) NOT NULL,
  `sugerencia` text NOT NULL,
  `puntuacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `division`
--

INSERT INTO `division` (`id_divi`, `nom_niño`, `edad`, `grado`, `sugerencia`, `puntuacion`) VALUES
(1, 'Jesus Torres', '9', 'Cuarto', 'La pagina es muy interesante, me dio a entender mucho mas el tema.', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multiplicacion`
--

CREATE TABLE `multiplicacion` (
  `id_multi` int(11) NOT NULL,
  `nom_niño` varchar(45) NOT NULL,
  `edad` varchar(11) NOT NULL,
  `grado` varchar(11) NOT NULL,
  `sugerencia` text NOT NULL,
  `puntuacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `multiplicacion`
--

INSERT INTO `multiplicacion` (`id_multi`, `nom_niño`, `edad`, `grado`, `sugerencia`, `puntuacion`) VALUES
(1, 'Tatiana ', '8', 'Cuarto', 'Gracias, la pagina me sirviÃ³ mucho.', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resta`
--

CREATE TABLE `resta` (
  `id_resta` int(11) NOT NULL,
  `nom_niño` varchar(45) NOT NULL,
  `edad` varchar(11) NOT NULL,
  `grado` varchar(11) NOT NULL,
  `sugerencia` text NOT NULL,
  `puntuacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `resta`
--

INSERT INTO `resta` (`id_resta`, `nom_niño`, `edad`, `grado`, `sugerencia`, `puntuacion`) VALUES
(1, 'Javier ', '7', 'Tercero', 'Esta muy chÃ©vere la pagina.', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suma`
--

CREATE TABLE `suma` (
  `id_suma` int(11) NOT NULL,
  `nom_niño` varchar(45) NOT NULL,
  `edad` varchar(11) NOT NULL,
  `grado` varchar(11) NOT NULL,
  `sugerencia` text NOT NULL,
  `puntuacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `suma`
--

INSERT INTO `suma` (`id_suma`, `nom_niño`, `edad`, `grado`, `sugerencia`, `puntuacion`) VALUES
(1, 'Camila Perez', '5', 'Primero', 'Me gusta mucho la pagina', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `user` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `correo`, `telefono`, `user`, `pass`) VALUES
(1, 'Laura Camila Alvarez Gaitan', 'laura@gmail.com', '3012595538', 'laura', '202cb962ac59075b964b07152d234b70'),
(2, 'Karen Tatiana Romero Pineda', 'karen@hotmail.com', '3208791391', 'karen', '202cb962ac59075b964b07152d234b70');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`id_divi`);

--
-- Indices de la tabla `multiplicacion`
--
ALTER TABLE `multiplicacion`
  ADD PRIMARY KEY (`id_multi`);

--
-- Indices de la tabla `resta`
--
ALTER TABLE `resta`
  ADD PRIMARY KEY (`id_resta`);

--
-- Indices de la tabla `suma`
--
ALTER TABLE `suma`
  ADD PRIMARY KEY (`id_suma`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `division`
--
ALTER TABLE `division`
  MODIFY `id_divi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `multiplicacion`
--
ALTER TABLE `multiplicacion`
  MODIFY `id_multi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `resta`
--
ALTER TABLE `resta`
  MODIFY `id_resta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `suma`
--
ALTER TABLE `suma`
  MODIFY `id_suma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
