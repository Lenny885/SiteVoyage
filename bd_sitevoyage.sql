-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 19 jan. 2024 à 17:45
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
  `PAY_IdPAys` int(11) NOT NULL,
  `LOC_IdLocalisation` int(11) NOT NULL,
  PRIMARY KEY (`AVT_IdAventure`),
  KEY `PAY_IdPAys` (`PAY_IdPAys`),
  KEY `LOC_IdLocalisation` (`LOC_IdLocalisation`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `avt_aventure`
--

INSERT INTO `avt_aventure` (`AVT_IdAventure`, `AVT_NomAventure`, `AVT_DescAventure`, `PAY_IdPAys`, `LOC_IdLocalisation`) VALUES
(1, 'SURF', 'Pipeline est situé sur la côte nord d\'Oahu, Hawaï, et est souvent considéré comme le Saint Graal du surf. Ce joyau du surf est réputé pour ses vagues tubulaires spectaculaires, offrant aux surfeurs une expérience unique. L\'atmosphère sur la plage est électrique, avec des compétitions de renommée mondiale et une culture surf profondément enracinée.', 11, 43);

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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `loc_localisation`
--

INSERT INTO `loc_localisation` (`LOC_IdLocalisation`, `LOC_NomLocalisation`, `LOC_NoteLocalisation`, `LOC_DescLocalisation`, `LOC_AvisPerso`, `LOC_DateLocalisation`, `LOC_ImgLocalisation`, `PAY_IdPays`) VALUES
(21, 'Paris', NULL, 'Explorez la Ville Lumière avec ses monuments emblématiques tels que la Tour Eiffel, le Louvre, et la cathédrale Notre-Dame. Flânez le long de la Seine, découvrez le quartier de Montmartre, et dégustez des pâtisseries dans les cafés charmants.', NULL, '2024-01-18', 'dame_paris.jpg', 2),
(22, 'Provence', NULL, 'Plongez dans la douceur de la vie provençale avec ses champs de lavande, ses marchés colorés et ses villages perchés. Visitez les villes d\'Avignon et d\'Aix-en-Provence, et explorez les vignobles réputés de la région.\r\n\r\n', NULL, '2024-01-18', '', 2),
(23, 'Côte d\'azur', NULL, 'Découvrez la sophistication de la French Riviera avec ses plages élégantes, ses marchés provençaux, et ses villes glamour comme Nice et Cannes. Explorez les parfumeries de Grasse et visitez la ville médiévale d\'Èze.', NULL, '2024-01-18', 'cote_azur.jpg', 2),
(24, 'Mont Saint-Michelle', NULL, 'L\'îlot rocheux surmonté d\'une abbaye, classé au patrimoine mondial de l\'UNESCO. Explorez les ruelles pittoresques, assistez à la marée montante spectaculaire, et découvrez l\'histoire de ce site fascinant.', NULL, '2024-01-18', 'Mont_michel.jpg', 2),
(25, 'Rome', NULL, 'La capitale éternelle regorge de trésors historiques. Visitez le Colisée, le Forum romain, et la Cité du Vatican avec la basilique Saint-Pierre et la chapelle Sixtine. Flânez dans le quartier de Trastevere pour une touche locale authentique.', NULL, '2024-01-18', 'rome.jpg', 5),
(26, 'Florence', NULL, 'Le berceau de la Renaissance italienne. Explorez la Galerie des Offices, le Duomo et le Ponte Vecchio. Imprégnez-vous de l\'art et de l\'histoire dans chaque coin de cette ville.', NULL, '2024-01-18', 'florence.jpg', 5),
(27, 'Venise', NULL, 'La ville des canaux romantiques. Faites une promenade en gondole sur le Grand Canal, visitez la place Saint-Marc, et découvrez les îles voisines de Murano et Burano. Assurez-vous de goûter aux spécialités locales dans les bacari vénitiens.', NULL, '2024-01-18', 'venise.jpeg', 5),
(28, 'Cinque terre', NULL, 'Cinq villages colorés perchés le long de la côte méditerranéenne. Randonnez entre les villages, savourez une cuisine locale dans les trattorias, et profitez des vues panoramiques sur la mer.', NULL, '2024-01-18', 'ITALIE.jpeg', 5),
(29, 'Barcelone', NULL, 'La ville cosmopolite de Gaudí et du modernisme catalan. Visitez la Sagrada Família, promenez-vous sur la Rambla, et explorez le quartier gothique. Détendez-vous sur les plages de Barceloneta et participez à la vie nocturne animée.', NULL, '2024-01-18', 'barcelone.jpg', 4),
(30, 'Séville', NULL, 'La capitale de l\'Andalousie, imprégnée de flamenco et d\'histoire mauresque. Visitez l\'Alcazar, la cathédrale de Séville, et promenez-vous dans le quartier de Santa Cruz. Assistez à un spectacle de flamenco pour une expérience authentique.', NULL, '2024-01-18', 'seville.jpg', 4),
(31, 'Madrid', NULL, 'La capitale espagnole regorge de musées, de parcs et de vie nocturne. Explorez le musée du Prado, flânez dans le parc du Retiro, et dégustez des tapas dans le quartier de La Latina.', NULL, '2024-01-18', 'madrid.jpg', 6),
(32, 'Grenade', NULL, 'Découvrez l\'Alhambra, un palais mauresque enchanteur entouré de jardins luxuriants. Explorez le quartier de l\'Albaicín, inscrit au patrimoine mondial de l\'UNESCO, et savourez la cuisine andalouse.', NULL, '2024-01-18', 'grenade.jpg', 6),
(33, 'Mexico city', NULL, 'La capitale dynamique est un mélange éblouissant de modernité et de traditions. Explorez le centre historique avec le Zócalo, la majestueuse cathédrale et le Palais National. Ne manquez pas le musée Frida Kahlo et le site archéologique de Teotihuacan à proximité.', NULL, '2024-01-18', 'mexico_city.jpg', 7),
(34, 'Cancùn et la Riviera Maya', NULL, 'Pour les amateurs de plages paradisiaques et de vie nocturne animée, Cancún est un incontournable. Explorez également la Riviera Maya pour ses sites archéologiques tels que Tulum et Coba, ainsi que ses parcs naturels, comme Xcaret.', NULL, '2024-01-18', 'mexique_cancun.jpg', 7),
(39, 'Oaxana', NULL, 'Cette ville coloniale authentique est réputée pour son artisanat, sa cuisine délicieuse et ses festivals culturels. Visitez le Monte Albán, site archéologique précolombien, et découvrez la richesse de la culture indigène.', NULL, '2024-01-18', 'oaxana.jpg', 7),
(40, 'Guanajuato', NULL, 'Une ville pittoresque aux rues sinueuses et aux maisons colorées. Explorez les mines d\'argent, assistez au Festival Cervantino, et découvrez l\'Alhóndiga de Granaditas pour une plongée dans l\'histoire mexicaine.', NULL, '2024-01-18', 'guanajuato.jpg', 7),
(41, 'Parc National de Banff (Alberta)', NULL, 'Entrez dans un paysage de montagnes majestueuses, de lacs cristallins et de glaciers. Explorez le lac Louise, randonnez le sentier Plain of Six Glaciers, et prenez le célèbre Icefields Parkway pour des vues à couper le souffle.', NULL, '2024-01-18', 'parc.jpg', 8),
(42, 'Vieux-Québec (Québec)', NULL, 'Plongez dans l\'histoire européenne en vous promenant dans les rues pavées de la vieille ville de Québec. Visitez le Château Frontenac, explorez les fortifications et dégustez des spécialités gastronomiques dans les charmants restaurants.', NULL, '2024-01-18', 'vieux-quebec.jpg', 8),
(43, 'Pipeline', NULL, 'Pipeline est situé sur la côte nord d\'Oahu, Hawaï, et est souvent considéré comme le Saint Graal du surf. Ce joyau du surf est réputé pour ses vagues tubulaires spectaculaires, offrant aux surfeurs une expérience unique. L\'atmosphère sur la plage est électrique, avec des compétitions de renommée mondiale et une culture surf profondément enracinée.', NULL, '2024-01-19', 'surf.avif', 11);

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
  `PAY_ImgPays` varchar(38) DEFAULT NULL,
  `PAY_ContinentPays` varchar(38) NOT NULL,
  PRIMARY KEY (`PAY_idPays`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `pay_pays`
--

INSERT INTO `pay_pays` (`PAY_idPays`, `PAY_NomPays`, `PAY_NotePays`, `PAY_DescPays`, `PAY_Avantage`, `PAY_Inconvenient`, `PAY_ImgPays`, `PAY_ContinentPays`) VALUES
(2, 'FRANCE', NULL, 'La France, située au cœur de l\'Europe, est une destination touristique par excellence, alliant une histoire riche, une culture vibrante et une gastronomie renommée. Des magnifiques montagnes des Alpes aux plages ensoleillées de la Côte d\'Azur, la France offre une diversité de paysages qui enchante les voyageurs. Paris, la capitale, est un bijou artistique et architectural.', 'La France séduit par son art de vivre, sa cuisine délicieuse et son patrimoine historique. Les voyageurs peuvent explorer des châteaux médiévaux, flâner dans des villages pittoresques et se perdre dans les rues pavées de Paris. Le réseau de transport bien développé facilite les déplacements entre les régions, offrant une variété d\'expériences en un seul voyage.', 'Certains endroits peuvent être surfréquenter par touristique, en particulier pendant la haute saison. Dans les grandes villes, la barrière de la langue peut être un défi pour les visiteurs non francophones. Il est essentiel de planifier soigneusement les visites pour éviter les foules et profiter pleinement de l\'expérience.', 'PARIS.jpg', 'Europe'),
(3, 'italie', NULL, 'L\'Italie, située au cœur de la Méditerranée, est un trésor de l\'histoire et de la culture européennes. Avec ses villes emblématiques, ses paysages enchanteurs, et sa cuisine délectable, l\'Italie offre une expérience touristique inoubliable. Des rues pavées de Rome aux canaux romantiques de Venise, chaque coin du pays raconte une histoire riche et captivante.', 'L\'Italie charme par son patrimoine artistique inégalé, ses traditions vivantes, et son ambiance chaleureuse. Les voyageurs peuvent explorer des sites historiques tels que le Colisée à Rome et se perdre dans les ruelles sinueuses de Florence. La variété des paysages, des montagnes des Dolomites aux plages de la côte amalfitaine, offre une diversité d\'expériences uniques.', 'Bien que l\'Italie soit une destination prisée, certaines régions peuvent être touchées par une surfréquentation touristique, en particulier pendant la haute saison. Il est important de prendre en compte les variations de coûts, certaines destinations touristiques étant plus chères que d\'autres.', 'ITALIE.jpeg', 'Europe'),
(4, 'Espagne', NULL, 'L\'Espagne est une destination ensoleillée qui allie tradition et modernité. Avec ses villes animées, ses plages dorées, et ses festivités passionnées, l\'Espagne offre une expérience touristique riche en couleurs et en saveurs. Des montagnes majestueuses des Pyrénées aux plages méditerranéennes de la Costa del Sol, chaque région de l\'Espagne a sa propre identité captivante.', 'L\'Espagne séduit par sa diversité culturelle, sa gastronomie délicieuse, et sa vie nocturne animée. Les voyageurs peuvent explorer des monuments historiques comme l\'Alhambra à Grenade, profiter du flamenco à Séville, et se détendre sur les plages de la Costa Brava. La convivialité des habitants, connue sous le nom de \"la marcha\", ajoute une atmosphère chaleureuse à l\'expérience espagnole.', 'Bien que l\'Espagne soit une destination prisée, certaines régions peuvent être touchées par une surfréquentation touristique, surtout pendant la haute saison estivale. Dans les grandes villes, la barrière de la langue peut être un défi pour les visiteurs non hispanophones.', 'ESPAGNE.jpg', 'Europe'),
(5, 'italie', NULL, 'L\'Italie, située au cœur de la Méditerranée, est un trésor de l\'histoire et de la culture européennes. Avec ses villes emblématiques, ses paysages enchanteurs, et sa cuisine délectable, l\'Italie offre une expérience touristique inoubliable. Des rues pavées de Rome aux canaux romantiques de Venise, chaque coin du pays raconte une histoire riche et captivante.', 'L\'Italie charme par son patrimoine artistique inégalé, ses traditions vivantes, et son ambiance chaleureuse. Les voyageurs peuvent explorer des sites historiques tels que le Colisée à Rome et se perdre dans les ruelles sinueuses de Florence. La variété des paysages, des montagnes des Dolomites aux plages de la côte amalfitaine, offre une diversité d\'expériences uniques.', 'Bien que l\'Italie soit une destination prisée, certaines régions peuvent être touchées par une surfréquentation touristique, en particulier pendant la haute saison. Il est important de prendre en compte les variations de coûts, certaines destinations touristiques étant plus chères que d\'autres.', 'ITALIE.jpeg', 'Europe'),
(6, 'Espagne', NULL, 'L\'Espagne est une destination ensoleillée qui allie tradition et modernité. Avec ses villes animées, ses plages dorées, et ses festivités passionnées, l\'Espagne offre une expérience touristique riche en couleurs et en saveurs. Des montagnes majestueuses des Pyrénées aux plages méditerranéennes de la Costa del Sol, chaque région de l\'Espagne a sa propre identité captivante.', 'L\'Espagne séduit par sa diversité culturelle, sa gastronomie délicieuse, et sa vie nocturne animée. Les voyageurs peuvent explorer des monuments historiques comme l\'Alhambra à Grenade, profiter du flamenco à Séville, et se détendre sur les plages de la Costa Brava. La convivialité des habitants, connue sous le nom de \"la marcha\", ajoute une atmosphère chaleureuse à l\'expérience espagnole.', 'Bien que l\'Espagne soit une destination prisée, certaines régions peuvent être touchées par une surfréquentation touristique, surtout pendant la haute saison estivale. Dans les grandes villes, la barrière de la langue peut être un défi pour les visiteurs non hispanophones.', 'ESPAGNE.jpg', 'Europe'),
(7, 'Mexique', NULL, 'Le Mexique, joyau culturel d\'Amérique du Nord, séduit les voyageurs du monde entier par sa diversité et son histoire fascinante. Niché entre les États-Unis au nord et l\'Amérique centrale au sud, ce pays offre une mosaïque de paysages allant des plages paradisiaques aux montagnes majestueuses, en passant par les vestiges antiques de civilisations précolombiennes.', 'Le Mexique charme par sa richesse culturelle, sa cuisine exquise, ses plages spectaculaires et son hospitalité légendaire. Avec une météo agréable tout au long de l\'année, ce pays est une destination de choix pour les amateurs de soleil, d\'aventure et d\'histoire. De plus, le coût de la vie abordable permet aux voyageurs de profiter pleinement de leur séjour sans se ruiner.', 'Bien que le Mexique soit une destination de rêve, certains défis existent, notamment en ce qui concerne la sécurité dans certaines régions. Il est essentiel de rester informé des recommandations de voyage et de prendre des précautions pour garantir une expérience sûre et agréable.', 'MEXIQUE.jpg', 'Amerique'),
(8, 'Canada', NULL, 'Le Canada, deuxième plus grand pays au monde, est une terre d\'une diversité naturelle éblouissante, allant des vastes forêts boréales aux majestueuses montagnes rocheuses. Situé en Amérique du Nord, le Canada séduit les voyageurs par sa beauté sauvage, sa culture accueillante et son mélange unique de modernité et de tradition.', 'Le Canada charme par sa propreté, sa sécurité, et sa diversité culturelle. Les voyageurs peuvent explorer des villes dynamiques comme Toronto et Vancouver, découvrir la nature sauvage dans les parcs nationaux, et s\'immerger dans la culture autochtone. La gentillesse légendaire des Canadiens et la qualité de vie élevée ajoutent une dimension chaleureuse à l\'expérience de voyage.', 'Bien que le Canada soit une destination extraordinaire, la taille gigantesque du pays peut parfois rendre les déplacements entre les sites éloignés. En hiver, les conditions météorologiques peuvent être extrêmes, en particulier dans les régions plus septentrionales. Le coût de la vie, en particulier dans les grandes villes, peut également être relativement élevé.', 'CANADA.jpg', 'Amerique'),
(9, 'Brésil', NULL, 'Le Brésil, le plus grand pays d\'Amérique du Sud, est une terre d\'une diversité exceptionnelle, allant de la forêt amazonienne à l\'effervescence des carnavals de Rio de Janeiro. Avec ses plages paradisiaques, sa musique envoûtante et sa passion pour le football. De l\'Amazonie aux chutes d\'Iguaçu, chaque coin du Brésil promet une aventure inoubliable.', 'Le Brésil séduit par sa diversité naturelle, sa culture vibrante et sa joie de vivre contagieuse. Les voyageurs peuvent explorer la forêt amazonienne, danser au rythme de la samba lors du Carnaval, et se détendre sur les plages de Copacabana. La chaleur de l\'accueil brésilien, la cuisine exquise et la richesse culturelle font du Brésil une destination fascinante.', 'Bien que le Brésil soit une destination unique, certaines régions peuvent être touchées par des problèmes de sécurité, et la barrière de la langue peut parfois être un défi pour les visiteurs non portugais. La saison des pluies peut également influencer certaines activités.', 'BRESIL.jpg', 'Amerique'),
(11, 'Hawai', NULL, NULL, NULL, NULL, NULL, '');

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
