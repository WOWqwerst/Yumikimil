-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 16-05-2020 a las 20:44:43
-- Versión del servidor: 8.0.20
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `yumkimil`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acceso`
--

CREATE TABLE `acceso` (
  `idAcceso` int NOT NULL,
  `alumno` varchar(5) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `control` varchar(5) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `paterno` varchar(45) NOT NULL,
  `materno` varchar(45) DEFAULT '-',
  `passwd` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`control`, `nombre`, `paterno`, `materno`, `passwd`) VALUES
('12611', 'GUILLERMO', 'RIVERA', 'NEGRETE', '12611'),
('13143', 'ULISES', 'GARCIA', 'TOLEDANO', '13143'),
('17390', 'CRISTIAN EDUARDO', 'SANTAMARIA', 'TOVAR', '17390'),
('19950', 'BRIAN ALAN', 'YESCAS', 'GARCIA', '19950'),
('20412', 'CARLOS HUMBERTO', 'ESPINOZA', 'SALDIVAR', '20412'),
('20416', 'CARLOS GUSTAVO', 'PAREDES', 'ARRIETA', '20416'),
('20459', 'JUAN CARLOS', 'LOPEZ', 'ESTRADA', '20459'),
('20461', 'JOSUE', 'BARBERENA', 'PROCEL', '20461'),
('20469', 'SANDRA ANGELICA ', 'FLORES', 'SOROA', '20469'),
('20483', 'LUIS DANIEL', 'AGUIRRE', 'CUEVAS', '20483'),
('20540', 'GERARDO', 'BARTOLO', 'CRUZ', ''),
('20548', 'ALFREDO ISMAEL', 'HERNANDEZ', 'LOPEZ', '20548'),
('20565', 'JESUS EDEN', 'REYES', 'MENDEZ', '20565'),
('20581', 'BRAULIO RAUL', 'ROMERO', 'ROMERO', '20581'),
('20602', 'LUIS ARTURO', 'DE LA PEÑA ALVAREZ', 'TOSTADO', '20602'),
('20626', 'GONZALO', 'GOMEZ', 'GUIZASOLA', '20626'),
('20632', 'DAVID ELISEO', 'LAZCANO', 'MARTINEZ', '20632'),
('20636', 'ELIAS ALEJANDRO', 'FLORES', 'RODRIGUEZ', '20636'),
('20638', 'ALVARO EDUARDO', 'SALINAS', 'LOPEZ', '20638'),
('20642', 'JOCELYNE WALESKA', 'GONZALEZ', 'ESCOBAR', '20642'),
('20649', 'CHRISTIAN ROSXAV', 'ROMERO', 'ESTRADA', '20649'),
('20661', 'CINTYA AILED', 'VIVANCO', 'BORGONIO', '20661'),
('20666', 'FERNANDO ADRIAN', 'GONZALEZ', 'ORDAZ', '20666'),
('20678', 'ANGEL ARTURO', 'GARCIA', 'MALDONADO', '20678'),
('20683', 'MONTSERRAT', 'MAGES', 'TUDON', '20683'),
('20690', 'RODRIGO', 'ESQUIVEL', 'GARFIAS', '20690'),
('20695', 'EDGAR', 'LOPEZ', 'DE LA O', '20695'),
('20701', 'FRANCISCO JAVIER', 'GARCIA', 'HERNANDEZ', '20701'),
('20706', 'CRISTHIAN OMAR', 'LARIOS', 'MATIAS', '20706'),
('20717', 'OSCAR', 'RODRIGUEZ', 'MIRANDA', '20717'),
('20726', 'CHRISTOPHER GIOVANNI', 'NERI', 'ANAYA', '20726'),
('20732', 'GIOVANNI OSMAR', 'MARQUEZ', 'PEREZ', '20732'),
('20761', 'FRANCISCO JOSE', 'AGUILAR', 'ZARAGOZA', '20761'),
('20766', 'ABRAHAM', 'MORENO', 'CRUZ', '20766'),
('20775', 'BRANDON URIEL', 'FLORES', 'RAMIREZ', '20775'),
('20779', 'GUILLERMO', 'ALEJANDRE', 'CALDERON', '20779'),
('20780', 'EDUARDO FABRICIO', 'PERALTA', 'BERISTAIN', '20780'),
('20781', 'EDUARDO MARIÑO', 'MARTINEZ', 'VAZQUEZ', '20781'),
('20784', 'DIEGO AUGUSTO', 'HUERTA', 'SANTIAGO', '20784'),
('20817', 'FERNANDO', 'MARTINEZ', 'CERVANTES', '20817'),
('20823', 'RICARDO', 'ARROYO', 'IBARRA', '20823'),
('20841', 'ALAN', 'VAZQUEZ', 'GALINDO', '20841'),
('20845', 'ANGELICA', 'ROMERO', 'MALDONADO', '20845'),
('20861', 'JORGE', 'RIVERA', 'MONTALVO', '20861'),
('20891', 'KARLA YESSENIA', 'GARCIA', 'BAUTISTA', '20891'),
('20901', 'DIANA', 'SEGOVIA', 'DIAZ', '20901'),
('20998', 'OMAR ALEXIS', 'NIETO', 'LOVERA', '20998'),
('21069', 'LUIS ENRIQUE', 'LOPEZ', 'SALVADOR', '21069'),
('21093', 'JESUS EDUARDO', 'JUAREZ', 'FUENTES', '21093'),
('21111', 'KELLY DAYANE', 'HERNANDEZ', 'SOLANO', '21111'),
('21114', 'OSCAR EDUARDO', 'VERA', 'DORANTES', '21114'),
('21129', 'DAVID MISAEL', 'MIJARES', 'FLORES', '21129'),
('21133', 'GEOVANNI FARID', 'CASTILLO', 'RODRIGUEZ', '21133'),
('21137', 'YOSELIN BERENICE', 'QUIROZ', 'NICOLAS', '21137'),
('21157', 'JESUS ALEJANDRO', 'BECERRA', 'ESQUIVEL', '21157'),
('21200', 'GAEL ARTURO', 'SANCHEZ', 'ZERTUCHE', '21200'),
('21241', 'MARLA YARET', 'JUAREZ', 'CASTRO', '21241'),
('21254', 'RICARDO', 'MARTINEZ', 'SANCHEZ', '21254'),
('21258', 'MARIA DE LA LUZ', 'BARRIGA', 'DIAZ', '21258'),
('21273', 'DONOVAN JORGE', 'CASTILLO', 'MORONES', '21273'),
('21299', 'RUBEN', 'SOSA', 'BEATRIZ', '21299'),
('21349', 'BRANDON', 'CRUZ', 'SEGUNDO', '21349'),
('21547', 'CESAR FERNANDO', 'PEREZ', 'MARQUEZ', '21547'),
('21565', 'EDGAR YAEL', 'CARDENAS', 'MARTINEZ', '21565'),
('21832', 'JONATHAN HAZEL', 'ZAMORA', 'MELO', '21832'),
('21934', 'NAHUM', 'GOMEZ', 'ORTIZ', '21934'),
('22034', 'YAIR', 'ALVAREZ', 'SANCHEZ', '22034'),
('22321', 'ESTEBAN', 'CORTES', 'VARGAS', '22321'),
('22363', 'MAURICIO', 'MARTINEZ', 'CORTES', '22363'),
('22527', 'ALEJANDRO MANUEL', 'MONDRAGON', 'CASTRO', '22527'),
('22531', 'SERGIO ESTEBAN', 'LEDESMA', 'JALPA', '22531'),
('22575', 'JOSE ANTONIO', 'FLORES', 'GARCIA', '22575'),
('22620', 'RAUL EMMANUEL', 'ANGULO', 'BELLO', '22620'),
('22622', 'GERARDO', 'PIMENTEL', 'IBARRA', '22622'),
('22625', 'URIAS', 'BARRIENTOS', 'PEDRAZA', '22625'),
('22640', 'CLARA YVONNE', 'PACHECO', 'ROMERO', '22640'),
('22761', 'JUAN ESTEBAN', 'HUERTA', 'ASTIVIA', '22761'),
('22787', 'FERNANDO', 'MENDEZ', 'LAMADRID', '22787'),
('22800', 'MISHELL EMMANUEL', 'ANGUIANO', 'RIVAS', '22800'),
('22804', 'KARLA ISABEL', 'RAMIREZ', 'ACEVEDO', '22804'),
('22822', 'ANGEL MARTIN', 'RENDON', 'REYES', '22822'),
('22823', 'ANDREA FERNANDA', 'ORTEGA', 'CORDERO', '22823'),
('22824', 'FERNANDO GUADALUPE', 'PAVON', 'BECERRIL', '22824'),
('22877', 'NAOMI', 'ZARATE', 'AVILA', '22877'),
('22896', 'MIGUEL ANGEL', 'ZARATE', 'PATLAN', '22896'),
('22914', 'VIRIDIANA', 'GRANJA', 'CASTILLO', '22914'),
('22917', 'HECTOR DANIEL', 'HERNANDEZ', 'CARRANZA', '22917'),
('22920', 'VALERIA MARIEL', 'RICO', 'JIMENEZ', '22920'),
('22933', 'JAIME URIEL', 'GUZMAN', 'OLVERA', '22933'),
('22941', 'EDUARDO', 'MORENO', 'LOPEZ', '22941'),
('22942', 'JAVIER', 'ESPINDOLA', 'VALENZUELA', '22942'),
('22950', 'FANNY LIZET', 'OJEDA', 'BARRERA', '22950'),
('22982', 'AXEL JARED', 'MONTALVO', 'MARTINEZ', '22982'),
('22983', 'CHRISTOPHER ARMANDO', 'MEDINA', 'LEON', '22983'),
('22993', 'JOSE DE JESUS', 'AYALA', 'AYALA', '22993'),
('22995', 'EDITH BERENICE', 'JUAREZ', 'APOLINAR', '22995'),
('23026', 'ALEJANDRO', 'GUERRERO', 'FLORES', '23026'),
('23060', 'GUILLERMO JAVIER', 'LEON', 'CASTRO', '23060'),
('23066', 'JESUS ALEJANDRO', 'DUFFLART', 'HERNANDEZ', '23066'),
('23086', 'LUIS FERNANDO', 'NAVARRETE', 'NAVA', '23086'),
('23100', 'NATALIA', 'LEZAMA', 'CABRERA', '23100'),
('23141', 'LUIS ANTONIO', 'SANCHEZ', 'MIRANDA', '23141'),
('23180', 'VALERIA', 'ACOSTA', 'AMARO', '23180'),
('23184', 'ELISEO', 'RODRIGUEZ', 'GARCIA', '23184'),
('23185', 'ADRIAN', 'MANJARREZ', 'ESCAMILLA', '23185'),
('23194', 'MARCO ANTONIO', 'ESCAMILLA', 'BALDERAS', '23194'),
('23199', 'ALONDRA XIOMARA', 'ROCHA', 'AGUILERA', '23199'),
('23237', 'NELLY JAZMIN', 'SANCHEZ', 'CASTILLO', '23237'),
('23255', 'FERNANDO', 'PEÑA', 'ELIZONDO', '23255'),
('23264', 'DIANA LUCERO', 'MORALES', 'MEDINA', '23264'),
('23270', 'FERNANDO', 'PEREZ', 'HERNANDEZ', '23270'),
('23310', 'PAOLA', 'TOXQUI', 'GARCIA', '23310'),
('23358', 'RODRIGO ALEJANDRO', 'FLORES', 'AMAYO', '23358'),
('23361', 'FRIDA SOFIA', 'MEDINA', 'SANCHEZ', '23361'),
('23367', 'NATALIA', 'RAMIREZ', 'ZARZA', '23367'),
('23374', 'LUIS ANGEL', 'MARTINEZ', 'COLIN', '23374'),
('23393', 'DANIEL', 'SANCHEZ', 'PEREZ', '23393'),
('23394', 'MARIANA', 'GASTALDI', 'CRUZ', '23394'),
('23396', 'ARAGON RAFAEL', 'BANQUELLS', 'GONZALEZ', '23396'),
('23398', 'SAMANTHA', 'JIMENEZ', 'SORIA', '23398'),
('23421', 'ALINE', 'CRUZ', 'APARICIO', '23421'),
('23423', 'RODRIGO IMANOL', 'GARCIA', 'BARRAGAN', '23423'),
('23426', 'ANALY', 'GONZALEZ', 'GONZALEZ', '23426'),
('23455', 'JUAN PABLO', 'SALAZAR', 'QUINTANA', '23455'),
('23460', 'AXEL JESUS', 'ESPINOSA', 'ROMAN', '23460'),
('23462', 'JOSE GUADALUPE', 'LOPEZ', 'DAZA', '23462'),
('23468', 'ABRAHAM', 'GRACIA', 'MIRANDA', '23468'),
('23471', 'ABRAHAM ALBERTO', 'DE LA ROSA', 'AGUAYO', '23471'),
('23492', 'JOSMAR JOSUE', 'MARTINEZ', 'RIVERA', '23492'),
('23502', 'DIANA CAROLINA', 'GONZALEZ', 'GONZALEZ', '23502'),
('23514', 'GUILLERMO', 'PEREZ', 'LOZADA', '23514'),
('23519', 'KARINA MICHELLE', 'ROBLES', 'MALDONADO', '23519'),
('23540', 'RICARDO', 'ANGEL', 'ROBLES', '23540'),
('23544', 'LUIS EDUARDO', 'HERNANDEZ', 'OJEDA', '23544'),
('23546', 'PABLO', 'ANTONIO', 'GUTIERREZ', '23546'),
('23555', 'GALA PAOLA', 'LARA', 'AHUMADA', '23555'),
('23556', 'SANDRA EDITH', 'GONZALEZ', 'CALDERON', '23556'),
('23602', 'YAZMIN VANESSA', 'ARROYO', 'LEON', '23602'),
('23615', 'PEDRO ANTONIO', 'ROMERO', 'ORTIZ', '23615'),
('23630', 'MIGUEL SAID', 'URIBE', 'ESCAMILLA', '23630'),
('23640', 'CESAR URIEL', '23640', 'AGUILAR', '23640'),
('23755', 'ARELI NOEMI', 'MARIN', 'OCHOA', '23755'),
('23758', 'CARLA XIMENA', 'TEJEDA', 'OSORIO', '23758'),
('23774', 'YAEL', 'ZENDEJAS', 'ESQUIVIAS', ''),
('23777', 'LORENA', 'RODRIGUEZ', 'MENDOZA', '23777'),
('23781', 'PAOLA', 'YAÑEZ', 'COLIN', '23781'),
('23788', 'FERNANDO IVAN', 'VAZQUEZ', 'AYALA', '23788'),
('23794', 'ROGELIO', 'GONZALEZ', 'CABRERA', '23794'),
('23841', 'ALEJANDRO', 'CHAVEZ', 'DELGADILLO', '23841'),
('23850', 'HUGO IVAN', 'GUTIERREZ', 'PANIAGUA', '23850'),
('23855', 'RODOLFO EDUARDO', 'HERNANDEZ', 'BARCENAS', '23855'),
('23867', 'ERICK', 'MENDOZA', 'ABARCA', '23867'),
('23873', 'ALEJANDRO', 'CARDENAS', 'DE LA PORTILLA', '23873'),
('23877', 'ANA PAOLA', 'SANCHEZ', 'MONTIEL', '23877'),
('23880', 'SERGIO DANIEL', 'ZARAGOZA', 'TROVAMALA', '23880'),
('23886', 'HAZEL DARIANA', 'GONZALEZ', 'PINEDA', '23886'),
('23889', 'JOSE EDUARDO', 'ORTEGA', 'CORONA', '23889'),
('23901', 'FRANCISCO', 'ROSAS', 'MENDEZ', '23901'),
('23904', 'MIGUEL ANGEL', 'RODRIGUEZ', 'GARCIA', '23904'),
('23905', 'VICTOR', 'MEDINA', 'OROZCO', '23905'),
('23909', 'DAMARIS DAMAYANTI', 'AZUCENO', 'ABUNDIS', '23909'),
('23932', 'ANDREA XIMENA', 'LOPEZ', 'ZAMORA', '23932'),
('23933', 'CASANDRA', 'REYES', 'LOZA', '23933'),
('23936', 'LIZETH', 'LEON', 'BRAVO', '23936'),
('23937', 'MIGUEL ANGEL', 'ASCENCIO', 'RAFAEL', '23937'),
('23947', 'MARIO JOEL', 'CHEANG', 'SILVA', '23947'),
('23950', 'CRISTIAN ADRIAN', 'HERNANDEZ', 'MURILLO', '23950'),
('23958', 'HECTOR IVAN', 'MAR', 'GONZALEZ', '23958'),
('23968', 'ERIKA DANIELA', 'TELLEZ', 'VEGA', '23968'),
('24000', ' JORGE ALONSO', 'BERONA', '-REYES', '24000'),
('24005', 'LUIS FERNANDO', 'MORADO', 'DEL ANGEL', '24005'),
('24010', 'FABRICIO', 'RODRIGUEZ', 'TAPIA', '24010'),
('24023', 'TALIA', 'GUTIERREZ', 'MACIQUES', '24023'),
('24047', 'JORGE', 'MARQUEZ', 'PALAFOX', '24047'),
('24050', 'JUAN PABLO', 'DE LA O', 'SIXTO', '24050'),
('24123', 'MAURICIO RAMON', 'PULIDO', 'DE LA ROSA', '24123'),
('24126', 'MAXIMILIANO', 'OVIEDO', 'MORA', '24126'),
('24128', 'ESPERANZA', 'AMEZCUA', 'SORIA', '24128'),
('24234', 'ALEXIS LEONARDO', 'SANCHEZ', 'REYES', '24234'),
('24240', 'RODRIGO', 'GARCIA', 'HERNANDEZ', '24240'),
('24243', 'PAOLA YATZIRY', 'GONZALEZ', 'PEÑA', '24243'),
('24250', 'SAUL', 'VILLANUEVA', 'MARTINEZ', '24250'),
('24257', 'KARLA PATRICIA', 'ORNELAS', 'TELLEZ', '24257'),
('24272', 'FERNANDO ALEXISS', 'HERNANDEZ', 'LARA', '24272'),
('24277', 'ADILENE LIZETH', 'LOPEZ', 'VALENCIA', '24277'),
('24293', 'ABRAHAM JOSHUA', 'ORTIZ', 'QUINO', '24293'),
('24304', 'NICOLAS CAMILO', 'SANDOVAL', 'RAMIREZ', '24304'),
('24324', 'FATIMA', 'RIVA PALACIO', 'GODOY', '24324');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnocurso`
--

