-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-03-2019 a las 19:03:36
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `refrikid`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `nombreCategoria` varchar(30) NOT NULL,
  `descripcion` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombreCategoria`, `descripcion`) VALUES
(1, 'hortalizas/vegetales', 'conjunto de plantas cultivadas'),
(2, 'legumbres', 'Las legumbres constituyen un grupo de alimentos muy homogéneo, desarrollados a partir del gineceo, de un solo carpelo y que se abre tanto por la sutura ventral como por el nervio dorsal, en dos valvas y con las semillas en un'),
(3, 'frutas', ' frutos comestibles obtenidos de plantas cultivadas o silvestres que, por su sabor generalmente dulce-acidulado, por su aroma intenso y agradable'),
(4, 'carnes', 'tejido animal, principalmente muscular, que se consume como alimento.'),
(5, 'lacteos', 'incluye alimentos como la leche y sus derivados procesados.'),
(6, 'pescados', ' los peces que se usan como alimento.'),
(7, 'cereal', 'son plantas de la familia de las poáceas cultivadas por su grano (fruto de pared delgada adherida a la semilla, característico de la familia).'),
(8, 'embutido', 'pieza, generalmente de carne picada y condimentada con hierbas aromáticas y diferentes especias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crecimientoninos`
--

CREATE TABLE `crecimientoninos` (
  `idcrecimientoNiños` int(11) NOT NULL,
  `peso` double NOT NULL,
  `talla` double NOT NULL,
  `fecha` date NOT NULL,
  `nino` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `crecimientoninos`
--

INSERT INTO `crecimientoninos` (`idcrecimientoNiños`, `peso`, `talla`, `fecha`, `nino`) VALUES
(34, 12, 25, '2016-05-29', 34);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estandarcrecimiento`
--

CREATE TABLE `estandarcrecimiento` (
  `idestandarCrecimiento` int(11) NOT NULL,
  `edad` int(11) NOT NULL,
  `pesoMin` double NOT NULL,
  `pesoMax` double NOT NULL,
  `tallaMin` double NOT NULL,
  `tallaMax` double NOT NULL,
  `idgenero` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `idgenero` int(11) NOT NULL,
  `genero` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`idgenero`, `genero`) VALUES
(1, 'Masculino'),
(2, 'Femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `idmenu` int(11) NOT NULL,
  `fecha` varchar(25) DEFAULT NULL,
  `idproducto` int(11) NOT NULL,
  `nummenu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`idmenu`, `fecha`, `idproducto`, `nummenu`) VALUES
