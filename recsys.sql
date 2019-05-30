-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 18 mai 2019 à 18:15
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `recsys`
--

-- --------------------------------------------------------

--
-- Structure de la table `giesing-spring-rainy`
--

DROP TABLE IF EXISTS `giesing-spring-rainy`;
CREATE TABLE IF NOT EXISTS `giesing-spring-rainy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(75) NOT NULL,
  `price` double NOT NULL,
  `img_url` varchar(100) NOT NULL,
  `score` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `giesing-spring-rainy`
--

INSERT INTO `giesing-spring-rainy` (`id`, `item`, `price`, `img_url`, `score`) VALUES
(1, 'Mittagessen', 25, 'images/lunch-03.jpg', 8.840027842948686),
(2, 'Frühstück', 8, 'images/lunch-04.jpg', 7.085823732922334),
(3, ' Penne Integrale mit Ratatouille ', 27, 'images/lunch-02.jpg', 1.5731492601594737),
(4, 'Getreiderisotto mit Gemüse und Hähnchen ', 17, 'images/lunch-03.jpg', 1.551611367439211),
(5, 'Gnocchi-Gemüsepfanne mit Schinkenstreifen und Sauerrahm ', 28, 'images/lunch-06.jpg', 1.5466994323061634),
(6, 'Risotto Duo mit gebratenem Gemüse ', 18, 'images/lunch-04.jpg', 1.4019301516279563),
(7, 'Marmelade 0,35', 30, 'images/lunch-06.jpg', 1.3903577588498592),
(8, 'Karibischer Gemüseeintopf ', 15, 'images/lunch-01.jpg', 1.3346937392232534),
(9, 'Vollkornspaghetti mit Gemüsebolognese ', 21, 'images/lunch-01.jpg', 1.3111267426718085),
(10, 'Seelachs mit Sesamkruste auf Blattgemüse mit Kartoffeln ', 21, 'images/lunch-04.jpg', 1.2546271410752892),
(11, 'Eintrittskarte', 9, 'images/lunch-02.jpg', 1.2148115298937483),
(12, 'Croissant 0,90', 34, 'images/lunch-06.jpg', 1.1889655292034151),
(13, 'Hähnchenbrust auf Karotten-Krautgemüse mit Salzkartoffeln ', 11, 'images/lunch-04.jpg', 1.1282226111384257),
(14, 'BIO Back 0,45', 6, 'images/lunch-06.jpg', 1.1038484257001495),
(15, 'Vollkornnudelpfanne mit Putenbruststreifen und Karotten-Pilzgemüse ', 22, 'images/lunch-03.jpg', 1.0945225426859582),
(16, 'O-Saft frisch', 33, 'images/lunch-05.jpg', 1.0899452319359275),
(17, 'BIO-Rührei', 25, 'images/lunch-04.jpg', 1.0363252903665259),
(18, 'Käse-Mohn Breze', 25, 'images/lunch-03.jpg', 1.0276019695665624),
(19, 'Grill', 27, 'images/lunch-05.jpg', 1.023122419472223),
(20, 'Ei 0,30', 25, 'images/lunch-03.jpg', 0.998325103935528),
(21, 'Mittagessen', 12, 'images/lunch-05.jpg', 8.840027842948686),
(22, 'Frühstück', 18, 'images/lunch-04.jpg', 7.085823732922334),
(23, ' Penne Integrale mit Ratatouille ', 33, 'images/lunch-03.jpg', 1.5731492601594737),
(24, 'Getreiderisotto mit Gemüse und Hähnchen ', 23, 'images/lunch-01.jpg', 1.551611367439211),
(25, 'Gnocchi-Gemüsepfanne mit Schinkenstreifen und Sauerrahm ', 34, 'images/lunch-06.jpg', 1.5466994323061634),
(26, 'Risotto Duo mit gebratenem Gemüse ', 22, 'images/lunch-01.jpg', 1.4019301516279563),
(27, 'Marmelade 0,35', 33, 'images/lunch-01.jpg', 1.3903577588498592),
(28, 'Karibischer Gemüseeintopf ', 31, 'images/lunch-02.jpg', 1.3346937392232534),
(29, 'Vollkornspaghetti mit Gemüsebolognese ', 22, 'images/lunch-05.jpg', 1.3111267426718085),
(30, 'Seelachs mit Sesamkruste auf Blattgemüse mit Kartoffeln ', 15, 'images/lunch-01.jpg', 1.2546271410752892),
(31, 'Eintrittskarte', 19, 'images/lunch-06.jpg', 1.2148115298937483),
(32, 'Croissant 0,90', 30, 'images/lunch-06.jpg', 1.1889655292034151),
(33, 'Hähnchenbrust auf Karotten-Krautgemüse mit Salzkartoffeln ', 26, 'images/lunch-04.jpg', 1.1282226111384257),
(34, 'BIO Back 0,45', 29, 'images/lunch-01.jpg', 1.1038484257001495),
(35, 'Vollkornnudelpfanne mit Putenbruststreifen und Karotten-Pilzgemüse ', 7, 'images/lunch-04.jpg', 1.0945225426859582),
(36, 'O-Saft frisch', 17, 'images/lunch-01.jpg', 1.0899452319359275),
(37, 'BIO-Rührei', 12, 'images/lunch-04.jpg', 1.0363252903665259),
(38, 'Käse-Mohn Breze', 35, 'images/lunch-05.jpg', 1.0276019695665624),
(39, 'Grill', 11, 'images/lunch-03.jpg', 1.023122419472223),
(40, 'Ei 0,30', 7, 'images/lunch-05.jpg', 0.998325103935528);

-- --------------------------------------------------------

--
-- Structure de la table `giesing-spring-snowy`
--

DROP TABLE IF EXISTS `giesing-spring-snowy`;
CREATE TABLE IF NOT EXISTS `giesing-spring-snowy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(75) NOT NULL,
  `price` double NOT NULL,
  `img_url` varchar(100) NOT NULL,
  `score` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `giesing-spring-snowy`
