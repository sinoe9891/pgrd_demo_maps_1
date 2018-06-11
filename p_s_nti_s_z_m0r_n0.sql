-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2018 at 05:33 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `p@s@nti@s_z@m0r@n0`
--

-- --------------------------------------------------------

--
-- Table structure for table `acceso`
--

CREATE TABLE `acceso` (
  `user_acces` varchar(25) NOT NULL,
  `login_acces` varchar(100) NOT NULL,
  `id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acceso`
--

INSERT INTO `acceso` (`user_acces`, `login_acces`, `id`) VALUES
('DinieEspinal', '36bd4c56913c6a52ffcfd5f177173557', 1),
('Webmaster', 'afdd63af34e36580b100d4f4752c480c', 2);

-- --------------------------------------------------------

--
-- Table structure for table `login-logout`
--

CREATE TABLE `login-logout` (
  `order1` varchar(20) NOT NULL,
  `family` varchar(50) NOT NULL,
  `subfamily` varchar(20) NOT NULL,
  `tribe` varchar(20) NOT NULL,
  `genus` varchar(20) NOT NULL,
  `species` varchar(20) NOT NULL,
  `id` varchar(20) NOT NULL,
  `synonyms` varchar(100) NOT NULL,
  `locality_data` varchar(100) NOT NULL,
  `deremination_label` varchar(100) NOT NULL,
  `idz` int(11) NOT NULL,
  `owner` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pst-cultivos`
--

CREATE TABLE `pst-cultivos` (
  `ctv-id` int(4) NOT NULL,
  `ctv-nom` text,
  `ctv-dsc` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pst-cultivos`
--

INSERT INTO `pst-cultivos` (`ctv-id`, `ctv-nom`, `ctv-dsc`) VALUES
(26, 'Arroz', 'CTV'),
(27, 'Maíz', 'CTV'),
(28, 'Trigo', 'CTV'),
(29, 'Aguacate', 'CTV'),
(30, 'Banano', 'CTV'),
(31, 'Cacao', 'CTV'),
(32, 'Café', 'CTV'),
(33, 'Caña de Azucar', 'CTV'),
(34, 'Cítricos', 'CTV'),
(35, 'Melón', 'CTV'),
(36, 'Plátano', 'CTV'),
(37, 'Sandía', 'CTV'),
(38, 'Uva', 'CTV'),
(39, 'Ninguno', 'CTV'),
(40, 'Palma Africana', 'CTV'),
(41, 'Ninguno', 'CTV'),
(42, 'Ninguno', 'CTV'),
(43, 'Ninguno', 'CTV'),
(44, 'Ninguno', 'CTV'),
(45, 'Plantas Perennes', 'CTV'),
(46, 'Ninguno', 'CTV'),
(47, 'Ninguno', 'CTV'),
(48, 'Café', 'CTV'),
(49, 'Ninguno', 'CTV'),
(50, 'Ninguno', 'CTV'),
(51, 'Ninguno', 'CTV'),
(52, 'Tomate', 'CTV'),
(53, 'Berries', 'CTV'),
(54, 'Ninguno', 'CTV'),
(55, 'Tabaco', 'CTV'),
(56, 'Vegetales y Flores bajo Invernadero', 'CTV'),
(57, 'Ninguno', 'CTV'),
(58, 'Ninguno', 'CTV'),
(59, 'Cultivos Florícolas', 'CTV'),
(60, 'Ninguno', 'CTV'),
(61, 'Caña de Azucar', 'CTV'),
(62, 'Controlled Environment Horticulture (CEH)', 'CTV'),
(63, 'Fresa', 'CTV'),
(64, 'Tomate', 'CTV'),
(65, 'Viveros', 'CTV'),
(66, 'Viveros', 'CTV');

-- --------------------------------------------------------

--
-- Table structure for table `pst-detalle`
--

CREATE TABLE `pst-detalle` (
  `id-pst` int(4) NOT NULL,
  `id-dtll` int(4) NOT NULL,
  `id-rb` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pst-detalle`
--

INSERT INTO `pst-detalle` (`id-pst`, `id-dtll`, `id-rb`) VALUES
(95, 0, 29),
(96, 0, 30),
(97, 0, 9),
(98, 0, 29),
(99, 0, 33),
(100, 0, 30),
(101, 0, 8),
(102, 0, 8),
(103, 0, 30),
(104, 0, 19),
(105, 0, 29),
(106, 0, 37),
(107, 0, 19),
(108, 0, 29),
(109, 0, 30),
(110, 0, 40),
(111, 0, 43),
(112, 0, 8),
(113, 0, 30),
(114, 0, 9),
(115, 0, 27),
(116, 0, 45),
(117, 0, 6),
(118, 0, 20),
(119, 0, 4),
(120, 0, 39),
(121, 0, 19),
(122, 0, 29),
(123, 0, 8),
(124, 0, 15),
(125, 0, 19),
(126, 0, 21),
(127, 0, 18),
(128, 0, 8),
(129, 0, 22),
(130, 0, 10),
(131, 0, 3),
(132, 0, 17),
(133, 0, 24),
(134, 0, 8),
(135, 0, 30),
(136, 0, 41),
(137, 0, 42),
(138, 0, 8),
(139, 0, 15),
(140, 0, 43),
(141, 0, 39),
(142, 0, 27),
(143, 0, 24),
(144, 0, 30),
(145, 0, 17),
(146, 0, 40),
(147, 0, 5),
(148, 0, 29),
(149, 0, 38),
(150, 0, 7),
(151, 0, 15),
(152, 0, 45),
(153, 0, 8),
(154, 0, 46),
(155, 0, 23),
(156, 0, 29),
(157, 0, 32),
(158, 0, 29),
(159, 0, 30),
(160, 0, 30),
(161, 0, 29),
(162, 0, 29),
(163, 0, 30),
(164, 0, 36),
(165, 0, 30),
(166, 0, 45),
(167, 0, 30),
(168, 0, 30),
(170, 0, 30),
(171, 0, 30),
(172, 0, 29),
(173, 0, 34),
(174, 0, 29),
(175, 0, 34),
(176, 0, 34),
(177, 0, 39),
(178, 0, 27),
(179, 0, 30),
(180, 0, 34),
(181, 0, 8),
(182, 0, 24),
(183, 0, 5),
(184, 0, 26),
(185, 0, 7),
(186, 0, 19),
(187, 0, 23),
(188, 0, 5),
(189, 0, 7),
(190, 0, 24),
(191, 0, 21);

-- --------------------------------------------------------

--
-- Table structure for table `pst-empresa`
--

CREATE TABLE `pst-empresa` (
  `emp-id` int(4) NOT NULL,
  `emp-nom` text NOT NULL,
  `emp-dsc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pst-empresa`
--

INSERT INTO `pst-empresa` (`emp-id`, `emp-nom`, `emp-dsc`) VALUES
(1, 'ACS-USAID ', 'EMP'),
(2, 'Agribrands Purina', 'EMP'),
(3, 'AgriContato Treinamentos & Consultorias LTDA.', 'EMP'),
(4, 'Agronuevomundo S.A.', 'EMP'),
(5, 'Auburn University ', 'EMP'),
(6, 'Balalom S.A.', 'EMP'),
(7, 'Banco de Desarrollo Agropecuario (BDA)', 'EMP'),
(8, 'Barry Callebaut', 'EMP'),
(9, 'Beeche Brahmans', 'EMP'),
(10, 'Bonnie Plants', 'EMP'),
(11, 'Cabaña Lechera El Naranjal  ', 'EMP'),
(12, 'CEICKOR', 'EMP'),
(13, 'Centro de Investigación de Agricultura Tropical (CIAT)', 'EMP'),
(14, 'COOLECHE', 'EMP'),
(15, 'Cooperativa Lancomilla', 'EMP'),
(16, 'Corporación / Ingenio Montelimar', 'EMP'),
(17, 'Costa Farms Nursery', 'EMP'),
(18, 'Cria Fertil', 'EMP'),
(19, 'Dow AgroSciences', 'EMP'),
(20, 'Dow AgroSciences', 'EMP'),
(21, 'Dow AgroSciences', 'EMP'),
(22, 'Dummen Orange', 'EMP'),
(23, 'Energypalma', 'EMP'),
(24, 'Fertilizantes del Norte S.A. (FENORSA - DISAGRO)', 'EMP'),
(25, 'Finca María Olga', 'EMP'),
(26, 'Galloway Cattle Company', 'EMP'),
(27, 'Ganadería Alfaro', 'EMP'),
(28, 'Ganadería Cañahuate', 'EMP'),
(29, 'Ganaderia la Judea', 'EMP'),
(30, 'General Cigar Dominicana', 'EMP'),
(31, 'Hacienda Agso y Planta El Ordeño S.A.', 'EMP'),
(32, 'Hacienda Cañas-Grupo Cultifincas S.A.', 'EMP'),
(33, 'Hacienda El Empedrado', 'EMP'),
(34, 'Hacienda La Esperanza', 'EMP'),
(35, 'Hacienda Lourdes', 'EMP'),
(36, 'Hacienda SALMOR S.A.', 'EMP'),
(37, 'Honduran Quality Cofee HQC', 'EMP'),
(38, 'Instituto Nacional de Investigación Agropecuaria (INIA)', 'EMP'),
(39, 'Integración Avicola ORO CIA LTDA.', 'EMP'),
(40, 'Kansas State University', 'EMP'),
(41, 'Kasetsart University (KU)', 'EMP'),
(42, 'Lechería Barriles', 'EMP'),
(43, 'Monsanto', 'EMP'),
(44, 'North Carolina State University (NCSU)', 'EMP'),
(45, 'Ohio State University ', 'EMP'),
(46, 'Oregon State University (OSU)', 'EMP'),
(47, 'Pine Ridge Ranch', 'EMP'),
(48, 'Plantabal S.A. Oferta #1', 'EMP'),
(49, 'Pomponio Ranch', 'EMP'),
(50, 'Productora y Comercializadora Internacional Agrícola S.A. PROCOMONA S. A.', 'EMP'),
(51, 'Purdue University', 'EMP'),
(52, 'Pure Beaty Farms', 'EMP'),
(53, 'Sierra Exportadora', 'EMP'),
(54, 'Smithfield Hog Production ', 'EMP'),
(55, 'Solgroup Marketing', 'EMP'),
(56, 'T&K Dairy', 'EMP'),
(57, 'Texas A&M University', 'EMP'),
(58, 'Texas Tech University', 'EMP'),
(59, 'Udine', 'EMP'),
(60, 'Universidad Autónoma de Yucatán - Mérida', 'EMP'),
(61, 'Universidad Veracruzana', 'EMP'),
(62, 'University of California - Desert Research and Extension Center (DREC)', 'EMP'),
(63, 'University of Florida - Everglades Research and education Center (EREC)', 'EMP'),
(64, 'University of Florida - Gulf Coast Research and Education Center (GCREC)', 'EMP'),
(65, 'University of Illinois-Champaign-Urbana', 'EMP'),
(66, 'University of Nebraska -Lincoln', 'EMP'),
(67, 'Utah State University (USU)', 'EMP'),
(68, 'Wainono Dairy Ltd.', 'EMP'),
(69, 'Williams and Cia. /Granja Kiwi Pecuaria', 'EMP'),
(70, 'Marsovia', 'EMP'),
(71, 'Scarlatta', 'EMP'),
(72, 'Sierra Exportadora - Programa Nacional Berries', 'EMP'),
(73, 'daNNY', 'EMP');

-- --------------------------------------------------------

--
-- Table structure for table `pst-inter-emp-cv`
--

CREATE TABLE `pst-inter-emp-cv` (
  `id-emp` int(4) NOT NULL,
  `id-cv` int(4) NOT NULL,
  `id-pais` int(4) NOT NULL,
  `pst-id-rb` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pst-inter-emp-cv`
--

INSERT INTO `pst-inter-emp-cv` (`id-emp`, `id-cv`, `id-pais`, `pst-id-rb`) VALUES
(0, 26, 0, 9),
(0, 27, 0, 9),
(0, 28, 0, 9),
(0, 29, 0, 8),
(0, 30, 0, 8),
(0, 31, 0, 8),
(0, 32, 0, 8),
(0, 33, 0, 8),
(0, 34, 0, 8),
(0, 35, 0, 8),
(0, 36, 0, 8),
(0, 37, 0, 8),
(0, 38, 0, 8),
(13, 26, 28, 9),
(13, 27, 28, 9),
(13, 28, 28, 9),
(15, 38, 41, 8),
(4, 29, 45, 8),
(4, 32, 45, 8),
(4, 34, 45, 8),
(0, 39, 0, 19),
(19, 39, 45, 19),
(20, 39, 52, 19),
(0, 40, 0, 43),
(23, 40, 57, 43),
(0, 41, 0, 44),
(6, 31, 57, 8),
(34, 26, 57, 9),
(0, 42, 0, 6),
(48, 42, 57, 6),
(0, 43, 0, 20),
(0, 44, 0, 4),
(48, 43, 57, 20),
(48, 44, 57, 4),
(21, 39, 82, 19),
(50, 35, 82, 8),
(50, 37, 82, 8),
(0, 45, 0, 15),
(22, 45, 172, 15),
(24, 39, 90, 19),
(0, 46, 0, 21),
(0, 47, 0, 18),
(24, 46, 90, 21),
(24, 47, 90, 18),
(37, 32, 90, 8),
(0, 48, 0, 22),
(37, 48, 90, 22),
(0, 49, 0, 10),
(0, 50, 0, 3),
(1, 49, 90, 10),
(1, 50, 90, 3),
(0, 51, 0, 17),
(59, 51, 122, 17),
(0, 52, 0, 24),
(12, 52, 141, 24),
(16, 33, 164, 8),
(0, 53, 0, 8),
(53, 31, 179, 8),
(53, 32, 179, 8),
(0, 54, 0, 15),
(17, 54, 188, 15),
(0, 55, 0, 43),
(30, 55, 188, 43),
(0, 56, 0, 24),
(10, 56, 65, 24),
(40, 51, 65, 17),
(0, 57, 0, 5),
(45, 57, 65, 5),
(0, 58, 0, 7),
(51, 58, 65, 7),
(0, 59, 0, 15),
(52, 59, 65, 15),
(55, 35, 65, 8),
(55, 37, 65, 8),
(0, 60, 0, 46),
(63, 60, 65, 46),
(0, 61, 0, 23),
(63, 61, 65, 23),
(0, 62, 0, 24),
(0, 63, 0, 7),
(0, 64, 0, 7),
(0, 65, 0, 19),
(72, 53, 179, 8),
(40, 62, 65, 24),
(63, 57, 65, 5),
(64, 63, 65, 7),
(64, 64, 65, 7),
(66, 65, 65, 19),
(0, 66, 0, 23),
(66, 66, 65, 23),
(1, 57, 90, 5),
(1, 63, 90, 7),
(1, 58, 90, 7),
(73, 62, 3, 24),
(2, 46, 82, 21);

-- --------------------------------------------------------

--
-- Table structure for table `pst-inter-emp-pais`
--

CREATE TABLE `pst-inter-emp-pais` (
  `emp-pais-id` int(4) NOT NULL,
  `emp-id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pst-inter-emp-pais`
--

INSERT INTO `pst-inter-emp-pais` (`emp-pais-id`, `emp-id`) VALUES
(1, 70),
(1, 71),
(3, 73),
(15, 26),
(28, 11),
(28, 13),
(31, 3),
(31, 18),
(31, 69),
(41, 15),
(45, 4),
(45, 19),
(45, 28),
(45, 29),
(45, 33),
(52, 9),
(52, 20),
(52, 27),
(57, 6),
(57, 23),
(57, 31),
(57, 32),
(57, 34),
(57, 39),
(57, 48),
(65, 5),
(65, 10),
(65, 40),
(65, 44),
(65, 45),
(65, 46),
(65, 47),
(65, 49),
(65, 51),
(65, 52),
(65, 54),
(65, 55),
(65, 56),
(65, 57),
(65, 58),
(65, 62),
(65, 63),
(65, 64),
(65, 65),
(65, 66),
(65, 67),
(82, 2),
(82, 21),
(82, 25),
(82, 50),
(90, 1),
(90, 24),
(90, 37),
(94, 8),
(122, 59),
(141, 12),
(141, 43),
(141, 60),
(141, 61),
(164, 16),
(170, 68),
(172, 22),
(176, 7),
(176, 14),
(176, 35),
(176, 36),
(176, 42),
(179, 53),
(179, 72),
(188, 17),
(188, 30),
(221, 41),
(237, 38);

-- --------------------------------------------------------

--
-- Table structure for table `pst-inter-pais-rubro`
--

CREATE TABLE `pst-inter-pais-rubro` (
  `pais-id` int(4) NOT NULL,
  `rubro-id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pst-inter-pais-rubro`
--

INSERT INTO `pst-inter-pais-rubro` (`pais-id`, `rubro-id`) VALUES
(3, 24),
(15, 29),
(28, 9),
(28, 30),
(31, 29),
(31, 30),
(31, 32),
(31, 33),
(41, 8),
(45, 8),
(45, 19),
(45, 29),
(45, 30),
(45, 37),
(52, 19),
(52, 29),
(52, 30),
(52, 40),
(57, 4),
(57, 6),
(57, 8),
(57, 9),
(57, 20),
(57, 27),
(57, 30),
(57, 43),
(57, 45),
(65, 5),
(65, 7),
(65, 8),
(65, 15),
(65, 17),
(65, 19),
(65, 23),
(65, 24),
(65, 26),
(65, 27),
(65, 29),
(65, 30),
(65, 34),
(65, 38),
(65, 39),
(65, 40),
(65, 45),
(65, 46),
(82, 8),
(82, 19),
(82, 21),
(82, 29),
(82, 39),
(90, 3),
(90, 5),
(90, 7),
(90, 8),
(90, 10),
(90, 18),
(90, 19),
(90, 21),
(90, 22),
(122, 17),
(141, 24),
(141, 29),
(141, 30),
(141, 36),
(164, 8),
(170, 30),
(172, 15),
(176, 30),
(176, 41),
(176, 42),
(176, 45),
(179, 8),
(188, 15),
(188, 43),
(237, 39);

-- --------------------------------------------------------

--
-- Table structure for table `pst-inter-rb-emp`
--

CREATE TABLE `pst-inter-rb-emp` (
  `id-rb` int(4) NOT NULL,
  `id-emp` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pst-inter-rb-emp`
--

INSERT INTO `pst-inter-rb-emp` (`id-rb`, `id-emp`) VALUES
(3, 1),
(4, 48),
(5, 1),
(5, 45),
(5, 63),
(6, 48),
(7, 1),
(7, 51),
(7, 64),
(8, 4),
(8, 6),
(8, 15),
(8, 16),
(8, 32),
(8, 37),
(8, 50),
(8, 53),
(8, 55),
(8, 72),
(9, 13),
(9, 34),
(10, 1),
(15, 17),
(15, 22),
(15, 52),
(17, 40),
(17, 59),
(18, 24),
(19, 19),
(19, 20),
(19, 21),
(19, 24),
(19, 66),
(20, 48),
(21, 2),
(21, 24),
(22, 37),
(23, 63),
(23, 66),
(24, 10),
(24, 12),
(24, 40),
(24, 73),
(26, 63),
(27, 5),
(27, 39),
(27, 44),
(29, 3),
(29, 9),
(29, 18),
(29, 25),
(29, 26),
(29, 28),
(29, 29),
(29, 47),
(29, 57),
(29, 58),
(29, 60),
(29, 61),
(30, 4),
(30, 11),
(30, 14),
(30, 27),
(30, 31),
(30, 33),
(30, 36),
(30, 40),
(30, 42),
(30, 46),
(30, 56),
(30, 60),
(30, 61),
(30, 67),
(30, 68),
(30, 69),
(32, 18),
(33, 3),
(34, 57),
(34, 58),
(34, 62),
(34, 65),
(36, 60),
(37, 28),
(38, 49),
(39, 2),
(39, 38),
(39, 62),
(40, 27),
(40, 44),
(41, 7),
(42, 7),
(43, 23),
(43, 30),
(45, 35),
(45, 39),
(45, 54),
(46, 63);

-- --------------------------------------------------------

--
-- Table structure for table `pst-pais`
--

CREATE TABLE `pst-pais` (
  `pais-id` int(4) NOT NULL,
  `pais-nom` text NOT NULL,
  `pais-dsc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pst-pais`
--

INSERT INTO `pst-pais` (`pais-id`, `pais-nom`, `pais-dsc`) VALUES
(1, 'Afganistán', 'AF'),
(2, 'Albania', 'AL'),
(3, 'Alemania', 'DE'),
(4, 'Algeria', 'DZ'),
(5, 'Andorra', 'AD'),
(6, 'Angola', 'AO'),
(7, 'Anguila', 'AI'),
(8, 'Antártida', 'AQ'),
(9, 'Antigua y Barbuda', 'AG'),
(10, 'Antillas Neerlandesas', 'AN'),
(11, 'Arabia Saudita', 'SA'),
(12, 'Argentina', 'AR'),
(13, 'Armenia', 'AM'),
(14, 'Aruba', 'AW'),
(15, 'Australia', 'AU'),
(16, 'Austria', 'AT'),
(17, 'Azerbayán', 'AZ'),
(18, 'Bélgica', 'BE'),
(19, 'Bahamas', 'BS'),
(20, 'Bahrein', 'BH'),
(21, 'Bangladesh', 'BD'),
(22, 'Barbados', 'BB'),
(23, 'Belice', 'BZ'),
(24, 'Benín', 'BJ'),
(25, 'Bhután', 'BT'),
(26, 'Bielorrusia', 'BY'),
(27, 'Birmania', 'MM'),
(28, 'Bolivia', 'BO'),
(29, 'Bosnia y Herzegovina', 'BA'),
(30, 'Botsuana', 'BW'),
(31, 'Brasil', 'BR'),
(32, 'Brunéi', 'BN'),
(33, 'Bulgaria', 'BG'),
(34, 'Burkina Faso', 'BF'),
(35, 'Burundi', 'BI'),
(36, 'Cabo Verde', 'CV'),
(37, 'Camboya', 'KH'),
(38, 'Camerún', 'CM'),
(39, 'Canadá', 'CA'),
(40, 'Chad', 'TD'),
(41, 'Chile', 'CL'),
(42, 'China', 'CN'),
(43, 'Chipre', 'CY'),
(44, 'Ciudad del Vaticano', 'VA'),
(45, 'Colombia', 'CO'),
(46, 'Comoras', 'KM'),
(47, 'Congo', 'CG'),
(48, 'Congo', 'CD'),
(49, 'Corea del Norte', 'KP'),
(50, 'Corea del Sur', 'KR'),
(51, 'Costa de Marfil', 'CI'),
(52, 'Costa Rica', 'CR'),
(53, 'Croacia', 'HR'),
(54, 'Cuba', 'CU'),
(55, 'Dinamarca', 'DK'),
(56, 'Dominica', 'DM'),
(57, 'Ecuador', 'EC'),
(58, 'Egipto', 'EG'),
(59, 'El Salvador', 'SV'),
(60, 'Emiratos Árabes Unidos', 'AE'),
(61, 'Eritrea', 'ER'),
(62, 'Eslovaquia', 'SK'),
(63, 'Eslovenia', 'SI'),
(64, 'España', 'ES'),
(65, 'Estados Unidos de América', 'US'),
(66, 'Estonia', 'EE'),
(67, 'Etiopía', 'ET'),
(68, 'Filipinas', 'PH'),
(69, 'Finlandia', 'FI'),
(70, 'Fiyi', 'FJ'),
(71, 'Francia', 'FR'),
(72, 'Gabón', 'GA'),
(73, 'Gambia', 'GM'),
(74, 'Georgia', 'GE'),
(75, 'Ghana', 'GH'),
(76, 'Gibraltar', 'GI'),
(77, 'Granada', 'GD'),
(78, 'Grecia', 'GR'),
(79, 'Groenlandia', 'GL'),
(80, 'Guadalupe', 'GP'),
(81, 'Guam', 'GU'),
(82, 'Guatemala', 'GT'),
(83, 'Guayana Francesa', 'GF'),
(84, 'Guernsey', 'GG'),
(85, 'Guinea', 'GN'),
(86, 'Guinea Ecuatorial', 'GQ'),
(87, 'Guinea-Bissau', 'GW'),
(88, 'Guyana', 'GY'),
(89, 'Haití', 'HT'),
(90, 'Honduras', 'HN'),
(91, 'Hong kong', 'HK'),
(92, 'Hungría', 'HU'),
(93, 'India', 'IN'),
(94, 'Indonesia', 'ID'),
(95, 'Irán', 'IR'),
(96, 'Irak', 'IQ'),
(97, 'Irlanda', 'IE'),
(98, 'Isla Bouvet', 'BV'),
(99, 'Isla de Man', 'IM'),
(100, 'Isla de Navidad', 'CX'),
(101, 'Isla Norfolk', 'NF'),
(102, 'Islandia', 'IS'),
(103, 'Islas Bermudas', 'BM'),
(104, 'Islas Caimán', 'KY'),
(105, 'Islas Cocos (Keeling)', 'CC'),
(106, 'Islas Cook', 'CK'),
(107, 'Islas de Åland', 'AX'),
(108, 'Islas Feroe', 'FO'),
(109, 'Islas Georgias del Sur y Sandwich del Sur', 'GS'),
(110, 'Islas Heard y McDonald', 'HM'),
(111, 'Islas Maldivas', 'MV'),
(112, 'Islas Malvinas', 'FK'),
(113, 'Islas Marianas del Norte', 'MP'),
(114, 'Islas Marshall', 'MH'),
(115, 'Islas Pitcairn', 'PN'),
(116, 'Islas Salomón', 'SB'),
(117, 'Islas Turcas y Caicos', 'TC'),
(118, 'Islas Ultramarinas Menores de Estados Unidos', 'UM'),
(119, 'Islas Vírgenes Británicas', 'VG'),
(120, 'Islas Vírgenes de los Estados Unidos', 'VI'),
(121, 'Israel', 'IL'),
(122, 'Italia', 'IT'),
(123, 'Jamaica', 'JM'),
(124, 'Japón', 'JP'),
(125, 'Jersey', 'JE'),
(126, 'Jordania', 'JO'),
(127, 'Kazajistán', 'KZ'),
(128, 'Kenia', 'KE'),
(129, 'Kirgizstán', 'KG'),
(130, 'Kiribati', 'KI'),
(131, 'Kuwait', 'KW'),
(132, 'Líbano', 'LB'),
(133, 'Laos', 'LA'),
(134, 'Lesoto', 'LS'),
(135, 'Letonia', 'LV'),
(136, 'Liberia', 'LR'),
(137, 'Libia', 'LY'),
(138, 'Liechtenstein', 'LI'),
(139, 'Lituania', 'LT'),
(140, 'Luxemburgo', 'LU'),
(141, 'México', 'MX'),
(142, 'Mónaco', 'MC'),
(143, 'Macao', 'MO'),
(144, 'Macedônia', 'MK'),
(145, 'Madagascar', 'MG'),
(146, 'Malasia', 'MY'),
(147, 'Malawi', 'MW'),
(148, 'Mali', 'ML'),
(149, 'Malta', 'MT'),
(150, 'Marruecos', 'MA'),
(151, 'Martinica', 'MQ'),
(152, 'Mauricio', 'MU'),
(153, 'Mauritania', 'MR'),
(154, 'Mayotte', 'YT'),
(155, 'Micronesia', 'FM'),
(156, 'Moldavia', 'MD'),
(157, 'Mongolia', 'MN'),
(158, 'Montenegro', 'ME'),
(159, 'Montserrat', 'MS'),
(160, 'Mozambique', 'MZ'),
(161, 'Namibia', 'NA'),
(162, 'Nauru', 'NR'),
(163, 'Nepal', 'NP'),
(164, 'Nicaragua', 'NI'),
(165, 'Niger', 'NE'),
(166, 'Nigeria', 'NG'),
(167, 'Niue', 'NU'),
(168, 'Noruega', 'NO'),
(169, 'Nueva Caledonia', 'NC'),
(170, 'Nueva Zelanda', 'NZ'),
(171, 'Omán', 'OM'),
(172, 'Países Bajos', 'NL'),
(173, 'Pakistán', 'PK'),
(174, 'Palau', 'PW'),
(175, 'Palestina', 'PS'),
(176, 'Panamá', 'PA'),
(177, 'Papúa Nueva Guinea', 'PG'),
(178, 'Paraguay', 'PY'),
(179, 'Perú', 'PE'),
(180, 'Polinesia Francesa', 'PF'),
(181, 'Polonia', 'PL'),
(182, 'Portugal', 'PT'),
(183, 'Puerto Rico', 'PR'),
(184, 'Qatar', 'QA'),
(185, 'Reino Unido', 'GB'),
(186, 'República Centroafricana', 'CF'),
(187, 'República Checa', 'CZ'),
(188, 'República Dominicana', 'DO'),
(189, 'Reunión', 'RE'),
(190, 'Ruanda', 'RW'),
(191, 'Rumanía', 'RO'),
(192, 'Rusia', 'RU'),
(193, 'Sahara Occidental', 'EH'),
(194, 'Samoa', 'WS'),
(195, 'Samoa Americana', 'AS'),
(196, 'San Bartolomé', 'BL'),
(197, 'San Cristóbal y Nieves', 'KN'),
(198, 'San Marino', 'SM'),
(199, 'San Martín (Francia)', 'MF'),
(200, 'San Pedro y Miquelón', 'PM'),
(201, 'San Vicente y las Granadinas', 'VC'),
(202, 'Santa Elena', 'SH'),
(203, 'Santa Lucía', 'LC'),
(204, 'Santo Tomé y Príncipe', 'ST'),
(205, 'Senegal', 'SN'),
(206, 'Serbia', 'RS'),
(207, 'Seychelles', 'SC'),
(208, 'Sierra Leona', 'SL'),
(209, 'Singapur', 'SG'),
(210, 'Siria', 'SY'),
(211, 'Somalia', 'SO'),
(212, 'Sri lanka', 'LK'),
(213, 'Sudáfrica', 'ZA'),
(214, 'Sudán', 'SD'),
(215, 'Suecia', 'SE'),
(216, 'Suiza', 'CH'),
(217, 'Surinám', 'SR'),
(218, 'Svalbard y Jan Mayen', 'SJ'),
(219, 'Swazilandia', 'SZ'),
(220, 'Tadjikistán', 'TJ'),
(221, 'Tailandia', 'TH'),
(222, 'Taiwán', 'TW'),
(223, 'Tanzania', 'TZ'),
(224, 'Territorio Británico del Océano Índico', 'IO'),
(225, 'Territorios Australes y Antárticas Franceses', 'TF'),
(226, 'Timor Oriental', 'TL'),
(227, 'Togo', 'TG'),
(228, 'Tokelau', 'TK'),
(229, 'Tonga', 'TO'),
(230, 'Trinidad y Tobago', 'TT'),
(231, 'Tunez', 'TN'),
(232, 'Turkmenistán', 'TM'),
(233, 'Turquía', 'TR'),
(234, 'Tuvalu', 'TV'),
(235, 'Ucrania', 'UA'),
(236, 'Uganda', 'UG'),
(237, 'Uruguay', 'UY'),
(238, 'Uzbekistán', 'UZ'),
(239, 'Vanuatu', 'VU'),
(240, 'Venezuela', 'VE'),
(241, 'Vietnam', 'VN'),
(242, 'Wallis y Futuna', 'WF'),
(243, 'Yemen', 'YE'),
(244, 'Yibuti', 'DJ'),
(245, 'Zambia', 'ZM'),
(246, 'Zimbabue', 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `pst-pasantia`
--

CREATE TABLE `pst-pasantia` (
  `pst-id` int(6) NOT NULL,
  `pst-pais-id` int(11) NOT NULL,
  `pst-emp-id` int(4) NOT NULL,
  `pst-anio` text CHARACTER SET utf16 NOT NULL,
  `pst-doc-id` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pst-pasantia`
--

INSERT INTO `pst-pasantia` (`pst-id`, `pst-pais-id`, `pst-emp-id`, `pst-anio`, `pst-doc-id`) VALUES
(95, 15, 26, '2017', 'AU2017152629'),
(96, 28, 11, '2017', 'BO2017281130'),
(97, 28, 13, '2017', 'BO201728139'),
(98, 31, 3, '2017', 'BR201731329'),
(99, 31, 3, '2017', 'BR201731333'),
(100, 31, 69, '2017', 'BR2017316930'),
(101, 41, 15, '2017', 'CL201741158'),
(102, 45, 4, '2017', 'CO20174548'),
(103, 45, 4, '2017', 'CO201745430'),
(104, 45, 19, '2017', 'CO2017451919'),
(105, 45, 28, '2017', 'CO2017452829'),
(106, 45, 28, '2017', 'CO2017452837'),
(107, 52, 20, '2017', 'CR2017522019'),
(108, 52, 9, '2017', 'CR201752929'),
(109, 52, 27, '2017', 'CR2017522730'),
(110, 52, 27, '2017', 'CR2017522740'),
(111, 57, 23, '2017', 'EC2017572343'),
(112, 57, 6, '2017', 'EC20175768'),
(113, 57, 31, '2017', 'EC2017573130'),
(114, 57, 34, '2017', 'EC201757349'),
(115, 57, 39, '2017', 'EC2017573927'),
(116, 57, 39, '2017', 'EC2017573945'),
(117, 57, 48, '2017', 'EC201757486'),
(118, 57, 48, '2017', 'EC2017574820'),
(119, 57, 48, '2017', 'EC201757484'),
(120, 82, 2, '2017', 'GT201782239'),
(121, 82, 21, '2017', 'GT2017822119'),
(122, 82, 25, '2017', 'GT2017822529'),
(123, 82, 50, '2017', 'GT201782508'),
(124, 172, 22, '2017', 'NL20171722215'),
(125, 90, 24, '2017', 'HN2017902419'),
(126, 90, 24, '2017', 'HN2017902421'),
(127, 90, 24, '2017', 'HN2017902418'),
(128, 90, 37, '2017', 'HN201790378'),
(129, 90, 37, '2017', 'HN2017903722'),
(130, 90, 1, '2017', 'HN201790110'),
(131, 90, 1, '2017', 'HN20179013'),
(132, 122, 59, '2017', 'IT20171225917'),
(133, 141, 12, '2017', 'MX20171411224'),
(134, 164, 16, '2017', 'NI2017164168'),
(135, 170, 68, '2017', 'NZ20171706830'),
(136, 176, 7, '2017', 'PA2017176741'),
(137, 176, 7, '2017', 'PA2017176742'),
(138, 179, 53, '2017', 'PE2017179538'),
(139, 188, 17, '2017', 'DO20171881715'),
(140, 188, 30, '2017', 'DO20171883043'),
(141, 237, 38, '2017', 'UY20172373839'),
(142, 65, 5, '2017', 'US201765527'),
(143, 65, 10, '2017', 'US2017651024'),
(144, 65, 40, '2017', 'US2017654030'),
(145, 65, 40, '2017', 'US2017654017'),
(146, 65, 44, '2017', 'US2017654440'),
(147, 65, 45, '2017', 'US201765455'),
(148, 65, 47, '2017', 'US2017654729'),
(149, 65, 49, '2017', 'US2017654938'),
(150, 65, 51, '2017', 'US201765517'),
(151, 65, 52, '2017', 'US2017655215'),
(152, 65, 54, '2017', 'US2017655445'),
(153, 65, 55, '2017', 'US201765558'),
(154, 65, 63, '2017', 'US2017656346'),
(155, 65, 63, '2017', 'US2017656323'),
(156, 31, 18, '2017', 'BR20173118292'),
(157, 31, 18, '2017', 'BR20173118322'),
(158, 45, 29, '2017', 'CO20174529292'),
(159, 45, 33, '2017', 'CO20174533302'),
(160, 141, 61, '2017', 'MX201714161302'),
(161, 141, 61, '2017', 'MX201714161292'),
(162, 141, 60, '2017', 'MX201714160292'),
(163, 141, 60, '2017', 'MX201714160302'),
(164, 141, 60, '2017', 'MX201714160362'),
(165, 176, 14, '2017', 'PA201717614302'),
(166, 176, 35, '2017', 'PA201717635452'),
(167, 176, 36, '2017', 'PA201717636302'),
(168, 176, 42, '2017', 'PA201717642302'),
(170, 65, 56, '2017', 'US20176556302'),
(171, 65, 46, '2017', 'US20176546302'),
(172, 65, 57, '2017', 'US20176557292'),
(173, 65, 57, '2017', 'US20176557342'),
(174, 65, 58, '2017', 'US20176558292'),
(175, 65, 58, '2017', 'US20176558342'),
(176, 65, 62, '2017', 'US20176562342'),
(177, 65, 62, '2017', 'US20176562392'),
(178, 65, 44, '2017', 'US20176544272'),
(179, 65, 67, '2017', 'US20176567302'),
(180, 65, 65, '2017', 'US20176565342'),
(181, 179, 72, '2017', 'PE2017179728111'),
(182, 65, 40, '2017', 'US201765402413'),
(183, 65, 63, '2017', 'US20176563511'),
(184, 65, 63, '2017', 'US20176563262'),
(185, 65, 64, '2017', 'US20176564713'),
(186, 65, 66, '2017', 'US201765661912'),
(187, 65, 66, '2017', 'US201765662312'),
(188, 90, 1, '2018', 'HN2018901511'),
(189, 90, 1, '2018', 'HN2018901713'),
(190, 3, 73, '2018', 'DE20183732413'),
(191, 82, 2, '2018', 'GT20188222111');

-- --------------------------------------------------------

--
-- Table structure for table `pst-rubro`
--

CREATE TABLE `pst-rubro` (
  `rb-id` int(4) NOT NULL,
  `rb-nom` text NOT NULL,
  `rd-dsc` text NOT NULL,
  `rb-at` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pst-rubro`
--

INSERT INTO `pst-rubro` (`rb-id`, `rb-nom`, `rd-dsc`, `rb-at`) VALUES
(1, 'Agricultura Orgánica', 'AOrg', 1),
(2, 'Centro de Innovación de Frutas y Hortalizas', 'CIFH', 1),
(3, 'Control Biológico', 'CB', 1),
(4, 'Cultivo de Tejidos', 'CT', 1),
(5, 'Entomología', 'Ent', 1),
(6, 'Fito mejoramiento', 'FM', 1),
(7, 'Fitopatología', 'FP', 1),
(8, 'Frutales', 'Frut', 1),
(9, 'Granos y Semillas', 'GyS', 1),
(10, 'Manejo Integrado de Cultivos', 'MIC', 1),
(11, 'Manejo Integrado de Plagas', 'MIP', 1),
(12, 'Maquinaria y Riegos', 'MyR', 1),
(13, 'Olericultura Intensiva', 'OInt', 1),
(14, 'Olericultura Extensiva', 'OExt', 1),
(15, 'Ornamentales', 'Orn', 1),
(16, 'Sanidad Vegetal', 'SV', 1),
(17, 'Suelos', 'Suel', 1),
(18, 'Nutrición Vegetal', 'NV', 1),
(19, 'Agroquímicos', 'Agroq', 1),
(20, 'Biotecnología', 'Biot', 1),
(21, 'Fertilización', 'Fert', 1),
(22, 'Certificaciones', 'Cert', 1),
(23, 'Malezas', 'Malz', 1),
(24, 'Hortalizas', 'Hort', 1),
(25, 'Acuacultura', 'Ac', 2),
(26, 'Apicultura', 'Ap', 2),
(27, 'Avicultura', 'Av', 2),
(28, 'Ganado Caprino', 'GCap', 2),
(29, 'Ganado de Carne', 'GC', 2),
(30, 'Ganado Lechero', 'GL', 2),
(31, 'Ganado Ovino', 'GO', 2),
(32, 'Inseminación Artificial', 'InsArt', 2),
(33, 'Mejoramiento y Genética', 'MyG', 2),
(34, 'Nutrición Animal', 'NA', 2),
(35, 'Porcinocultura', 'Porc', 2),
(36, 'Reproducción Animal', 'RA', 2),
(37, 'Transferencia de Embriones', 'Temb', 2),
(38, 'Ganado Equino', 'GE', 2),
(39, 'Sanidad Animal', 'SA', 2),
(40, 'Pastos y Forrajes', 'PyF', 2),
(41, 'Créditos Agrícolas', 'CA', 2),
(42, 'Asistencia Técnica', 'AT', 2),
(43, 'Cultivo Industrial', 'CultInd', 1),
(44, 'PC', 'PC', 1),
(45, 'Ganado Porcino', 'GP', 2),
(46, 'Apícola', 'Apic', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_access`
--

CREATE TABLE `user_access` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `cargo` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `departamento` varchar(100) NOT NULL,
  `codigo` varchar(5) NOT NULL,
  `clase` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_access`
--

INSERT INTO `user_access` (`id`, `name`, `email`, `user`, `cargo`, `description`, `password`, `departamento`, `codigo`, `clase`) VALUES
(521, 'usuario', '', 'usuario', 'Developer', '', 'Usuario2017', 'HONDURAS', '2007', '1989');

-- --------------------------------------------------------

--
-- Table structure for table `user_admin`
--

CREATE TABLE `user_admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `cargo` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `departamento` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pst-cultivos`
--
ALTER TABLE `pst-cultivos`
  ADD PRIMARY KEY (`ctv-id`);

--
-- Indexes for table `pst-detalle`
--
ALTER TABLE `pst-detalle`
  ADD PRIMARY KEY (`id-pst`,`id-dtll`,`id-rb`),
  ADD KEY `id-rb` (`id-rb`);

--
-- Indexes for table `pst-empresa`
--
ALTER TABLE `pst-empresa`
  ADD PRIMARY KEY (`emp-id`);

--
-- Indexes for table `pst-inter-emp-pais`
--
ALTER TABLE `pst-inter-emp-pais`
  ADD PRIMARY KEY (`emp-pais-id`,`emp-id`),
  ADD KEY `emp-id` (`emp-id`);

--
-- Indexes for table `pst-inter-pais-rubro`
--
ALTER TABLE `pst-inter-pais-rubro`
  ADD PRIMARY KEY (`pais-id`,`rubro-id`);

--
-- Indexes for table `pst-inter-rb-emp`
--
ALTER TABLE `pst-inter-rb-emp`
  ADD PRIMARY KEY (`id-rb`,`id-emp`),
  ADD KEY `id-emp` (`id-emp`);

--
-- Indexes for table `pst-pais`
--
ALTER TABLE `pst-pais`
  ADD PRIMARY KEY (`pais-id`);

--
-- Indexes for table `pst-pasantia`
--
ALTER TABLE `pst-pasantia`
  ADD PRIMARY KEY (`pst-id`,`pst-pais-id`,`pst-emp-id`),
  ADD KEY `pst-pais-id` (`pst-pais-id`);

--
-- Indexes for table `pst-rubro`
--
ALTER TABLE `pst-rubro`
  ADD PRIMARY KEY (`rb-id`);

--
-- Indexes for table `user_access`
--
ALTER TABLE `user_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_admin`
--
ALTER TABLE `user_admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pst-cultivos`
--
ALTER TABLE `pst-cultivos`
  MODIFY `ctv-id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `pst-empresa`
--
ALTER TABLE `pst-empresa`
  MODIFY `emp-id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `pst-pais`
--
ALTER TABLE `pst-pais`
  MODIFY `pais-id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `pst-pasantia`
--
ALTER TABLE `pst-pasantia`
  MODIFY `pst-id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `pst-rubro`
--
ALTER TABLE `pst-rubro`
  MODIFY `rb-id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `user_access`
--
ALTER TABLE `user_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=777;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
