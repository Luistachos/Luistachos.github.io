-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2024 a las 03:50:35
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `spotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista`
--

CREATE TABLE `artista` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `biografia` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `artista`
--

INSERT INTO `artista` (`id`, `nombre`, `biografia`) VALUES
(1, 'Metallica', 'Metallica es una banda de trash metal, un género musical caracterizado por rápidos cortes de guitarra y una percusión acelerada, y uno de los grupos más populares de la historia gracias a su particular ejecución tanto vocal como instrumental.'),
(2, 'Eminem', 'Eminem, es un cantante y compositor norteamericano, una de las principales estrellas de la historia del rap.'),
(3, 'Romeo Santos', 'Romeo Santos, también conocido como el \"Rey de la Bachata\", es un músico de gran éxito e influencia en la industria de la música latina. Nació en el Bronx, Nueva York.'),
(4, 'Johnny Cash', 'Johnny Cash (nacido como J. R. Cash, Kingsland, Arkansas; 26 de febrero de 1932-Nashville, Tennessee; 12 de septiembre de 2003) fue un cantante, compositor, músico, y actor estadounidense. Considerado el Rey de la Música Country y un icono de ese género.'),
(5, 'Kendrick Lamar', 'Kendrick Lamar ha emergido como un titán en la escena del hip-hop, llevando sus rolas a nuevas ligas con una mezcla única de lírica aguda y conciencia social.'),
(6, 'Daddy Yankee', 'Daddy Yankee es el mayor exponente de reggaetón en el mundo. Su verdadero nombre es Raymond Ayala Rodríguez y nació en Villa Kennedy, Puerto Rico, el 3 de febrero de 1976.'),
(7, 'Khea', 'KHEA, es un cantante y compositor argentino referente del Trap. Empezó como muchos otros jóvenes de argentina, forjando su carrera en las calles, creciendo para darse una identidad.'),
(8, 'Earth, Wind & Fire', 'conocidos también como EWF, es un grupo musical estadounidense, formado en Chicago (Illinois) en 1970. Fue fundado por Maurice White.'),
(9, 'Tupac', 'Shakur, uno de los artistas con mayores ventas de todos los tiempos, fue un símbolo de la cultura gangsta-rap de la década de 1990. Tras su muerte, se convirtió en un icono de la cultura del hip-hop en EE.'),
(10, 'Led Zeppelin', 'Led Zeppelin es en realidad un power trío que se caracteriza por el sonido distorsionado de la guitarra de Page y los característicos obstinatos (fases rítmicas que melódicamente se repiten), del bajo y la batería que le da un sonido verdaderamente poderoso.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas_canciones`
--

CREATE TABLE `artistas_canciones` (
  `id` int(11) NOT NULL,
  `artistas_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `generos_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `generos_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'Master of Puppets', 57, '08:35:00', '1986-03-03', 1, 'foto1.jpg'),
(2, 'Lose Yourself', 58, '05:20:00', '2002-10-28', 1, 'foto2.jpg'),
(3, 'Propuesta Indecente', 59, '03:55:00', '2013-07-30', 1, 'foto3.jpg'),
(4, 'Ring of Fire', 60, '02:37:00', '1963-04-19', 1, 'foto4.jpg'),
(5, 'HUMBLE.', 61, '02:57:00', '2017-03-30', 1, 'foto5.jpg'),
(6, 'Gasolina', 62, '03:13:00', '2004-03-13', 1, 'foto6.jpg'),
(7, 'She Dont Give a FO', 63, '03:25:00', '2017-09-01', 1, 'foto7.jpg'),
(8, 'September', 64, '03:34:00', '1978-09-18', 1, 'foto8.jpg'),
(9, 'California Love', 58, '04:45:00', '1995-12-03', 1, 'foto9.jpg'),
(10, 'Stairway to Heaven', 57, '08:02:00', '1971-11-08', 1, 'foto10.jpg'),
(11, 'Enter Sandman', 57, '05:32:00', '1991-07-29', 1, 'foto11.jpg'),
(12, 'The Real Slim Shady', 58, '04:44:00', '2000-05-16', 1, 'foto12.jpg'),
(13, 'Eres Mía', 59, '04:15:00', '2014-07-27', 1, 'foto13.jpg'),
(14, 'Folsom Prison Blues', 60, '02:50:00', '1955-12-15', 1, 'foto14.jpg'),
(15, 'Alright', 61, '03:39:00', '2015-03-15', 1, 'foto15.jpg'),
(16, 'Lo Que Pasó, Pasó', 62, '03:31:00', '2004-07-13', 1, 'foto16.jpg'),
(17, 'Loca', 63, '03:34:00', '2017-11-20', 1, 'foto17.jpg'),
(18, 'Boogie Wonderland', 64, '04:48:00', '1979-04-20', 1, 'foto18.jpg'),
(19, 'Changes', 58, '04:30:00', '1998-10-13', 1, 'foto19.jpg'),
(20, 'Whole Lotta Love', 57, '05:34:00', '1969-11-07', 1, 'foto20.jpg'),
(21, 'Fade to Black', 57, '06:57:00', '1984-07-27', 1, 'foto21.jpg'),
(22, 'Not Afraid', 58, '04:08:00', '2010-04-29', 1, 'foto22.jpg'),
(23, 'Hilito', 59, '04:14:00', '2014-09-08', 1, 'foto23.jpg'),
(24, 'Hurt', 60, '03:37:00', '2002-11-05', 1, 'foto24.jpg'),
(25, 'DNA.', 61, '03:05:00', '2017-04-14', 1, 'foto25.jpg'),
(26, 'Limbo', 62, '03:44:00', '2012-11-27', 1, 'foto26.jpg'),
(27, 'Mía', 63, '03:31:00', '2018-10-11', 1, 'foto27.jpg'),
(28, 'Fantasy', 64, '03:46:00', '1977-03-18', 1, 'foto28.jpg'),
(29, 'Hit Em Up', 58, '05:12:00', '1996-06-04', 1, 'foto29.jpg'),
(30, 'Black Dog', 57, '04:55:00', '1971-11-08', 1, 'foto30.jpg'),
(31, 'For Whom the Bell Tolls', 57, '05:10:00', '1984-07-27', 1, 'foto31.jpg'),
(32, 'Stan', 58, '06:44:00', '2000-11-21', 1, 'foto32.jpg'),
(33, 'Yo También', 59, '04:06:00', '2014-10-27', 1, 'foto33.jpg'),
(34, 'I Walk the Line', 60, '02:43:00', '1956-05-01', 1, 'foto34.jpg'),
(35, 'LOYALTY.', 61, '03:47:00', '2017-04-14', 1, 'foto35.jpg'),
(36, 'Con Calma', 62, '03:13:00', '2019-01-24', 1, 'foto36.jpg'),
(37, 'Loka', 63, '03:17:00', '2017-12-01', 1, 'foto37.jpg'),
(38, 'Let\'s Groove', 64, '05:37:00', '1981-08-29', 1, 'foto38.jpg'),
(39, 'Ghetto Gospel', 58, '03:58:00', '2004-11-25', 1, 'foto39.jpg'),
(40, 'Kashmir', 57, '08:29:00', '1975-02-24', 1, 'foto40.jpg'),
(41, 'Creeping Death', 57, '06:36:00', '1984-07-27', 1, 'foto41.jpg'),
(42, 'Mockingbird', 58, '04:11:00', '2004-12-07', 1, 'foto42.jpg'),
(43, 'Promise', 59, '04:17:00', '2009-06-30', 1, 'foto43.jpg'),
(44, 'Man in Black', 60, '02:52:00', '1971-03-01', 1, 'foto44.jpg'),
(45, 'ELEMENT.', 61, '03:28:00', '2017-04-14', 1, 'foto45.jpg'),
(46, 'Rompe', 62, '03:08:00', '2005-07-13', 1, 'foto46.jpg'),
(47, 'Vete', 63, '03:31:00', '2019-11-22', 1, 'foto47.jpg'),
(48, 'Shining Star', 64, '02:50:00', '1975-04-21', 1, 'foto48.jpg'),
(49, 'Dear Mama', 58, '04:39:00', '1995-02-21', 1, 'foto49.jpg'),
(50, 'Immigrant Song', 57, '02:26:00', '1970-11-08', 1, 'foto50.jpg'),
(51, 'Seek & Destroy', 57, '06:55:00', '1983-08-25', 1, 'foto51.jpg'),
(52, 'Beautiful', 58, '05:20:00', '2009-01-12', 1, 'foto52.jpg'),
(53, 'Llévame Contigo', 59, '03:55:00', '2012-01-31', 1, 'foto53.jpg'),
(54, 'A Boy Named Sue', 60, '03:45:00', '1969-07-01', 1, 'foto54.jpg'),
(55, 'Swimming Pools', 61, '03:40:00', '2012-07-31', 1, 'foto55.jpg'),
(56, 'Dura', 62, '03:25:00', '2018-01-18', 1, 'foto56.jpg'),
(57, 'Vamos a Marte', 63, '03:15:00', '2020-06-20', 1, 'foto57.jpg'),
(58, 'After the Love Has Gone', 64, '04:25:00', '1979-07-01', 1, 'foto58.jpg'),
(59, 'Do for Love', 58, '04:42:00', '1997-03-21', 1, 'foto59.jpg'),
(60, 'Dazed and Confused', 57, '06:27:00', '1969-01-12', 1, 'foto60.jpg'),
(61, 'Ride the Lightning', 57, '06:37:00', '1984-07-27', 1, 'foto61.jpg'),
(62, 'Without Me', 58, '04:50:00', '2002-05-14', 1, 'foto62.jpg'),
(63, 'Bella y Sensual', 59, '04:45:00', '2017-11-03', 1, 'foto63.jpg'),
(64, 'Ghost Riders in the Sky', 60, '03:45:00', '1949-06-05', 1, 'foto64.jpg'),
(65, 'Money Trees', 61, '06:27:00', '2012-10-22', 1, 'foto65.jpg'),
(66, 'La Despedida', 62, '02:52:00', '2010-08-05', 1, 'foto66.jpg'),
(67, 'Pa Mí', 63, '03:30:00', '2018-10-05', 1, 'foto67.jpg'),
(68, 'Reasons', 64, '04:59:00', '1975-05-21', 1, 'foto68.jpg'),
(69, 'Only God Can Judge Me', 58, '04:57:00', '1996-02-13', 1, 'foto69.jpg'),
(70, 'Communication Breakdown', 57, '02:30:00', '1969-01-12', 1, 'foto70.jpg'),
(71, 'The Unforgiven', 57, '06:27:00', '1991-08-12', 1, 'foto71.jpg'),
(72, 'Just Lose It', 58, '04:08:00', '2004-09-28', 1, 'foto72.jpg'),
(73, 'Sobredosis', 59, '03:39:00', '2017-07-21', 1, 'foto73.jpg'),
(74, 'Ring of Fire (Live)', 60, '02:37:00', '1968-04-19', 1, 'foto74.jpg'),
(75, 'Backseat Freestyle', 61, '03:32:00', '2012-10-22', 1, 'foto75.jpg'),
(76, 'Sígueme y Te Sigo', 62, '03:25:00', '2015-03-12', 1, 'foto76.jpg'),
(77, 'Ronda', 63, '03:02:00', '2019-02-14', 1, 'foto77.jpg'),
(78, 'Got to Get You Into My Life', 64, '04:11:00', '1978-05-24', 1, 'foto78.jpg'),
(79, 'Brenda\'s Got a Baby', 58, '03:55:00', '1991-10-20', 1, 'foto79.jpg'),
(80, 'Good Times Bad Times', 57, '02:46:00', '1969-01-12', 1, 'foto80.jpg'),
(81, 'One', 57, '07:27:00', '1989-01-10', 1, 'foto81.jpg'),
(82, 'Love the Way You Lie', 58, '04:23:00', '2010-06-25', 1, 'foto82.jpg'),
(83, 'La Diabla', 59, '03:54:00', '2012-02-07', 1, 'foto83.jpg'),
(84, 'Get Rhythm', 60, '02:16:00', '1956-06-01', 1, 'foto84.jpg'),
(85, 'LOVE.', 61, '03:33:00', '2017-04-14', 1, 'foto85.jpg'),
(86, 'Que Tire Pa Lante', 62, '03:33:00', '2019-10-18', 1, 'foto86.jpg'),
(87, 'Wacha', 63, '03:25:00', '2021-02-14', 1, 'foto87.jpg'),
(88, 'In the Stone', 64, '04:26:00', '1979-08-11', 1, 'foto88.jpg'),
(89, 'Me Against the World', 58, '04:39:00', '1995-03-14', 1, 'foto89.jpg'),
(90, 'Whole Lotta Love', 57, '05:34:00', '1969-11-07', 1, 'foto90.jpg'),
(91, 'The Memory Remains', 57, '04:39:00', '1997-11-11', 1, 'foto91.jpg'),
(92, 'The Monster', 58, '04:10:00', '2013-10-29', 1, 'foto92.jpg'),
(93, 'Perjurio', 59, '03:32:00', '2019-02-21', 1, 'foto93.jpg'),
(94, 'Hey Porter', 60, '02:14:00', '1955-05-01', 1, 'foto94.jpg'),
(95, 'PRIDE.', 61, '04:35:00', '2017-04-14', 1, 'foto95.jpg'),
(96, 'Lovumba', 62, '03:40:00', '2011-10-04', 1, 'foto96.jpg'),
(97, 'Vete', 63, '03:38:00', '2020-01-24', 1, 'foto97.jpg'),
(98, 'Boogie Nights', 64, '06:03:00', '1977-09-18', 1, 'foto98.jpg'),
(99, 'So Many Tears', 58, '03:59:00', '1995-06-13', 1, 'foto99.jpg'),
(100, 'Ramble On', 57, '04:23:00', '1969-10-22', 1, 'foto100.jpg'),
(101, 'Fuel', 57, '04:29:00', '1998-06-25', 1, 'foto101.jpg'),
(102, 'Mockingbird', 58, '04:10:00', '2004-04-25', 1, 'foto102.jpg'),
(103, 'Eres Mía', 59, '03:53:00', '2014-07-21', 1, 'foto103.jpg'),
(104, 'Big River', 60, '02:33:00', '1958-05-19', 1, 'foto104.jpg'),
(105, 'XXX.', 61, '04:14:00', '2017-04-14', 1, 'foto105.jpg'),
(106, 'Shaky Shaky', 62, '03:51:00', '2016-04-08', 1, 'foto106.jpg'),
(107, 'Hitboy', 63, '03:45:00', '2020-08-01', 1, 'foto107.jpg'),
(108, 'After the Love Has Gone', 64, '04:39:00', '1979-07-20', 1, 'foto108.jpg'),
(109, 'Keep Ya Head Up', 58, '04:23:00', '1993-10-28', 1, 'foto109.jpg'),
(110, 'Immigrant Song', 57, '02:26:00', '1970-11-08', 1, 'foto110.jpg'),
(111, 'Hardwired', 57, '03:11:00', '2016-08-18', 1, 'foto111.jpg'),
(112, 'Rap God', 58, '06:03:00', '2013-10-14', 1, 'foto112.jpg'),
(113, 'El Perdedor', 59, '03:55:00', '2014-11-17', 1, 'foto113.jpg'),
(114, 'Sunday Mornin\' Comin\' Down', 60, '04:06:00', '1970-09-01', 1, 'foto114.jpg'),
(115, 'FEAR.', 61, '07:40:00', '2017-04-14', 1, 'foto115.jpg'),
(116, 'Limbo', 62, '03:47:00', '2012-11-27', 1, 'foto116.jpg'),
(117, 'Relax', 63, '03:34:00', '2019-01-10', 1, 'foto117.jpg'),
(118, 'Fantasy', 64, '04:38:00', '1977-01-01', 1, 'foto118.jpg'),
(119, 'Changes', 58, '04:30:00', '1998-10-13', 1, 'foto119.jpg'),
(120, 'Black Dog', 57, '04:55:00', '1971-11-08', 1, 'foto120.jpg'),
(121, 'Battery', 57, '05:12:00', '1986-03-03', 1, 'foto121.jpg'),
(122, 'When I\'m Gone', 58, '04:41:00', '2005-12-06', 1, 'foto122.jpg'),
(123, 'Odio', 59, '03:45:00', '2014-01-28', 1, 'foto123.jpg'),
(124, 'Cry! Cry! Cry!', 60, '02:29:00', '1955-06-01', 1, 'foto124.jpg'),
(125, 'HUMBLE.', 61, '02:57:00', '2017-03-30', 1, 'foto125.jpg'),
(126, 'Sígueme y Te Sigo', 62, '03:27:00', '2015-03-12', 1, 'foto126.jpg'),
(127, 'Mami', 63, '03:12:00', '2018-10-18', 1, 'foto127.jpg'),
(128, 'September', 64, '03:35:00', '1978-09-18', 1, 'foto128.jpg'),
(129, 'California Love', 58, '04:45:00', '1995-12-03', 1, 'foto129.jpg'),
(130, 'Rock and Roll', 57, '03:40:00', '1971-11-08', 1, 'foto130.jpg'),
(131, 'Fade to Black', 57, '06:57:00', '1984-07-27', 1, 'foto131.jpg'),
(132, 'Space Bound', 58, '04:38:00', '2010-06-21', 1, 'foto132.jpg'),
(133, 'Propuesta Indecente', 59, '03:55:00', '2013-07-23', 1, 'foto133.jpg'),
(134, 'Folsom Prison Blues', 60, '02:48:00', '1955-12-15', 1, 'foto134.jpg'),
(135, 'King Kunta', 61, '03:54:00', '2015-03-31', 1, 'foto135.jpg'),
(136, 'Gasolina', 62, '03:12:00', '2004-10-14', 1, 'foto136.jpg'),
(137, 'Loca', 63, '03:35:00', '2017-12-20', 1, 'foto137.jpg'),
(138, 'Shining Star', 64, '02:50:00', '1975-04-21', 1, 'foto138.jpg'),
(139, 'Hail Mary', 58, '05:12:00', '1996-12-21', 1, 'foto139.jpg'),
(140, 'Stairway to Heaven', 57, '08:03:00', '1971-11-08', 1, 'foto140.jpg'),
(141, 'For Whom the Bell Tolls', 57, '05:10:00', '1984-07-27', 1, 'foto141.jpg'),
(142, 'Venom', 58, '04:29:00', '2018-09-21', 1, 'foto142.jpg'),
(143, 'Imitadora', 59, '03:55:00', '2017-06-23', 1, 'foto143.jpg'),
(144, 'I Walk the Line', 60, '02:43:00', '1956-05-01', 1, 'foto144.jpg'),
(145, 'DNA.', 61, '03:05:00', '2017-04-14', 1, 'foto145.jpg'),
(146, 'Rompe', 62, '03:08:00', '2005-07-13', 1, 'foto146.jpg'),
(147, 'Se Motiva', 63, '03:20:00', '2018-07-12', 1, 'foto147.jpg'),
(148, 'Boogie Wonderland', 64, '04:48:00', '1979-03-20', 1, 'foto148.jpg'),
(149, 'Ghetto Gospel', 58, '03:58:00', '2004-11-25', 1, 'foto149.jpg'),
(150, 'Kashmir', 57, '08:29:00', '1975-02-24', 1, 'foto150.jpg'),
(151, 'Creeping Death', 57, '06:36:00', '1984-07-27', 1, 'foto151.jpg'),
(152, 'The Real Slim Shady', 58, '04:44:00', '2000-05-16', 1, 'foto152.jpg'),
(153, 'Héroe Favorito', 59, '04:27:00', '2017-02-10', 1, 'foto153.jpg'),
(154, 'Jackson', 60, '02:45:00', '1967-01-01', 1, 'foto154.jpg'),
(155, 'ELEMENT.', 61, '03:28:00', '2017-04-14', 1, 'foto155.jpg'),
(156, 'Ella Me Levantó', 62, '03:31:00', '2007-06-05', 1, 'foto156.jpg'),
(157, 'Trap n', 63, '03:08:00', '2019-02-14', 1, 'foto157.jpg'),
(158, 'Fantasy', 64, '04:38:00', '1977-01-01', 1, 'foto158.jpg'),
(159, 'Dear Mama', 58, '04:39:00', '1995-02-21', 1, 'foto159.jpg'),
(160, 'Dazed and Confused', 57, '06:27:00', '1969-01-12', 1, 'foto160.jpg'),
(161, 'Sad but True', 57, '05:24:00', '1991-08-12', 1, 'foto161.jpg'),
(162, 'Fall', 58, '04:22:00', '2018-08-31', 1, 'foto162.jpg'),
(163, 'Eres Mía', 59, '03:53:00', '2014-07-21', 1, 'foto163.jpg'),
(164, 'Ring of Fire', 60, '02:37:00', '1963-04-19', 1, 'foto164.jpg'),
(165, 'LOYALTY.', 61, '03:47:00', '2017-04-14', 1, 'foto165.jpg'),
(166, 'Dura', 62, '03:25:00', '2018-01-18', 1, 'foto166.jpg'),
(167, 'Pa Mí', 63, '03:30:00', '2018-10-05', 1, 'foto167.jpg'),
(168, 'Let\'s Groove', 64, '05:37:00', '1981-08-29', 1, 'foto168.jpg'),
(169, 'Gimme Shelter', 57, '04:30:00', '1969-12-05', 1, 'foto169.jpg'),
(170, 'Seek & Destroy', 57, '06:55:00', '1983-07-25', 1, 'foto170.jpg'),
(171, 'Kill You', 58, '04:24:00', '2000-05-23', 1, 'foto171.jpg'),
(172, 'El Beso Que No Le Di', 59, '04:18:00', '2018-09-28', 1, 'foto172.jpg'),
(173, 'I Got Stripes', 60, '02:05:00', '1959-07-01', 1, 'foto173.jpg'),
(174, 'Alright', 61, '03:39:00', '2015-03-31', 1, 'foto174.jpg'),
(175, 'Llamado de Emergencia', 62, '03:25:00', '2008-01-14', 1, 'foto175.jpg'),
(176, 'Como le digo', 63, '03:14:00', '2019-08-14', 1, 'foto176.jpg'),
(177, 'Sing a Song', 64, '03:23:00', '1975-11-21', 1, 'foto177.jpg'),
(178, 'Only God Can Judge Me', 58, '04:57:00', '1996-10-15', 1, 'foto178.jpg'),
(179, 'Good Times Bad Times', 57, '02:46:00', '1969-01-12', 1, 'foto179.jpg'),
(180, 'Motorbreath', 57, '03:08:00', '1983-07-25', 1, 'foto180.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id`, `nombre`) VALUES
(57, 'rock'),
(58, 'rap'),
(59, 'bachata'),
(60, 'country'),
(61, 'hiphop'),
(62, 'reggaeton'),
(63, 'trap'),
(64, 'disco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membrecias`
--

CREATE TABLE `membrecias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `membrecias`
--

INSERT INTO `membrecias` (`id`, `descripcion`, `precio`) VALUES
(1, 'membrecia indiviual mensual', 129),
(2, 'membrecia duo mensual', 169),
(3, 'membrecia familiar mensual', 199),
(4, 'membrecia de estudiante mensual', 69);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `total_canciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_canciones`
--

CREATE TABLE `playlist_canciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `membrecias_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `membrecias_id`) VALUES
(1, 'luistacho', 'luisitoalazasa09@gmail.com', 2),
(2, 'julioazul', 'julioazul11@gmail.com', 3),
(3, 'beto', 'alberthanosmirinda@gmail.com', 1),
(4, 'cesarepng', 'cesarepng3@gmail.com', 4),
(5, 'alberton17', 'zasaluisalberto03qgmail.com', 1),
(6, 'majosita', 'majo@gmail.com', 4),
(7, 'ibarracarrillo1010', 'ibarra@gmail.com', 3),
(8, 'marianantes', 'marianita@gmail.com', 3),
(9, 'estebanx23', 'estebancesar@gmail.com', 2),
(10, 'mirindana', 'julio.lopez22@gmail.com', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artistas_id` (`artistas_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `generos_id` (`generos_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarios_id` (`usuarios_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membrecias`
--
ALTER TABLE `membrecias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarios_id` (`usuarios_id`);

--
-- Indices de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `usuarios_id` (`usuarios_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membrecias_id` (`membrecias_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artista`
--
ALTER TABLE `artista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `membrecias`
--
ALTER TABLE `membrecias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD CONSTRAINT `artistas_canciones_ibfk_1` FOREIGN KEY (`artistas_id`) REFERENCES `artista` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`generos_id`) REFERENCES `genero` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD CONSTRAINT `playlist_canciones_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_3` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membrecias_id`) REFERENCES `membrecias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