--

INSERT INTO `giesing-spring-snowy` (`id`, `item`, `price`, `img_url`, `score`) VALUES
(1, 'Küche frei', 9, 'images/lunch-02.jpg', 10.325869647585428),
(2, 'Mittagessen', 9, 'images/lunch-03.jpg', 7.403021937167202),
(3, 'Kurs', 32, 'images/lunch-02.jpg', 6.664230124647269),
(4, 'Frühstück', 15, 'images/lunch-04.jpg', 6.383150844573975),
(5, 'Gnocchi-Gemüsepfanne mit Hinterschinkenstreifen und Sauerrahm ', 19, 'images/lunch-03.jpg', 3.447008156129137),
(6, 'Szegediner Gemüse mit Kartoffeln und Rind ', 30, 'images/lunch-06.jpg', 2.9153687810964626),
(7, 'Linsen-Gemüseeintopf mit Kasslerstreifen ', 7, 'images/lunch-05.jpg', 2.1828020106463155),
(8, 'Reispfanne \"Red Thai\" Tomate, Fenchel, Paprika ', 31, 'images/lunch-05.jpg', 2.0944147795095707),
(9, 'Dinkelpasta mit Gemüsepesto ', 19, 'images/lunch-01.jpg', 2.0387501425498997),
(10, 'Risotto \"Brunoise\" mit Bio Bulgur und Putenbruststreifen ', 18, 'images/lunch-05.jpg', 1.9972891547601712),
(11, 'Gericht frei', 20, 'images/lunch-01.jpg', 1.965303832960214),
(12, 'Grillstation', 19, 'images/lunch-05.jpg', 1.910963138586274),
(13, 'Kartoffelgulasch ', 9, 'images/lunch-04.jpg', 1.8001103068715492),
(14, 'Asia Noodles mit Gemüse und Chunky Stripes ', 25, 'images/lunch-04.jpg', 1.710710986086286),
(15, 'Chili con Carne ', 17, 'images/lunch-06.jpg', 1.6263792505997772),
(16, 'O-Saft frisch', 24, 'images/lunch-01.jpg', 1.594728971932031),
(17, 'Gemüse-Kartoffelpfanne mit Hähnchenbrust ', 10, 'images/lunch-06.jpg', 1.5901572009839828),
(18, 'Hähnchenbrust auf Karotten-Krautgemüse mit Salzkartoffeln ', 19, 'images/lunch-03.jpg', 1.5542660489347258),
(19, 'Müsli to go', 18, 'images/lunch-03.jpg', 1.5227094531076062),
(20, 'Dessert a 1,60', 32, 'images/lunch-03.jpg', 1.5018164269291263),
(21, 'belegte Backw. 1,70', 23, 'images/lunch-05.jpg', 1.4840923373880537),
(22, 'Dinkelspitz', 25, 'images/lunch-02.jpg', 1.4315557874384386),
(23, 'SalatTeller', 35, 'images/lunch-04.jpg', 1.4129463442472092),
(24, 'BeiwerkTeller', 12, 'images/lunch-05.jpg', 1.3888666842277306),
(25, 'Küche frei', 21, 'images/lunch-03.jpg', 10.325869647585428),
(26, 'Mittagessen', 28, 'images/lunch-02.jpg', 7.403021937167202),
(27, 'Kurs', 8, 'images/lunch-04.jpg', 6.664230124647269),
(28, 'Frühstück', 12, 'images/lunch-05.jpg', 6.383150844573975),
(29, 'Gnocchi-Gemüsepfanne mit Hinterschinkenstreifen und Sauerrahm ', 13, 'images/lunch-05.jpg', 3.447008156129137),
(30, 'Szegediner Gemüse mit Kartoffeln und Rind ', 10, 'images/lunch-05.jpg', 2.9153687810964626),
(31, 'Linsen-Gemüseeintopf mit Kasslerstreifen ', 20, 'images/lunch-02.jpg', 2.1828020106463155),
(32, 'Reispfanne \"Red Thai\" Tomate, Fenchel, Paprika ', 32, 'images/lunch-05.jpg', 2.0944147795095707),
(33, 'Dinkelpasta mit Gemüsepesto ', 24, 'images/lunch-05.jpg', 2.0387501425498997),
(34, 'Risotto \"Brunoise\" mit Bio Bulgur und Putenbruststreifen ', 15, 'images/lunch-06.jpg', 1.9972891547601712),
(35, 'Gericht frei', 28, 'images/lunch-05.jpg', 1.965303832960214),
(36, 'Grillstation', 22, 'images/lunch-05.jpg', 1.910963138586274),
(37, 'Kartoffelgulasch ', 18, 'images/lunch-05.jpg', 1.8001103068715492),
(38, 'Asia Noodles mit Gemüse und Chunky Stripes ', 6, 'images/lunch-01.jpg', 1.710710986086286),
(39, 'Chili con Carne ', 26, 'images/lunch-04.jpg', 1.6263792505997772),
(40, 'O-Saft frisch', 33, 'images/lunch-03.jpg', 1.594728971932031),
(41, 'Gemüse-Kartoffelpfanne mit Hähnchenbrust ', 20, 'images/lunch-04.jpg', 1.5901572009839828),
(42, 'Hähnchenbrust auf Karotten-Krautgemüse mit Salzkartoffeln ', 31, 'images/lunch-06.jpg', 1.5542660489347258),
(43, 'Müsli to go', 26, 'images/lunch-04.jpg', 1.5227094531076062),
(44, 'Dessert a 1,60', 26, 'images/lunch-05.jpg', 1.5018164269291263),
(45, 'belegte Backw. 1,70', 21, 'images/lunch-05.jpg', 1.4840923373880537),
(46, 'Dinkelspitz', 27, 'images/lunch-05.jpg', 1.4315557874384386),
(47, 'SalatTeller', 18, 'images/lunch-04.jpg', 1.4129463442472092),
(48, 'BeiwerkTeller', 33, 'images/lunch-03.jpg', 1.3888666842277306);