(1, '2019-03-20', 1, 1),
(2, '2019-03-20', 22, 1),
(3, '2019-03-20', 26, 1),
(4, '2019-03-20', 51, 1),
(5, '2019-03-20', 78, 1),
(6, '2019-03-20', 98, 1),
(7, '2019-03-20', 110, 1),
(8, '2019-03-20', 1, 2),
(9, '2019-03-20', 23, 2),
(10, '2019-03-20', 26, 2),
(11, '2019-03-20', 52, 2),
(12, '2019-03-20', 80, 2),
(13, '2019-03-20', 99, 2),
(14, '2019-03-20', 112, 2),
(15, '2019-03-20', 5, 3),
(16, '2019-03-20', 22, 3),
(17, '2019-03-20', 31, 3),
(18, '2019-03-20', 50, 3),
(19, '2019-03-20', 79, 3),
(20, '2019-03-20', 99, 3),
(21, '2019-03-20', 112, 3),
(22, '2019-03-20', 15, 4),
(23, '2019-03-20', 39, 4),
(24, '2019-03-20', 73, 4),
(25, '2019-03-20', 96, 4),
(26, '2019-03-20', 102, 4),
(27, '2019-03-20', 113, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ninos`
--

CREATE TABLE `ninos` (
  `idninos` int(11) NOT NULL,
  `primerNombre` varchar(30) NOT NULL,
  `segundoNombre` varchar(30) NOT NULL,
  `primerApellido` varchar(30) NOT NULL,
  `segundoApellido` varchar(30) NOT NULL,
  `tipoDoc` varchar(20) NOT NULL,
  `numeroDoc` varchar(20) NOT NULL,
  `genero` int(20) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `rh` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ninos`
--

INSERT INTO `ninos` (`idninos`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `tipoDoc`, `numeroDoc`, `genero`, `fechaNacimiento`, `rh`) VALUES
(34, 'Andres', 'Felipe', 'Carabali', 'Jimenez', 'Tarjeta de Identidad', '12314', 1, '2016-05-29', 'a+a+'),
(35, 'pedrito', 'sarez', 'perez', 'novoa', 'Registro Civil', '4645655', 1, '2015-03-20', 'O-');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

CREATE TABLE `novedades` (
  `idnovedades` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `padres`
--

CREATE TABLE `padres` (
  `idpadres` int(11) NOT NULL,
  `primerNombre` varchar(30) NOT NULL,
  `segundoNombre` varchar(30) NOT NULL,
  `primerApellido` varchar(30) NOT NULL,
  `segundoApellido` varchar(30) NOT NULL,
  `tipoDoc` varchar(50) NOT NULL,
  `numeroDoc` varchar(30) NOT NULL,
  `telefono` int(10) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `idninos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `padres`
--

INSERT INTO `padres` (`idpadres`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `tipoDoc`, `numeroDoc`, `telefono`, `direccion`, `idninos`) VALUES
(27, 'Pedro', 'Alfonso', 'Ramirez', 'felino', 'CÃ©dula de Ciudadania', '1001563', 4402355, 'Diagonal68B10714', 34),
(28, 'juan', 'pedro', 'perez', 'kljlk', 'CÃ©dula de Ciudadania', '123456', -131567654, 'fhgg252413.', 35);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` int(11) NOT NULL,
  `nombreProducto` varchar(30) NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `Calorias` double NOT NULL,
  `Hidratos` double NOT NULL,
  `Grasas` double NOT NULL,
  `Proteinas` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `nombreProducto`, `idcategoria`, `Calorias`, `Hidratos`, `Grasas`, `Proteinas`) VALUES
(1, 'ACELGAS ', 1, 13, 1, 0, 2),
(2, 'BERENJENAS', 1, 14, 3, 0, 1),
(3, 'BRÉCOL', 1, 23, 2, 0, 3),
(4, 'CALABACÍN', 1, 16, 4, 0, 1),
(5, 'CALABAZA', 1, 15, 3, 0, 1),
(6, 'COL', 1, 20, 4, 0, 2),
(7, 'COLES BRUSELAS', 1, 26, 3, 0, 4),
(8, 'COLIFLOR', 1, 13, 2, 0, 2),
(9, 'ESPÁRRAGOS COCIDOS', 1, 18, 1, 0, 3),
(10, 'ESPINACAS COCIDAS', 1, 30, 1, 0, 5),
(11, 'LECHUGA', 1, 12, 1, 0, 1),
(12, 'PAPAS', 1, 80, 20, 0, 1),
(13, 'PAPAS CRUDAS', 1, 87, 21, 0, 1),
(14, 'PAPAS FRITAS', 1, 253, 37, 11, 4),
(15, 'PATO', 1, 326, 0, 29, 16),
(16, 'PEPINO', 1, 10, 2, 0, 1),
(17, 'REMOLACHA COCIDA', 1, 44, 10, 0, 2),
(18, 'REPOLLO', 1, 29, 3, 0, 3),
(19, 'TOMATE', 1, 14, 3, 0, 0),
(20, 'ZANAHORIA', 1, 42, 9.7, 1, 0.2),
(21, 'GARBANZOS', 2, 314, 49, 3, 20),
(22, 'LENTEJAS', 2, 304, 53, 1, 24),
(23, 'FRIJOLES', 2, 292, 35, 0.8, 23),
(24, 'ARVEJAS SECAS', 2, 340, 60, 24, 1),
(25, 'AGUACATE', 3, 233, 2, 22, 4),
(26, 'CEREZAS', 3, 47, 2, 0, 0),
(27, 'CHIRIMOYA', 3, 178, 0, 11, 19),
(28, 'CIRUELA', 3, 47, 11, 0.2, 0.6),
(29, 'COCO', 3, 296, 13, 2.7, 3.5),
(30, 'FRAMBUESAS', 3, 26, 6, 0, 1),
(31, 'FRESAS', 3, 26, 6, 0, 1),
(32, 'KIWI', 3, 52, 11, 1, 1),
(33, 'LIMÓN', 3, 15, 3, 0, 1),
(34, 'LIMONADA ENVASADA', 3, 21, 6, 0, 0),
(35, 'MANDARINAS', 3, 34, 8, 0, 1),
(36, 'MANZANA', 3, 46, 12, 0, 0),
(37, 'MELOCOTÓN', 3, 37, 9, 0, 1),
(38, 'DURAZNO', 3, 57, 10, 0, 1),
(39, 'BANANO', 3, 110, 27, 0, 1),
(40, 'MELÓN', 3, 24, 5, 0, 1),
(41, 'PERAS', 3, 41, 11, 0, 0),
(42, 'PIÑA', 3, 46, 12, 0, 0),
(43, 'PLÁTANO', 3, 79, 19, 0, 1),
(44, 'SANDIA O PATILLA ', 3, 37, 8, 0, 1),
(45, 'UVAS', 3, 61, 16, 0, 0),
(46, 'GRANADILLA', 3, 97, 0.7, 2.2, 23),
(47, 'NARANJA', 3, 42, 10.5, 0.2, 0.8),
(48, 'CARNE CABRITO ', 4, 161, 0, 8, 20),
(49, 'CARNE CERDO, GRASA', 4, 329, 0, 30, 16),
(50, 'CARNE CERDO, MAGRA', 4, 147, 0, 7, 21),
(51, 'CARNE CORDERO, CHULETA', 4, 386, 0, 36, 15),
(52, 'CARNE CORDERO, MAGRA', 4, 122, 0, 3, 20),
(53, 'CARNE CORDERO, PALETILLA', 4, 314, 0, 28, 16),
(54, 'CARNE CORDERO, PIERNA', 4, 240, 0, 19, 18),
(55, 'CARNE OVEJA', 4, 235, 0, 17, 18),
(56, 'CARNE TERNERA, MAGRA', 4, 109, 0, 3, 21),
(57, 'CARNE VACA, CHULETA', 4, 290, 0, 25, 16),
(58, 'CARNE VACA, FILETE', 4, 197, 0, 14, 19),
(59, 'CARNE VACA, GUISAR', 4, 176, 0, 11, 20),
(60, 'CARNE VACA, MAGRA', 4, 123, 0, 5, 20),
(61, 'CARNE VACA, SOLOMILLO', 4, 272, 0, 23, 17),
(62, 'CORAZÓN CORDERO', 4, 119, 0, 6, 17),
(63, 'CORAZÓN VACUNO', 4, 108, 0, 4, 19),
(64, 'CORDERO CARNE, MAGRA', 4, 122, 0, 3, 20),
(65, 'CORDERO PALETILLA', 4, 314, 0, 28, 16),
(66, 'CORDERO PIERNA', 4, 240, 0, 19, 18),
(67, 'FILETE VACA', 4, 197, 0, 14, 19),
(68, 'HÍGADO CERDO', 4, 154, 2, 7, 21),
(69, 'HÍGADO POLLO', 4, 135, 1, 6, 19),
(70, 'HÍGADO TERNERA', 4, 153, 2, 7, 20),
(71, 'PAVO', 4, 107, 0, 2, 22),
(72, 'POLLO', 4, 121, 0, 4, 20),
(73, 'POLLO, FRITO KENTUCKY O BROAST', 4, 155, 5, 9, 13),
(74, 'TOCINO', 4, 427, 0, 41, 14),
(75, 'MENUDOS DE POLLO O MENUDENCIA', 4, 103, 0.1, 3.1, 17.5),
(76, 'BATIDO CHOCOLATE', 5, 366, 77, 6, 6),
(77, 'CREMA CHAMPIÑÓN', 5, 62, 5, 4, 1),
(78, 'CREMA LECHE, CHANTILLY', 5, 331, 10, 31, 2),
(79, 'CREMA LECHE, PASTERIZADA', 5, 316, 2, 33, 2),
(80, 'CUAJADA', 5, 90, 6, 5, 5),
(81, 'HELADO', 5, 209, 21, 12, 4),
(82, 'HELADO FRUTA', 5, 140, 29, 2, 2),
(83, 'LECHE ACHOCOLATADA', 5, 62, 10, 11, 3),
(84, 'LECHE DESCREMADA EN POLVO', 5, 36, 5.1, 0.1, 3.5),
(85, 'LECHE ENTERA', 5, 79, 10, 3, 3),
(86, 'YOGURT DESCREMADO CON FRUTAS', 5, 48, 9, 0.03, 2.8),
(87, 'YOGURT CON CEREALES', 5, 48, 9, 0.05, 3),
(88, 'QUESO CREMA', 5, 245, 3.7, 22, 8.2),
(89, 'QUESO CREMOSO', 5, 305, 1.3, 25, 18.7),
(90, 'QUESO PORCIONES', 5, 283, 1, 23, 18),
(91, 'QUESO PARMESANO', 5, 408, 0, 30, 35),
(92, 'YOGUR FRUTAS', 5, 102, 19, 2, 4),
(93, 'YOGUR LIQUIDO', 5, 78, 11, 2, 3),
(94, 'YOGUR NATURAL', 5, 75, 6, 4, 5),
(95, 'YOGUR SABORES', 5, 88, 14, 2, 4),
(96, 'CHOCOLATE CON LECHE', 5, 542, 54, 33.5, 6),
(97, 'ARENQUE AHUMADO', 6, 205, 0, 11, 26),
(98, 'ATÚN CONSERVA', 6, 289, 0, 22, 23),
(99, 'BACALAO FRESCO', 6, 76, 0, 1, 17),
(100, 'BACALAO SALZÓN O SALADO', 6, 138, 0, 1, 32),
(101, 'CAMARONES COCIDOS', 6, 117, 0, 2, 24),
(102, 'SALMÓN', 6, 182, 0, 12, 18),
(103, 'SARDINAS CON TOMATE, LATA', 6, 177, 0, 12, 18),
(104, 'PEZ- BOCACHICO', 6, 100, 0, 3, 22),
(105, 'PESCADO - CACHAMA', 6, 120, 0, 7, 19),
(106, 'PESCADO MOJARRA', 6, 431, 0, 0, 0),
(107, 'PESCADO BAGRE ', 6, 50, 4, 3, 1),
(108, 'PESCADO SIERRA', 6, 200, 0, 0, 0),
(109, 'ARROZ ', 7, 357, 77, 2, 7),
(110, 'BISCOTES TRIGO O PAN INTEGRAL', 7, 366, 73, 4, 9),
(111, 'CACAHUETES TOSTADOS O MANI', 7, 570, 9, 49, 24),
(112, 'CEREALES CORNFLAKES', 7, 368, 85, 2, 9),
(113, 'CROISSANT', 7, 47, 6, 2, 40),
(114, 'GALLETAS MANTEQUILLA', 7, 435, 75, 11, 8),
(115, 'GALLETAS MEDIA', 7, 436, 74, 14, 7),
(116, 'GALLETAS SALADAS', 7, 448, 76, 12, 9),
(117, 'HARINA MAIZ', 7, 354, 92, 1, 0),
(118, 'PASTA DE MACARRONES', 7, 370, 79, 2, 14),
(119, 'torta MAGDALENA', 7, 397, 42, 23, 6),
(120, 'PALOMITAS MAIZ', 7, 54, 11, 1, 2),
(121, 'PAN BLANCO', 7, 233, 50, 2, 8),
(122, 'PAN CON CHOCOLATE', 7, 419, 51, 21, 7),
(123, 'PAN INTEGRAL', 7, 216, 42, 3, 9),
(124, 'PAN TOSTADO, BLANCO', 7, 297, 65, 2, 10),
(125, 'PASTA', 7, 373, 82, 2, 13),
(126, 'TARTA MANZANA CASERA', 7, 282, 43, 12, 2),
(127, 'HUEVO', 7, 147, 1, 11, 12),
(128, 'HUEVO DURO, COCINADO', 7, 153, 1, 11, 12),
(129, 'HUEVO YEMA, LIQUIDA, FRITO', 7, 377, 0, 32, 16),
(130, 'AVENA', 7, 410, 71.5, 8, 13),
(131, 'FIDEOS', 7, 369, 75.2, 1.2, 12.5),
(132, 'FIDEOS SOPERO', 7, 343, 72.2, 1.1, 11),
(133, 'FIDEOS DE GLUTEN', 7, 363, 54, 1.6, 33),
(134, 'PAN FRÁNCES', 7, 269, 57.4, 0.2, 9.3),
(135, 'PAN TAJADO', 7, 256, 52.4, 1.7, 7.6),
(136, 'CHURROS', 7, 348, 40, 20, 4.6),
(137, 'MILHOJAS', 7, 630, 45, 46.2, 8.6),
(138, 'GALLETAS DULCES', 7, 457, 73.4, 15.1, 7),
(139, 'MANTECA', 7, 744, 0, 82, 1.5),
(140, 'BUTIFARRA', 8, 243, 0, 20, 15),
(141, 'HAMBURGUESAS VACUNO', 8, 265, 5, 20, 15),
(142, 'PERRO-CALIENTE CON MOSTAZA', 8, 308, 33, 14, 11),
(143, 'PIZZA QUESO, TOMATE', 8, 234, 25, 12, 9),
(144, 'SALCHICHAS CERDO', 8, 367, 10, 32, 11),
(145, 'SALCHICHAS ENLATADAS', 8, 243, 0, 20, 13),
(146, 'SALCHICHÓN', 8, 454, 2, 38, 26),
(147, 'CHORIZO', 8, 373, 2, 31, 12.5),
(148, 'JÁMON COCIDO', 8, 126, 3, 4, 20),
(149, 'JÁMON CRUDO', 8, 296, 0, 25.8, 20.6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programacion`
--

CREATE TABLE `programacion` (
  `idprogramacion` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombreUsuario` varchar(30) NOT NULL,
  `clave` varchar(40) NOT NULL,
  `rol` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombreUsuario`, `clave`, `rol`) VALUES
(26, 'nova413@hotmail.com', '202cb962ac59075b964b07152d234b70', 2),
(39, 'Admin', '81dc9bdb52d04dc20036dbd8313ed055', 1),
(41, 'juang@yahoo.com', 'd41d8cd98f00b204e9800998ecf8427e', 2),
(42, 'cepedam41@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariorol`
--

CREATE TABLE `usuariorol` (
  `idusuariorol` int(11) NOT NULL,
  `tiporol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuariorol`
--

INSERT INTO `usuariorol` (`idusuariorol`, `tiporol`) VALUES
(1, 'Administrador'),
(2, 'Usuario');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `crecimientoninos`
--
ALTER TABLE `crecimientoninos`
  ADD PRIMARY KEY (`idcrecimientoNiños`),
  ADD KEY `idninos` (`nino`);

--
-- Indices de la tabla `estandarcrecimiento`
--
ALTER TABLE `estandarcrecimiento`
  ADD PRIMARY KEY (`idestandarCrecimiento`),
  ADD KEY `idgenero` (`idgenero`),
  ADD KEY `idgenero_2` (`idgenero`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`idgenero`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`idmenu`),
  ADD KEY `idproducto` (`idproducto`);

--
-- Indices de la tabla `ninos`
--
ALTER TABLE `ninos`
  ADD PRIMARY KEY (`idninos`),
  ADD KEY `genero` (`genero`),
  ADD KEY `genero_2` (`genero`);

--
-- Indices de la tabla `novedades`
--
ALTER TABLE `novedades`
  ADD PRIMARY KEY (`idnovedades`);

--
-- Indices de la tabla `padres`
--
ALTER TABLE `padres`
  ADD PRIMARY KEY (`idpadres`),
  ADD KEY `idninos` (`idninos`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `idcategoria` (`idcategoria`);

--
-- Indices de la tabla `programacion`
--
ALTER TABLE `programacion`
  ADD PRIMARY KEY (`idprogramacion`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD KEY `rol` (`rol`);

--
-- Indices de la tabla `usuariorol`
--
ALTER TABLE `usuariorol`
  ADD PRIMARY KEY (`idusuariorol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `crecimientoninos`
--
ALTER TABLE `crecimientoninos`
  MODIFY `idcrecimientoNiños` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `estandarcrecimiento`
--
ALTER TABLE `estandarcrecimiento`
  MODIFY `idestandarCrecimiento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `idgenero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `idmenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `ninos`
--
ALTER TABLE `ninos`
  MODIFY `idninos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `novedades`
--
ALTER TABLE `novedades`
  MODIFY `idnovedades` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `padres`
--
ALTER TABLE `padres`
  MODIFY `idpadres` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT de la tabla `programacion`
--
ALTER TABLE `programacion`
  MODIFY `idprogramacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `usuariorol`
--
ALTER TABLE `usuariorol`
  MODIFY `idusuariorol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `crecimientoninos`
--
ALTER TABLE `crecimientoninos`
  ADD CONSTRAINT `crecimientoninos_ibfk_1` FOREIGN KEY (`nino`) REFERENCES `ninos` (`idninos`);

--
-- Filtros para la tabla `estandarcrecimiento`
--
ALTER TABLE `estandarcrecimiento`
  ADD CONSTRAINT `estandarcrecimiento_ibfk_1` FOREIGN KEY (`idgenero`) REFERENCES `genero` (`idgenero`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ninos`
--
ALTER TABLE `ninos`
  ADD CONSTRAINT `ninos_ibfk_1` FOREIGN KEY (`genero`) REFERENCES `genero` (`idgenero`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `padres`
--
ALTER TABLE `padres`
  ADD CONSTRAINT `padres_ibfk_2` FOREIGN KEY (`idninos`) REFERENCES `ninos` (`idninos`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`rol`) REFERENCES `usuariorol` (`idusuariorol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