CREATE TABLE `alumnocurso` (
  `idAlumnoCurso` int NOT NULL,
  `alumno` varchar(5) NOT NULL,
  `curso` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `alumnocurso`
--

INSERT INTO `alumnocurso` (`idAlumnoCurso`, `alumno`, `curso`) VALUES
(1, '23947', 1),
(2, '23471', 1),
(3, '23358', 1),
(4, '23423', 1),
(5, '23886', 1),
(6, '23855', 1),
(7, '22917', 1),
(8, '23544', 1),
(9, '23932', 1),
(10, '23185', 1),
(11, '23185', 1),
(12, '23958', 1),
(13, '23867', 1),
(14, '23086', 1),
(15, '23270', 1),
(16, '23367', 1),
(17, '23933', 1),
(18, '23901', 1),
(19, '23066', 4),
(20, '23462', 4),
(21, '22824', 4),
(22, '23904', 4),
(23, '23237', 4),
(24, '22034', 6),
(25, '22620', 6),
(26, '22575', 6),
(27, '22761', 6),
(28, '22531', 6),
(29, '23060', 6),
(30, '22640', 6),
(31, '23184', 6),
(32, '20483', 8),
(33, '20779', 8),
(34, '20461', 8),
(35, '22625', 8),
(36, '20602', 8),
(37, '21241', 8),
(38, '21093', 8),
(39, '21069', 8),
(40, '20817', 8),
(41, '20416', 8),
(42, '21137', 8),
(43, '21114', 8),
(44, '20845', 8),
(45, '20638', 8),
(46, '20901', 8),
(47, '21299', 8),
(48, '20823', 7),
(49, '21157', 7),
(50, '21565', 7),
(51, '21133', 7),
(52, '21349', 7),
(53, '20690', 7),
(54, '20775', 7),
(55, '20636', 7),
(56, '20891', 7),
(57, '20701', 7),
(58, '20678', 7),
(59, '20642', 7),
(60, '20666', 7),
(61, '21111', 7),
(62, '20784', 7),
(63, '20706', 7),
(64, '20695', 7),
(65, '20732', 7),
(66, '20781', 7),
(67, '20581', 7),
(68, '21129', 7),
(69, '20726', 7),
(70, '20780', 7),
(71, '20717', 7),
(72, '20649', 7),
(73, '20841', 7),
(74, '20661', 7),
(75, '23396', 2),
(76, '24000', 2),
(77, '23873', 2),
(78, '23841', 2),
(79, '23394', 2),
(80, '23426', 2),
(81, '23502', 2),
(82, '22914', 2),
(83, '23026', 2),
(84, '23850', 2),
(85, '22933', 2),
(86, '23374', 2),
(87, '23492', 2),
(88, '22983', 2),
(89, '23264', 2),
(90, '22950', 2),
(91, '22622', 2),
(92, '22804', 2),
(93, '22920', 2),
(94, '23777', 2),
(95, '23615', 2),
(96, '23877', 2),
(97, '23758', 2),
(98, '23781', 2),
(99, '22877', 2),
(100, '23774', 2),
(101, '22800', 3),
(102, '23546', 3),
(103, '23937', 3),
(104, '23194', 3),
(105, '23468', 3),
(106, '23640', 3),
(107, '24005', 3),
(108, '22941', 3),
(109, '23968', 3),
(110, '20761', 9),
(111, '21258', 9),
(112, '20540', 9),
(113, '21273', 9),
(114, '20412', 9),
(115, '20469', 9),
(116, '13143', 9),
(117, '20626', 9),
(118, '20548', 9),
(119, '20632', 9),
(120, '20459', 9),
(121, '20683', 9),
(122, '21254', 9),
(123, '20766', 9),
(124, '20565', 9),
(125, '20861', 9),
(126, '12611', 9),
(127, '21200', 9),
(128, '17390', 9),
(129, '19950', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `clave` varchar(8) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `carrera` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`clave`, `nombre`, `carrera`) VALUES
('LADN0102', 'INFORMÁTICA', 'ADN2001'),
('LADN0211', 'ESTADÍSTICA BÁSICA', 'ADN2001'),
('LAET0211', 'INFORMÁTICA II', 'AET2009'),
('LCYF0211', 'ESTADÍSTICA BÁSICA', 'CYF2001'),
('LGTM0317', 'INFORMÁTICA APLICADA', 'GTM2009'),
('LISC0207', 'ALGEBRA LINEAL', 'ISC2018'),
('LISC0209', 'FUNDAMENTOS DE PROGRAMACIÓN', 'ISC2018'),
('LISC0315', 'ESTRUCTURA DE DATOS', 'ISC2018'),
('LISC0527', 'SISTEMAS OPERATIVOS', 'ISC2018'),
('LISC0632', 'BASES DE DATOS', 'ISC2018'),
('LISC0633', 'INGENIERÍA DE SOFTWARE', 'ISC2018'),
('LISC0845', 'BASES DE DATOS AVANZADAS', 'ISC2005'),
('LISC0952', 'TECNOLOGÍAS ELECTRÓNICAS DE INFORMACIÓN', 'ISC2018'),
('LISC0953', 'TECNOLOGÍAS DE INFORMACIÓN EMERGENTE', 'ISC2005');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `clave` varchar(7) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`clave`, `nombre`) VALUES
('ADN2001', 'ADMINSTRACIÓN DE NEGOCIOS'),
('AET2009', 'ADMINISTRACIÓN DE EMPRESAS TURÍSTICAS'),
('CYF2001', 'CONTADURÍA Y FINANZAS'),
('GTM2009', 'GASTRONOMIA'),
('ISC2005', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES'),
('ISC2018', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES'),
('NIA2003', 'NEGOCIOS INTERNACIONALES Y ADUANALES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuatrimestre`
--

CREATE TABLE `cuatrimestre` (
  `clave` int NOT NULL,
  `nombre` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `cuatrimestre`
--

INSERT INTO `cuatrimestre` (`clave`, `nombre`) VALUES
(1, '2019-3'),
(2, '2020-1'),
(3, '2020-2'),
(4, '2020-3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `idCurso` int NOT NULL,
  `grupo` varchar(10) NOT NULL,
  `cuatrimestre` int NOT NULL,
  `turno` int NOT NULL,
  `asignatura` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`idCurso`, `grupo`, `cuatrimestre`, `turno`, `asignatura`) VALUES
(1, 'ISCM33818', 4, 1, 'LISC0315'),
(2, 'GTMM33408', 4, 1, 'LGTM0317'),
(3, 'ISCV33818', 4, 2, 'LISC0315'),
(4, 'ISCN33818', 4, 3, 'LISC0315'),
(5, 'ISCV63818', 4, 2, 'LISC0633'),
(6, 'ISCN63818', 4, 3, 'LISC0632'),
(7, 'ISCV938A05', 4, 2, 'LISC0953'),
(8, 'ISCV938B05', 4, 2, 'LISC0952'),
(9, 'ISCN93818', 4, 3, 'LISC0952');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacion`
--

CREATE TABLE `evaluacion` (
  `idEvaluacion` int NOT NULL,
  `nombre` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `evaluacion`
--

INSERT INTO `evaluacion` (`idEvaluacion`, `nombre`) VALUES
(1, 'PARCIAL'),
(2, 'FINAL'),
(3, 'EXORD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `clave` varchar(10) NOT NULL,
  `descripcion` varchar(150) DEFAULT '-'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`clave`, `descripcion`) VALUES
('ADNM13110', '-'),
('ADNM23110', '-'),
('AETM23908', '-'),
('CYFM23210', '-'),
('GTMM33408', '-'),
('ISCM23818', '-'),
('ISCM33818', '-'),
('ISCN23818', '-'),
('ISCN33818', '-'),
('ISCN53818', '-'),
('ISCN63818', '-'),
('ISCN93818', '-'),
('ISCV33818', '-'),
('ISCV63818', '-'),
('ISCV838A05', '-'),
('ISCV838B05', '-'),
('ISCV938A05', '-'),
('ISCV938B05', '-');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguridad`
--

CREATE TABLE `seguridad` (
  `idSeguridad` int NOT NULL,
  `alumno` varchar(5) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `llave` varchar(64) NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `evaluacion` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `clave` int NOT NULL,
  `nombre` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `turno`
--

INSERT INTO `turno` (`clave`, `nombre`) VALUES
(1, 'MATUTINO'),
(2, 'VESPERTINO'),
(3, 'NOCTURNO'),
(4, 'SABATINO'),
(5, 'MIXTO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acceso`
--
ALTER TABLE `acceso`
  ADD PRIMARY KEY (`idAcceso`),
  ADD UNIQUE KEY `idAcceso` (`idAcceso`),
  ADD KEY `fk_acceso_alumno` (`alumno`);

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`control`),
  ADD UNIQUE KEY `control` (`control`);

--
-- Indices de la tabla `alumnocurso`
--
ALTER TABLE `alumnocurso`
  ADD PRIMARY KEY (`idAlumnoCurso`,`alumno`,`curso`),
  ADD UNIQUE KEY `idAlumnoCurso` (`idAlumnoCurso`),
  ADD KEY `fk_alumnocurso_alumno` (`alumno`),
  ADD KEY `fk_alumnocurso_curso` (`curso`);

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`clave`),
  ADD UNIQUE KEY `clave` (`clave`),
  ADD KEY `fk_asignatura_carrera` (`carrera`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`clave`),
  ADD UNIQUE KEY `clave` (`clave`);

--
-- Indices de la tabla `cuatrimestre`
--
ALTER TABLE `cuatrimestre`
  ADD PRIMARY KEY (`clave`),
  ADD UNIQUE KEY `clave` (`clave`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`idCurso`),
  ADD UNIQUE KEY `idCurso` (`idCurso`),
  ADD KEY `fk_curso_grupo` (`grupo`),
  ADD KEY `fk_curso_cuatrimestre` (`cuatrimestre`),
  ADD KEY `fk_curso_turno` (`turno`),
  ADD KEY `fk_curso_asignatura` (`asignatura`);

--
-- Indices de la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  ADD PRIMARY KEY (`idEvaluacion`),
  ADD UNIQUE KEY `idEvaluacion` (`idEvaluacion`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`clave`),
  ADD UNIQUE KEY `clave` (`clave`);

--
-- Indices de la tabla `seguridad`
--
ALTER TABLE `seguridad`
  ADD PRIMARY KEY (`idSeguridad`),
  ADD UNIQUE KEY `idSeguridad` (`idSeguridad`),
  ADD KEY `fk_seguridad_alumno` (`alumno`),
  ADD KEY `fk_seguridad_evaluacion` (`evaluacion`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`clave`),
  ADD UNIQUE KEY `clave` (`clave`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acceso`
--
ALTER TABLE `acceso`
  MODIFY `idAcceso` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `alumnocurso`
--
ALTER TABLE `alumnocurso`
  MODIFY `idAlumnoCurso` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT de la tabla `cuatrimestre`
--
ALTER TABLE `cuatrimestre`
  MODIFY `clave` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `idCurso` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  MODIFY `idEvaluacion` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `seguridad`
--
ALTER TABLE `seguridad`
  MODIFY `idSeguridad` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `turno`
--
ALTER TABLE `turno`
  MODIFY `clave` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acceso`
--
ALTER TABLE `acceso`
  ADD CONSTRAINT `fk_acceso_alumno` FOREIGN KEY (`alumno`) REFERENCES `alumno` (`control`);

--
-- Filtros para la tabla `alumnocurso`
--
ALTER TABLE `alumnocurso`
  ADD CONSTRAINT `fk_alumnocurso_alumno` FOREIGN KEY (`alumno`) REFERENCES `alumno` (`control`),
  ADD CONSTRAINT `fk_alumnocurso_curso` FOREIGN KEY (`curso`) REFERENCES `curso` (`idCurso`);

--
-- Filtros para la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD CONSTRAINT `fk_asignatura_carrera` FOREIGN KEY (`carrera`) REFERENCES `carrera` (`clave`);

--
-- Filtros para la tabla `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `fk_curso_asignatura` FOREIGN KEY (`asignatura`) REFERENCES `asignatura` (`clave`),
  ADD CONSTRAINT `fk_curso_cuatrimestre` FOREIGN KEY (`cuatrimestre`) REFERENCES `cuatrimestre` (`clave`),
  ADD CONSTRAINT `fk_curso_grupo` FOREIGN KEY (`grupo`) REFERENCES `grupo` (`clave`),
  ADD CONSTRAINT `fk_curso_turno` FOREIGN KEY (`turno`) REFERENCES `turno` (`clave`);

--
-- Filtros para la tabla `seguridad`
--
ALTER TABLE `seguridad`
  ADD CONSTRAINT `fk_seguridad_alumno` FOREIGN KEY (`alumno`) REFERENCES `alumno` (`control`),
  ADD CONSTRAINT `fk_seguridad_evaluacion` FOREIGN KEY (`evaluacion`) REFERENCES `evaluacion` (`idEvaluacion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