-- --------------------------------------------------------

--
-- Structure de la table `giesing-spring-sunny`
--

DROP TABLE IF EXISTS `giesing-spring-sunny`;
CREATE TABLE IF NOT EXISTS `giesing-spring-sunny` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(75) NOT NULL,
  `price` double NOT NULL,
  `img_url` varchar(100) NOT NULL,
  `score` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `giesing-spring-sunny`
--

INSERT INTO `giesing-spring-sunny` (`id`, `item`, `price`, `img_url`, `score`) VALUES
(1, 'Mittagessen', 5, 'images/lunch-06.jpg', 0.19446110725402832),
(2, 'Frühstück', 18, 'images/lunch-04.jpg', 0.1805710281644549),
(3, 'Leberkäse Semmel', 9, 'images/lunch-04.jpg', 0.1792274747576031),
(4, 'Küche frei', 9, 'images/lunch-05.jpg', 0.1763895641673695),
(5, 'Weißwurst Teller', 15, 'images/lunch-02.jpg', 0.14542709526262784),
(6, 'BIO Molkerei 1,00', 17, 'images/lunch-02.jpg', 0.14469979703426364),
(7, 'Salat Port.  0,60', 11, 'images/lunch-02.jpg', 0.1349043546735572),
(8, 'Beilage a 0,45', 31, 'images/lunch-03.jpg', 0.12594265169698995),
(9, 'Währungsumstellung', 26, 'images/lunch-05.jpg', 0.12475860118865965),
(10, 'Dessert a 0,80', 21, 'images/lunch-01.jpg', 0.11990254377449845),
(11, 'Fixer Rabatt/Aufschl.', 31, 'images/lunch-03.jpg', 0.11984946949657416),
(12, 'Kornsemmel 0,40', 8, 'images/lunch-06.jpg', 0.11713852758655036),
(13, 'Risotto \"Brunoise\" mit Bulgur und Putenbruststreifen ', 29, 'images/lunch-04.jpg', 0.1163920623408515),
(14, 'O-Saft frisch', 21, 'images/lunch-04.jpg', 0.11407715544817836),
(15, 'Senf 0,10', 34, 'images/lunch-05.jpg', 0.11379621457308532),
(16, 'Port. Butter Honig ec', 10, 'images/lunch-03.jpg', 0.11224669231687293),
(17, 'Obstteller', 26, 'images/lunch-03.jpg', 0.10913657263303414),
(18, 'Tagessuppe a 0,30', 26, 'images/lunch-02.jpg', 0.1090507286609223),
(19, 'BIO Molkerei 0,50', 28, 'images/lunch-05.jpg', 0.10818164107165763),
(20, 'SalatTeller', 31, 'images/lunch-01.jpg', 0.1078721345968583),
(21, 'Suppe 1,00', 7, 'images/lunch-04.jpg', 0.1068445413354191),
(22, 'Klassik Semmel 0,30', 22, 'images/lunch-04.jpg', 0.104988564627831),
(23, 'Marmelade 0,35', 7, 'images/lunch-02.jpg', 0.1047087408941712),
(24, 'Dessert a 1,60', 26, 'images/lunch-05.jpg', 0.10377407928122152),
(25, 'Dessert a 1,40', 27, 'images/lunch-03.jpg', 0.10323709845542907),
(26, 'Mittagessen', 16, 'images/lunch-05.jpg', 0.19446110725402832),
(27, 'Frühstück', 9, 'images/lunch-01.jpg', 0.1805710281644549),
(28, 'Leberkäse Semmel', 25, 'images/lunch-01.jpg', 0.1792274747576031),
(29, 'Küche frei', 13, 'images/lunch-03.jpg', 0.1763895641673695),
(30, 'Weißwurst Teller', 30, 'images/lunch-06.jpg', 0.14542709526262784),
(31, 'BIO Molkerei 1,00', 12, 'images/lunch-02.jpg', 0.14469979703426364),
(32, 'Salat Port.  0,60', 13, 'images/lunch-02.jpg', 0.1349043546735572),
(33, 'Beilage a 0,45', 34, 'images/lunch-06.jpg', 0.12594265169698995),
(34, 'Währungsumstellung', 6, 'images/lunch-01.jpg', 0.12475860118865965),
(35, 'Dessert a 0,80', 34, 'images/lunch-03.jpg', 0.11990254377449845),
(36, 'Fixer Rabatt/Aufschl.', 26, 'images/lunch-06.jpg', 0.11984946949657416),
(37, 'Kornsemmel 0,40', 30, 'images/lunch-02.jpg', 0.11713852758655036),
(38, 'Risotto \"Brunoise\" mit Bulgur und Putenbruststreifen ', 6, 'images/lunch-02.jpg', 0.1163920623408515),
(39, 'O-Saft frisch', 20, 'images/lunch-04.jpg', 0.11407715544817836),
(40, 'Senf 0,10', 31, 'images/lunch-01.jpg', 0.11379621457308532),
(41, 'Port. Butter Honig ec', 28, 'images/lunch-01.jpg', 0.11224669231687293),
(42, 'Obstteller', 18, 'images/lunch-04.jpg', 0.10913657263303414),
(43, 'Tagessuppe a 0,30', 15, 'images/lunch-02.jpg', 0.1090507286609223),
(44, 'BIO Molkerei 0,50', 25, 'images/lunch-01.jpg', 0.10818164107165763),
(45, 'SalatTeller', 8, 'images/lunch-04.jpg', 0.1078721345968583),
(46, 'Suppe 1,00', 35, 'images/lunch-05.jpg', 0.1068445413354191),
(47, 'Klassik Semmel 0,30', 35, 'images/lunch-01.jpg', 0.104988564627831),
(48, 'Marmelade 0,35', 10, 'images/lunch-04.jpg', 0.1047087408941712),
(49, 'Dessert a 1,60', 9, 'images/lunch-03.jpg', 0.10377407928122152),
(50, 'Dessert a 1,40', 19, 'images/lunch-04.jpg', 0.10323709845542907);

