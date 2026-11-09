-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 09 nov. 2026 à 16:53
-- Version du serveur : 8.4.7
-- Version de PHP : 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ligue1`
--

-- --------------------------------------------------------

--
-- Structure de la table `club`
--

DROP TABLE IF EXISTS `club`;
CREATE TABLE IF NOT EXISTS `club` (
  `Id_Club` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`Id_Club`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `club`
--

INSERT INTO `club` (`Id_Club`, `nom`) VALUES
(1, 'Paris Saint Germain'),
(2, 'LOSC Lille'),
(3, 'Paris FC'),
(4, 'Olympique de Marseille'),
(5, 'Olympique Lyonnais'),
(6, 'OGC Nice'),
(7, 'AS Monaco'),
(8, 'Rennes FC'),
(9, 'Stade Brestois'),
(10, 'Lorient FC'),
(11, 'RC Lens'),
(12, 'Toulouse FC'),
(13, 'RC Strasbourg'),
(14, 'AJ Auxerre'),
(15, 'Le Mans FC'),
(16, 'Angers SCO'),
(17, 'ESTAC Troyes'),
(18, 'Le Havre AC');

-- --------------------------------------------------------

--
-- Structure de la table `journée`
--

DROP TABLE IF EXISTS `journée`;
CREATE TABLE IF NOT EXISTS `journée` (
  `Id_Journee` int NOT NULL AUTO_INCREMENT,
  `numero` int NOT NULL,
  PRIMARY KEY (`Id_Journee`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `journée`
--

INSERT INTO `journée` (`Id_Journee`, `numero`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33),
(34, 34);

-- --------------------------------------------------------

--
-- Structure de la table `match_`
--

DROP TABLE IF EXISTS `match_`;
CREATE TABLE IF NOT EXISTS `match_` (
  `Id_Match` int NOT NULL AUTO_INCREMENT,
  `buts_domicile` int NOT NULL,
  `buts_exterieur` int NOT NULL,
  `Id_Club_Domicile` int NOT NULL,
  `Id_Club_Exterieur` int NOT NULL,
  `Id_Journee` int NOT NULL,
  PRIMARY KEY (`Id_Match`),
  KEY `fk_match_club_domicile` (`Id_Club_Domicile`),
  KEY `fk_match_club_exterieur` (`Id_Club_Exterieur`),
  KEY `fk_match_journee` (`Id_Journee`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
