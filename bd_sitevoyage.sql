-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 14 déc. 2023 à 10:21
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bd_sitevoyage`
--
CREATE DATABASE IF NOT EXISTS `bd_sitevoyage` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bd_sitevoyage`;

-- --------------------------------------------------------

--
-- Structure de la table `avt_aventure`
--

DROP TABLE IF EXISTS `avt_aventure`;
CREATE TABLE IF NOT EXISTS `avt_aventure` (
  `AVT_IdAventure` int(11) NOT NULL AUTO_INCREMENT,
  `AVT_NomAventure` varchar(38) NOT NULL,
  `AVT_DescAventure` text NOT NULL,
  `AVT_NomLocAventure1` varchar(38) DEFAULT NULL,
  `AVT_DescLocAventure1` text,
  `AVT_NomLoc Aventure2` varchar(38) DEFAULT NULL,
  `AVT_DescLocAventure2` text,
  PRIMARY KEY (`AVT_IdAventure`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cat_categorie`
--

DROP TABLE IF EXISTS `cat_categorie`;
CREATE TABLE IF NOT EXISTS `cat_categorie` (
  `CAT_IdCategorie` int(11) NOT NULL AUTO_INCREMENT,
  `CAT_LibCategorie` varchar(38) NOT NULL,
  PRIMARY KEY (`CAT_IdCategorie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `loc_location`
--

DROP TABLE IF EXISTS `loc_location`;
CREATE TABLE IF NOT EXISTS `loc_location` (
  `LOC_IdLocation` int(11) NOT NULL AUTO_INCREMENT,
  `LOC_NomLocation` varchar(38) NOT NULL,
  `LOC_NoteLocation` int(2) DEFAULT NULL,
  `LOC_DescLocation` text NOT NULL,
  `LOC_AvisPerso` text,
  `LOC_DateLocation` date NOT NULL,
  `LOC_ImgLocation` varchar(20) NOT NULL,
  PRIMARY KEY (`LOC_IdLocation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `pay_pays`
--

DROP TABLE IF EXISTS `pay_pays`;
CREATE TABLE IF NOT EXISTS `pay_pays` (
  `PAY_idPays` int(11) NOT NULL AUTO_INCREMENT,
  `PAY_NomPays` varchar(38) NOT NULL,
  `PAY_NotePays` int(2) DEFAULT NULL,
  `LOC_IdLocation` int(11) DEFAULT NULL,
  `PAY_DescPays` text,
  `PAY_Avantage` text,
  `PAY_Inconvenient` text,
  `CAT_IdCategorie` int(11) DEFAULT NULL,
  `PAY_ImgPays` int(11) DEFAULT NULL,
  PRIMARY KEY (`PAY_idPays`),
  KEY `CAT_IdCategorie` (`CAT_IdCategorie`),
  KEY `LOC_IdLocation` (`LOC_IdLocation`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `pay_pays`
--

INSERT INTO `pay_pays` (`PAY_idPays`, `PAY_NomPays`, `PAY_NotePays`, `LOC_IdLocation`, `PAY_DescPays`, `PAY_Avantage`, `PAY_Inconvenient`, `CAT_IdCategorie`, `PAY_ImgPays`) VALUES
(7, 'FRANCE', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'ITALIE', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'ESPAGNE', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'BRESIL', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'CANADA', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'MEXIQUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `pay_pays`
--
ALTER TABLE `pay_pays`
  ADD CONSTRAINT `pay_pays_ibfk_1` FOREIGN KEY (`CAT_IdCategorie`) REFERENCES `cat_categorie` (`CAT_IdCategorie`),
  ADD CONSTRAINT `pay_pays_ibfk_2` FOREIGN KEY (`LOC_IdLocation`) REFERENCES `loc_location` (`LOC_IdLocation`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
