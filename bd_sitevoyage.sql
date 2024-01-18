-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 18 jan. 2024 à 09:55
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

-- --------------------------------------------------------

--
-- Structure de la table `avt_aventure`
--

DROP TABLE IF EXISTS `avt_aventure`;
CREATE TABLE IF NOT EXISTS `avt_aventure` (
  `AVT_IdAventure` int(11) NOT NULL AUTO_INCREMENT,
  `AVT_NomAventure` varchar(38) NOT NULL,
  `AVT_DescAventure` text NOT NULL,
  `PAY_IdPAys` int(11) NOT NULL,
  `LOC_IdLocalisation` int(11) NOT NULL,
  PRIMARY KEY (`AVT_IdAventure`),
  KEY `PAY_IdPAys` (`PAY_IdPAys`),
  KEY `LOC_IdLocalisation` (`LOC_IdLocalisation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `loc_localisation`
--

DROP TABLE IF EXISTS `loc_localisation`;
CREATE TABLE IF NOT EXISTS `loc_localisation` (
  `LOC_IdLocalisation` int(11) NOT NULL AUTO_INCREMENT,
  `LOC_NomLocalisation` varchar(38) NOT NULL,
  `LOC_NoteLocalisation` int(2) DEFAULT NULL,
  `LOC_DescLocalisation` text NOT NULL,
  `LOC_AvisPerso` text,
  `LOC_DateLocalisation` date NOT NULL,
  `LOC_ImgLocalisation` varchar(20) NOT NULL,
  `PAY_IdPays` int(11) NOT NULL,
  PRIMARY KEY (`LOC_IdLocalisation`),
  KEY `PAY_IdPays` (`PAY_IdPays`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `pay_pays`
--

DROP TABLE IF EXISTS `pay_pays`;
CREATE TABLE IF NOT EXISTS `pay_pays` (
  `PAY_idPays` int(11) NOT NULL AUTO_INCREMENT,
  `PAY_NomPays` varchar(38) NOT NULL,
  `PAY_NotePays` int(2) DEFAULT NULL,
  `PAY_DescPays` text,
  `PAY_Avantage` text,
  `PAY_Inconvenient` text,
  `PAY_ImgPays` int(11) DEFAULT NULL,
  `PAY_ContinentPays` varchar(38) NOT NULL,
  PRIMARY KEY (`PAY_idPays`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `avt_aventure`
--
ALTER TABLE `avt_aventure`
  ADD CONSTRAINT `avt_aventure_ibfk_1` FOREIGN KEY (`PAY_IdPAys`) REFERENCES `pay_pays` (`PAY_idPays`),
  ADD CONSTRAINT `avt_aventure_ibfk_2` FOREIGN KEY (`LOC_IdLocalisation`) REFERENCES `loc_localisation` (`LOC_IdLocalisation`);

--
-- Contraintes pour la table `loc_localisation`
--
ALTER TABLE `loc_localisation`
  ADD CONSTRAINT `loc_localisation_ibfk_1` FOREIGN KEY (`PAY_IdPays`) REFERENCES `pay_pays` (`PAY_idPays`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
