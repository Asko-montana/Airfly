-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 22 mars 2023 à 08:29
-- Version du serveur :  8.0.21
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `airjet`
--

-- --------------------------------------------------------

--
-- Structure de la table `avion`
--

DROP TABLE IF EXISTS `avion`;
CREATE TABLE IF NOT EXISTS `avion` (
  `NUMAV` smallint NOT NULL,
  `NOMAV` varchar(40) DEFAULT NULL,
  `CAPACITE` smallint NOT NULL,
  `LOC` char(1) DEFAULT NULL,
  PRIMARY KEY (`NUMAV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `avion`
--

INSERT INTO `avion` (`NUMAV`, `NOMAV`, `CAPACITE`, `LOC`) VALUES
(100, 'Boeing', 320, 'N'),
(220, 'Airbus', 300, 'P'),
(250, 'Boeing', 400, 'P'),
(300, 'Boeing', 300, 'N'),
(320, 'Airbus', 400, 'N'),
(400, 'Airbus', 370, 'N');

-- --------------------------------------------------------

--
-- Structure de la table `détails_du_vol`
--

DROP TABLE IF EXISTS `détails_du_vol`;
CREATE TABLE IF NOT EXISTS `détails_du_vol` (
  `Ville_de_départ` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Ville_d'arrivée` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Date_de_départ` int NOT NULL,
  `Date_de_retour` int NOT NULL,
  `Nombre_de_passagers` int NOT NULL,
  `Classe_de_voyage` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `informations_de_paiement`
--

DROP TABLE IF EXISTS `informations_de_paiement`;
CREATE TABLE IF NOT EXISTS `informations_de_paiement` (
  `Type_de_carte_de_crédit` varchar(30) NOT NULL,
  `Numéro_de_carte_de_crédit` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `informations_perso`
--

DROP TABLE IF EXISTS `informations_perso`;
CREATE TABLE IF NOT EXISTS `informations_perso` (
  `id` int NOT NULL,
  `Nom` varchar(30) NOT NULL,
  `Prénom` varchar(30) NOT NULL,
  `Adresse_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Numéro_de_téléphone` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `options_supplémentaires`
--

DROP TABLE IF EXISTS `options_supplémentaires`;
CREATE TABLE IF NOT EXISTS `options_supplémentaires` (
  `Bagages_supplémentaires` varchar(30) NOT NULL,
  `Repas_spéciaux` varchar(30) NOT NULL,
  `Siège_préférentiel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `pilote`
--

DROP TABLE IF EXISTS `pilote`;
CREATE TABLE IF NOT EXISTS `pilote` (
  `NUMPIL` int NOT NULL,
  `NOMPIL` varchar(50) NOT NULL,
  `ADR` varchar(50) NOT NULL,
  `SAL` smallint NOT NULL,
  PRIMARY KEY (`NUMPIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `pilote`
--

INSERT INTO `pilote` (`NUMPIL`, `NOMPIL`, `ADR`, `SAL`) VALUES
(100, 'JOURDAN', 'Paris', 3500),
(204, 'GASTON', 'Lyon', 3500),
(302, 'DUPONT', 'Nice', 2000),
(304, 'GASTON', 'Paris', 3000),
(402, 'DUBOIS', 'Paris', 2000),
(502, 'DUBOIS', 'Nice', 2500),
(506, 'DANNY', 'Nice', 4000),
(600, 'DURAND', 'Paris', 3000),
(607, 'SPRING', 'Paris', 4000),
(708, 'TSUNO', 'Paris', 4500);

-- --------------------------------------------------------

--
-- Structure de la table `vol`
--

DROP TABLE IF EXISTS `vol`;
CREATE TABLE IF NOT EXISTS `vol` (
  `NUMVOL` int NOT NULL,
  `NUMPIL` int DEFAULT NULL,
  `NUMAV` int DEFAULT NULL,
  `VILLE_DEP` varchar(60) NOT NULL,
  `VILLE_ARR` varchar(60) NOT NULL,
  `H_DEP` int NOT NULL,
  `H_ARR` int NOT NULL,
  PRIMARY KEY (`NUMVOL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
