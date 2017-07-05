-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Servidor: wsa_mysql_1
-- Tiempo de generación: 05-07-2017 a las 17:35:43
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
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`id`, `name`, `slug`) VALUES
(1, 'Atención al Cliente', 'atencion-al-cliente'),
(2, 'Aduanas y Comercio Exterior', 'aduanas-y-comercio-exterior'),
(3, 'Ingeniería', 'ingenieria'),
(4, 'Legal', 'legal'),
(5, 'Mantenimiento / Limpieza', 'mantenimiento-limpieza'),
(6, 'Marketing / Publicidad / Comunicación', 'marketing-publicidad-comunicacion'),
(7, 'Producción / Operaciones', 'produccion-operaciones'),
(8, 'Proyectos', 'proyectos'),
(9, 'Recursos Humanos', 'recursos-humanos'),
(10, 'Oficios y Otros', 'oficios-y-otros'),
(11, 'Almacén / Logística / Transporte', 'almacen-logistica-transporte'),
(12, 'Administración, Contabilidad y Finanzas', 'administracion-contabilidad-y-finanzas'),
(13, 'Comercial / Ventas', 'comercial-ventas'),
(14, 'Call center / Telemarketing', 'call-center-telemarketing'),
(15, 'Educación', 'educacion'),
(16, 'Relaciones institucionales / públicas', 'relaciones-institucionales-publicas'),
(17, 'Diseño / Artes gráficas', 'diseno-artes-graficas'),
(18, 'Hotelería / Turismo', 'hoteleria-turismo'),
(19, 'Gastronomía', 'gastronomia'),
(20, 'Gerencia / Dirección', 'gerencia-direccion'),
(21, 'Tecnología, Sistemas y Telecomunicaciones', 'tecnologia-sistemas-y-telecomunicaciones'),
(22, 'Medicina / Salud', 'medicina-salud'),
(23, 'Seguridad', 'seguridad'),
(24, 'Construcción / Obra', 'construccion-obra'),
(25, 'Investigación y Calidad', 'investigacion-y-calidad'),
(26, 'Minería, Petróleo y Gas', 'mineria-petroleo-y-gas'),
(27, 'Secretarias y Recepción', 'secretarias-y-recepcion');

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
(2, 'Coca-Cola', 'valestore', 'http://cde.pre.4a.aptitus.com/logos/Company-3926-cf2d1e4c5fe920c8f79daf8cffbc8121_png_90x90_q80.png?v=201706121803'),
(3, 'PROSEGUR', 'prosegur', 'http://cde.2.aptitus.com/logos/Company-4349-01f27f8cf4d9771a59d98c5d397dd45d_jpg_90x90_q80.jpg'),
(4, 'Trans Solutions Systems', 'trans-solutions-systems', 'http://cde.pre.4a.aptitus.com/logos/Company-5557-6ecf47c9a58f56ba40e296e8aa460d7d_jpg_90x90_q80.jpg'),
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
(15, 'FASTCO', 'fastco', 'http://cde.2.aptitus.com/logos/Company-4389-7624eac513732f39e2bbcd1745ec4a67_png_90x90_q80.png'),
(16, 'ValeStore', 'valestore', 'http://cde.pre.4a.aptitus.com/logos/Company-7878-55c625a1506464ae1af37e4dd5e69302_jpg_90x90_q80.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favorite_companies`
--

CREATE TABLE `favorite_companies` (
  `id` int(11) NOT NULL,
  `postulant_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `location`
--

INSERT INTO `location` (`id`, `name`, `slug`) VALUES
(1, 'Cercado de Lima', 'cercado-de-lima'),
(2, 'San Martin de Porres', 'san-martin-de-porres'),
(3, 'Miraflores', 'miraflores'),
(4, 'San Isidro', 'san-isidro'),
(5, 'Santiago de Surco', 'santiago-de-surco'),
(6, 'Callao', 'callao'),
(7, 'Magdalena del mar', 'magdalena-del-mar'),
(8, 'Lince', 'lince'),
(9, 'San Borja', 'san-borja'),
(10, 'Ate', 'ate'),
(11, 'Surquillo', 'surquillo'),
(12, 'Chorrillos', 'chorrillos'),
(13, 'La Victoria', 'la-victoria'),
(14, 'Jesus Maria', 'jesus-maria'),
(15, 'San Juan de Lurigancho', 'san-juan-de-lurigancho'),
(16, 'La Molina', 'la-molina'),
(17, 'Villa el Salvador', 'villa-el-salvador'),
(18, 'Villa Maria del Triunfo', 'villa-maria-del-triunfo'),
(20, 'Breña', 'breña'),
(21, 'San Luis', 'san-luis'),
(22, 'Los Olivos', 'los-olivos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `terms`
--

CREATE TABLE `terms` (
  `id` int(11) NOT NULL,
  `keyword` varchar(250) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `terms`
--

INSERT INTO `terms` (`id`, `keyword`, `count`) VALUES
(1, 'compras', 745),
(2, 'recepcionista', 653),
(3, 'tottus', 555),
(4, 'asistente administrativo', 539),
(5, 'gerente', 517),
(6, 'bcp', 511),
(7, 'asistente', 503),
(8, 'ripley', 496),
(9, 'jefe', 463),
(10, 'latam', 449),
(11, 'logistica', 449),
(12, 'hse', 447),
(13, 'cajera', 445),
(24, 'secretaria', 430),
(25, 'chofer', 408),
(26, 'tesoreria', 405),
(27, 'interbank', 399),
(28, 'planeamiento', 398),
(29, 'importaciones', 379),
(30, 'cadista', 377),
(31, 'digitador', 375),
(32, 'practicante', 361),
(33, 'contabilidad', 360),
(34, 'coordinador', 345),
(35, 'ambiental', 333),
(36, 'planner', 330),
(37, 'comercio exterior', 326),
(38, 'supervisor', 324),
(41, 'almacen', 321),
(42, 'marketing', 320),
(43, 'exportaciones', 320),
(44, 'administrador', 318),
(45, 'cajero', 315),
(46, 'comunicaciones', 310),
(49, 'part time', 310),
(50, 'full time', 309),
(51, 'aeropuerto', 305),
(52, 'archivo', 302),
(53, 'recursos humanos', 302),
(54, 'seguridad', 301),
(55, 'atencion al cliente', 290),
(56, 'saga falabella', 285),
(57, 'adidas', 270),
(58, 'android', 265),
(59, 'developer', 260),
(60, 'ios', 250),
(61, 'backend', 250),
(62, 'qa', 250),
(63, 'qa engineer', 250),
(64, 'jefe de proyectos', 250),
(65, 'líder técnico', 250),
(66, 'gerente de marketing', 250),
(67, 'gerente de sistemas', 250),
(70, 'android developer', 250),
(71, 'ios develoeper', 250),
(72, 'backend developer', 250),
(73, 'frontend developer', 250),
(74, 'front-end developer', 250),
(76, 'conserje', 472),
(78, 'portero', 447),
(79, 'sig', 400),
(80, 'sst', 400),
(81, 'alicorp', 357),
(82, 'backus', 350),
(84, 'gloria', 400),
(85, 'arquitectura', 400),
(86, 'derecho', 400),
(87, 'comprador', 400),
(88, 'universidad', 400),
(89, 'makro', 400),
(90, 'madrugada', 350);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keyword` (`keyword`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT de la tabla `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `favorite_companies`
--
ALTER TABLE `favorite_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
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