-- --------------------------------------------------------

--
-- Structure de la table `lehel-spring-rainy`
--

DROP TABLE IF EXISTS `lehel-spring-rainy`;
CREATE TABLE IF NOT EXISTS `lehel-spring-rainy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(75) NOT NULL,
  `price` double NOT NULL,
  `img_url` varchar(100) NOT NULL,
  `score` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `lehel-spring-rainy`
--

INSERT INTO `lehel-spring-rainy` (`id`, `item`, `price`, `img_url`, `score`) VALUES
(1, 'Mittagessen', 19, 'images/dinner-06.jpg', 4.677102696150541),
(2, 'belegte Backw. 2,50', 27, 'images/dinner-02.jpg', 2.494879056425656),
(3, 'belegte Backw. 1,40', 27, 'images/dinner-05.jpg', 2.0797865501359896),
(4, 'BIO-Rührei', 14, 'images/dinner-03.jpg', 1.916338816630892),
(5, 'Wiener Teller', 5, 'images/dinner-04.jpg', 1.7242488265037537),
(6, 'Reispfanne \"Red Thai\" ', 35, 'images/dinner-01.jpg', 1.5862228870391846),
(7, 'Getreiderisotto mit Gemüse und Hähnchen ', 35, 'images/dinner-05.jpg', 1.3216468701743984),
(8, 'Seelachs mit Sesamkruste auf Blattgemüse mit Kartoffeln ', 21, 'images/dinner-04.jpg', 1.2807345397312808),
(9, 'Vollkornspaghetti mit Gemüsebolognese ', 35, 'images/dinner-01.jpg', 1.2740771922445409),
(10, 'Honiglinsen mit Gemüse und Grillkäse ', 27, 'images/dinner-02.jpg', 1.2648153756604048),
(11, 'Molkereiprodukte 1,10', 21, 'images/dinner-06.jpg', 1.2587608528316476),
(12, 'Eintrittskarte', 7, 'images/dinner-02.jpg', 1.2111055933282358),
(13, 'Tagung 13,50', 7, 'images/dinner-06.jpg', 1.1889339303194857),
(14, 'Sauce extra', 17, 'images/dinner-01.jpg', 1.1863144995138202),
(15, 'Obst 0,40', 29, 'images/dinner-06.jpg', 1.1695255883034743),
(16, 'Port. Butter Honig ec', 13, 'images/dinner-06.jpg', 1.1672104996362718),
(17, 'BIO Molkerei 1,00', 24, 'images/dinner-04.jpg', 1.1538454248868362),
(18, 'Nasi Goreng ', 35, 'images/dinner-03.jpg', 1.1448141009528563),
(19, 'Kornsemmel 0,40', 21, 'images/dinner-03.jpg', 1.1367681999799613),
(20, 'BIO Back 0,45', 12, 'images/dinner-02.jpg', 1.1321877052475242),
(21, 'Mittagessen', 16, 'images/dinner-01.jpg', 4.677102696150541),
(22, 'belegte Backw. 2,50', 9, 'images/dinner-04.jpg', 2.494879056425656),
(23, 'belegte Backw. 1,40', 9, 'images/dinner-05.jpg', 2.0797865501359896),
(24, 'BIO-Rührei', 31, 'images/dinner-06.jpg', 1.916338816630892),
(25, 'Wiener Teller', 12, 'images/dinner-06.jpg', 1.7242488265037537),
(26, 'Reispfanne \"Red Thai\" ', 16, 'images/dinner-03.jpg', 1.5862228870391846),
(27, 'Getreiderisotto mit Gemüse und Hähnchen ', 33, 'images/dinner-04.jpg', 1.3216468701743984),
(28, 'Seelachs mit Sesamkruste auf Blattgemüse mit Kartoffeln ', 27, 'images/dinner-01.jpg', 1.2807345397312808),
(29, 'Vollkornspaghetti mit Gemüsebolognese ', 5, 'images/dinner-05.jpg', 1.2740771922445409),
(30, 'Honiglinsen mit Gemüse und Grillkäse ', 5, 'images/dinner-01.jpg', 1.2648153756604048),
(31, 'Molkereiprodukte 1,10', 10, 'images/dinner-01.jpg', 1.2587608528316476),
(32, 'Eintrittskarte', 19, 'images/dinner-05.jpg', 1.2111055933282358),
(33, 'Tagung 13,50', 7, 'images/dinner-01.jpg', 1.1889339303194857),
(34, 'Sauce extra', 11, 'images/dinner-05.jpg', 1.1863144995138202),
(35, 'Obst 0,40', 35, 'images/dinner-04.jpg', 1.1695255883034743),
(36, 'Port. Butter Honig ec', 14, 'images/dinner-04.jpg', 1.1672104996362718),
(37, 'BIO Molkerei 1,00', 34, 'images/dinner-05.jpg', 1.1538454248868362),
(38, 'Nasi Goreng ', 20, 'images/dinner-04.jpg', 1.1448141009528563),
(39, 'Kornsemmel 0,40', 34, 'images/dinner-03.jpg', 1.1367681999799613),
(40, 'BIO Back 0,45', 26, 'images/dinner-05.jpg', 1.1321877052475242);

-- --------------------------------------------------------

--
-- Structure de la table `lehel-spring-snowy`
--

DROP TABLE IF EXISTS `lehel-spring-snowy`;
CREATE TABLE IF NOT EXISTS `lehel-spring-snowy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(75) NOT NULL,
  `price` double NOT NULL,
  `img_url` varchar(100) NOT NULL,
  `score` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `lehel-spring-snowy`
