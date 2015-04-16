-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 09-04-2015 a las 23:56:45
-- Versión del servidor: 5.6.12-log
-- Versión de PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `fei`
--
CREATE DATABASE IF NOT EXISTS `fei` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `fei`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `academia`
--

CREATE TABLE IF NOT EXISTS `academia` (
  `idAcademia` varchar(4) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `coordinador` int(5) DEFAULT NULL,
  `programa` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`idAcademia`),
  KEY `id_personal` (`coordinador`),
  KEY `id_pro` (`programa`),
  KEY `id_aca` (`coordinador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `academia`
--

INSERT INTO `academia` (`idAcademia`, `descripcion`, `coordinador`, `programa`) VALUES
('APSO', 'ADMINISTRACIÓN Y PROCESOS DE SOFTWARE', 14113, 'IGSO'),
('ARSI', 'ARQUITECTURA Y SISTEMAS', 8, 'RSCO'),
('CSOF', 'CALIDAD DE SOFTWARE', 28793, 'IGSO'),
('CTEA', 'COMPUTACIÓN Y PROGRAMACIÓN', 15, 'CTES'),
('CTEB', 'FUNDAMENTOS DE LA ESTADISTICA', 16, 'CTES'),
('CTEC', 'MATEMÁTICAS AVANZADAS', 17, 'CTES'),
('CTED', 'MATEMÁTICAS BÁSICAS', 18, 'CTES'),
('CTEE', 'METODOLOGÍA DE LA INVESTIGACIÓN Y CONSULTORIA', 19, 'CTES'),
('CTEF', 'METODOLOGÍA ESTADÍSTICA I', 20, 'CTES'),
('CTEG', 'METODOLOGÍA ESTADÍSTICA II', 21, 'CTES'),
('CTEH', 'MODELACIÓN ESTADÍSTICA', 14, 'CTES'),
('CTEI', 'SERVICIO SOC. Y EXPERIENCIA RECEPCIONAL', 23, 'CTES'),
('DSOF', 'DESARROLLO DE SOFTWARE', 28793, 'RSCO'),
('ENSO', 'ENTORNO SOCIAL', 7498, 'RSCO'),
('EXRE', 'EXPERIENCIA RECEPCIONAL', 14113, 'RSCO'),
('FBGR', 'BÁSICA GENERAL', 6, NULL),
('IARS', 'ARQUITECTURA Y SISTEMAS', 8, 'IGSO'),
('IDSO', 'DESARROLLO DE SOFTWARE', 18946, 'IGSO'),
('IENS', 'ENTORNO SOCIAL', 7498, 'IGSO'),
('IEXR', 'EXPERIENCIA RECEPCIONAL', 14113, 'IGSO'),
('IGSO', 'INGENIERÍA DE SOFTWARE', 1, 'TECO'),
('IHUC', 'INTERACCIÓN HUMANO COMPUTADORA', 10183, 'TECO'),
('IMAT', 'MATEMÁTICAS', 3548, 'IGSO'),
('INFA', 'ALGORITMOS Y PROGRAMACIÓN', 5, 'INFO'),
('INFB', 'ARQUITECTURA DE COMPUTADORAS', 25, 'INFO'),
('INFC', 'ENTORNO SOCIAL', 24, 'INFO'),
('INFD', 'INGENIERIA DE SOFTWARE', 28, 'INFO'),
('INFE', 'INTEGRACIÓN', 31, 'INFO'),
('INFF', 'INTELIGENCIA ARTIFICIAL', 30, 'INFO'),
('INFG', 'MATEMÁTICAS', 11, 'INFO'),
('INFH', 'REDES', 26, 'INFO'),
('INFI', 'SISTEMAS DE INFORMACIÓN', 29, 'INFO'),
('INFJ', 'SOFTWARE DE BASE', 27, 'INFO'),
('INFT', 'SERVICIO SOCIAL Y EXPERIENCIA RECEPCIONAL', 32, 'INFO'),
('INPR', 'INVESTIGACIÓN Y PROFESIONALISMO', 19, 'RSCO'),
('INTG', 'INTEGRACIÓN', 28793, 'TECO'),
('IPRG', 'PROGRAMACIÓN', 15, 'IGSO'),
('IRDC', 'REDES DE CÓMPUTO', 31810, 'IGSO'),
('ISIC', 'SISTEMAS DE INFORMACIÓN Y CONOCIMIENTO', 56, 'IGSO'),
('ISOT', 'INGENIERÍA DE SOFTWARE', 14113, 'IGSO'),
('MASF', 'MODELADO Y ANÁLISIS DE SOFTWARE', 18946, 'IGSO'),
('MATS', 'MATEMÁTICAS', 11, 'RSCO'),
('PRGM', 'PROGRAMACIÓN', 15, 'RSCO'),
('RDCO', 'REDES DE CÓMPUTO', 31810, 'RSCO'),
('RSCO', 'REDES Y SERVICIOS DE CÓMPUTO', 24054, 'RSCO'),
('SICC', 'SISTEMAS DE INFORMACIÓN Y CONOCIMIENTO', 56, 'RSCO'),
('SRCO', 'SEGURIDAD EN CÓMPUTO', 31810, 'RSCO'),
('SRED', 'SERVICIOS DE RED', 24054, 'RSCO'),
('SWEB', 'SISTEMAS Y TECNOLOGÍAS WEB', 27160, 'TECO'),
('TAPS', 'ADMINISTRACIÓN Y PROCESOS DE SOFTWARE', 14113, 'TECO'),
('TARS', 'ARQUITECTURA Y SISTEMAS', 8, 'TECO'),
('TECO', 'TECNOLOGÍAS COMPUTACIONALES', 21068, 'TECO'),
('TENS', 'ENTORNO SOCIAL', 7498, 'TECO'),
('TEXR', 'EXPERIENCIA RECEPCIONAL', 14113, 'TECO'),
('TINP', 'INVESTIGACIÓN Y PROFESIONALISMO', 19, 'TECO'),
('TMAT', 'MATEMÁTICAS', 2, 'TECO'),
('TPRG', 'PROGRAMACIÓN', 15, 'TECO'),
('TRDC', 'REDES DE CÓMPUTO', 24054, 'TECO'),
('TSIC', 'SISTEMAS DE INFORMACIÓN Y CONOCIMIENTO', 56, 'TECO'),
('TSRC', 'SEGURIDAD EN CÓMPUTO', 31810, 'TECO'),
('TSRE', 'SERVICIOS DE RED', 26, 'TECO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `academico`
--

CREATE TABLE IF NOT EXISTS `academico` (
  `idAcademico` int(5) NOT NULL,
  `tipoPersonal` int(1) DEFAULT NULL,
  `apellidoPaterno` varchar(45) DEFAULT NULL,
  `apellidoMaterno` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `telefono` varchar(13) DEFAULT NULL,
  `estatus` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idAcademico`),
  KEY `tipo_id` (`tipoPersonal`),
  KEY `id_tipo` (`tipoPersonal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `academico`
--

INSERT INTO `academico` (`idAcademico`, `tipoPersonal`, `apellidoPaterno`, `apellidoMaterno`, `nombre`, `telefono`, `estatus`) VALUES
(1, 3, 'GARCIA', 'GAONA', 'ALMA ROSA', '5961303', 1),
(2, 1, 'ESCALANTE', 'VEGA', 'JUANA ELISA', 'ninguno', 1),
(3, 2, 'TORRES', 'MEJIA', 'PEDRO', 'ninguno', 1),
(4, 3, 'CONTRERAS', 'DORANTES', 'PEDRO H.', 'ninguno', 1),
(5, 1, 'PEREZ', 'FLORES', 'ARMANDO', 'ninguno', 1),
(6, 2, 'PRUEBITA', 'PRUEBOTA', 'PRUEBA', 'ninguno', 1),
(7, 4, 'LOPEZ', 'PERALTA', 'DORA EMILIA', 'ninguno', 1),
(8, 3, 'BALDERAS', 'ROSAS', 'GUSTAVO M.', 'ninguno', 1),
(9, 1, 'WATTY', 'URQUIDI', 'MARÍA DE LOURDES', 'ninguno', 1),
(10, 1, 'ALONSO', 'LÓPEZ', 'MIGUEL', 'ninguno', 1),
(11, 1, 'GUTIERREZ', 'ÓTERO', 'CARMEN', 'ninguno', 1),
(12, 1, 'MATEMATICAS', 'ALGEBRA', 'PROFESORA', 'ninguno', 1),
(13, 1, 'CAMACHO', 'EINSTEIN', 'EDUARDO', 'ninguno', 1),
(14, 1, 'MONTERO', 'MORA', 'JUDITH GUADALUPE', 'ninguno', 1),
(15, 1, 'ALONSO', 'RAMÍREZ', 'LORENA', 'ninguno', 1),
(16, 1, 'HERNÁNDEZ', 'SUÁREZ', 'JESÚS', 'ninguno', 1),
(17, 1, 'JUÁREZ', 'CERRILLO', 'SERGIO', 'ninguno', 1),
(18, 1, 'VELAZCO', 'LUNA', 'FERNANDO', 'ninguno', 1),
(19, 1, 'GARCÍA', 'ZAMORA', 'MARÍA ESTHER', 'ninguno', 1),
(20, 1, 'DÍAZ', 'CAMACHO', 'JULIAN FELIPE', 'ninguno', 1),
(21, 1, 'VELASCO', 'VÁZQUEZ', 'MARÍA DE LOURDES', 'ninguno', 1),
(22, 1, 'HERNANDEZ', 'MALDONADO', 'MARIA LUISA', 'ninguno', 1),
(23, 1, 'MÉNDEZ', 'SÁNCHEZ', 'VICTOR MANUEL', 'ninguno', 1),
(24, 1, 'AGUILAR', 'CASTILLO', 'GILDARDO', 'ninguno', 1),
(25, 1, 'ROJANO', 'CÁCERES', 'JOSÉ RAFAEL', 'ninguno', 1),
(26, 1, 'CONTRERAS', 'VEGA', 'GERARDO', 'ninguno', 1),
(27, 1, 'MATUS', 'VELASCO', 'MARÍA CANDELARIA', 'ninguno', 1),
(28, 1, 'FERNÁNDEZ', 'PEÑA', 'JUAN MANUEL', 'ninguno', 1),
(29, 1, 'VARGAS', 'CERDAN', 'MARÍA DOLORES', 'ninguno', 1),
(30, 1, 'GARCÍA', 'VEGA', 'VIRGINIA ANGÉLICA', 'ninguno', 1),
(31, 1, 'SUMANO', 'LÓPEZ', 'MARÍA DE LOS ANGELES', 'ninguno', 1),
(32, 1, 'MEZURA', 'GODOY', 'CARMEN', 'ninguno', 1),
(33, 3, 'GÓMEZ', 'AGUIRRE', 'ALEJANDRO', 'ninguno', 1),
(34, 6, 'OSORIO', 'ARMENTA', 'ROSELIA', 'ninguno', 1),
(35, 2, 'LAGUNES', 'BARRADAS', 'VIRGINIA', 'ninguno', 1),
(36, 6, 'CUESTA', 'BORGES', 'ABRAHAM', 'ninguno', 1),
(37, 3, 'DE JESÚS', 'MARTÍNEZ', 'JOSÉ', 'ninguno', 1),
(38, 5, 'TRIANA', 'CORTINA', 'MARÍA CRISTINA', 'ninguno', 1),
(41, 7, 'MONTANÉ', 'JIMÉNEZ', 'LUIS GERARDO', 'NINGUNO', 1),
(56, 7, 'POLO', 'ESTRELLA', 'ANA LUZ', 'NINGUNO', 1),
(63, 2, 'ZAVALETA', 'SÁNCHEZ', 'MA. YESENIA', 'NINGUNO', 1),
(90, 1, 'CERDÁN', '*', 'MA. ANGÉLICA', 'NINGUNO', 1),
(123, 1, 'GARCIA', 'RAMIREZ', 'MARIA SILVIA', 'ninguno', 1),
(3380, 7, 'ILLESCAS', 'SÁNCHEZ', 'CARLOS', 'NINGUNO', 1),
(3548, 1, 'GUTIÉRREZ', 'ÓTERO', 'CARMEN', 'NINGUNO', 1),
(6448, 1, 'ORDUÑA', 'GONZÁLEZ', 'AQUILES', 'NINGUNO', 1),
(6454, 2, 'GARCÍA', 'MENIER', 'EVERARDO', 'NINGUNO', 1),
(7498, 1, 'GARCÍA', 'ZAMORA', 'MARÍA ESTHER', 'NINGUNO', 1),
(8205, 2, 'SALAZAR', 'DÍAZ', 'MA. GUADALUPE', 'NINGUNO', 1),
(10183, 7, 'CASTILLO', 'VALERIO', 'SERGIO LUIS', 'NINGUNO', 1),
(10201, 1, 'CARRIÓN', 'MÉNDEZ', 'PATRICIA DE LA LUZ', 'NINGUNO', 1),
(14113, 3, 'CORTÉS', 'VERDÍN', 'MA. KAREN', 'NINGUNO', 1),
(15278, 2, 'LÓPEZ', 'LOZADA', 'LORENA', 'NO TIENE', 1),
(15519, 7, 'GARCÍA', 'ARAUJO', 'MARÍA', 'NINGUNO', 1),
(18349, 7, 'LÓPEZ', 'HERRERA', 'JUAN LUIS', 'NINGUNO', 1),
(18946, 1, 'ARENAS', 'VALDÉS', 'MA. DE LOS ÁNGELES', 'NINGUNO', 1),
(20446, 2, 'NAVARRO', 'GUERRERO', 'MARÍA DE LOS ÁNGELES', 'NINGUNO', 1),
(20578, 7, 'HERNÁNDEZ', 'HERNÁNDEZ', 'JAVIER MOISÉS', 'NINGUNO', 1),
(20834, 7, 'LOPEZ', 'MARTINEZ', 'MARIA LINA', 'NO TIENE', 1),
(21068, 3, 'MÉNDEZ', 'ORTIZ', 'JESÚS ROBERTO', 'NINGUNO', 1),
(24054, 1, 'OCHOA', 'RIVERA', 'CARLOS ALBERTO', 'NINGUNO', 1),
(24322, 2, 'MUÑOZ', 'PORTILLA', 'JOSÉ FABIÁN', 'NINGUNO', 1),
(24326, 3, 'MORALES', 'ROMERO', 'ZOYLO', 'NO TIENE', 1),
(24330, 2, 'DÍAZ', 'CAMACHO', 'EDUARDO', 'NINGUNO', 1),
(26605, 3, 'SÁNCHEZ', 'OREA', 'ALFONSO', 'NINGUNO', 1),
(26781, 1, 'CASTAÑEDA', 'SÁNCHEZ', 'FREDY', 'NINGUNO', 1),
(27160, 1, 'PÉREZ', 'ARRIAGA', 'JUAN CARLOS', 'NINGUNO', 1),
(27752, 7, 'DOMÍNGUEZ', 'BÁRCENAS', 'MARTHA E.', 'NINGUNO', 1),
(27878, 7, 'MELGAREJO', 'GONZÁLEZ', 'MITL', 'NINGUNO', 1),
(28793, 1, 'HERNÁNDEZ', 'GONZÁLEZ', 'LIZBETH A.', 'NINGUNO', 1),
(28886, 1, 'REYES', 'FÉLIX', 'MINERVA', 'NINGUNO', 1),
(31810, 2, 'CRUZ', 'REYES', 'OSCAR JOSÉ LUIS', 'NINGUNO', 1),
(32428, 1, 'VALDERRÁBANO', 'PEDRAZA', 'DIANA ELIZABETH', 'NINGUNO', 1),
(34079, 7, 'CARMONA', 'GARCÍA', 'MARIBEL', 'NINGUNO', 1),
(41306, 1, 'SÁNCHEZ', 'GARCÍA', 'ÁNGEL JUAN', 'NINGUNO', 1),
(98765, 3, 'OJEDA', 'RARMÍREZ', 'MARIO MIGUEL', 'NINGUNO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE IF NOT EXISTS `area` (
  `idArea` varchar(10) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `creditos` int(3) DEFAULT NULL,
  `programa` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`idArea`),
  KEY `id_prog` (`programa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`idArea`, `descripcion`, `creditos`, `programa`) VALUES
