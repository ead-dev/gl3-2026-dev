-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : sam. 11 juil. 2026 à 14:27
-- Version du serveur : 8.0.40
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ead_blog_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `pv` int NOT NULL DEFAULT '0',
  `quantite` double NOT NULL DEFAULT '0',
  `actif` tinyint(1) NOT NULL DEFAULT '1',
  `reference` varchar(100) DEFAULT NULL,
  `ean13` varchar(50) DEFAULT NULL,
  `seuilmin` int NOT NULL DEFAULT '0',
  `seuilmax` int NOT NULL DEFAULT '0',
  `photo` varchar(50) DEFAULT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT '1',
  `category_id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `name`, `pv`, `quantite`, `actif`, `reference`, `ean13`, `seuilmin`, `seuilmax`, `photo`, `etat`, `category_id`) VALUES
(2, 'COMPRESSEUR 12000BTU R22 220V', 100000, 28, 1, '', '', 5, 20, '', 0, 2),
(3, 'COMPRESSEUR 18000BTU R22 220V', 120000, 6, 1, '', '', 0, 0, '', 0, 2),
(4, 'COMPRESSEUR 24000BTU R22 220V', 225000, 12, 1, '', '', 0, 0, '', 0, 2),
(5, 'COMPRESSEUR 9000BTU R407 220V', 120000, 10, 1, '', '', 0, 0, '', 0, 2),
(6, 'COMPRESSEUR 12000BTU R407C 220V', 140000, 3, 1, '', '', 0, 0, '', 0, 2),
(7, 'COMPRESSEUR 18000BTU R407C 220V', 170000, 10, 1, '', '', 0, 0, '', 0, 2),
(8, 'COMPRESSEUR 24000BTU R407C 220V', 275000, 10, 1, '', '', 0, 0, '', 0, 2),
(9, 'COMPRESSEUR 9000BTU R410A 220V', 150000, 21, 1, '', '', 0, 0, '', 0, 2),
(10, 'COMPRESSEUR 12000BTU R410A 220V', 175000, 15, 1, '', '', 0, 0, '', 0, 2),
(11, 'COMPRESSEUIR 18000BTU R410A 220V', 225000, 1, 1, '', '', 0, 0, '', 0, 2),
(12, 'COMPRESSEUR 24000BTU R410A 220V -240V 50-60HZ', 285000, 7, 1, '', '', 0, 0, '', 0, 2),
(13, 'COMPRESSEUR COPELAND SCROLL   ZR36  338V ', 375000, 2, 1, '', '', 0, 0, '', 0, 2),
(14, 'COMPRESSEUR COPELAND SCROLL   4HP 330V', 400000, 5, 1, '', '', 0, 0, '', 0, 2),
(15, 'COMPRESSEUR COPELAND SCROLL   5HP 330V', 450000, 8, 1, '', '', 0, 0, '', 0, 2),
(16, 'COMPRESSEUR COPELAND SCROLL   6HP 380V', 550000, 10, 1, '', '', 0, 0, '', 0, 2),
(17, 'COMPRESSEUR COPELAND SCROLL   8HP 330V', 900000, 3, 1, '', '', 0, 0, '', 0, 2),
(18, 'COMPRESSEUR COPELAND SCROLL   10HP 380V', 1400000, 1, 1, '', '', 0, 0, '', 0, 2),
(19, 'COMPRESSEUR COPELAND SCROLL   12HP 330V', 1600000, 1, 1, '', '', 0, 0, '', 0, 2),
(20, 'COMPRESSEUR DANFOSS MANEUROP MT32', 450000, 0, 1, '', '', 0, 0, '', 0, 2),
(21, 'COMPRESSEUR DANFOSS MANEUROP MT36', 475000, 5, 1, '', '', 0, 0, '', 0, 2),
(22, 'COMPRESSEUR DANFOSS MANEUROP MT40', 500000, 0, 1, '', '', 0, 0, '', 0, 2),
(23, 'COMPRESSEUR DANFOSS MANEUROP MT64', 700000, 2, 1, '', '', 0, 0, '', 0, 2),
(24, 'COMPRESSEUR DANFOSS MANEUROP MT80', 1000000, 0, 1, '', '', 0, 0, '', 0, 2),
(25, 'COMPRESSEUR DANFOSS MANEUROP MT100', 1200000, 0, 1, '', '', 0, 0, '', 0, 2),
(26, 'COMPRESSEUR DANFOSS MANEUROP MT125', 1300000, 0, 1, '', '', 0, 0, '', 0, 2),
(27, 'COMPRESSEUR DANFOSS MANEUROP MT160', 1700000, 1, 1, '', '', 0, 0, '', 0, 2),
(28, 'COMPRESSEUR DANFOSS MANEUROP MTZ36', 500000, 2, 1, '', '', 0, 0, '', 0, 2),
(29, 'COMPRESSEUR DANFOSS MANEUROP MTZ40', 600000, 2, 1, '', '', 0, 0, '', 0, 2),
(30, 'COMPRESSEUR DANFOSS MANEUROP MTZ64', 1000000, 0, 1, '', '', 0, 0, '', 0, 2),
(31, 'COMPRESSEUR DANFOSS MANEUROP MTZ80', 1400000, 4, 1, '', '', 0, 0, '', 0, 2),
(32, 'COMPRESSEUR DANFOSS MANEUROP MTZ125', 1500000, 0, 1, '', '', 0, 0, '', 0, 2),
(33, 'COMPRESSEUR SEMI-HERMETIC-BITER  4HP', 2000000, 0, 1, '', '', 0, 0, '', 0, 2),
(34, 'COMPRESSEUR SEMI-HERMETIC-BITER  5HP', 2000000, 0, 1, '', '', 0, 0, '', 0, 2),
(35, 'COMPRESSEUR SEMI-HERMETIC-BITER  6HP', 2200000, 2, 1, '', '', 0, 0, '', 0, 2),
(36, 'COMPRESSEUR SEMI-HERMETIC-BITER  12HP', 3500000, 1, 1, '', '', 0, 0, '', 0, 2),
(37, 'COMPRESSEUR SEMI-HERMETIC-BITER  15HP', 4000000, 1, 1, '', '', 0, 0, '', 0, 2),
(38, 'COMPRESSEUR SEMI-HERMETIC-BITER  20HP', 4500000, 1, 1, '', '', 0, 0, '', 0, 2),
(39, 'COMPRESSEUR SEMI-HERMETIC-BITER  25HP', 4700000, 0, 1, '', '', 0, 0, '', 0, 2),
(40, 'COMPRESSEUR SEMI-HERMETIC-BITER  30HP', 6000000, 2, 1, '', '', 0, 0, '', 0, 2),
(41, 'COMPRESSEUR SEMI-HERMETIC-BITER  35HP', 6500000, 0, 1, '', '', 0, 0, '', 0, 2),
(42, 'COMPRESSEUR EMBRACO 1/6', 75000, 7, 1, '', '', 0, 0, '', 0, 2),
(43, 'COMPRESSEUR EMBRACO 1/5', 85000, 1, 1, '', '', 0, 0, '', 0, 2),
(44, 'COMPRESSEUR EMBRACO 1/4', 90000, 9, 1, '', '', 0, 0, '', 0, 2),
(45, 'COMPRESSEUR EMBRACO 1/2', 140000, 4, 1, '', '', 0, 0, '', 0, 2),
(46, 'COMPRESSEUR EMBRACO 1HP', 275000, 0, 1, '', '', 0, 0, '', 0, 2),
(47, 'COMPRESSEUR EMBRACO 1/3', 100000, 8, 1, '', '', 0, 0, '', 0, 2),
(48, 'COMPRESSEUR EMBRACO 3/4', 225000, -1, 1, '', '', 0, 0, '', 0, 2),
(49, 'COMPRESSEUR EMBRACO 1.5HP', 325000, -8, 1, '', '', 0, 0, '', 0, 2),
(50, 'BONBONNE DE GAZ R22 13.6KG', 45000, 21, 1, '', '', 0, 0, '', 0, 5),
(51, 'BONBONNE DE GAZ R407C 11.35KG', 75000, -1, 1, '', '', 0, 0, '', 0, 5),
(52, 'BONBONNE DE GAZ R410A 11.35KG', 110000, -25, 1, '', '', 0, 0, '', 0, 5),
(53, 'BONBONNE DE GAZ  R134A 13.6KG', 125000, 67, 1, '', '', 0, 0, '', 0, 5),
(54, 'BONBONNE DE GAZ R404A 10.9KG', 100000, 39, 1, '', '', 0, 0, '', 0, 5),
(55, 'BONBONNE DE GAZ R141B 13.6KG', 90000, 13, 1, '', '', 0, 0, '', 0, 5),
(56, 'BONBONNE DE GAZ R417A 1.1.35KG', 175000, 1, 1, '', '', 0, 0, '', 0, 5),
(57, 'BONBONNE DE GAZ R600A 6.5KG', 80000, 0, 1, '', '', 0, 0, '', 0, 5),
(58, 'GAZ R134A 1000G', 10000, 150, 1, '', '', 5, 5, '', 0, 5),
(59, 'GAZ R404A 650G', 10000, 30, 1, '', '', 0, 0, '', 0, 5),
(60, 'MAPP GAZ', 10000, -23, 1, '', '', 0, 0, '', 0, 5),
(61, 'SEPARATEUR D,HUIL 1/2\'\'', 75000, 5, 1, '', '', 0, 0, '', 0, 1),
(62, 'SEPARATEUR D,HUIL 5/8\'\'', 90000, 5, 1, '', '', 0, 0, '', 0, 1),
(63, 'SEPARATEUR D,HUIL 7/8\'\'', 125000, 3, 1, '', '', 0, 0, '', 0, 1),
(64, 'SEPARATEUR D,HUIL 1\"', 175000, 5, 1, '', '', 0, 0, '', 0, 1),
(65, 'SEPARATEUR D,HUIL 1-1/8\'\'', 175000, 5, 1, '', '', 0, 0, '', 0, 1),
(66, 'SEPARATEUR D,HUIL 1-3/8\'\'', 225000, 2, 1, '', '', 0, 0, '', 0, 1),
(67, 'FAN 300', 60000, 5, 1, '', '', 0, 0, '', 0, 1),
(68, 'FAN 400', 80000, 7, 1, '', '', 0, 0, '', 0, 1),
(69, 'FAN 450', 85000, 5, 1, '', '', 0, 0, '', 0, 1),
(70, 'FAN 500', 90000, -3, 1, '', '', 0, 0, '', 0, 1),
(71, 'FAN 550', 110000, 8, 1, '', '', 0, 0, '', 0, 1),
(72, 'FAN 600', 125000, 1, 1, '', '', 0, 0, '', 0, 1),
(73, 'FAN 630', 175000, -7, 1, '', '', 0, 0, '', 0, 1),
(74, 'FAN D700 380V  50/60HZ', 300000, -17, 1, '', '', 0, 0, '', 0, 1),
(75, 'TUYAU ANTI VIBRATION 1/2\'\'', 25000, 0, 1, '', '', 0, 0, '', 0, 1),
(76, 'TUYAU ANTI VIBRATION 5/8\'\'', 30000, 0, 1, '', '', 0, 0, '', 0, 1),
(77, 'TUYAU ANTI VIBRATION 7/8\'\'', 50000, -1, 1, '', '', 0, 0, '', 0, 1),
(78, 'TUYAU ANTI VIBRATION 3/4\'\'', 40000, 0, 1, '', '', 0, 0, '', 0, 1),
(79, 'TUYAU ANTI VIBRATION 1\"', 65000, 0, 1, '', '', 0, 0, '', 0, 1),
(80, 'TUYAU ANTI VIBRATION 1-1/8\'\'', 80000, 0, 1, '', '', 0, 0, '', 0, 1),
(81, 'TUYAU ANTI VIBRATION 1-3/8\'\'', 125000, -2, 1, '', '', 0, 0, '', 0, 1),
(82, 'TUYAU ANTI VIBRATION 1-5/8\'\'', 135000, 0, 1, '', '', 0, 0, '', 0, 1),
(83, 'TUYAU ANTI VIBRATION 2-1/8\'\'', 160000, 0, 1, '', '', 0, 0, '', 0, 1),
(84, 'TUYAU ANTI VIBRATION 2-3/8\'\'', 175000, 10, 1, '', '', 0, 0, '', 0, 1),
(85, 'COURONNE DE TUYAU CUIVRE 1/4\'\'-15m-EPSR 0.8', 25000, 9, 1, '', '', 0, 0, '', 0, 7),
(86, 'COURONNE DE TUYAU CUIVRE 1/4\'\'--30m-EPSR 0.8', 50000, 5, 1, 'AS230', '', 0, 0, '', 0, 7),
(87, 'COURONNE DE TUYAU CUIVRE 3/8\'\'--15m-EPSR 0.8', 30000, -25, 1, '', '', 0, 0, '', 0, 7),
(88, 'COURONNE DE TUYAU CUIVRE 5/16\'\'--15m-EPSR 0.8', 18000, 0, 1, '', '', 0, 0, '', 0, 7),
(89, 'COURONNE DE TUYAU CUIVRE 3/8\'\'--30m-EPSR 0.8', 60000, 15, 1, 'AS330', '', 0, 0, '', 0, 7),
(90, 'COURONNE DE TUYAU CUIVRE 1/2\'\'--15m-EPSR 0.8', 350000, -2, 1, '', '', 0, 0, '', 0, 7),
(91, 'COURONNE DE TUYAU CUIVRE 1/2\'\'--30m-EPSR 0.8', 90000, 19, 1, 'AS430', '', 0, 0, '', 0, 7),
(92, 'COURONNE DE TUYAU CUIVRE 5/8\'\'--15m-EPSR 1', 60000, -6, 1, '', '', 0, 0, '', 0, 7),
(93, 'COURONNE DE TUYAU CUIVRE 3/4\'\'--15m-EPSR 1', 75000, 3, 1, '', '', 0, 0, '', 0, 7),
(94, 'COURONNE BI-TUBE 1/2\'\'--1/4\'\'-20m-EPSR 0.8', 125000, 10, 1, 'AP24', '', 0, 0, '', 0, 7),
(95, 'COURONNE BI-TUBE 3/8\'\'--1/4\'\'-20m-EPSR 0.8', 0, 2, 1, 'AP23', '', 0, 0, '', 0, 7),
(96, 'COURONNE BI-TUBE 5/8\"3/8\'\'-20m-EPSR 1--.0.8', 0, 0, 1, '', 'AP35', 0, 0, '', 0, 7),
(97, 'COURONNE DE CUIVRE 7/8\'\' 15m eps1nn', 140000, 5, 1, '', '', 0, 0, '', 0, 7),
(98, 'TUYAU CUIVRE 1\'\'', 0, 0, 1, '', '', 0, 0, '', 0, 7),
(99, 'COURONNE de cuivre BI-TUBE 3/4+1/2 EPS 1mn', 140000, -10, 1, '', '', 0, 0, '', 0, 7),
(100, 'COURONNE BI-TUBE', 0, 0, 1, '', '', 0, 0, '', 0, 7),
(101, 'COURONNE BI-TUBE', 0, 0, 1, '', '', 0, 0, '', 0, 7),
(102, 'FILTRE DESHYDRATEUR 1/4\'\'', 10000, 25, 1, '', '', 0, 0, '', 0, 3),
(103, 'FILTRE DESHYDRATEUR 3/8\'\'', 15000, -6, 1, '', '', 0, 0, '', 0, 3),
(104, 'FILTRE DESHYDRATEUR 1/2\'\'', 20000, 6, 1, '', '', 0, 0, '', 0, 3),
(105, 'FILTRE DESHYDRATEUR DCL165 5/8\'\' ', 25000, 8, 1, '', '', 0, 0, '', 0, 3),
(106, 'FILTRE DESHYDRATEUR DCL305 5/8\'\'', 45000, 3, 1, '', '', 0, 0, '', 0, 3),
(107, 'FILTRE DESHYDRATEUR 3/4\'\'', 60000, -6, 1, '', '', 0, 0, '', 0, 3),
(108, 'FILTRE DESHYDRATEUR 7/8\'\'', 65000, -1, 1, '', '', 0, 0, '', 0, 3),
(109, 'FILTRE DRIE DANFOSS ', 35000, 0, 1, '48-DC', '', 0, 0, '', 0, 3),
(110, 'FILTRE DRIE DANFOSS', 0, -9, 1, '', '', 0, 0, '', 0, 3),
(111, 'FILTRE DESHDRSTEUR DANFOSS DC48', 30000, -18, 1, '', '', 0, 0, '', 0, 3),
(112, 'THERMOSTAT ', 20000, -4, 1, '', '', 0, 0, '', 0, 10),
(113, 'THERMOSTAT ELECTRONIC', 0, 28, 1, '', '', 0, 0, '', 0, 10),
(114, 'DETENDEUR TEX5', 0, 3, 1, '', '', 0, 0, '', 0, 1),
(115, 'DETENDEUR TES5', 0, 5, 1, '', '', 0, 0, '', 0, 1),
(116, 'DETENDEUR TEN5', 0, 5, 1, '', '', 0, 0, '', 0, 1),
(117, 'DETENDEUR TES 12', 375000, 0, 1, '', '', 0, 0, '', 0, 1),
(118, 'DETENDEUR ', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(119, 'DETENDEURT TEX2', 0, 20, 1, '', '', 0, 0, '', 0, 1),
(120, 'DETENDEURT TX2', 0, 19, 1, '', '', 0, 0, '', 0, 1),
(121, 'DETENDEUR TN2', 0, 20, 1, '', '', 0, 0, '', 0, 1),
(122, 'DETENDEUR TEN2', 0, 20, 1, '', '', 0, 0, '', 0, 1),
(123, 'DETENDEUR TS 2', 0, 5, 1, '', '', 0, 0, '', 0, 1),
(124, 'DETENDEUR TES2', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(125, 'DETENDEUR EMERSON R410A', 175000, 0, 1, 'TRAE 8  ZAA', '', 0, 0, '', 0, 1),
(126, 'DETENDEUR', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(127, 'DETENDEUR', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(128, 'DETENDEUR', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(129, 'DETENDEUR', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(130, 'ORFCE TYPE 2', 10000, 90, 1, '', '', 0, 0, '', 0, 1),
(131, 'ORFCE TYPE 5', 25000, -2, 1, '', '', 0, 0, '', 0, 1),
(132, 'ORFCE', 0, 10, 1, '', '', 0, 0, '', 0, 1),
(133, 'PRESSOSTAT KP15', 0, -3, 1, '', '', 0, 0, '', 0, 1),
(134, 'PRESSOSTAT KP 5', 0, 4, 1, '', '', 0, 0, '', 0, 1),
(135, 'PRESSOSTAT KP 1', 40000, 7, 1, '', '', 0, 0, '', 0, 1),
(136, 'PRESSOSTAT KP', 0, 5, 1, '', '', 0, 0, '', 0, 1),
(137, 'PRESSOSTAT A HUIL', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(138, 'VIYANT LIQUIDE 1/4', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(139, 'VOYANT LIQUIDE 3/8', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(140, 'VOYANT LIQUIDE 1/2', 0, -3, 1, '', '', 0, 0, '', 0, 1),
(141, 'VOYANT LIQUIDE 5/8\'\'', 30000, -6, 1, '', '', 0, 0, '', 0, 1),
(142, 'VOYANT LIQUIDE 3/4\'\'', 35000, -4, 1, '', '', 0, 0, '', 0, 1),
(143, 'VOYANT LIQUIDE 7/8\'\'', 40000, 0, 1, '', '', 0, 0, '', 0, 1),
(144, 'VOYANT LIQUIDE ', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(145, 'VOYANT LIQUIDE ', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(146, 'COUDE EN CUIVRE  90° 1/4\'\'', 0, 100, 1, '', '', 0, 0, '', 0, 1),
(147, 'COUDE EN CUIVRE 90° 3/8\'\'', 0, 85, 1, '', '', 0, 0, '', 0, 1),
(148, 'COUDE EN  CUIVRE 90° 1/2\'\'', 0, 80, 1, '', '', 0, 0, '', 0, 1),
(149, 'COUDE 5/8\"', 0, -162, 1, '', '', 0, 0, '', 0, 1),
(150, 'COUDE 3/4\'\'', 0, 40, 1, '', '', 0, 0, '', 0, 1),
(151, 'COUDE 7/8\'\'', 0, -129, 1, '', '', 0, 0, '', 0, 1),
(152, 'COUDE 1\'\'', 0, 100, 1, '', '', 0, 0, '', 0, 1),
(153, 'COUDE 1-1/8\'\'', 0, 92, 1, '', '', 0, 0, '', 0, 1),
(154, 'COUDE 1-3/8\'\'', 0, 42, 1, '', '', 0, 0, '', 0, 1),
(155, 'COUDE ', 0, 100, 1, '', '', 0, 0, '', 0, 1),
(156, 'COUDE ', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(157, 'COUDE', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(158, 'COUDE', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(159, 'COUDE', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(160, 'POUDRE STAY-SLIV', 10000, -6, 1, '', '', 0, 0, '', 0, 1),
(161, 'MONOMETRE', 60000, 4, 1, '', '', 0, 0, '', 0, 1),
(162, 'COOLMAX', 15000, 0, 1, '', '', 0, 0, '', 0, 1),
(163, 'ERCOUS 1/4\'\'', 0, -8, 1, '', '', 0, 0, '', 0, 1),
(164, 'ECROUS 3/8\'\'', 0, -18, 1, '', '', 0, 0, '', 0, 1),
(165, 'ECROUS 1/2\'\'', 0, -2, 1, '', '', 0, 0, '', 0, 1),
(166, 'ECROUS 5/8\'\'', 0, -16, 1, '', '', 0, 0, '', 0, 1),
(167, 'ECROUS 3/4\'\'', 0, -16, 1, '', '', 0, 0, '', 0, 1),
(168, 'GAZ R22', 0, -2, 1, '', '', 0, 0, '', 0, 1),
(169, 'GAZ R404', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(170, 'GAZ R134A', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(171, 'GAZ R407C', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(172, 'GAZ R410A', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(173, 'GAZ R600', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(174, 'GAZ', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(175, 'GAZ', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(176, 'GAZ', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(177, 'BITOP DESINFECTAN AIR CONDITIONER', 10000, -5, 1, '', '', 0, 0, '', 0, 1),
(178, 'TELECOMENDE UNIVERSEL', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(179, 'BAGUETTES', 0, 31, 1, '', '', 0, 0, '', 0, 1),
(180, 'PRESTOVANE R134A', 10000, 3, 1, '', '', 0, 0, '', 0, 1),
(181, 'HUIL DANFOSS SYNTHETIC POLYOL-ESTER 160SZ  2.5 LITRE ', 150000, 0, 1, '', '', 0, 0, '', 0, 12),
(182, 'EMKARATE RL 22H', 0, 20, 1, '', '', 0, 0, '', 0, 12),
(183, ' EMKARATE RL 32H-5L', 75000, 18, 1, '', '', 0, 0, '', 0, 12),
(184, 'EMKARATE RL 46 H  5L', 0, 20, 1, '', '', 0, 0, '', 0, 12),
(185, 'EMKARATE RL 68 H 5L', 90000, 50, 1, '', '', 0, 0, '', 0, 12),
(186, 'EMKARATE RL 68 H', 0, -1, 1, '', '', 0, 0, '', 0, 12),
(187, 'EMKARATE RL 100 H', 0, -9, 1, '', '', 0, 0, '', 0, 12),
(188, 'EMKARATE RL 170 H 5L', 0, 9, 1, '', '', 0, 0, '', 0, 12),
(189, 'EMKARATE RL 1220 H', 0, 3, 1, '', '', 0, 0, '', 0, 12),
(190, 'SUNISO 3GS ', 0, 59, 1, '', '', 0, 0, '', 0, 12),
(191, 'SUNISO 4GS', 0, 48, 1, '', '', 0, 0, '', 0, 12),
(192, 'SUNISO 5GS', 0, 10, 1, '', '', 0, 0, '', 0, 12),
(193, 'SUNISO ', 0, 6, 1, '', '', 0, 0, '', 0, 12),
(194, 'HUIL R134A ', 0, -4, 1, '', '', 0, 0, '', 0, 12),
(195, 'HUIL BITZER B5.2 5L', 0, 3, 1, '', '', 0, 0, '', 0, 12),
(196, 'HUIL BITZER BES 55 5L', 0, 0, 1, '', '', 0, 0, '', 0, 12),
(197, 'HUIL BITZER BES 32--5L', 0, 0, 1, '', '', 0, 0, '', 0, 12),
(198, 'HUIL BITZER BES 55 5L', 0, 0, 1, '', '', 0, 0, '', 0, 12),
(199, 'HUIL BITZER BES -170--5L', 0, 0, 1, '', '', 0, 0, '', 0, 12),
(200, 'HUIL BITZER BES 55 1L', 0, 2, 1, '', '', 0, 0, '', 0, 12),
(201, 'CLAVUS 32', 0, -1, 1, '', '', 0, 0, '', 0, 12),
(202, 'CLAVUS 68 18L', 220000, -3, 1, '', '', 0, 0, '', 0, 12),
(203, 'CAP 1UF', 2000, 20, 1, '', '', 0, 0, '', 0, 1),
(204, 'CAPA 1.5UF', 2500, -63, 1, '', '', 0, 0, '', 0, 1),
(205, 'CAPA 2UF', 3000, 45, 1, '', '', 0, 0, '', 0, 1),
(206, 'CAPA 4UF', 3000, 69, 1, '', '', 0, 0, '', 0, 1),
(207, 'CAPA 5UF', 3000, 95, 1, '', '', 0, 0, '', 0, 1),
(208, 'CAPA  6UF', 3500, -20, 1, '', '', 0, 0, '', 0, 1),
(209, 'CAPA 8UF', 6000, 0, 1, '', '', 0, 0, '', 0, 1),
(210, 'CAPA 10UF', 6000, -15, 1, '', '', 0, 0, '', 0, 1),
(211, 'CAPA 15UF', 8000, 0, 1, '', '', 0, 0, '', 0, 1),
(212, 'CAPA 20UF', 10000, 100, 1, '', '', 0, 0, '', 0, 1),
(213, 'CAP 25UF', 10000, 75, 1, '', '', 0, 0, '', 0, 1),
(214, 'CAPA 30UF', 10000, 115, 1, '', '', 0, 0, '', 0, 1),
(215, 'CAPA 35UF', 10000, -36, 1, '', '', 0, 0, '', 0, 1),
(216, 'CAPA 40UF', 12500, 71, 1, '', '', 0, 0, '', 0, 1),
(217, 'CAPA 45UF', 12500, 104, 1, '', '', 0, 0, '', 0, 1),
(218, 'CAPA 50UF', 15000, 49, 1, '', '', 0, 0, '', 0, 1),
(219, 'CAPA 60UF', 15000, 180, 1, '', '', 0, 0, '', 0, 1),
(220, 'CAPA 2.5UF', 3500, -15, 1, '', '', 0, 0, '', 0, 1),
(221, 'CAPA', 0, 200, 1, '', '', 0, 0, '', 0, 1),
(222, 'CAPA 3uf', 3500, -51, 1, '', '', 0, 0, '', 0, 1),
(223, 'CAPA 12uf', 10000, -5, 1, '', '', 0, 0, '', 0, 1),
(224, 'CAPA 80uf', 35000, -3, 1, '', '', 0, 0, '', 0, 1),
(225, 'CAPA', 0, 9, 1, '', '', 0, 0, '', 0, 1),
(226, 'TUBE DE CHARGE', 1000, -123, 1, '', '', 0, 0, '', 0, 1),
(228, 'BOBINE ELECTROVANNES 220V', 40000, -5, 1, '', '', 0, 0, '', 0, 1),
(229, 'ELECTROVANNES 1/4\'\'', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(230, 'ELECTROVANNES 3/8\'\'', 0, 5, 1, '', '', 0, 0, '', 0, 1),
(231, 'ELECTROVANNES 1/2\'\'', 0, 4, 1, '', '', 0, 0, '', 0, 1),
(232, 'ELECTROVANNES 5/8\'\'', 0, 7, 1, '', '', 0, 0, '', 0, 1),
(233, 'ELECTROVANNES 7/8\'\'', 0, -1, 1, '', '', 0, 0, '', 0, 1),
(234, 'ELECTROVANNES 1 -1/8\'\'', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(235, 'ELECTROVANNES 1 -3/8\'\'', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(236, 'ELECTROVANNES 1 -5/8\'\'', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(237, 'ELECTROVANNES 2-1/8\'\'', 0, 10, 1, '', '', 0, 0, '', 0, 1),
(238, 'Manométre RACCORD 1/4\'\'  --BP R404A R22 R134A', 0, 2, 1, '', '', 0, 0, '', 0, 1),
(239, 'Manométre RACCORD 1/4\'\'  HP-- R404A R22 R134A', 0, -8, 1, '', '', 0, 0, '', 0, 1),
(240, 'PLAQUE A Manométre', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(241, 'Manométre BY-PASS R22', 0, 19, 1, '', '', 0, 0, '', 0, 1),
(242, 'Manométre BY-PASS R410', 0, 5, 1, '', '', 0, 0, '', 0, 1),
(243, 'Manométre BP R22-R134A R410A R407C', 0, 9, 1, '', '', 0, 0, '', 0, 1),
(244, 'Charniéres  ', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(245, 'Charniéres', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(246, 'Charniéres', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(247, 'SERRURES AVEC CLE', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(248, 'SUPPORT', 10000, -58, 1, '', '', 0, 0, '', 0, 1),
(249, 'MULTIMETRES', 60000, -43, 1, '', '', 0, 0, '', 0, 1),
(250, 'MULTIMETRES', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(251, 'MULTIMETRES', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(252, 'ARMAFLEX 1/4', 2000, 0, 1, '', '', 0, 0, '', 0, 1),
(253, 'ARMAFLEX 3/8', 2000, 27, 1, '', '', 0, 0, '', 0, 1),
(254, 'ARMAFLEX 1/2', 2000, -46, 1, '', '', 0, 0, '', 0, 1),
(255, 'ARMAFLEX 5/8', 2500, -1, 1, '', '', 0, 0, '', 0, 1),
(256, 'ARMAFLEX 7/8', 0, -4, 1, '', '', 0, 0, '', 0, 1),
(257, 'ARMAFLEX 1\'\'', 10000, 0, 1, '', '', 0, 0, '', 0, 1),
(258, 'ARMAFLEX 1\'\'-1/8', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(259, 'ARMAFLEX 1\'\'-3/8', 0, -2, 1, '', '', 0, 0, '', 0, 1),
(260, 'ARMAFLEX 1\'\'-5/8', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(261, 'ARMAFLEX 2\'\'', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(262, 'ARMAFLEX  3/4', 4000, 0, 1, '', '', 0, 0, '', 0, 1),
(263, 'ARMAFLEX ', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(264, 'ARMAFLIEX', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(265, 'ARMAFLIEX', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(266, 'KILXON 9000BTU', 8000, 20, 1, '', '', 0, 0, '', 0, 1),
(267, 'KILXON 12000BTU', 8000, 19, 1, '', '', 0, 0, '', 0, 1),
(268, 'KILXON 18000BTU', 10000, 20, 1, '', '', 0, 0, '', 0, 1),
(269, 'KILXON 24000BTU', 0, 3, 1, '', '', 0, 0, '', 0, 1),
(270, 'RACORD 1/4\'\'', 1000, -1, 1, '', '', 0, 0, '', 0, 1),
(271, 'RACORD 3/8\'\'', 1500, 0, 1, '', '', 0, 0, '', 0, 1),
(272, 'RACORD 1/2\'\'', 1500, 0, 1, '', '', 0, 0, '', 0, 1),
(273, 'RACORD 5/8\'\'', 1500, -6, 1, '', '', 0, 0, '', 0, 1),
(274, 'RACORD 3/4\'\'', 0, -10, 1, '', '', 0, 0, '', 0, 1),
(275, 'RACORD ', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(276, 'RACORD', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(277, 'RACORD', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(278, 'RACORD DANFOSS', 35000, 0, 1, '', '', 0, 0, '', 0, 1),
(279, 'RACORD TUBE CAPILLAIRE 1/4\'\'', 5000, -24, 1, '', '', 0, 0, '', 0, 1),
(280, 'RACORD FLEXIBLE 1/4\'\'', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(281, 'COUPE-TUBES', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(282, 'COUPE-TUBES', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(283, 'COUPE-TUBES', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(284, 'DUDGEONNIERES', 0, -1, 1, '', '', 0, 0, '', 0, 1),
(285, 'BANDE BLANCHE ', 0, 113, 1, '', '', 0, 0, '', 0, 1),
(286, 'BANDE ', 0, 10, 1, '', '', 0, 0, '', 0, 1),
(287, 'BANDE ISOLANTE', 8000, -32, 1, '', '', 0, 0, '', 0, 1),
(288, 'BQande adhesif', 2500, -81, 1, '', '', 0, 0, '', 0, 1),
(289, 'Bande adhesif autocolant', 8000, -40, 1, '', '', 0, 0, '', 0, 1),
(290, 'TUBE CAPILAIE FRIGO', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(291, 'TUBE CAPILAIRE CLIEN', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(292, 'THRMOSTAT DANFOSS  KP61', 80000, 0, 1, '', '', 0, 0, '', 0, 1),
(293, 'THERMOSTAT DANFOSS KP63 ', 90000, 0, 1, '', '', 0, 0, '', 0, 1),
(294, 'RIDEAU DE CHANBRE FROIDE', 75000, 100, 1, '', '', 0, 0, '', 0, 1),
(295, 'SCOTCH', 1000, 0, 1, '', '', 0, 0, '', 0, 1),
(296, 'KIT DE LIAISON 9000BTU', 10000, 0, 1, '', '', 0, 0, '', 0, 1),
(297, 'KIT DE LIAISON 12000BTU', 15000, 2, 1, '', '', 0, 0, '', 0, 1),
(298, 'KIT DE LIAISON 24000BTU', 25000, 0, 1, '', '', 0, 0, '', 0, 1),
(299, 'KIT DE LIAISON ', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(300, 'KIT DE LIAISON', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(301, 'KIT DE LIAISON', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(302, 'KIT DE LIAISON', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(303, 'KIT DE LIAISON', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(304, 'KIT DE LIAISON', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(305, 'KIT DE LIAISON', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(306, 'ROLEMENT MOTEUR FAN ', 35000, 0, 1, '', '', 0, 0, '', 0, 1),
(307, ' FACTURE ANULATION ', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(308, 'VACUUM PUMP OIL 330ML', 15000, 8, 1, '', '', 0, 0, '', 0, 1),
(309, 'SONDE', 5000, 0, 1, '', '', 0, 0, '', 0, 1),
(310, 'COMPRESSEUR HERMETIC  TFH5540E', 1000000, 0, 1, '', '', 0, 0, '', 0, 1),
(311, 'GAZ R410A ', 10000, 0, 1, '', '', 0, 0, '', 0, 1),
(312, 'VANE 7/8 CASTEL', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(313, 'CONTACTEUR  GMC 40-24V', 45000, 10, 1, '', '', 0, 0, '', 0, 1),
(314, 'JOINTS 1.19X2.33m', 70000, 0, 1, '', '', 0, 0, '', 0, 1),
(315, 'COMPRESSEUR DANFOSS SZ120', 2650000, 0, 1, '', '', 0, 0, '', 0, 1),
(316, 'POMPE A VIDE  FY-2C-N 7.2 m³/h', 450000, 15, 1, '', '', 0, 0, '', 0, 1),
(317, 'KLIXON', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(318, 'CARTE UNIVERSAL', 25000, 1, 1, '', '', 0, 0, '', 0, 1),
(319, 'TELECOMANDE ASTRIME', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(320, 'TELECOMENDE AIRUELL', 15000, 0, 1, '', '', 0, 0, '', 0, 1),
(321, 'COMPRESSEUR CARLY', 1850000, 3, 1, '', '', 0, 0, '', 0, 2),
(322, 'MOTEUR FAN CARLY', 450000, 0, 1, '', '', 0, 0, '', 0, 1),
(323, 'RESISTANCE', 70000, 0, 1, '', '', 0, 0, '', 0, 1),
(324, 'COMPRESSEUR INVERTE 6HP', 500000, 0, 1, '', '', 0, 0, '', 0, 1),
(325, 'RELAIS STANDARD', 5000, 99, 1, '', '', 0, 0, '', 0, 1),
(326, 'COMPRESSEUR 1/3 R134a 220-50/60 KZ', 140000, 0, 1, 'EGAS 100HLP', '', 0, 0, '', 0, 1),
(327, 'RUDEAUX DE CHANBRE FROIDE', 7000, 100, 1, '', '', 0, 0, '', 0, 1),
(328, 'GAZ AZOTE UN MAITRE CUBE', 45000, 0, 1, '', '', 0, 0, '', 0, 1),
(329, 'TEMPORISATEUR 220V', 40000, 0, 1, '', '', 0, 0, '', 0, 1),
(330, 'BAGUETTE POUDRE ENROBE', 7500, -6, 1, '', '', 0, 0, '', 0, 1),
(331, 'GAZ AZOTEDEUX  MAITRE CUBE', 600000, 0, 1, '', '', 0, 0, '', 0, 1),
(332, 'FLIXIBLE DE CHARGE', 25000, 95, 1, '', '', 0, 0, '', 0, 1),
(333, 'CAMMUTATEUT COMPLET', 68000, 0, 1, '', '', 0, 0, '', 0, 1),
(334, 'FITRE DESHYDRATEUR EN CUIIVRE 1/4', 1000, -15, 1, '', '', 0, 0, '', 0, 1),
(335, 'FITRE DESHYDRATEUR EN CUIIVRE 3/8', 5000, 15, 1, '', '', 0, 0, '', 0, 1),
(336, 'FITRE DESHYDRATEUR EN CUIIVRE 1/2', 7000, 0, 1, '', '', 0, 0, '', 0, 1),
(337, 'COUPETUBE', 5000, -1, 1, '', '', 0, 0, '', 0, 1),
(338, 'TEFLON', 1000, 0, 1, '', '', 0, 0, '', 0, 1),
(339, 'PIENCE A SERTIR', 25000, 0, 1, '', '', 0, 0, '', 0, 1),
(340, 'CONTACTEUR GMC-32 220V', 35000, 10, 1, '', '', 0, 0, '', 0, 1),
(341, 'COS', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(342, 'SILICONE', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(343, 'CAISSE A OUTILS', 80000, 9, 1, '', '', 0, 0, '', 0, 1),
(344, 'VANNE ARRET 1/2', 25000, 10, 1, '', '', 0, 0, '', 0, 1),
(345, 'VANNE ARRET 5/8', 0, 10, 1, '', '', 0, 0, '', 0, 1),
(346, 'VANNE ARRET 3/4', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(347, 'VANNE ARRET 7/8', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(348, 'COMPRESSEUR HERMETIC TFH2511Z', 350000, 0, 1, '', '', 0, 0, '', 0, 1),
(349, 'BONBONNE DE GAZ DUPONT  R22 13.6KG', 90000, 0, 1, '', '', 0, 0, '', 0, 5),
(350, 'BONBONNE DE GAZ DUPONT  R404A 11.35KG', 0, 2, 1, '', '', 0, 0, '', 0, 1),
(351, 'COMPRESSEUR HERMETIQUE 3HP-R404A -380V', 6000000, 8, 1, '', '', 0, 0, '', 0, 1),
(352, 'THERMOSTA KP 61', 80000, 0, 1, '', '', 0, 0, '', 0, 1),
(353, 'THERMOSTA KP 63', 85000, 0, 1, '', '', 0, 0, '', 0, 1),
(354, 'BAGUETTE EN CUIVRE', 250, 371, 1, '', '', 0, 0, '', 0, 1),
(355, 'RELAIS GTH 16-22', 40000, 0, 1, '', '', 0, 0, '', 0, 1),
(356, 'COTACTEUR GMC-22', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(357, 'CORE ELECTROVANE', 35000, 0, 1, '', '', 0, 0, '', 0, 1),
(358, 'COMPRESSEUR SCROLL 6HP-R410A', 770000, 4, 1, '', '', 0, 0, '', 0, 1),
(359, 'FAN SUNON 220V', 10000, 20, 1, '', '', 0, 0, '', 0, 1),
(360, 'GAZ R141B', 15000, 0, 1, '', '', 0, 0, '', 0, 1),
(361, 'M KELIGEC', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(362, 'cheville de 8', 2500, 0, 1, '', '', 0, 0, '', 0, 1),
(363, 'CARBLE 3X2.5  5M', 10000, 0, 1, '', '', 0, 0, '', 0, 1),
(364, 'GOULTT  80X50', 80000, 0, 1, '', '', 0, 0, '', 0, 1),
(365, 'GROUPE COMDENSSEUR +EVAPAEU  COMPRESSEUR  MANEUROP MT100', 3700000, -1, 1, '', '', 0, 0, '', 0, 1),
(366, 'CAPA DANFOSS', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(367, 'LANPE A SOUDER MAP GAZ', 40000, -7, 1, '', '', 0, 0, '', 0, 1),
(368, 'VANNE ARRET 1 5/8', 175000, 10, 1, '', '', 0, 0, '', 0, 1),
(369, 'COMPRESSEUR INVERTER HNB84FC R410', 2650000, 1, 1, 'HNB84FC', '', 0, 0, '', 0, 2),
(370, 'SEPARETEUTD, HUIL 1-5/8\'\'', 350000, 100, 1, '', '', 0, 0, '', 0, 1),
(371, 'COUDE 1-5/8\'\'', 6500, 98, 1, '', '', 0, 0, '', 0, 1),
(372, 'SEPARETEUT  D, HUIL 2\'\'', 375000, 5, 1, '', '', 0, 0, '', 0, 1),
(373, 'TUYAU D,EVACUATION', 500, 0, 1, '', '', 0, 0, '', 0, 1),
(374, 'KEXIN', 0, 2, 1, '', '', 0, 0, '', 0, 1),
(375, 'Chanbre froide L4 X 3 l x 2,80h', 9000000, 10, 1, '', '', 0, 0, '', 0, 1),
(376, 'CORE ELECTROVANE 3/4', 125000, -1, 1, '', '', 0, 0, '', 0, 1),
(377, 'MANCHON 3/8\'\'', 1500, -30, 1, '', '', 0, 0, '', 0, 1),
(378, 'MANCHON 1/2\'', 2000, 0, 1, '', '', 0, 0, '', 0, 1),
(379, 'MANCHON 5/8\'', 2500, 15, 1, '', '', 0, 0, '', 0, 1),
(380, ' TUYAU DE CUIVRE 3/8 - ,80 EPS', 0, 20, 1, '', '', 0, 0, '', 0, 1),
(381, 'COUNE DE TUYAU CUIVRE 5/8 - 30maitre eps 1mn', 0, 3, 1, '', '', 0, 0, '', 0, 1),
(382, 'tuyau 1\'\'3/8', 25000, 0, 1, '', '', 0, 0, '', 0, 1),
(383, 'TURBE CAPIRAIRE 0.5', 1000, 4, 1, '', '', 0, 0, '', 0, 1),
(384, 'TURBE CAPIRAIRE 1', 1000, 5, 1, '', '', 0, 0, '', 0, 1),
(385, 'TURBE CAPIRAIRE 2mn', 1500, 5, 1, '', '', 0, 0, '', 0, 1),
(386, 'TURBE CAPIRAIRE 3mn', 0, 5, 1, '', '', 0, 0, '', 0, 1),
(387, 'TURBE CAPIRAIRE 4mn', 2000, 5, 1, '', '', 0, 0, '', 0, 1),
(388, 'TURBE CAPIRAIRE 5mn', 2500, 5, 1, '', '', 0, 0, '', 0, 1),
(389, 'THERMOATA 0-3000°', 2500, 1, 1, '', '', 0, 0, '', 0, 1),
(390, 'RESISTENCE BITZER', 25000, 0, 1, '', '', 0, 0, '', 0, 1),
(391, 'MOTEUR FAN 5HP 220V', 50000, 25, 1, '', '', 0, 0, '', 0, 1),
(392, 'LAMPEA SOUDER MAP GAZ', 60000, 0, 1, '', '', 0, 0, '', 0, 1),
(393, 'INTERRUPTEUR POSITION A GALLET', 20000, 1, 1, '', '', 0, 0, '', 0, 1),
(394, 'COMPRESSEUR INVERTER 2YC63BXD R410A', 0, 2, 1, '2CY63BXD', '', 0, 0, '', 0, 2),
(395, 'COMPRESSEUR INVERTER 2CY36BXD R410A', 0, 2, 1, '2CY36BXD', '', 0, 0, '', 0, 2),
(396, 'COMGEIATEUR', 400000, 1, 1, '', '', 0, 0, '', 0, 1),
(397, 'COMPRESSEUR SCROLL  ZP385KCE ', 3750000, 0, 1, 'ZP385 KCE ', '', 0, 0, '', 0, 2),
(398, 'COMPRESSEUR SCROLL  ZP295KCE', 375000, -1, 1, 'ZP295KCE', '', 0, 0, '', 0, 2),
(399, 'COURONNE DE TUYAU CUIVRE 3/4--30M-EPS 1mn', 220000, 3, 1, '', '', 0, 0, '', 0, 1),
(400, 'HUIL FLUORE', 3000, 0, 1, '', '', 0, 0, '', 0, 1),
(401, 'TUYAU D,EVACUATION 50m', 35000, 0, 1, '', '', 0, 0, '', 0, 1),
(402, 'MOUSSE A POMPER', 100000, -2, 1, '', '', 0, 0, '', 0, 1),
(403, 'COMPRESSEUR 9000BTU R22 220V', 80000, 39, 1, '', '', 0, 0, '', 0, 2),
(404, 'COMPRESSEUR SCROLL ZR160KCE-TFD-455', 1600000, -1, 1, 'ZR160KCE', '', 0, 0, '', 0, 2),
(405, 'RESERVOIR LIQUIDE', 80000, 0, 1, '', '', 0, 0, '', 0, 1),
(406, 'CAP 70uf', 15000, 2, 1, '', '', 0, 0, '', 0, 1),
(407, 'COMPRESSEUR PANASONIC C-SBN373H8D', 750000, 1, 1, '', '', 0, 0, '', 0, 2),
(408, 'PORTE RUDEQUX', 13995, 0, 1, '', '', 0, 0, '', 0, 1),
(409, 'FRAIS DES TRAVAUX', 0, -9, 1, '', '', 0, 0, '', 0, 1),
(410, 'TUYAU CUIVRE3/8', 2650, 100, 1, '', '', 0, 0, '', 0, 1),
(411, 'VANNE MANEUROP HP', 0, 17, 1, '', '', 0, 0, '', 0, 1),
(412, 'VANNE MANEUROP BP', 0, 19, 1, '', '', 0, 0, '', 0, 1),
(413, 'COMPRESSEUR SCROLL JT15JBVKYR@S', 1450000, 2, 1, '', '', 0, 0, '', 0, 1),
(414, 'CARTE VRV 4', 450000, 0, 1, '', '', 0, 0, '', 0, 1),
(415, 'POMPE A VIDE V-280SV ', 650000, 3, 1, '', '', 0, 0, '', 0, 1),
(416, 'RELAIS KRIWAN', 110000, 4, 1, '', '', 0, 0, '', 0, 1),
(417, 'PAQUET DE BAGUITTE EN CUIVRES', 7000, -18, 1, '', '', 0, 0, '', 0, 1),
(418, 'SPLIET 12000BTU R22 220V', 200000, -1, 1, '', '', 0, 0, '', 0, 1),
(419, 'COMPRESSEUR DANFOSS SCROLL SZ185', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(420, 'COMDENSSEUR 4HP', 600000, 2, 1, '', '', 0, 0, '', 0, 1),
(421, 'COMDENSSEUR ', 550000, 2, 1, '', '', 0, 0, '', 0, 1),
(422, 'resistance 1m', 35000, 1, 1, '', '', 0, 0, '', 0, 1),
(423, 'resistance 1.20cn', 45000, 0, 1, '', '', 0, 0, '', 0, 1),
(424, 'resistance 1.40cn', 50000, 0, 1, '', '', 0, 0, '', 0, 1),
(425, 'resistance 1.10cn', 35000, 0, 1, '', '', 0, 0, '', 0, 1),
(426, 'resistance 1.50cn', 55000, 0, 1, '', '', 0, 0, '', 0, 1),
(427, 'INDICATEUR DE TAMPERTURE -40+40', 30000, -5, 1, '', '', 0, 0, '', 0, 1),
(428, 'compresseur copeland scroll ZR 94KCE-TFD455', 980000, -1, 1, '', '', 0, 0, '', 0, 2),
(429, 'COMPRESSEUR INVERTR JT1GVDYR@B', 1750000, -1, 1, '', '', 0, 0, '', 0, 2),
(430, 'THE 1/4', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(431, 'THE 1/4', 1500, 0, 1, '', '', 0, 0, '', 0, 1),
(432, 'the 3/8', 1500, -2, 1, '', '', 0, 0, '', 0, 1),
(433, 'the 1/2', 2000, 0, 1, '', '', 0, 0, '', 0, 1),
(434, 'the 5/8', 2500, 0, 1, '', '', 0, 0, '', 0, 1),
(435, 'the 3/4', 3500, -2, 1, '', '', 0, 0, '', 0, 1),
(436, 'COFFRET d,alimentation 220V--12V-50-60Hz', 40000, -15, 1, '', '', 0, 0, '', 0, 1),
(437, 'CARTE INVERTER MITSUBISHI', 600000, -1, 1, '', '', 0, 0, '', 0, 1),
(438, 'Baguette argente', 5000, -64, 1, '', '', 0, 0, '', 0, 1),
(439, 'cle a crick', 25000, -1, 1, '', '', 0, 0, '', 0, 1),
(440, 'vanne darre', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(441, 'vanne darret 1-1/8', 80000, 0, 1, '', '', 0, 0, '', 0, 1),
(442, 'VACUUM PUMP OIL 1L', 35000, 0, 1, '', '', 0, 0, '', 0, 1),
(443, ' COURONNE DE CUIVRE1/4 ISOLE NOIR 30MAITRE EPS1M', 60000, 0, 1, '', '', 0, 0, '', 0, 1),
(444, 'COURONNE DE CUIVRE 3/8 ISOLE NOIR 30MAITRE EPS1M', 120000, -4, 1, '', '', 0, 0, '', 0, 1),
(445, 'COURONNE DE CUIVRE 1/2 ISOLE NOIR 30MAITRE EPS1M', 120000, -5, 1, '', '', 0, 0, '', 0, 1),
(446, 'COURONNE DE CUIVRE 5/8 ISOLE NOIR 30MAITRE EPS1M', 150000, -8, 1, '', '', 0, 0, '', 0, 1),
(447, 'COURONNE DE CUIVRE 3/4 ISOLE NOIR 30MAITRE EPS1M', 280000, -1, 1, '', '', 0, 0, '', 0, 1),
(448, 'COURONNE DE CUIVRE1/4 I30MAITRE EPS1M', 0, -5, 1, '', '', 0, 0, '', 0, 1),
(449, 'COURONNE DE CUIVRE 3/8 30MAITRE EPS1M', 45000, -8.5, 1, '', '', 0, 0, '', 0, 1),
(450, 'BITEZ OIL BSE 32 5L', 175000, 6, 1, '', '', 0, 0, '', 0, 1),
(451, 'BITEZ OIL BSE 55 5L', 175000, 6, 1, '', '', 0, 0, '', 0, 1),
(452, 'BITEZ OIL BSE 170 5L', 175000, 6, 1, '', '', 0, 0, '', 0, 1),
(453, 'Compresseur caj 2446z 220v', 225000, -1, 1, '', '', 0, 0, '', 0, 1),
(454, 'Manchons 7/8', 3500, 0, 1, '', '', 0, 0, '', 0, 1),
(455, 'COURONNE DE CUIVRE1/4 30MAITRE  ISSOLE EPS1M', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(456, 'COURONNE DE CUIVRE 3/8 30 MAITRE ISOLE EPS1M', 0, 3, 1, '', '', 0, 0, '', 0, 1),
(457, 'COURONNE DE CUIVRE 7/8 ISOLE NOIR 30MAITRE EPS1M', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(458, 'ELECTOVANNE 3/4 OD', 80000, 0, 1, '', '', 0, 0, '', 0, 1),
(459, 'CARTE VRV3', 500000, -1, 1, '', '', 0, 0, '', 0, 1),
(460, 'COUDE -3/8-45º', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(461, 'COUDE -1/2-45º', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(462, 'COUDE -5/8-45º', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(463, 'COUDE -3/4-45º', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(464, 'COUDE -7/8-45º', 6000, -15, 1, '', '', 0, 0, '', 0, 1),
(465, 'COUDE -3/8-45º', 5750, 0, 1, '', '', 0, 0, '', 0, 1),
(466, 'COUDE -1\'\'-45º', 6500, 0, 1, '', '', 0, 0, '', 0, 1),
(467, 'Checque sans provision', 17800, -1, 1, '', '', 0, 0, '', 0, 1),
(468, 'Capteur de pression ', 35000, 0, 1, '', '', 20, 0, '', 0, 1),
(469, 'Compresseur danfoss scroll sz 120 savc R407C 134A 404A', 1900000, 0, 1, '', '', 0, 0, '', 0, 1),
(470, 'Cable d,alimentation compresseur', 7000, -4, 1, '', '', 0, 0, '', 0, 1),
(471, 'Clapet anti-retour 1/4', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(472, 'Clapet anti-retour 1/2', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(473, 'Clapet anti-retour 3/8', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(474, 'Clapet anti-retour 5/8', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(475, 'Clapet anti-retour 3/4', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(476, 'SPLIT-AC-VAVLVE 1/4 ', 10000, 0, 1, '', '', 0, 0, '', 0, 1),
(477, 'SPLIT-AC-VAVLVE 3/8', 13000, 10, 1, '', '', 0, 0, '', 0, 1),
(478, 'SPLIT-AC-VAVLVE 1/2', 15000, 10, 1, '', '', 0, 0, '', 0, 1),
(479, 'SPLIT-AC-VAVLVE 5/8', 17000, 10, 1, '', '', 0, 0, '', 0, 1),
(480, 'SPLIT-AC-VAVLVE 3/4', 20000, 0, 1, '', '', 0, 0, '', 0, 1),
(481, 'barre de cuivre 5/8', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(482, 'barre de cuivre 3/4', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(483, 'barre de cuivre 7/8', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(484, 'barre de cuivre 1\'\'', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(485, 'barre de cuivre 1\'\'-1/8', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(486, 'barre de cuivre 1\'\'-3/8', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(487, 'barre de cuivre 1\'\'-5/8', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(488, 'Compresseur copeland scroll zp144kce-tfd', 1800000, -1, 1, '', '', 0, 0, '', 0, 2),
(489, 'BUTANE +PROPANE', 5000, -28, 1, '', '', 0, 0, '', 0, 1),
(490, 'manchon 7/8', 6500, -10, 1, '', '', 0, 0, '', 0, 1),
(491, 'stickefex', 5000, -61, 1, '', '', 0, 0, '', 0, 1),
(492, 'Vanne flare 1/4', 15000, 0, 1, '', '', 0, 0, '', 0, 1),
(493, 'Vanne flare 3/8', 15000, 0, 1, '', '', 0, 0, '', 0, 1),
(494, 'Vanne flare 1/2', 15000, -5, 1, '', '', 0, 0, '', 0, 1),
(495, 'Vanne flare 5/8', 20000, 0, 1, '', '', 0, 0, '', 0, 1),
(496, 'Vanne flare 3/4', 20000, 0, 1, '', '', 0, 0, '', 0, 1),
(497, 'Tuyau hristal ecoulement', 700, -15, 1, '', '', 0, 0, '', 0, 1),
(498, 'Compresseur 9000btu R22', 90000, -2, 1, '', '', 0, 0, '', 0, 1),
(499, 'MOUTEUR FAN GC 9000BTU ', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(500, 'MOTEUR FAN GC 12000BTU ', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(501, 'MOTEUR FAN GC 18000BTU', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(502, 'MOTEUR FAN GC 24000BTU', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(503, 'MOTEUR FAN GC 42000BTU', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(504, 'MOTEUR FAN GC 48000BTU', 0, -1, 1, '', '', 0, 0, '', 0, 1),
(505, 'fan  220v ', 90000, -1, 1, '', '', 0, 0, '', 0, 1),
(506, 'PRESSOSTAT HP', 30000, -3, 1, '', '', 0, 0, '', 0, 1),
(507, 'PRESSOSTAT BP', 30000, -2, 1, '', '', 0, 0, '', 0, 1),
(508, 'Compresseur copeland scroll zp 120-kce-tfd', 1500000, 0, 1, '', '', 0, 0, '', 0, 1),
(509, 'Compresseur carrier', 1350000, 0, 1, '', '', 0, 0, '', 0, 1),
(510, 'Detecteur de fuite electonique', 100000, -1, 1, '', '', 0, 0, '', 0, 1),
(511, 'Compresseur copeland scroll zp182kce-tfd', 1500000, 0, 1, '', '', 0, 0, '', 0, 2),
(512, 'Regulateur de presion 1/2', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(513, 'Regulateur de presion 5/8', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(514, 'Regulateur de presion 3/4', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(515, 'Regulateur de presion 7/8', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(516, 'Regulateur de presion 1\'\'', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(517, 'Air conditioner Thermostat', 40000, 40, 1, 'QD-HVAC09', '', 0, 0, '', 0, 1),
(518, 'fan D800MC', 400000, -2, 1, '', '', 0, 0, '', 0, 1),
(519, 'CARTEINVERTER MITSUBISHI', 450000, -1, 1, '', '', 0, 0, '', 0, 1),
(520, 'TUYAU DE CUIVRE 3/8 1Mm', 3700, -100, 1, '', '', 0, 0, '', 0, 1),
(521, 'TUYAU DE CUIVRE 3/4 1Mm', 8000, -30, 1, '', '', 0, 0, '', 0, 1),
(522, 'TUYAU DE CUIVRE 5/8 1Mm', 6000, 0, 1, '', '', 0, 0, '', 0, 1),
(523, 'Ponpes de relevages ', 80000, -4, 1, '', '', 0, 0, '', 0, 1),
(524, 'COMPRESSEUR  CSBM523H8D R410a', 750000, 0, 1, '', '', 0, 0, '', 0, 2),
(525, 'COMPRESSEUR HERMETIQUE R404A 220V', 350000, 0, 1, '', '', 0, 0, '', 0, 1),
(526, 'Vanne d arret en cuivre 14', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(527, 'Vanne d\'arret en cuivre 2\"-1/8', 140000, -2, 1, '', '', 0, 0, '', 0, 1),
(528, 'Vanne d\'arret en cuivre 1\"-5/8', 1250000, 0, 1, '', '', 0, 0, '', 0, 1),
(529, 'Vanne d\'arret en cuivre 1\"', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(530, 'Vanne d\'arret en cuivre 7/8\"', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(531, 'Vanne d\'arret en cuivre 3/4', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(532, 'Vanne d\'arret en cuivre 5/8\"', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(533, 'Vanne d\'arret en cuivre  1\"-1/8', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(534, 'Vanne d\'arret en cuivre 1\"-3/8', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(535, 'Vanne d arret en cuivre 1/4', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(536, 'Vanne d arret en cuivre 1/2', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(537, 'Vanne d\'arret en cuivre ', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(538, 'Vanne d arret en cuivre ', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(539, 'Vanne d arret en cuivre', 0, 0, 1, '', '', 0, 0, '', 0, 1),
(540, ' BAR de Tuyau en cuivre 1\"-5/8-6m', 0, 0, 1, '', '', 1, 0, '', 0, 1),
(541, 'Carte electronique cassette daikin fxqz', 300000, 0, 1, '', '', 0, 0, '', 0, 1),
(542, 'SONDE 17Kg', 40000, -2, 1, '', '', 0, 0, '', 0, 1),
(543, 'Carte electronique dry ', 350000, -1, 1, '', '', 0, 0, '', 0, 1),
(544, 'Carte electronique de commande', 300000, -2, 1, '', '', 0, 0, '', 0, 1),
(545, 'Couple de sonde', 40000, -4, 1, '', '', 0, 0, '', 0, 1),
(546, 'Capteur de temperature', 70000, -2, 1, '', '', 0, 0, '', 0, 1),
(547, 'Lototatoo', 12000, 34, 1, NULL, NULL, 0, 0, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` smallint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('L2stDrIyihx6HINi6tKxKvDSlq7Ump7MniSwlfr5', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:151.0) Gecko/20100101 Firefox/151.0', 'eyJfdG9rZW4iOiJpaGNiSWg0MFAzZWd3OFl6Ulg1VDRkZm5VR3YwTFF5eERPYURsbWRmIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDAxXC9hcnRpY2xlcz9qb3VyPVNhbWVkaSIsInJvdXRlIjpudWxsfSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1783778284);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Index pour la table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  ADD KEY `failed_jobs_connection_queue_failed_at_index` (`connection`,`queue`,`failed_at`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Index pour la table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=548;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