--

INSERT INTO `lehel-spring-snowy` (`id`, `item`, `price`, `img_url`, `score`) VALUES
(1, 'Mittagessen', 19, 'images/dinner-05.jpg', 11.371977881381389),
(2, 'Frühstück', 34, 'images/dinner-05.jpg', 5.0177418887615195),
(3, 'Nasi Goreng mit Hühnchen ', 16, 'images/dinner-04.jpg', 2.8239759255428707),
(4, 'Kartoffeln mit Kräuterquark ', 23, 'images/dinner-01.jpg', 2.4000251293182373),
(5, 'Aktion 5,90', 23, 'images/dinner-03.jpg', 1.936398067091456),
(6, 'Butterbreze 1,10', 9, 'images/dinner-01.jpg', 1.907032257152928),
(7, 'Vollkornpasta mit Austernpilzen und Tomatensugo ', 21, 'images/dinner-06.jpg', 1.887229772056989),
(8, 'Tafelspitz vom Rind mit Meerrettich und Bouillonkartoffeln ', 32, 'images/dinner-01.jpg', 1.843264357207096),
(9, 'Grillstation', 33, 'images/dinner-04.jpg', 1.8236910549028418),
(10, 'Backwaren 1,80', 12, 'images/dinner-01.jpg', 1.8093663775707447),
(11, 'Dessert a 1,60', 7, 'images/dinner-05.jpg', 1.7978645466157486),
(12, 'Dessert a 1,00', 22, 'images/dinner-02.jpg', 1.7805088289198086),
(13, 'Gemüse Kartoffelpfanne mit Hähnchenbrust ', 17, 'images/dinner-04.jpg', 1.732520884929325),
(14, 'Dinkelspitz', 20, 'images/dinner-05.jpg', 1.72333724796772),
(15, 'Szegediner Gemüse mit Kartoffeln und Rind ', 9, 'images/dinner-02.jpg', 1.700571946529542),
(16, 'Gnocchi-Gemüsepfanne mit Hinterschinkenstreifen und Sauerrahm ', 9, 'images/dinner-01.jpg', 1.6924636013562209),
(17, 'Penne Integrale mit Ratatouille ', 25, 'images/dinner-01.jpg', 1.685698630333895),
(18, 'Linsen-Gemüseeintopf mit Kasslerstreifen ', 30, 'images/dinner-05.jpg', 1.6394059950413316),
(19, 'BIO Molkerei 0,55 _', 19, 'images/dinner-01.jpg', 1.6280143314286286),
(20, 'Vollkornreispfanne \"Griechisch\" ', 17, 'images/dinner-02.jpg', 1.6186461682735334),
(21, 'Hähnchenbrust auf Karotten-Krautgemüse mit Salzkartoffeln ', 9, 'images/dinner-05.jpg', 1.5649215798413338),
(22, 'Chili con Carne ', 16, 'images/dinner-01.jpg', 1.5602480886758583),
(23, 'SalatTeller', 20, 'images/dinner-06.jpg', 1.5486626582314265),
(24, 'Gemüse-Kartoffelpfanne mit Hähnchenbrust ', 5, 'images/dinner-01.jpg', 1.5340914782935602),
(25, 'Asia Noodles mit Gemüse und Chunky Stripes ', 21, 'images/dinner-05.jpg', 1.527971293611455),
(26, 'Mittagessen', 31, 'images/dinner-04.jpg', 11.371977881381389),
(27, 'Frühstück', 20, 'images/dinner-06.jpg', 5.0177418887615195),
(28, 'Nasi Goreng mit Hühnchen ', 12, 'images/dinner-01.jpg', 2.8239759255428707),
(29, 'Kartoffeln mit Kräuterquark ', 27, 'images/dinner-06.jpg', 2.4000251293182373),
(30, 'Aktion 5,90', 9, 'images/dinner-05.jpg', 1.936398067091456),
(31, 'Butterbreze 1,10', 8, 'images/dinner-04.jpg', 1.907032257152928),
(32, 'Vollkornpasta mit Austernpilzen und Tomatensugo ', 28, 'images/dinner-06.jpg', 1.887229772056989),
(33, 'Tafelspitz vom Rind mit Meerrettich und Bouillonkartoffeln ', 7, 'images/dinner-04.jpg', 1.843264357207096),
(34, 'Grillstation', 17, 'images/dinner-06.jpg', 1.8236910549028418),
(35, 'Backwaren 1,80', 30, 'images/dinner-02.jpg', 1.8093663775707447),
(36, 'Dessert a 1,60', 26, 'images/dinner-04.jpg', 1.7978645466157486),
(37, 'Dessert a 1,00', 35, 'images/dinner-04.jpg', 1.7805088289198086),
(38, 'Gemüse Kartoffelpfanne mit Hähnchenbrust ', 27, 'images/dinner-04.jpg', 1.732520884929325),
(39, 'Dinkelspitz', 11, 'images/dinner-01.jpg', 1.72333724796772),
(40, 'Szegediner Gemüse mit Kartoffeln und Rind ', 22, 'images/dinner-06.jpg', 1.700571946529542),
(41, 'Gnocchi-Gemüsepfanne mit Hinterschinkenstreifen und Sauerrahm ', 21, 'images/dinner-04.jpg', 1.6924636013562209),
(42, 'Penne Integrale mit Ratatouille ', 27, 'images/dinner-04.jpg', 1.685698630333895),
(43, 'Linsen-Gemüseeintopf mit Kasslerstreifen ', 35, 'images/dinner-05.jpg', 1.6394059950413316),
(44, 'BIO Molkerei 0,55 _', 16, 'images/dinner-03.jpg', 1.6280143314286286),
(45, 'Vollkornreispfanne \"Griechisch\" ', 29, 'images/dinner-03.jpg', 1.6186461682735334),
(46, 'Hähnchenbrust auf Karotten-Krautgemüse mit Salzkartoffeln ', 17, 'images/dinner-05.jpg', 1.5649215798413338),
(47, 'Chili con Carne ', 29, 'images/dinner-05.jpg', 1.5602480886758583),
(48, 'SalatTeller', 7, 'images/dinner-02.jpg', 1.5486626582314265),
(49, 'Gemüse-Kartoffelpfanne mit Hähnchenbrust ', 5, 'images/dinner-01.jpg', 1.5340914782935602),
(50, 'Asia Noodles mit Gemüse und Chunky Stripes ', 31, 'images/dinner-06.jpg', 1.527971293611455);