('FBAS-CTES', 'BÁSICA', 120, 'CTES'),
('FBAS-INFO', 'ÁREA DE FORMACIÓN BÁSICA', 80, 'INFO'),
('FBAS-ISOF', 'BÁSICA', 89, 'IGSO'),
('FBAS-RSCO', 'BÁSICA', 69, 'RSCO'),
('FBAS-TECO', 'BÁSICA', 85, 'TECO'),
('FDI-CTES', 'DISCIPLINARIA', 124, 'CTES'),
('FDI-INFO', 'ÁREA DE FORMACIÓN DISCIPLINARIA', 222, 'INFO'),
('FDI-ISOF', 'DISCIPLINARIA', 201, 'IGSO'),
('FDI-RSCO', 'DISCIPLINARIA', 221, 'RSCO'),
('FDI-TECO', 'DISCIPLINARIA', 199, 'TECO'),
('FEL-CTES', 'ELECCIÓN LIBRE', 16, 'CTES'),
('FEL-INFO', 'ÁREA DE FORMACIÓN ELECTIVA', 19, 'INFO'),
('FTER-CTES', 'TERMINAL', 56, 'CTES'),
('FTER-INFO', 'ÁREA DE FORMACIÓN TERMINAL', 59, 'INFO'),
('FTER-ISOF', 'TERMINAL', 48, 'IGSO'),
('FTER-RSCO', 'TERMINAL', 48, 'RSCO'),
('FTER-TECO', 'TERMINAL', 48, 'TECO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aula`
--

CREATE TABLE IF NOT EXISTS `aula` (
  `idAula` varchar(4) NOT NULL,
  `capacidad` int(2) DEFAULT NULL,
  `ubicacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAula`),
  KEY `id_ubicacion` (`ubicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `aula`
--

INSERT INTO `aula` (`idAula`, `capacidad`, `ubicacion`) VALUES
('101', 20, 1),
('102', 40, 1),
('103', 40, 1),
('104', 40, 1),
('105', 40, 1),
('106', 40, 1),
('107', 30, 1),
('108', 40, 1),
('111', 40, 1),
('112', 40, 1),
('113', 35, 1),
('214', 30, 2),
('4', 25, 2),
('5', 25, 2),
('6', 25, 2),
('CC1', 30, 2),
('CC2', 25, 2),
('CC3', 25, 2),
('CC4', 30, 2),
('CIDI', 30, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen`
--

CREATE TABLE IF NOT EXISTS `examen` (
  `idPeriodo` int(6) NOT NULL,
  `idPrograma` varchar(12) NOT NULL,
  `idBloque` int(1) NOT NULL,
  `idSeccion` int(1) NOT NULL,
  `idMateria` varchar(10) NOT NULL,
  `inicio` int(2) DEFAULT NULL,
  `termino` int(2) DEFAULT NULL,
  `duracion` int(1) DEFAULT NULL,
  `fechaOrdinario` date DEFAULT NULL,
  `fechaExtra` date DEFAULT NULL,
  `fechaTitulo` date DEFAULT NULL,
  `aula` varchar(4) DEFAULT NULL,
  `academico` int(5) DEFAULT NULL,
  `actaOrdinario` date DEFAULT NULL,
  `actaExtra` date DEFAULT NULL,
  `actaTitulo` date DEFAULT NULL,
  `nombreSecretaria` varchar(50) DEFAULT NULL,
  `nrc` int(5) DEFAULT NULL,
  `nrc2008` int(5) DEFAULT NULL,
  PRIMARY KEY (`idPeriodo`,`idPrograma`,`idBloque`,`idSeccion`,`idMateria`),
  KEY `aula_id` (`aula`),
  KEY `academico_id` (`academico`),
  KEY `periodo_id` (`idPeriodo`),
  KEY `programa_id` (`idPrograma`),
  KEY `materia_id` (`idMateria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `examen`
--

INSERT INTO `examen` (`idPeriodo`, `idPrograma`, `idBloque`, `idSeccion`, `idMateria`, `inicio`, `termino`, `duracion`, `fechaOrdinario`, `fechaExtra`, `fechaTitulo`, `aula`, `academico`, `actaOrdinario`, `actaExtra`, `actaTitulo`, `nombreSecretaria`, `nrc`, `nrc2008`) VALUES
(201251, 'INFO', 1, 1, 'FBGR 00001', 7, 8, 1, '2012-07-04', '2012-07-11', '2012-07-18', '101', 123, '2012-07-06', '2012-07-13', '2012-07-20', 'CARMELITA', NULL, 27540),
(201251, 'INFO', 1, 2, 'FBGR 00001', 7, 8, 1, '2012-07-04', '2012-07-11', '2012-07-18', '102', 123, '2012-07-06', '2012-07-13', '2012-07-20', 'CARMELITA', NULL, 27543),
(201301, 'INFO', 1, 1, 'FBGR 00002', 12, 14, 2, '2015-01-21', '2015-01-28', '2015-02-04', '104', 24, '2015-01-27', '2015-02-03', '2015-02-10', 'MERARI', NULL, 27540),
(201301, 'INFO', 1, 1, 'FBGR 00005', 7, 9, 2, '2015-01-19', '2015-01-26', '2015-02-02', '102', 34, '2015-01-23', '2015-01-30', '2015-02-06', 'VERÓNICA NAVA', NULL, 27539),
(201301, 'INFO', 1, 2, 'FBGR 00002', 12, 14, 2, '2015-01-21', '2015-01-28', '2015-02-04', '105', 24, '2015-01-27', '2015-02-03', '2015-02-10', 'MERARI', NULL, 27542),
(201301, 'INFO', 1, 2, 'FBGR 00005', 7, 9, 2, '2015-01-19', '2015-01-26', '2015-02-02', '103', 38, '2015-01-23', '2015-01-30', '2015-02-06', 'VERÓNICA NAVA', NULL, 27544),
(201301, 'INFO', 3, 5, 'FBGR 00002', 12, 14, 2, '2015-01-21', '2015-01-28', '2015-02-04', '106', 3380, '2015-01-27', '2015-02-03', '2015-02-10', 'MERARI', NULL, 27546),
(201301, 'INFO', 3, 5, 'FBGR 00005', 7, 9, 2, '2015-01-19', '2015-01-26', '2015-02-02', '104', 27878, '2015-01-23', '2015-01-30', '2015-02-06', 'VERÓNICA NAVA', NULL, 30021),
(201401, 'CTES', 2, 1, 'CTEA 30002', 9, 11, 2, '2014-06-04', '2014-06-11', '2014-06-18', '5', 15, '2014-06-10', '2014-06-17', '2014-06-24', 'LOURDES NAVA', NULL, 27632),
(201401, 'INFO', 5, 1, 'INFC 30004', 7, 9, 2, '2015-01-21', '2015-01-23', '2015-01-27', '102', 6448, '2015-01-22', '2015-01-26', '2015-01-28', 'CATALINA VALDES', NULL, 41884);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fei_alumnosuo`
--

CREATE TABLE IF NOT EXISTS `fei_alumnosuo` (
  `a_matricula` varchar(9) NOT NULL DEFAULT '',
  `a_nombre` varchar(20) NOT NULL,
  `a_paterno` varchar(20) NOT NULL,
  `a_materno` varchar(20) NOT NULL,
  `a_idcarrera` varchar(12) NOT NULL,
  `a_idexperiencia` varchar(10) NOT NULL,
  `a_idtutor` int(5) NOT NULL,
  `a_idmtrocurso` int(5) NOT NULL,
  `a_idperiodo` int(6) NOT NULL,
  `a_idmodalidad` int(1) NOT NULL,
  `a_correo` varchar(50) NOT NULL,
  `a_telcasa` varchar(15) DEFAULT NULL,
  `a_telcelular` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`a_matricula`),
  KEY `a_idcarrera` (`a_idcarrera`),
  KEY `a_idexperiencia` (`a_idexperiencia`),
  KEY `a_idtutor` (`a_idtutor`),
  KEY `a_idmtrocurso` (`a_idmtrocurso`),
  KEY `a_idperiodo` (`a_idperiodo`),
  KEY `a_idmodalidad` (`a_idmodalidad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fei_modalidad`
--

CREATE TABLE IF NOT EXISTS `fei_modalidad` (
  `m_idmod` int(1) NOT NULL DEFAULT '0',
  `m_descripcion` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`m_idmod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fei_modalidad`
--

INSERT INTO `fei_modalidad` (`m_idmod`, `m_descripcion`) VALUES
(1, 'Condicionado'),
(2, 'Oyente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE IF NOT EXISTS `horario` (
  `idPeriodo` int(6) NOT NULL,
  `idPrograma` varchar(12) NOT NULL,
  `idBloque` int(1) NOT NULL,
  `idSeccion` int(1) NOT NULL,
  `idMateria` varchar(10) NOT NULL,
  `idDia` int(1) NOT NULL,
  `inicio` int(2) DEFAULT NULL,
  `termino` int(2) DEFAULT NULL,
  `aula` varchar(4) DEFAULT NULL,
  `academico` int(5) DEFAULT NULL,
  `nrc` int(5) DEFAULT NULL,
  `nrc2008` int(5) DEFAULT NULL,
  PRIMARY KEY (`idPeriodo`,`idPrograma`,`idBloque`,`idSeccion`,`idMateria`,`idDia`),
  KEY `id_aula` (`aula`),
  KEY `id_materia` (`idMateria`),
  KEY `id_academico` (`academico`),
  KEY `id_pma` (`idPrograma`),
  KEY `id_pdo` (`idPeriodo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`idPeriodo`, `idPrograma`, `idBloque`, `idSeccion`, `idMateria`, `idDia`, `inicio`, `termino`, `aula`, `academico`, `nrc`, `nrc2008`) VALUES
(201251, 'CTES', 1, 6, 'FBGR 00001', 5, 13, 18, 'CC2', 123, NULL, 74444),
(201251, 'INFO', 1, 1, 'FBGR 00001', 2, 19, 21, 'CC2', 123, NULL, 27540),
(201251, 'INFO', 1, 1, 'FBGR 00001', 4, 19, 21, 'CC2', 123, NULL, 27540),
(201251, 'INFO', 1, 1, 'FBGR 00001', 5, 19, 21, 'CC2', 123, NULL, 27540),
(201251, 'INFO', 1, 1, 'FBGR 00002', 1, 19, 21, '102', 24, NULL, 27540),
(201251, 'INFO', 1, 1, 'FBGR 00002', 3, 15, 17, '104', 24, NULL, 27549),
(201251, 'INFO', 1, 1, 'FBGR 00002', 4, 19, 21, '102', 24, NULL, 27549),
(201251, 'INFO', 1, 1, 'FBGR 00002', 5, 19, 21, '102', 24, NULL, 27540),
(201251, 'INFO', 1, 1, 'FBGR 00003', 1, 19, 21, '103', 7, NULL, 27548),
(201251, 'INFO', 1, 1, 'FBGR 00003', 2, 19, 21, '103', 7, NULL, 27548),
(201251, 'INFO', 1, 1, 'FBGR 00003', 3, 19, 21, '103', 7, NULL, 27548),
(201251, 'INFO', 1, 1, 'FBGR 00003', 5, 15, 17, '101', 7, NULL, 27548),
(201251, 'INFO', 1, 1, 'FBGR 00005', 1, 13, 15, '111', 34, NULL, 27539),
(201251, 'INFO', 1, 1, 'FBGR 00005', 3, 13, 15, '112', 34, NULL, 27539),
(201251, 'INFO', 1, 1, 'INFA 30001', 1, 11, 13, '103', 5, NULL, 27523),
(201251, 'INFO', 1, 1, 'INFA 30001', 3, 11, 13, '112', 5, NULL, 27523),
(201251, 'INFO', 1, 1, 'INFA 30001', 4, 11, 13, '106', 5, NULL, 27523),
(201251, 'INFO', 1, 1, 'INFB 30001', 3, 17, 19, '104', 25, NULL, 27535),
(201251, 'INFO', 1, 1, 'INFB 30001', 4, 17, 19, '111', 25, NULL, 27535),
(201251, 'INFO', 1, 1, 'INFB 30001', 5, 13, 15, '113', 25, NULL, 27535),
(201251, 'INFO', 1, 1, 'INFG 30001', 1, 11, 12, '111', 3, NULL, 27533),
(201251, 'INFO', 1, 1, 'INFG 30001', 2, 11, 13, '112', 3, NULL, 27533),
(201251, 'INFO', 1, 1, 'INFG 30001', 4, 11, 13, '112', 3, NULL, 27533),
(201251, 'INFO', 1, 1, 'INFG 30003', 2, 9, 11, '105', 11, NULL, 27534),
(201251, 'INFO', 1, 1, 'INFG 30003', 3, 9, 11, '102', 11, NULL, 27534),
(201251, 'INFO', 1, 1, 'INFG 30003', 5, 9, 11, '102', 11, NULL, 27534),
(201251, 'INFO', 1, 1, 'INFG 30005', 1, 17, 19, '102', 33, 16856, 36003),
(201251, 'INFO', 1, 1, 'INFG 30005', 4, 17, 19, '103', 33, 16856, 36003),
(201251, 'INFO', 1, 1, 'INFG 30005', 5, 17, 19, '102', 33, 16856, 36003),
(201251, 'INFO', 1, 2, 'FBGR 00001', 1, 13, 15, 'CC2', 123, NULL, 27543),
(201251, 'INFO', 1, 2, 'FBGR 00001', 2, 13, 15, 'CC2', 123, NULL, 27543),
(201251, 'INFO', 1, 2, 'FBGR 00001', 5, 13, 15, 'CC2', 123, NULL, 27543),
(201251, 'INFO', 1, 2, 'FBGR 00002', 2, 17, 19, '103', 24, NULL, 27542),
(201251, 'INFO', 1, 2, 'FBGR 00002', 3, 17, 19, '103', 24, NULL, 27542),
(201251, 'INFO', 1, 2, 'FBGR 00005', 2, 13, 15, '113', 38, NULL, 27544),
(201251, 'INFO', 1, 2, 'FBGR 00005', 4, 13, 15, '113', 38, NULL, 27544),
(201251, 'INFO', 1, 2, 'INFA 30001', 2, 17, 19, '102', 35, NULL, 27524),
(201251, 'INFO', 1, 2, 'INFA 30001', 3, 17, 19, '102', 35, NULL, 27524),
(201251, 'INFO', 1, 2, 'INFA 30001', 4, 17, 19, '102', 35, NULL, 27524),
(201251, 'INFO', 1, 2, 'INFB 30001', 1, 13, 15, '102', 37, NULL, 27538),
(201251, 'INFO', 1, 2, 'INFB 30001', 3, 13, 15, '102', 37, NULL, 27538),
(201251, 'INFO', 1, 2, 'INFB 30001', 5, 13, 15, '102', 37, NULL, 27538),
(201251, 'INFO', 1, 2, 'INFG 30003', 1, 17, 19, '103', 36, 29348, 27536),
(201251, 'INFO', 1, 2, 'INFG 30003', 2, 15, 17, '102', 36, 29348, 27536),
(201251, 'INFO', 1, 2, 'INFG 30003', 3, 17, 19, '112', 36, 29348, 27536),
(201251, 'INFO', 4, 1, 'INFD 30001', 1, 7, 9, '102', 31, 70680, 35458),
(201251, 'INFO', 4, 1, 'INFD 30001', 2, 11, 13, '102', 31, 70680, 35458),
(201251, 'INFO', 4, 1, 'INFD 30001', 3, 11, 13, '102', 31, 70680, 35458),
(201251, 'INFO', 4, 1, 'INFD 30002', 1, 9, 11, '102', 28, 70682, 35459),
(201301, 'INFO', 1, 1, 'FBGR 00001', 2, 19, 21, 'CC2', 123, NULL, 27540),
(201301, 'INFO', 1, 1, 'FBGR 00001', 4, 19, 21, 'CC2', 123, NULL, 27540),
(201301, 'INFO', 1, 1, 'FBGR 00001', 5, 19, 21, 'CC2', 123, NULL, 27540),
(201301, 'INFO', 1, 1, 'FBGR 00002', 3, 15, 17, '104', 19, NULL, 27549),
(201301, 'INFO', 1, 1, 'FBGR 00003', 1, 19, 21, '103', 7, NULL, 27548),
(201301, 'INFO', 1, 1, 'FBGR 00003', 3, 19, 21, '103', 7, NULL, 27548),
(201301, 'INFO', 1, 1, 'FBGR 00003', 5, 15, 17, '103', 7, NULL, 27548),
(201301, 'INFO', 1, 1, 'FBGR 00005', 1, 13, 15, '112', 34, NULL, 27539),
(201301, 'INFO', 1, 1, 'FBGR 00005', 3, 13, 15, '112', 34, NULL, 27539),
(201301, 'INFO', 1, 1, 'INFA 30001', 1, 11, 13, '103', 5, NULL, 27523),
(201301, 'INFO', 1, 1, 'INFA 30001', 3, 11, 13, '112', 5, NULL, 27523),
(201301, 'INFO', 1, 1, 'INFA 30001', 4, 11, 13, '106', 5, NULL, 27523),
(201301, 'INFO', 1, 1, 'INFB 30001', 3, 17, 19, '104', 25, NULL, 27535),
(201301, 'INFO', 1, 1, 'INFB 30001', 4, 17, 19, '111', 25, NULL, 27535),
(201301, 'INFO', 1, 1, 'INFB 30001', 5, 13, 15, '113', 25, NULL, 27535),
(201301, 'INFO', 1, 1, 'INFG 30001', 1, 11, 12, '111', 3, NULL, 27533),
(201301, 'INFO', 1, 1, 'INFG 30001', 2, 11, 13, '112', 3, NULL, 27533),
(201301, 'INFO', 1, 1, 'INFG 30001', 4, 11, 13, '112', 3, NULL, 27533),
(201301, 'INFO', 1, 1, 'INFG 30003', 2, 9, 11, '105', 11, NULL, 27534),
(201301, 'INFO', 1, 1, 'INFG 30003', 3, 9, 11, '102', 11, NULL, 27534),
(201301, 'INFO', 1, 1, 'INFG 30003', 5, 9, 11, '102', 11, NULL, 27534),
(201301, 'INFO', 1, 1, 'INFG 30005', 1, 17, 19, '102', 33, 16856, 36003),
(201301, 'INFO', 1, 1, 'INFG 30005', 4, 17, 19, '103', 33, 16856, 36003),
(201301, 'INFO', 1, 1, 'INFG 30005', 5, 17, 19, '102', 33, 16856, 36003),
(201301, 'INFO', 1, 2, 'FBGR 00001', 1, 13, 15, 'CC1', 123, NULL, 27543),
(201301, 'INFO', 1, 2, 'FBGR 00001', 2, 13, 15, 'CC1', 123, NULL, 27543),
(201301, 'INFO', 1, 2, 'FBGR 00001', 5, 13, 15, 'CC1', 123, NULL, 27543),
(201301, 'INFO', 1, 2, 'FBGR 00002', 2, 17, 19, '103', 19, NULL, 27542),
(201301, 'INFO', 1, 2, 'FBGR 00002', 3, 17, 19, '103', 19, NULL, 27542),
(201301, 'INFO', 1, 2, 'FBGR 00005', 2, 13, 15, '113', 38, NULL, 27544),
(201301, 'INFO', 1, 2, 'FBGR 00005', 4, 13, 15, '113', 38, NULL, 27544),
(201301, 'INFO', 1, 2, 'INFA 30001', 2, 17, 19, '102', 35, NULL, 27524),
(201301, 'INFO', 1, 2, 'INFA 30001', 3, 17, 19, '102', 35, NULL, 27524),
(201301, 'INFO', 1, 2, 'INFA 30001', 4, 17, 19, '102', 35, NULL, 27524),
(201301, 'INFO', 1, 2, 'INFB 30001', 1, 13, 15, '102', 37, NULL, 27538),
(201301, 'INFO', 1, 2, 'INFB 30001', 3, 13, 15, '102', 37, NULL, 27538),
(201301, 'INFO', 1, 2, 'INFB 30001', 5, 13, 15, '102', 37, NULL, 27538),
(201301, 'INFO', 1, 2, 'INFG 30003', 1, 17, 19, '103', 36, 29348, 27536),
(201301, 'INFO', 1, 2, 'INFG 30003', 2, 15, 17, '102', 36, 29348, 27536),
(201301, 'INFO', 1, 2, 'INFG 30003', 3, 17, 19, '112', 36, 29348, 27536),
(201501, 'INFO', 1, 1, 'INFB 30001', 3, 17, 19, '105', 20578, NULL, 27535),
(201501, 'INFO', 1, 1, 'INFB 30001', 4, 17, 19, '106', 20578, NULL, 27535),
(201501, 'INFO', 1, 1, 'INFB 30001', 5, 13, 15, '105', 20578, NULL, 27535),
(201501, 'INFO', 1, 1, 'INFG 30001', 1, 11, 12, '108', 63, NULL, 27533),
(201501, 'INFO', 1, 1, 'INFG 30001', 2, 11, 13, '108', 63, NULL, 27533),
(201501, 'INFO', 1, 1, 'INFG 30001', 4, 11, 13, '108', 63, NULL, 27533),
(201501, 'INFO', 1, 1, 'INFG 30003', 2, 9, 11, '105', 3548, NULL, 27534),
(201501, 'INFO', 1, 1, 'INFG 30003', 3, 9, 11, '105', 3548, NULL, 27534),
(201501, 'INFO', 1, 1, 'INFG 30003', 5, 9, 11, '105', 3548, NULL, 27534),
(201501, 'INFO', 1, 1, 'INFG 30005', 1, 17, 19, '4', 24326, NULL, 36003),
(201501, 'INFO', 1, 1, 'INFG 30005', 4, 17, 19, '105', 24326, NULL, 36003),
(201501, 'INFO', 1, 1, 'INFG 30005', 5, 17, 19, '105', 24326, NULL, 36003),
(201501, 'INFO', 1, 2, 'INFB 30001', 2, 11, 13, '102', 20578, NULL, 27535),
(201501, 'INFO', 1, 2, 'INFB 30001', 3, 11, 13, '106', 20578, NULL, 27535),
(201501, 'INFO', 1, 2, 'INFB 30001', 4, 11, 13, 'CC1', 20578, NULL, 27535),
(201501, 'INFO', 1, 2, 'INFG 30002', 1, 17, 19, '106', 2, NULL, 27536),
(201501, 'INFO', 1, 2, 'INFG 30002', 2, 15, 17, '106', 2, NULL, 27536),
(201501, 'INFO', 1, 2, 'INFG 30002', 3, 17, 19, '106', 2, NULL, 27536),
(201501, 'INFO', 1, 3, 'INFA 30001', 1, 9, 11, '106', 20578, NULL, 28442),
(201501, 'INFO', 1, 3, 'INFA 30001', 2, 9, 11, '106', 20578, NULL, 28442),
(201501, 'INFO', 1, 3, 'INFA 30001', 3, 9, 11, '106', 20578, NULL, 28442),
(201501, 'INFO', 1, 3, 'INFG 30003', 1, 13, 15, '106', 3548, NULL, 27537),
(201501, 'INFO', 1, 3, 'INFG 30003', 2, 13, 15, '106', 3548, NULL, 27537),
(201501, 'INFO', 1, 3, 'INFG 30003', 3, 13, 15, '106', 3548, NULL, 27537),
(201501, 'INFO', 1, 5, 'INFA 30001', 2, 13, 15, '105', 27752, NULL, 28445),
(201501, 'INFO', 1, 5, 'INFA 30001', 3, 11, 13, '112', 27752, NULL, 28445),
(201501, 'INFO', 1, 5, 'INFA 30001', 4, 11, 13, 'CC2', 27752, NULL, 28445),
(201501, 'INFO', 3, 1, 'FBGR 00004', 2, 19, 21, '103', 7, NULL, 64388),
(201501, 'INFO', 3, 1, 'FBGR 00004', 4, 19, 21, '103', 7, NULL, 64388),
(201501, 'INFO', 3, 1, 'FBGR 00004', 5, 17, 19, '112', 7, NULL, 64388),
(201501, 'INFO', 3, 1, 'INFA 30002', 1, 9, 11, '113', 24054, NULL, 35876),
(201501, 'INFO', 3, 1, 'INFA 30002', 3, 9, 11, '113', 24054, NULL, 35876),
(201501, 'INFO', 3, 1, 'INFA 30002', 5, 9, 11, 'CIDI', 24054, NULL, 35876),
(201501, 'INFO', 3, 1, 'INFA 30003', 2, 9, 11, 'CC2', 32, 16852, 35901),
(201501, 'INFO', 3, 1, 'INFA 30003', 3, 11, 13, 'CC2', 32, 16582, 35901),
(201501, 'INFO', 3, 1, 'INFA 30003', 5, 11, 13, '108', 32, 16582, 35901),
(201501, 'INFO', 3, 1, 'INFB 30002', 1, 19, 21, '105', 8, 67566, 35892),
(201501, 'INFO', 3, 1, 'INFB 30002', 2, 19, 21, 'CC1', 8, 67566, 35892),
(201501, 'INFO', 3, 1, 'INFB 30002', 5, 19, 21, '108', 8, 67566, 35892),
(201501, 'INFO', 3, 1, 'INFC 30003', 3, 15, 17, '105', 20446, 67567, 27552),
(201501, 'INFO', 3, 1, 'INFC 30003', 4, 19, 21, '105', 20446, 67567, 27552),
(201501, 'INFO', 3, 1, 'INFC 30003', 5, 15, 17, '105', 20446, 67567, 27552),
(201501, 'INFO', 3, 1, 'INFD 30001', 2, 9, 11, '5', 27160, NULL, 35897),
(201501, 'INFO', 3, 1, 'INFD 30001', 3, 9, 11, 'CC1', 27160, NULL, 35897),
(201501, 'INFO', 3, 1, 'INFD 30001', 4, 9, 11, 'CC1', 27160, NULL, 35897),
(201501, 'INFO', 3, 1, 'INFG 30002', 1, 16, 17, '108', 24330, 73617, 35891),
(201501, 'INFO', 3, 1, 'INFG 30002', 2, 15, 17, '108', 24330, 73617, 35891),
(201501, 'INFO', 3, 1, 'INFG 30002', 5, 15, 17, '108', 24330, 73617, 35981),
(201501, 'INFO', 3, 1, 'INFI 30001', 1, 13, 15, 'CC1', 56, NULL, 35895),
(201501, 'INFO', 3, 1, 'INFI 30001', 4, 13, 15, 'CC1', 56, NULL, 35895),
(201501, 'INFO', 3, 1, 'INFI 30001', 5, 11, 12, '105', 56, NULL, 35895),
(201501, 'INFO', 3, 1, 'INFI 30003', 1, 7, 8, '105', 15, NULL, 35893),
(201501, 'INFO', 3, 1, 'INFI 30003', 2, 7, 9, '105', 15, NULL, 35893),
(201501, 'INFO', 3, 1, 'INFI 30003', 5, 7, 9, '105', 15, NULL, 35893),
(201501, 'INFO', 3, 2, 'FBGR 00004', 1, 17, 19, '105', 7, NULL, 35912),
(201501, 'INFO', 3, 2, 'FBGR 00004', 3, 13, 15, '102', 7, NULL, 35912),
(201501, 'INFO', 3, 2, 'FBGR 00004', 4, 13, 15, '106', 7, NULL, 35912),
(201501, 'INFO', 3, 2, 'INFA 30002', 1, 19, 21, '106', 18349, NULL, 35909),
(201501, 'INFO', 3, 2, 'INFA 30002', 3, 19, 21, '106', 18349, NULL, 35909),
(201501, 'INFO', 3, 2, 'INFA 30002', 5, 19, 21, '106', 18349, NULL, 35909),
(201501, 'INFO', 3, 2, 'INFB 30002', 2, 15, 17, '105', 10183, NULL, 35918),
(201501, 'INFO', 3, 2, 'INFB 30002', 4, 15, 17, '105', 10183, NULL, 35918),
(201501, 'INFO', 3, 2, 'INFB 30002', 5, 17, 19, 'CC3', 10183, NULL, 35918),
(201501, 'INFO', 3, 2, 'INFD 30001', 2, 11, 13, '112', 26781, NULL, 35920),
(201501, 'INFO', 3, 2, 'INFD 30001', 4, 11, 13, '112', 26781, NULL, 35920),
(201501, 'INFO', 3, 2, 'INFD 30001', 5, 11, 13, 'CC1', 26781, NULL, 35920),
(201501, 'INFO', 3, 2, 'INFG 30001', 1, 15, 17, '105', 6454, NULL, 35917),
(201501, 'INFO', 3, 2, 'INFG 30001', 2, 19, 21, '105', 6454, NULL, 35917),
(201501, 'INFO', 3, 2, 'INFG 30001', 4, 19, 20, '108', 6454, NULL, 35917),
(201501, 'INFO', 3, 2, 'INFG 30005', 1, 11, 13, '106', 24330, 73781, 35916),
(201501, 'INFO', 3, 2, 'INFG 30005', 2, 11, 13, '106', 24330, 73781, 35916),
(201501, 'INFO', 3, 2, 'INFG 30005', 5, 11, 13, '106', 24330, 73781, 35916),
(201501, 'INFO', 3, 2, 'INFI 30001', 2, 12, 15, 'CC2', 10201, NULL, 35922),
(201501, 'INFO', 3, 2, 'INFI 30001', 3, 13, 15, '112', 10201, NULL, 35922),
(201501, 'INFO', 3, 2, 'INFI 30003', 1, 9, 11, '111', 5, 67574, 35919),
(201501, 'INFO', 3, 2, 'INFI 30003', 4, 11, 13, '111', 5, 67574, 35919),
(201501, 'INFO', 3, 2, 'INFI 30003', 5, 9, 10, '106', 5, 67574, 35919),
(201501, 'INFO', 3, 2, 'INFJ 30002', 1, 9, 11, '112', 28793, NULL, 35924),
(201501, 'INFO', 3, 2, 'INFJ 30002', 2, 9, 11, '112', 28793, NULL, 35924),
(201501, 'INFO', 3, 2, 'INFJ 30002', 5, 11, 13, 'CC3', 28793, NULL, 35924),
(201501, 'INFO', 3, 3, 'INFA 30002', 2, 13, 15, '103', 41306, NULL, 38362),
(201501, 'INFO', 3, 3, 'INFA 30002', 4, 11, 13, '105', 41306, NULL, 38362),
(201501, 'INFO', 3, 3, 'INFA 30002', 5, 11, 13, '103', 41306, NULL, 38362),
(201501, 'INFO', 3, 3, 'INFB 30002', 2, 7, 9, '106', 8, NULL, 30488),
(201501, 'INFO', 3, 3, 'INFB 30002', 3, 8, 10, '111', 8, NULL, 30488),
(201501, 'INFO', 3, 3, 'INFB 30002', 4, 7, 9, 'CC3', 8, NULL, 30488),
(201501, 'INFO', 3, 3, 'INFD 30001', 1, 17, 19, '111', 20446, 73786, 35992),
(201501, 'INFO', 3, 3, 'INFD 30001', 2, 15, 17, 'CC3', 20446, 73786, 35992),
(201501, 'INFO', 3, 3, 'INFD 30001', 4, 17, 19, '111', 20446, 73786, 35992),
(201501, 'INFO', 3, 3, 'INFG 30002', 1, 8, 9, '105', 34079, NULL, 35988),
(201501, 'INFO', 3, 3, 'INFG 30002', 2, 11, 13, '105', 34079, NULL, 35988),
(201501, 'INFO', 3, 3, 'INFG 30002', 3, 7, 9, '105', 34079, NULL, 35988),
(201501, 'INFO', 3, 3, 'INFG 30004', 1, 13, 15, '105', 63, NULL, 59964),
(201501, 'INFO', 3, 3, 'INFG 30004', 3, 13, 15, '105', 63, NULL, 59964),
(201501, 'INFO', 3, 3, 'INFG 30004', 4, 13, 15, '105', 63, NULL, 59964),
(201501, 'INFO', 3, 3, 'INFG 30005', 1, 7, 9, '106', 32428, NULL, 59963),
(201501, 'INFO', 3, 3, 'INFG 30005', 2, 7, 9, '111', 32428, NULL, 59963),
(201501, 'INFO', 3, 3, 'INFG 30005', 3, 7, 9, '106', 32428, NULL, 59963),
(201501, 'INFO', 3, 3, 'INFI 30001', 1, 11, 13, '105', 10201, NULL, 35987),
(201501, 'INFO', 3, 3, 'INFI 30001', 3, 10, 11, 'CC2', 10201, NULL, 35987),
(201501, 'INFO', 3, 3, 'INFI 30003', 2, 17, 19, '111', 18946, 73775, 35989),
(201501, 'INFO', 3, 3, 'INFI 30003', 3, 16, 17, 'CC3', 18946, 73775, 35989),
(201501, 'INFO', 3, 4, 'INFI 30001', 2, 7, 10, 'CC1', 20834, NULL, 35986),
(201501, 'INFO', 3, 4, 'INFI 30001', 4, 7, 9, '105', 20834, NULL, 35986),
(201501, 'INFO', 3, 5, 'FBGR 00002', 1, 15, 17, '4', 3380, NULL, 27546),
(201501, 'INFO', 3, 5, 'FBGR 00002', 4, 15, 17, '106', 3380, NULL, 27546),
(201501, 'INFO', 3, 5, 'FBGR 00005', 4, 11, 13, '102', 27878, NULL, 30021),
(201501, 'INFO', 3, 5, 'FBGR 00005', 5, 11, 13, '104', 27878, NULL, 30021),
(201501, 'INFO', 5, 1, 'INFA 30004', 1, 9, 11, 'CC3', 41, NULL, 41885),
(201501, 'INFO', 5, 1, 'INFA 30004', 3, 9, 11, 'CC3', 41, NULL, 41885),
(201501, 'INFO', 5, 1, 'INFA 30004', 5, 13, 15, 'CC4', 41, NULL, 41885),
(201501, 'INFO', 5, 1, 'INFC 30002', 2, 9, 11, '111', 8205, NULL, 41874),
(201501, 'INFO', 5, 1, 'INFC 30002', 5, 9, 11, '113', 8205, NULL, 41874),
(201501, 'INFO', 5, 1, 'INFC 30004', 1, 7, 9, '108', 6448, NULL, 41884),
(201501, 'INFO', 5, 1, 'INFC 30004', 2, 7, 9, '108', 6448, NULL, 41884),
(201501, 'INFO', 5, 1, 'INFC 30004', 3, 7, 9, '108', 6448, NULL, 41884),
(201501, 'INFO', 5, 1, 'INFC 30005', 1, 11, 14, '113', 8205, 16895, 41882),
(201501, 'INFO', 5, 1, 'INFC 30005', 3, 13, 15, '113', 8205, 16895, 41882),
(201501, 'INFO', 5, 1, 'INFD 30002', 1, 7, 9, '111', 26781, NULL, 64389),
(201501, 'INFO', 5, 1, 'INFD 30002', 4, 7, 9, '113', 26781, NULL, 64389),
(201501, 'INFO', 5, 1, 'INFD 30002', 5, 9, 11, 'CC2', 26781, NULL, 64389),
(201501, 'INFO', 5, 1, 'INFD 30003', 1, 9, 11, '108', 26781, 16889, 41869),
(201501, 'INFO', 5, 1, 'INFD 30003', 3, 9, 11, '108', 26781, 16889, 41869),
(201501, 'INFO', 5, 1, 'INFD 30003', 4, 9, 11, '108', 26781, 16889, 41869),
(201501, 'INFO', 5, 1, 'INFE 30001', 1, 9, 11, 'CC1', 18946, 16887, 41864),
(201501, 'INFO', 5, 1, 'INFE 30001', 2, 10, 11, 'CC1', 18946, 16887, 41864),
(201501, 'INFO', 5, 1, 'INFE 30001', 3, 11, 13, 'CC1', 18946, 16887, 41864),
(201501, 'INFO', 5, 1, 'INFE 30002', 1, 11, 12, 'CC1', 28793, NULL, 41886),
(201501, 'INFO', 5, 1, 'INFE 30002', 2, 11, 13, 'CC1', 28793, NULL, 41886),
(201501, 'INFO', 5, 1, 'INFE 30002', 5, 9, 11, 'CC1', 28793, NULL, 41886),
(201501, 'INFO', 5, 1, 'INFF 30001', 1, 17, 19, '112', 30, 16891, 41873),
(201501, 'INFO', 5, 1, 'INFF 30001', 2, 17, 19, '112', 30, 16891, 41873),
(201501, 'INFO', 5, 1, 'INFF 30001', 4, 17, 19, 'CC4', 30, 16891, 41873),
(201501, 'INFO', 5, 1, 'INFH 30001', 1, 9, 11, '105', 27, NULL, 30466),
(201501, 'INFO', 5, 1, 'INFH 30001', 4, 9, 11, '105', 27, NULL, 30466),
(201501, 'INFO', 5, 1, 'INFH 30001', 5, 9, 11, '111', 27, NULL, 30466),
(201501, 'INFO', 5, 1, 'INFH 30002', 2, 9, 11, 'CC3', 24054, NULL, 41887),
(201501, 'INFO', 5, 1, 'INFH 30002', 3, 7, 9, '112', 24054, NULL, 41887),
(201501, 'INFO', 5, 1, 'INFH 30002', 4, 9, 11, 'CC3', 24054, NULL, 41887),
(201501, 'INFO', 5, 1, 'INFI 30002', 2, 9, 11, '113', 10201, NULL, 38943),
(201501, 'INFO', 5, 1, 'INFI 30002', 4, 9, 11, '113', 10201, NULL, 38943),
(201501, 'INFO', 5, 1, 'INFJ 30001', 2, 11, 13, '111', 27, NULL, 41871),
(201501, 'INFO', 5, 1, 'INFJ 30001', 3, 11, 13, '111', 27, NULL, 41871),
(201501, 'INFO', 5, 1, 'INFJ 30001', 5, 11, 13, '111', 27, NULL, 41871),
(201501, 'INFO', 5, 1, 'INFJ 30002', 2, 15, 17, 'CC4', 26605, NULL, 41861),
(201501, 'INFO', 5, 1, 'INFJ 30002', 4, 15, 17, 'CC4', 26605, NULL, 41861),
(201501, 'INFO', 5, 1, 'INFJ 30002', 5, 15, 17, 'CC2', 26605, NULL, 41861),
(201501, 'INFO', 5, 2, 'INFC 30002', 2, 13, 15, '108', 29, NULL, 38509),
(201501, 'INFO', 5, 2, 'INFC 30002', 4, 13, 15, '108', 29, NULL, 38509),
(201501, 'INFO', 5, 2, 'INFC 30002', 5, 13, 15, '5', 29, NULL, 38509),
(201551, 'RSCO', 2, 1, 'FBGR 00002', 2, 17, 19, '5', 7498, NULL, 70136),
(201551, 'RSCO', 2, 1, 'FBGR 00002', 3, 17, 19, '5', 7498, NULL, 70136),
(201551, 'RSCO', 2, 1, 'FBGR 00004', 1, 9, 11, '102', 7, NULL, 69482),
(201551, 'RSCO', 2, 1, 'FBGR 00004', 2, 7, 9, '102', 7, NULL, 69482),
(201551, 'RSCO', 2, 1, 'FBGR 00004', 4, 13, 15, '102', 7, NULL, 69482),
(201551, 'RSCO', 2, 1, 'MATS 38001', 3, 7, 9, '112', 2, NULL, 71928),
(201551, 'RSCO', 2, 1, 'MATS 38001', 4, 7, 8, '104', 2, NULL, 71928),
(201551, 'RSCO', 2, 1, 'MATS 38001', 5, 13, 15, '113', 2, NULL, 71928),
(201551, 'RSCO', 2, 1, 'MATS 38002', 2, 11, 13, '102', 34079, NULL, 69486),
(201551, 'RSCO', 2, 1, 'MATS 38002', 3, 10, 11, '102', 34079, NULL, 69486),
(201551, 'RSCO', 2, 1, 'MATS 38002', 5, 9, 11, '102', 34079, NULL, 69486),
(201551, 'RSCO', 2, 1, 'MATS 38003', 1, 11, 13, '102', 32428, NULL, 69487),
(201551, 'RSCO', 2, 1, 'MATS 38003', 3, 11, 13, '102', 32428, NULL, 69487),
(201551, 'RSCO', 2, 1, 'MATS 38003', 4, 8, 9, '102', 32428, NULL, 69487),
(201551, 'RSCO', 2, 1, 'MATS 38005', 1, 13, 14, '102', 3548, NULL, 69485),
(201551, 'RSCO', 2, 1, 'MATS 38005', 3, 13, 15, '102', 3548, NULL, 69485),
(201551, 'RSCO', 2, 1, 'MATS 38005', 4, 9, 11, '102', 3548, NULL, 69485),
(201551, 'RSCO', 2, 1, 'PRGM 38001', 2, 9, 11, '102', 5, NULL, 71927),
(201551, 'RSCO', 2, 1, 'PRGM 38001', 4, 11, 13, '102', 5, NULL, 71927),
(201551, 'RSCO', 2, 1, 'PRGM 38001', 5, 11, 13, 'CC2', 5, NULL, 71927),
(201551, 'RSCO', 2, 1, 'RDCO 38002', 1, 7, 9, '102', 8, NULL, 69489),
(201551, 'RSCO', 2, 1, 'RDCO 38002', 3, 9, 10, '102', 8, NULL, 69489),
(201551, 'RSCO', 2, 1, 'RDCO 38002', 5, 7, 9, '102', 8, NULL, 69489),
(201551, 'RSCO', 2, 2, 'FBGR 00004', 1, 17, 19, '102', 7, NULL, 69490),
(201551, 'RSCO', 2, 2, 'FBGR 00004', 3, 15, 17, '102', 7, NULL, 69490),
(201551, 'RSCO', 2, 2, 'FBGR 00004', 4, 17, 19, '102', 7, NULL, 69490),
(201551, 'RSCO', 2, 2, 'MATS 38002', 2, 15, 17, '102', 2, NULL, 69493),
(201551, 'RSCO', 2, 2, 'MATS 38002', 3, 19, 20, '102', 2, NULL, 69493),
(201551, 'RSCO', 2, 2, 'MATS 38002', 5, 15, 17, '102', 2, NULL, 69493),
(201551, 'RSCO', 2, 2, 'PRGM 38002', 1, 15, 17, '102', 41306, NULL, 69495),
(201551, 'RSCO', 2, 2, 'PRGM 38002', 3, 17, 19, '102', 41306, NULL, 69495),
(201551, 'RSCO', 2, 2, 'PRGM 38002', 4, 15, 17, 'CC2', 41306, NULL, 69495);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE IF NOT EXISTS `materia` (
  `idMateria` varchar(10) NOT NULL,
  `area` varchar(10) DEFAULT NULL,
  `academia` varchar(4) DEFAULT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `programa` varchar(12) DEFAULT NULL,
  `creditos` int(2) DEFAULT NULL,
  `horas` int(2) DEFAULT NULL,
  PRIMARY KEY (`idMateria`),
  KEY `id_programa` (`programa`),
  KEY `id_area` (`area`),
  KEY `id_academia` (`academia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`idMateria`, `area`, `academia`, `nombre`, `programa`, `creditos`, `horas`) VALUES
('APSO 38001', 'FDI-ISOF', 'APSO', 'PROCESOS PARA LA INGENIERÍA DE SOFTWARE', 'IGSO', 10, 6),
('APSO 38003', 'FDI-ISOF', 'APSO', 'ADMINISTRACIÓN DE PROYECTOS DE SOFTWARE', 'IGSO', 10, 6),
('ARSI 38001', 'FDI-RSCO', 'ARSI', 'SISTEMAS OPERATIVOS', 'RSCO', 9, 6),
('ARSI 38002', 'FDI-TECO', 'TARS', 'ORGANIZACIÓN DE COMPTUADORAS', 'TECO', 9, 6),
('ARSI 38003', 'FDI-RSCO', 'ARSI', 'PROGRAMACIÓN DE SISTEMAS', 'RSCO', 9, 5),
('ARSI 38004', 'FDI-RSCO', 'ARSI', 'ARQUITECTURA DE DISPOSITIVOS DE RED', 'RSCO', 7, 5),
('ARSI 38005', 'FDI-RSCO', 'ARSI', 'SISTEMAS OPERATIVOS APLICADOS', 'RSCO', 6, 5),
('ARSI 38006', 'FDI-RSCO', 'ARSI', 'MANTENIMIENTO DE EQUIPO DE CÓMPUTO', 'RSCO', 7, 5),
('ARSI 38007', 'FTER-RSCO', 'RSCO', 'SISTEMAS OPERATIVOS MÓVILES', 'RSCO', 6, 4),
('CSOF 38001', 'FDI-ISOF', 'CSOF', 'PRUEBA DE SOFTWARE', 'IGSO', 10, 6),
('CSOF 38002', 'FDI-ISOF', 'CSOF', 'VERIFICACIÓN Y VALIDACIÓN DE SOFTWARE', 'IGSO', 10, 6),
('CTEA 30001', 'FDI-CTES', 'CTEA', 'COMPUTO ESTADÍSTICO', 'CTES', 9, 6),
('CTEA 30002', 'FDI-CTES', 'CTEA', 'INTRODUCCIÓN A LA PROGRAMACIÓN', 'CTES', 9, 6),
('CTEA 30003', 'FTER-CTES', 'CTEA', 'ESTADÍSTICA COMPUTACIONAL', 'CTES', 8, 5),
('CTEB 30001', 'FDI-CTES', 'CTEB', 'INFERENCIA ESTADÍSTICA', 'CTES', 10, 6),
('CTEB 30002', 'FDI-CTES', 'CTEB', 'PROBABILIDAD', 'CTES', 10, 6),
('CTEB 30003', 'FTER-CTES', 'CTEB', 'SEMINARIO DE INFERENCIA ESTADÍSTICA', 'CTES', 10, 6),
('CTEB 30004', 'FTER-CTES', 'CTEB', 'TOPICOS DE ESTÁDISTICA', 'CTES', 10, 6),
('CTEC 30001', 'FTER-CTES', 'CTEC', 'CALCULO AVANZADO', 'CTES', 10, 6),
('CTEC 30002', 'FTER-CTES', 'CTEC', 'ALGEBRA LINEAL AVANZADA', 'CTES', 10, 6),
('CTEC 30003', 'FTER-CTES', 'CTEC', 'ANÁLISIS MATEMÁTICO', 'CTES', 10, 6),
('CTEC 30004', 'FTER-CTES', 'CTEC', 'SEMINARIO DE ESTADÍSTICA MATEMÁTICA', 'CTES', 10, 6),
('CTED 30001', 'FBAS-CTES', 'CTED', 'ALGEBRA LINEAL', 'CTES', 10, 6),
('CTED 30002', 'FBAS-CTES', 'CTED', 'ALBEGRA MATRICIAL Y VECTORIAL', 'CTES', 9, 6),
('CTED 30003', 'FBAS-CTES', 'CTED', 'CALCULO I', 'CTES', 10, 6),
('CTED 30004', 'FBAS-CTES', 'CTED', 'CALCULO II', 'CTES', 10, 6),
('CTED 30005', 'FBAS-CTES', 'CTED', 'INTRODUCCIÓN A LAS MATEMÁTICAS', 'CTES', 9, 6),
('CTED 30006', 'FBAS-CTES', 'CTED', 'PRECALCULO', 'CTES', 8, 6),
('CTEE 30001', 'FBAS-CTES', 'CTEE', 'INTRODUCCIÓN AL ANÁLISIS Y PENSAMIENTO ESTADÍSTICO', 'CTES', 9, 6),
('CTEE 30002', 'FBAS-CTES', 'CTEE', 'METODOLOGÍA DE LA INVESTIGACIÓN', 'CTES', 9, 6),
('CTEE 30003', 'FDI-CTES', 'CTEE', 'CONSULTORIA ESTADÍSTICA', 'CTES', 9, 6),
('CTEE 30004', 'FTER-CTES', 'CTEE', 'PRÁCTICA DE CONSULTORIA', 'CTES', 8, 5),
('CTEF 30001', 'FBAS-CTES', 'CTEF', 'METODOLOGÍA ESTADÍSTICA', 'CTES', 8, 6),
('CTEF 30002', 'FDI-CTES', 'CTEF', 'ESTADÍSTICA EN EL CONTROL DE LA CALIDAD', 'CTES', 8, 6),
('CTEF 30003', 'FDI-CTES', 'CTEF', 'ESTADÍSTICA NO PARAMETRICA', 'CTES', 8, 6),
('CTEF 30004', 'FDI-CTES', 'CTEF', 'MUESTREO', 'CTES', 8, 6),
('CTEF 30005', 'FTER-CTES', 'CTEF', 'DISEÑO Y ANÁLISIS DE ENCUESTAS', 'CTES', 8, 5),
('CTEF 30006', 'FTER-CTES', 'CTEF', 'METÓDOS ESTADÍSTICOS EN LA GESTIÓN DE LA CALIDAD', 'CTES', 8, 5),
('CTEG 30001', 'FDI-CTES', 'CTEG', 'DISEÑO Y ANÁLISIS DE EXPERIMENTOS', 'CTES', 8, 6),
('CTEG 30002', 'FDI-CTES', 'CTEG', 'ESTADÍSTICA MULTIVARIANTE', 'CTES', 8, 6),
('CTEG 30003', 'FDI-CTES', 'CTEG', 'INVESTIGACIÓN DE OPERACIONES', 'CTES', 9, 6),
('CTEG 30004', 'FTER-CTES', 'CTEG', 'ESTADÍSTICA EMPRESARIAL', 'CTES', 8, 5),
('CTEG 30005', 'FTER-CTES', 'CTEG', 'ESTADÍSTICA EXPERIMENTAL', 'CTES', 8, 5),
('CTEG 30006', 'FTER-CTES', 'CTEG', 'TEMAS DE ESTADÍSTICA MULTIVARIANTE', 'CTES', 8, 5),
('CTEH 30001', 'FBAS-CTES', 'CTEH', 'MODELACIÓN ESTADÍSTICA', 'CTES', 8, 6),
('CTEH 30002', 'FDI-CTES', 'CTEH', 'ANÁLISIS DE LA REGRESIÓN', 'CTES', 10, 6),
('CTEH 30003', 'FDI-CTES', 'CTEH', 'ANÁLISIS DE SERIE DE TIEMPO', 'CTES', 8, 6),
('CTEH 30004', 'FDI-CTES', 'CTEH', 'MODELOS LINEALES GENERALIZADOS Y ANÁLISIS DE DATOS CATEGORICOS', 'CTES', 10, 6),
('CTEH 30005', 'FTER-CTES', 'CTEH', 'BIOESTADÍSTICA', 'CTES', 8, 5),
('CTEI 30001', 'FTER-CTES', 'CTEI', 'SERVICIO SOCIAL', 'CTES', 12, 4),
('CTEI 30002', 'FTER-CTES', 'CTEI', 'EXPERIENCIA RECEPCIONAL', 'CTES', 12, 4),
('DSOF 38001', 'FDI-ISOF', 'DSOF', 'PRINCIPIOS DE CONSTRUCCIÓN DE SOFTWARE', 'IGSO', 10, 6),
('DSOF 38002', 'FDI-ISOF', 'DSOF', 'TECNOLOGÍAS PARA LA CONSTRUCCIÓN DE SOFTWARE', 'IGSO', 10, 6),
('DSOF 38003', 'FDI-ISOF', 'DSOF', 'DESARROLLO DE SOFTWARE', 'IGSO', 8, 5),
('DSOF 38004', 'FDI-ISOF', 'DSOF', 'DESARROLLO DE APLICACIONES', 'IGSO', 8, 6),
('DSOF 38005', 'FDI-RSCO', 'DSOF', 'DESARROLLO DE SISTEMAS WEB', 'RSCO', 9, 6),
('DSOF 38006', 'FDI-ISOF', 'DSOF', 'DESARROLLO DE SISTEMAS EN RED', 'IGSO', 10, 6),
('DSOF 38007', 'FDI-ISOF', 'DSOF', 'PRÁCTICAS DE INGENIERÍA DE SOFTWARE', 'IGSO', 9, 6),
('ENSO 38001', 'FDI-ISOF', 'IENS', 'DERECHO DE LAS TECNOLOGÍAS DE INFORMACIÓN Y COMUNICACIÓN', 'IGSO', 8, 5),
('ENSO 38002', 'FDI-ISOF', 'IENS', 'ECONOMÍA PARA TOMA DE DECISIONES', 'IGSO', 6, 4),
('ENSO 38003', 'FDI-RSCO', 'ENSO', 'HABILIDADES DE COMUNICACIÓN', 'RSCO', 6, 4),
('ENSO 38004', 'FDI-TECO', 'TENS', 'HABILIDADES DIRECTIVAS', 'TECO', 8, 5),
('ENSO 38005', 'FDI-TECO', 'TENS', 'GESTIÓN DE PROYECTOS DE TECNOLOGÍAS DE INFORMACIÓN', 'TECO', 8, 5),
('ENSO 38006', 'FDI-RSCO', 'ENSO', 'ADMINISTRACIÓN DE PROYECTOS DE RED', 'RSCO', 6, 4),
('ENSO 38007', 'FDI-RSCO', 'ENSO', 'PRÁCTICAS DE REDES', 'RSCO', 6, 5),
('EXAV 00001', NULL, 'FBGR', 'ACREDITACIÓN DEL IDIOMA INGLÉS', NULL, 6, 1),
('EXRE 38001', 'FDI-TECO', 'TEXR', 'PROYECTO INTEGRADOR', 'TECO', 7, 4),
('EXRE 38002', 'FDI-ISOF', 'IEXR', 'PROYECTO GUIADO', 'IGSO', 7, 5),
('EXRE 38003', 'FTER-RSCO', 'EXRE', 'SERVICIO SOCIAL', 'RSCO', 12, 4),
('EXRE 38004', 'FTER-RSCO', 'EXRE', 'EXPERIENCIA RECEPCIONAL', 'RSCO', 12, 4),
('FBGR 00001', NULL, NULL, 'COMPUTACIÓN BÁSICA', NULL, 6, 6),
('FBGR 00002', NULL, NULL, 'HABILIDADES DE PENSAMIENTO CRÍTICO Y CREATIVO', NULL, 6, 4),
('FBGR 00003', NULL, NULL, 'INGLES I', NULL, 6, 6),
('FBGR 00004', NULL, NULL, 'INGLES II', NULL, 6, 6),
('FBGR 00005', NULL, NULL, 'LECTURA Y REDACCIÓN A TRÁVES DEL ANÁLISIS DEL MUNDO CONTEMPORÁNEO', NULL, 6, 4),
('IARS 38001', 'FDI-ISOF', 'IARS', 'SISTEMAS OPERATIVOS', 'IGSO', 9, 6),
('IARS 38007', 'FTER-ISOF', 'IARS', 'SISTEMAS OPERATIVOS MÓVILES', 'IGSO', 6, 4),
('IDSO 38005', 'FDI-ISOF', 'IDSO', 'DESARROLLO DE SISTEMAS WEB', 'IGSO', 9, 6),
('IENS 38003', 'FBAS-ISOF', 'IENS', 'HABILIDADES DE COMUNICACIÓN', 'IGSO', 6, 4),
('IEXR 38003', 'FTER-ISOF', 'IEXR', 'SERVICIO SOCIAL', 'IGSO', 12, 4),
('IEXR 38004', 'FTER-ISOF', 'IEXR', 'EXPERIENCIA RECEPCIONAL', 'IGSO', 12, 4),
('IGSO 38001', 'FDI-TECO', 'IGSO', 'INGENIERÍA DE SOFTWARE', 'TECO', 9, 6),
('IGSO 38002', 'FDI-TECO', 'IGSO', 'METODOLOGÍAS DE DESARROLLO', 'TECO', 8, 5),
('IHUC 38001', 'FDI-TECO', 'IHUC', 'INTERACCIÓN HUMANO COMPUTADORA', 'TECO', 9, 6),
('IMAT 38001', 'FBAS-ISOF', 'IMAT', 'FUNDAMENTOS DE MATEMÁTICAS', 'IGSO', 8, 5),
('IMAT 38002', 'FBAS-ISOF', 'IMAT', 'ÁLGEBRA LINEAL PARA COMPUTACIÓN', 'IGSO', 7, 5),
('IMAT 38003', 'FBAS-ISOF', 'IMAT', 'PROBABILIDAD Y ESTADÍSTICA PARA COMPUTACIÓN', 'IGSO', 8, 5),
('IMAT 38005', 'FBAS-ISOF', 'IMAT', 'MATEMÁTICAS DISCRETAS', 'IGSO', 8, 5),
('INFA 30001', 'FBAS-INFO', 'INFA', 'ALGORITMOS Y ESTRUCTURA DE DATOS I', 'INFO', 11, 6),
('INFA 30002', 'FDI-INFO', 'INFA', 'ALGORITMOS Y ESTRUCTURA DE DATOS II', 'INFO', 11, 6),
('INFA 30003', 'FDI-INFO', 'INFA', 'PROGRAMACIÓN AVANZADA', 'INFO', 11, 6),
('INFA 30004', 'FTER-INFO', 'INFA', 'TÓPICOS SELECTOS DE COMPUTACIÓN I', 'INFO', 9, 6),
('INFB 30001', 'FBAS-INFO', 'INFB', 'ARQUITECTURA DE COMPUTADORAS I', 'INFO', 10, 6),
('INFB 30002', 'FDI-INFO', 'INFB', 'ARQUITECTURA DE COMPUTADORAS II', 'INFO', 10, 6),
('INFC 30001', 'FDI-INFO', 'INFC', 'METODOLOGÍA DE LA INVESTIGACIÓN', 'INFO', 8, 5),
('INFC 30002', 'FDI-INFO', 'INFC', 'ETICA Y LEGISLACIÓN INFORMÁTICA', 'INFO', 7, 4),
('INFC 30003', 'FDI-INFO', 'INFC', 'FUNDAMENTOS DE ADMINISTRACIÓN', 'INFO', 11, 6),
('INFC 30004', 'FDI-INFO', 'INFC', 'ADMINISTRACIÓN DE RECURSOS INFORMÁTICOS', 'INFO', 10, 6),
('INFC 30005', 'FTER-INFO', 'INFC', 'AUDITORÍA INFORMÁTICA', 'INFO', 8, 5),
('INFD 30001', 'FDI-INFO', 'INFD', 'INGENIERÍA DE SOFTWARE I', 'INFO', 11, 6),
('INFD 30002', 'FDI-INFO', 'INFD', 'INGENIERÍA DE SOFTWARE II', 'INFO', 11, 6),
('INFD 30003', 'FDI-INFO', 'INFD', 'ADMINISTRACIÓN DE PROYECTOS', 'INFO', 10, 6),
('INFD 30004', 'FTER-INFO', 'INFD', 'INGENIERÍA DE SOFTWARE III', 'INFO', 9, 6),
('INFE 30001', 'FDI-INFO', 'INFE', 'TALLER DE INTEGRACIÓN I', 'INFO', 5, 5),
('INFE 30002', 'FDI-INFO', 'INFE', 'TALLER DE INTEGRACIÓN II', 'INFO', 5, 5),
('INFE 30003', 'FDI-INFO', 'INFE', 'TALLER DE INTEGRACIÓN III', 'INFO', 5, 5),
('INFE 30004', 'FTER-INFO', 'INFE', 'TALLER DE INTEGRACIÓN IV', 'INFO', 5, 5),
('INFF 30001', 'FDI-INFO', 'INFF', 'INTELIGENCIA ARTIFICIAL', 'INFO', 10, 6),
('INFF 30002', 'FTER-INFO', 'INFF', 'TÓPICOS SELECTOS DE LA COMPUTACIÓN III', 'INFO', 8, 5),
('INFF 30003', 'FTER-INFO', 'INFF', 'TÓPICOS SELECTOS DE COMPUTACIÓN IV', 'INFO', 8, 5),
('INFG 30001', 'FBAS-INFO', 'INFG', 'ÁLGEBRA LINEAL', 'INFO', 9, 5),
('INFG 30002', 'FBAS-INFO', 'INFG', 'PROBABILIDAD Y ESTADÍSTICA', 'INFO', 9, 5),
('INFG 30003', 'FBAS-INFO', 'INFG', 'MATEMÁTICAS DISCRETAS', 'INFO', 11, 6),
('INFG 30004', 'FDI-INFO', 'INFG', 'LÓGICA', 'INFO', 10, 6),
('INFG 30005', 'FDI-INFO', 'INFG', 'CÁLCULO', 'INFO', 11, 6),
('INFG 30006', 'FTER-INFO', 'INFG', 'GRAFICACIÓN', 'INFO', 9, 6),
('INFG 30007', 'FTER-INFO', 'INFG', 'TÓPICOS SELECTOS DE COMPUTACIÓN II', 'INFO', 8, 5),
('INFH 30001', 'FDI-INFO', 'INFH', 'REDES I', 'INFO', 9, 6),
('INFH 30002', 'FDI-INFO', 'INFH', 'REDES II', 'INFO', 9, 6),
('INFH 30003', 'FTER-INFO', 'INFH', 'REDES III', 'INFO', 9, 6),
('INFH 30004', 'FTER-INFO', 'INFH', 'ADMINISTRACIÓN Y SEGURIDAD DE SERVICIOS DE RED', 'INFO', 8, 6),
('INFH 30005', 'FTER-INFO', 'INFH', 'DESARROLLO DE APLICACIONES EN RED', 'INFO', 9, 6),
('INFI 30001', 'FDI-INFO', 'INFI', 'BASES DE DATOS I', 'INFO', 9, 5),
('INFI 30002', 'FDI-INFO', 'INFI', 'BASES DE DATOS II', 'INFO', 9, 5),
('INFI 30003', 'FDI-INFO', 'INFI', 'ORGANIZACIÓN DE ARCHIVOS', 'INFO', 9, 5),
('INFI 30004', 'FTER-INFO', 'INFI', 'SISTEMAS DE INFORMACIÓN EMPRESARIAL', 'INFO', 8, 5),
('INFI 30005', 'FTER-INFO', 'INFI', 'SISTEMAS DE INFORMACIÓN GEOGRÁFICA', 'INFO', 6, 4),
('INFI 30006', 'FTER-INFO', 'INFI', 'MULTIMEDIA', 'INFO', 9, 6),
('INFJ 30001', 'FDI-INFO', 'INFJ', 'SISTEMAS OPERATIVOS', 'INFO', 11, 6),
('INFJ 30002', 'FDI-INFO', 'INFJ', 'PROGRAMACIÓN DE SISTEMAS', 'INFO', 11, 6),
('INFJ 30003', 'FDI-INFO', 'INFJ', 'COMPILADORES', 'INFO', 9, 6),
('INFT 00001', 'FTER-INFO', 'INFT', 'SERVICIO SOCIAL', 'INFO', 12, 4),
('INFT 00002', 'FTER-INFO', 'INFT', 'EXPERIENCIA RECEPCIONAL', 'INFO', 12, 4),
('INPR 38001', 'FDI-RSCO', 'INPR', 'METODOLOGÍA DE LA INVESTIGACIÓN', 'RSCO', 8, 5),
('INPR 38002', 'FDI-TECO', 'TINP', 'ÉTICA Y LEGISLACIÓN INFORMÁTICA', 'TECO', 7, 4),
('INPR 38003', 'FDI-RSCO', 'INPR', 'ÉTICA Y NORMATIVIDAD EN COMUNICACIONES Y REDES', 'RSCO', 7, 4),
('INTG 38001', 'FDI-TECO', 'INTG', 'TECNOLOGÍAS PARA LA INTEGRACIÓN DE SOLUCIONES', 'TECO', 9, 6),
('INTG 38002', 'FDI-TECO', 'INTG', 'INTEGRACIÓN DE SOLUCIONES', 'TECO', 8, 5),
('INTG 38003', 'FDI-TECO', 'INTG', 'DESARROLLO DE SOFTWARE', 'TECO', 8, 5),
('IPGR 38001', 'FBAS-ISOF', 'ISOT', 'INTRODUCCIÓN A LA PROGRAMACIÓN', 'IGSO', 8, 6),
('IPGR 38002', 'FBAS-ISOF', 'IPRG', 'PROGRAMACIÓN', 'IGSO', 9, 6),
('IPGR 38003', 'FDI-ISOF', 'IPRG', 'ESTRUCTURA DE DATOS', 'IGSO', 9, 6),
('IRDC 38001', 'FDI-ISOF', 'IRDC', 'REDES', 'IGSO', 9, 6),
('IRSC 38004', 'FTER-ISOF', 'IRDC', 'PRUEBAS DE PENETRACIÓN', 'IGSO', 6, 4),
('ISIC 38001', 'FDI-ISOF', 'ISIC', 'BASES DE DATOS', 'IGSO', 9, 6),
('ISOT 38001', 'FTER-ISOF', 'ISOT', 'BASES DE DATOS NO CONVENCIONALES', 'IGSO', 6, 4),
('ISOT 38002', 'FTER-ISOF', 'ISOT', 'INTELIGENCIA ARTIFICIAL APLICADA A LA INGENIERÍA DE SOFTWARE', 'IGSO', 6, 4),
('ISOT 38003', 'FTER-ISOF', 'ISOT', 'MEDICIÓN DE SOFTWARE', 'IGSO', 6, 4),
('ISOT 38004', 'FTER-ISOF', 'ISOT', 'PROGRAMACIÓN MULTINÚCLEO', 'IGSO', 6, 4),
('ISOT 38005', 'FTER-ISOF', 'ISOT', 'PROYECTOS DE SOFTWARE', 'IGSO', 6, 4),
('ISOT 38006', 'FTER-ISOF', 'ISOT', 'REINGENIERÍA DE SOFTWARE', 'IGSO', 6, 4),
('ISOT 38007', 'FTER-ISOF', 'ISOT', 'DISEÑO DE INTERFACES DE USUARIO', 'IGSO', 6, 4),
('ISOT 38008', 'FTER-ISOF', 'ISOT', 'ADMINISTRACIÓN AVANZADA DE SERVICIOS', 'IGSO', 6, 4),
('ISOT 38009', 'FTER-ISOF', 'ISOT', 'PROGRAMACIÓN SEGURA', 'IGSO', 6, 4),
('MASF 38001', 'FDI-ISOF', 'MASF', 'REQUERIMIENTOS DE SOFTWARE', 'IGSO', 6, 4),
('MASF 38002', 'FDI-ISOF', 'MASF', 'PRINCIPIOS DE DISEÑO DE SOFTWARE', 'IGSO', 6, 4),
('MASF 38003', 'FDI-ISOF', 'MASF', 'DISEÑO DE SOFTWARE', 'IGSO', 6, 4),
('MASF 38004', 'FBAS-ISOF', 'MASF', 'LABORATORIO DE RESOLUCIÓN DE PROBLEMAS', 'IGSO', 6, 4),
('MATS 38001', 'FBAS-RSCO', 'MATS', 'FUNDAMENTOS DE MATEMÁTICAS', 'RSCO', 8, 5),
('MATS 38002', 'FBAS-RSCO', 'MATS', 'ÁLGEBRA LINEAL PARA COMPUTACIÓN', 'RSCO', 7, 5),
('MATS 38003', 'FBAS-RSCO', 'MATS', 'PROBABILIDAD Y ESTADÍSTICA PARA COMPUTACIÓN', 'RSCO', 8, 5),
('MATS 38005', 'FBAS-RSCO', 'MATS', 'MATEMÁTICAS DISCRETAS', 'RSCO', 8, 5),
('PRGM 38001', 'FBAS-RSCO', 'PRGM', 'INTRODUCCIÓN A LA PROGRAMACIÓN', 'RSCO', 8, 6),
('PRGM 38002', 'FDI-RSCO', 'PRGM', 'PROGRAMACIÓN', 'RSCO', 9, 6),
('PRGM 38003', 'FDI-RSCO', 'PRGM', 'ESTRUCTURAS DE DATOS', 'RSCO', 9, 6),
('PRGM 38004', 'FDI-ISOF', 'IPRG', 'PARADIGMAS DE PROGRAMACIÓN', 'IGSO', 6, 4),
('PRGM 38005', 'FDI-RSCO', 'PRGM', 'PROGRAMACIÓN EN LA ADMINISTRACIÓN DE REDES', 'RSCO', 8, 5),
('PRGM 38006', 'FDI-TECO', 'TPRG', 'DESARROLLO MÓVIL', 'TECO', 8, 5),
('RDCO 38001', 'FDI-RSCO', 'RDCO', 'REDES DE CÓMPUTO', 'RSCO', 9, 6),
('RDCO 38002', 'FDI-RSCO', 'RDCO', 'PRINCIPIOS DE TELECOMUNICACIONES', 'RSCO', 8, 5),
('RDCO 38003', 'FDI-RSCO', 'RDCO', 'ENRUTAMIENTO BÁSICO', 'RSCO', 9, 6),
('RDCO 38004', 'FDI-RSCO', 'RDCO', 'ENRUTAMIENTO AVANZADO', 'RSCO', 8, 6),
('RDCO 38005', 'FDI-RSCO', 'RDCO', 'COMPUTACIÓN EN REDES LAN', 'RSCO', 8, 5),
('RDCO 38006', 'FDI-RSCO', 'RDCO', 'ARQUITECTURAS DE RED', 'RSCO', 7, 4),
('RDCO 38007', 'FDI-RSCO', 'RDCO', 'REDES INALÁMBRICAS', 'RSCO', 6, 4),
('RDCO 38008', 'FDI-RSCO', 'RDCO', 'ACCESO WAN', 'RSCO', 6, 4),
('RSCO 38001', 'FTER-RSCO', 'RSCO', 'CIBERCRIMEN Y HERRAMIENTAS DIGITALES FORENSES', 'RSCO', 6, 4),
('RSCO 38002', 'FTER-RSCO', 'RSCO', 'RECOLECCIÓN Y PRESERVACIÓN DE EVIDENCIAS', 'RSCO', 6, 4),
('RSCO 38003', 'FTER-RSCO', 'RSCO', 'ANÁLISIS FORENSE PARA SISTEMAS DE ESCRITORIO', 'RSCO', 6, 4),
('RSCO 38004', 'FTER-RSCO', 'RSCO', 'PRUEBAS DE PENETRACIÓN', 'RSCO', 6, 4),
('RSCO 38005', 'FTER-RSCO', 'RSCO', 'SEGURIDAD MÓVIL', 'RSCO', 6, 4),
('RSCO 38006', 'FTER-RSCO', 'RSCO', 'CRIPTOGRAFÍA', 'RSCO', 6, 4),
('RSCO 38007', 'FTER-RSCO', 'RSCO', 'SERVICIOS DE VIRTUALIZACIÓN', 'RSCO', 6, 4),
('RSCO 38008', 'FTER-RSCO', 'RSCO', 'CÓMPUTO SUSTENTABLE', 'RSCO', 6, 4),
('SICC 38001', 'FDI-RSCO', 'SICC', 'BASES DE DATOS', 'RSCO', 9, 6),
('SICC 38002', 'FDI-TECO', 'TSIC', 'BASES DE DATOS AVANZADA', 'TECO', 8, 5),
('SICC 38003', 'FDI-TECO', 'TSIC', 'SISTEMAS INTELIGENTES', 'TECO', 8, 5),
('SICC 38004', 'FTER-ISOF', 'ISIC', 'ADMINISTRACIÓN DE BASES DE DATOS', 'IGSO', 6, 4),
('SICC 38005', 'FDI-RSCO', 'SICC', 'ADMINISTRACIÓN DE BASES DE DATOS', 'RSCO', 8, 5),
('SRCO 38001', 'FDI-RSCO', 'SRCO', 'PROGRAMACIÓN SEGURA', 'RSCO', 8, 5),
('SRCO 38002', 'FDI-RSCO', 'SRCO', 'ANÁLISIS DE PROTOCOLOS', 'RSCO', 6, 4),
('SRCO 38003', 'FDI-RSCO', 'SRCO', 'SEGURIDAD', 'RSCO', 8, 5),
('SRED 38001', 'FDI-RSCO', 'SRED', 'ADMINISTRACIÓN DE SERVIDORES', 'RSCO', 8, 5),
('SRED 38002', 'FDI-RSCO', 'SRED', 'ADMINISTRACIÓN AVANZADA DE SERVICIOS', 'RSCO', 7, 5),
('SWEB 38001', 'FDI-TECO', 'SWEB', 'SISTEMAS WEB', 'TECO', 8, 5),
('SWEB 38002', 'FDI-TECO', 'SWEB', 'TECNOLOGÍAS WEB', 'TECO', 8, 5),
('TAPS 38002', 'FTER-TECO', 'TAPS', 'ADMINISTRACIÓN DE PROYECTOS DE SOFTWARE', 'TECO', 6, 4),
('TARS 38001', 'FDI-TECO', 'TARS', 'SISTEMAS OPERATIVOS', 'TECO', 9, 6),
('TECO 38001', 'FBAS-TECO', 'TECO', 'TECNOLOGÍAS DE INFORMACIÓN PARA LA INNOVACIÓN', 'TECO', 7, 4),
('TECO 38002', 'FDI-TECO', 'TECO', 'PROGRAMACIÓN AVANZADA', 'TECO', 9, 4),
('TECO 38003', 'FTER-TECO', 'TECO', 'INGENIERÍA DE SOFTWARE EMERGENTE', 'TECO', 6, 4),
('TECO 38004', 'FTER-TECO', 'TECO', 'GRAFICACIÓN', 'TECO', 6, 4),
('TECO 38005', 'FTER-TECO', 'TECO', 'DISEÑO DE INTERACCIONES', 'TECO', 6, 4),
('TECO 38006', 'FTER-TECO', 'TECO', 'INTERFACES DE USUARIO AVANZADAS', 'TECO', 6, 4),
('TEXR 38003', 'FTER-TECO', 'TEXR', 'SERVICIO SOCIAL', 'TECO', 12, 4),
('TEXR 38004', 'FTER-TECO', 'TEXR', 'EXPERIENCIA RECEPCIONAL', 'TECO', 12, 4),
('TINP 38001', 'FDI-TECO', 'TINP', 'METODOLOGÍA DE LA INVESTIGACIÓN', 'TECO', 8, 5),
('TISO 38001', 'FTER-TECO', 'IGSO', 'BASE DE DATOS NO CONVENCIONALES', 'TECO', 6, 4),
('TMAT 38001', 'FBAS-TECO', 'TMAT', 'FUNDAMENTOS DE MATEMÁTICAS', 'TECO', 8, 5),
('TMAT 38002', 'FBAS-TECO', 'TMAT', 'ÁLGEBRA LINEAL PARA COMPUTACIÓN', 'TECO', 7, 5),
('TMAT 38003', 'FBAS-TECO', 'TMAT', 'PROBABILIDAD Y ESTADÍSTICA PARA COMPUTACIÓN', 'TECO', 8, 5),
('TMAT 38004', 'FBAS-TECO', 'TMAT', 'MATEMÁTICAS DISCRETAS', 'TECO', 8, 5),
('TPRG 38001', 'FBAS-TECO', 'TPRG', 'INTRODUCCIÓN A LA PROGRAMACIÓN', 'TECO', 8, 6),
('TPRG 38002', 'FBAS-TECO', 'TPRG', 'PROGRAMACIÓN', 'TECO', 9, 6),
('TPRG 38003', 'FDI-TECO', 'TPRG', 'ESTRUCTURAS DE DATOS', 'TECO', 9, 6),
('TRDC 38001', 'FDI-TECO', 'TRDC', 'REDES', 'TECO', 9, 6),
('TRSC 38007', 'FTER-TECO', 'TRDC', 'SERVICIOS DE VIRTUALIZACIÓN', 'TECO', 6, 4),
('TRSC 38008', 'FTER-TECO', 'TRDC', 'CÓMPUTO SUSTENTABLE', 'TECO', 6, 4),
('TSIC 38001', 'FDI-TECO', 'TSIC', 'BASES DE DATOS', 'TECO', 9, 6),
('TSIC 38004', 'FTER-TECO', 'TSIC', 'ADMINISTRACIÓN DE BASES DE DATOS', 'TECO', 6, 4),
('TSRC 38003', 'FDI-TECO', 'TSRC', 'SEGURIDAD', 'TECO', 8, 5),
('TSRE 38001', 'FDI-TECO', 'TSRE', 'ADMINISTRACIÓN DE SERVIDORES', 'TECO', 8, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE IF NOT EXISTS `perfil` (
  `idPerfil` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idPerfil`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`idPerfil`, `descripcion`) VALUES
(1, 'ADMINISTRADOR'),
(2, 'OPERADOR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo`
--

CREATE TABLE IF NOT EXISTS `periodo` (
  `idPeriodo` int(6) NOT NULL,
  `mesInicio` varchar(10) DEFAULT NULL,
  `mesTermino` varchar(10) DEFAULT NULL,
  `anoInicio` date DEFAULT NULL,
  `anoTermino` date DEFAULT NULL,
  `vigente` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idPeriodo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `periodo`
--

INSERT INTO `periodo` (`idPeriodo`, `mesInicio`, `mesTermino`, `anoInicio`, `anoTermino`, `vigente`) VALUES
(201251, 'ENERO', 'JUNIO', '2012-07-30', '2012-07-30', 0),
(201301, 'AGOSTO', 'ENERO', '2012-07-31', '2013-07-31', 0),
(201401, 'AGOSTO', 'ENERO', '2013-08-01', '2014-01-31', 0),
(201451, 'ENERO', 'JUNIO', '2014-01-01', '2014-07-30', 0),
(201501, 'AGOSTO', 'ENERO', '2014-08-01', '2015-01-31', 0),
(201551, 'FEBRERO', 'JULIO', '2015-02-01', '2015-07-01', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE IF NOT EXISTS `programa` (
  `idPrograma` varchar(12) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idPrograma`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `programa`
--

INSERT INTO `programa` (`idPrograma`, `descripcion`) VALUES
('CTES', 'LICENCIATURA EN CIENCIAS Y TECNICAS ESTADISTICAS'),
('IGSO', 'INGENIERÍA DE SOFTWARE'),
('INFO', 'LICENCIATURA EN INFORMATICA'),
('RSCO', 'REDES Y SERVICIOS DE CÓMPUTO'),
('TECO', 'TECNOLOGÍAS COMPUTACIONALES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE IF NOT EXISTS `tipo` (
  `idTipo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idTipo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`idTipo`, `descripcion`) VALUES
(1, 'TIEMPO COMPLETO A'),
(2, 'TIEMPO COMPLETO B'),
(3, 'TIEMPO COMPLETO C'),
(4, 'TECNICO ACADEMICO A'),
(5, 'TECNICO ACADEMICO B'),
(6, 'TECNICO ACADEMICO C'),
(7, 'POR ASIGNATURA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE IF NOT EXISTS `ubicacion` (
  `idUbicacion` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idUbicacion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`idUbicacion`, `descripcion`) VALUES
(1, 'PLANTA BAJA'),
(2, 'PLANTA ALTA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `usuario` varchar(30) NOT NULL,
  `contrasena` varchar(40) DEFAULT NULL,
  `rol` int(1) DEFAULT NULL,
  PRIMARY KEY (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario`, `contrasena`, `rol`) VALUES
('jazmin', '123456', 2),
('superusuario', '123456', 1);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `academia`
--
ALTER TABLE `academia`
  ADD CONSTRAINT `id_aca` FOREIGN KEY (`coordinador`) REFERENCES `academico` (`idAcademico`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_pro` FOREIGN KEY (`programa`) REFERENCES `programa` (`idPrograma`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `academico`
--
ALTER TABLE `academico`
  ADD CONSTRAINT `id_tipo` FOREIGN KEY (`tipoPersonal`) REFERENCES `tipo` (`idTipo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `area`
--
ALTER TABLE `area`
  ADD CONSTRAINT `id_prog` FOREIGN KEY (`programa`) REFERENCES `programa` (`idPrograma`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `aula`
--
ALTER TABLE `aula`
  ADD CONSTRAINT `id_ubicacion` FOREIGN KEY (`ubicacion`) REFERENCES `ubicacion` (`idUbicacion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `examen`
--
ALTER TABLE `examen`
  ADD CONSTRAINT `academico_id` FOREIGN KEY (`academico`) REFERENCES `academico` (`idAcademico`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `aula_id` FOREIGN KEY (`aula`) REFERENCES `aula` (`idAula`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `materia_id` FOREIGN KEY (`idMateria`) REFERENCES `materia` (`idMateria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `periodo_id` FOREIGN KEY (`idPeriodo`) REFERENCES `periodo` (`idPeriodo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `programa_id` FOREIGN KEY (`idPrograma`) REFERENCES `programa` (`idPrograma`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `fei_alumnosuo`
--
ALTER TABLE `fei_alumnosuo`
  ADD CONSTRAINT `fei_alumnosuo_ibfk_1` FOREIGN KEY (`a_idcarrera`) REFERENCES `programa` (`idPrograma`),
  ADD CONSTRAINT `fei_alumnosuo_ibfk_2` FOREIGN KEY (`a_idexperiencia`) REFERENCES `materia` (`idMateria`),
  ADD CONSTRAINT `fei_alumnosuo_ibfk_3` FOREIGN KEY (`a_idtutor`) REFERENCES `academico` (`idAcademico`),
  ADD CONSTRAINT `fei_alumnosuo_ibfk_4` FOREIGN KEY (`a_idmtrocurso`) REFERENCES `academico` (`idAcademico`),
  ADD CONSTRAINT `fei_alumnosuo_ibfk_5` FOREIGN KEY (`a_idperiodo`) REFERENCES `periodo` (`idPeriodo`),
  ADD CONSTRAINT `fei_alumnosuo_ibfk_6` FOREIGN KEY (`a_idmodalidad`) REFERENCES `fei_modalidad` (`m_idmod`);

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `id_academico` FOREIGN KEY (`academico`) REFERENCES `academico` (`idAcademico`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_aula` FOREIGN KEY (`aula`) REFERENCES `aula` (`idAula`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_materia` FOREIGN KEY (`idMateria`) REFERENCES `materia` (`idMateria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_pdo` FOREIGN KEY (`idPeriodo`) REFERENCES `periodo` (`idPeriodo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_pma` FOREIGN KEY (`idPrograma`) REFERENCES `programa` (`idPrograma`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `materia`
--
ALTER TABLE `materia`
  ADD CONSTRAINT `id_academia` FOREIGN KEY (`academia`) REFERENCES `academia` (`idAcademia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_area` FOREIGN KEY (`area`) REFERENCES `area` (`idArea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_programa` FOREIGN KEY (`programa`) REFERENCES `programa` (`idPrograma`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
