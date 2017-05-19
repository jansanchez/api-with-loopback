-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Servidor: wsa_mysql_1
-- Tiempo de generación: 19-05-2017 a las 20:30:50
-- Versión del servidor: 5.7.17
-- Versión de PHP: 7.0.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `wsa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `companies`
--

INSERT INTO `companies` (`id`, `name`, `slug`, `image`) VALUES
(1, 'MCDONALDS', 'mcdonalds', 'http://cde.2.aptitus.com/logos/Company-3003-aa316d9675df0639dd24ace6ef98dfda_JPG_90x90_q80.JPG'),
(2, 'ADECCO', 'adecco', 'http://cde.2.aptitus.com/logos/Company-7660-3a6244f435151fa7a2afbdaa541f0aee_png_90x90_q80.png'),
(3, 'PROSEGUR', 'prosegur', 'http://cde.2.aptitus.com/logos/Company-4349-01f27f8cf4d9771a59d98c5d397dd45d_jpg_90x90_q80.jpg'),
(4, 'MCM SERVICIOS TOTALES', 'mcm-servicios-totales', 'http://cde.2.aptitus.com/logos/Company-7751-de704425319339c8291a5a1bdb00d664_png_90x90_q80.png'),
(5, 'CORPORACIÓN INTERNACIONAL ', 'corporacion-internacional', 'http://cde.2.aptitus.com/logos/Company-9907-5f4cc0fe44bf9025245b36beeb557b96_png_90x90_q80.png'),
(6, 'BATA PERU', 'bata-peru', 'http://cde.2.aptitus.com/logos/Company-2407-4ea0b15abd13061f0dfb03c2d4951255_png_90x90_q80.png?v=201705111524'),
(7, 'WURTH PERU', 'wurth-peru', 'http://cde.2.aptitus.com/logos/Company-3778-2110fd7036e263b5345706eb969a6067_jpg_90x90_q80.jpg'),
(8, 'CONTACTO BPO', 'contacto-bpo', 'http://cde.2.aptitus.com/logos/Company-8537-f7b31e5ba3d9df3aeb412d45260acb26_jpg_90x90_q80.jpg'),
(9, 'CORPAE PERU ', 'corpae-peru', 'http://cde.2.aptitus.com/logos/Company-5511-b062bb36b47a50e2337f4ae8cef76474_jpg_90x90_q80.jpg'),
(10, 'CONTRANS', 'contrans', 'http://cde.2.aptitus.com/logos/Company-1415-bf90f649446db2da1f47feece0df4026_jpg_90x90_q80.jpg?v=201705111524'),
(11, 'BS GRUPO S.A.C.', 'bs-grupo-sac', 'http://cde.2.aptitus.com/logos/Company-6366-ab45c6431bb8415f812879273ef0d9fc_jpg_90x90_q80.jpg'),
(12, 'AUTOMOTORES GILDEMEISTER', 'automotores-gildemeister', 'http://cde.2.aptitus.com/logos/Company-4728-e7fe93acaef558a1174c56e5fdf93bc4_png_90x90_q80.png'),
(13, 'LATAM AIRLINES', 'latam-airlines', 'http://cde.2.aptitus.com/logos/Company-8949-6dfe6e5ddd602390a698d5cccf147114_jpg_90x90_q80.jpg?v=201705111524'),
(14, 'GRUPO EL COMERCIO', 'grupo-el-comercio', 'http://cde.2.aptitus.com/logos/Company-1440-1b20087040795880e8f4cd37ad9fbff2_jpg_90x90_q80.jpg?v=201705111524'),
(15, 'FASTCO', 'fastco', 'http://cde.2.aptitus.com/logos/Company-4389-7624eac513732f39e2bbcd1745ec4a67_png_90x90_q80.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favorite_companies`
--

CREATE TABLE `favorite_companies` (
  `id` int(11) NOT NULL,
  `postulant_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `favorite_companies`
--
ALTER TABLE `favorite_companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_company_id` (`company_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `favorite_companies`
--
ALTER TABLE `favorite_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `favorite_companies`
--
ALTER TABLE `favorite_companies`
  ADD CONSTRAINT `fk_company_id` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