-- --------------------------------------------------------

--
-- Structure de la table `lehel-spring-sunny`
--

DROP TABLE IF EXISTS `lehel-spring-sunny`;
CREATE TABLE IF NOT EXISTS `lehel-spring-sunny` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(75) NOT NULL,
  `price` double NOT NULL,
  `img_url` varchar(100) NOT NULL,
  `score` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `lehel-spring-sunny`
--

INSERT INTO `lehel-spring-sunny` (`id`, `item`, `price`, `img_url`, `score`) VALUES
(1, 'Mittagessen', 9, 'images/dinner-01.jpg', 0.5163977742195129),
(2, 'Frühstück', 20, 'images/dinner-04.jpg', 0.5163977742195129),
(3, 'Leberkäse Semmel', 31, 'images/dinner-04.jpg', 0.15801964111106334),
(4, 'Debrecziner', 17, 'images/dinner-02.jpg', 0.15231792628765106),
(5, 'Wiener Teller', 9, 'images/dinner-04.jpg', 0.1437602324919267),
(6, 'Port. Butter Honig ec', 6, 'images/dinner-05.jpg', 0.139785638266203),
(7, 'Brot am Haken', 5, 'images/dinner-02.jpg', 0.13867506384849546),
(8, 'Beilage a 0,40', 29, 'images/dinner-02.jpg', 0.1334391361474991),
(9, 'Salat Port.  0,60', 22, 'images/dinner-01.jpg', 0.13245476165077186),
(10, 'Teebeutel', 11, 'images/dinner-02.jpg', 0.132177891514518),
(11, 'Pfälzer', 27, 'images/dinner-03.jpg', 0.12836690132434553),
(12, 'Proz. Rabatt/Aufschl.', 35, 'images/dinner-03.jpg', 0.12704540457990435),
(13, 'Senf 0,10', 20, 'images/dinner-05.jpg', 0.12514402891727205),
(14, 'Suppe 1,00', 10, 'images/dinner-01.jpg', 0.12428442037330488),
(15, 'Fixer Rabatt/Aufschl.', 19, 'images/dinner-04.jpg', 0.12334969852651867),
(16, 'Dessert a 1,60', 9, 'images/dinner-05.jpg', 0.12103932960978102),
(17, 'BIO Molkerei 0,50', 13, 'images/dinner-01.jpg', 0.12095645697493305),
(18, 'Tagessuppe a 0,30', 31, 'images/dinner-05.jpg', 0.11897573944122065),
(19, 'belegte Backw. 1,40', 10, 'images/dinner-03.jpg', 0.11838347321256583),
(20, 'Dinkelspitz', 18, 'images/dinner-03.jpg', 0.11687903300575588),
(21, 'Semmeln', 10, 'images/dinner-01.jpg', 0.11575076064547975),
(22, 'O-Saft frisch', 19, 'images/dinner-05.jpg', 0.11534728481463598),
(23, 'BIO Molkerei 0,55 _', 23, 'images/dinner-04.jpg', 0.11525971710681912),
(24, 'Käse-Mohn Breze', 32, 'images/dinner-03.jpg', 0.11509483765406785),
(25, 'belegte Backw. 2,30', 10, 'images/dinner-06.jpg', 0.1148035680094073),
(26, 'Mittagessen', 14, 'images/dinner-02.jpg', 0.5163977742195129),
(27, 'Frühstück', 26, 'images/dinner-02.jpg', 0.5163977742195129),
(28, 'Leberkäse Semmel', 14, 'images/dinner-03.jpg', 0.15801964111106334),
(29, 'Debrecziner', 17, 'images/dinner-01.jpg', 0.15231792628765106),
(30, 'Wiener Teller', 14, 'images/dinner-05.jpg', 0.1437602324919267),
(31, 'Port. Butter Honig ec', 23, 'images/dinner-05.jpg', 0.139785638266203),
(32, 'Brot am Haken', 18, 'images/dinner-03.jpg', 0.13867506384849546),
(33, 'Beilage a 0,40', 10, 'images/dinner-02.jpg', 0.1334391361474991),
(34, 'Salat Port.  0,60', 14, 'images/dinner-02.jpg', 0.13245476165077186),
(35, 'Teebeutel', 24, 'images/dinner-04.jpg', 0.132177891514518),
(36, 'Pfälzer', 8, 'images/dinner-03.jpg', 0.12836690132434553),
(37, 'Proz. Rabatt/Aufschl.', 28, 'images/dinner-05.jpg', 0.12704540457990435),
(38, 'Senf 0,10', 11, 'images/dinner-04.jpg', 0.12514402891727205),
(39, 'Suppe 1,00', 35, 'images/dinner-05.jpg', 0.12428442037330488),
(40, 'Fixer Rabatt/Aufschl.', 26, 'images/dinner-01.jpg', 0.12334969852651867),
(41, 'Dessert a 1,60', 22, 'images/dinner-01.jpg', 0.12103932960978102),
(42, 'BIO Molkerei 0,50', 10, 'images/dinner-01.jpg', 0.12095645697493305),
(43, 'Tagessuppe a 0,30', 35, 'images/dinner-05.jpg', 0.11897573944122065),
(44, 'belegte Backw. 1,40', 17, 'images/dinner-03.jpg', 0.11838347321256583),
(45, 'Dinkelspitz', 27, 'images/dinner-02.jpg', 0.11687903300575588),
(46, 'Semmeln', 21, 'images/dinner-03.jpg', 0.11575076064547975),
(47, 'O-Saft frisch', 27, 'images/dinner-06.jpg', 0.11534728481463598),
(48, 'BIO Molkerei 0,55 _', 34, 'images/dinner-01.jpg', 0.11525971710681912),
(49, 'Käse-Mohn Breze', 9, 'images/dinner-04.jpg', 0.11509483765406785),
(50, 'belegte Backw. 2,30', 16, 'images/dinner-06.jpg', 0.1148035680094073);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
