-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 04 déc. 2018 à 16:03
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `raleth_meme`
--

-- --------------------------------------------------------

--
-- Structure de la table `memes`
--

DROP TABLE IF EXISTS `memes`;
CREATE TABLE IF NOT EXISTS `memes` (
  `id_meme` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_bin NOT NULL,
  `url` varchar(255) COLLATE utf8_bin NOT NULL,
  `id_template` int(11) NOT NULL,
  PRIMARY KEY (`id_meme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `memes_templates`
--

DROP TABLE IF EXISTS `memes_templates`;
CREATE TABLE IF NOT EXISTS `memes_templates` (
  `id_template` int(11) NOT NULL,
  `id_meme` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `templates`
--

DROP TABLE IF EXISTS `templates`;
CREATE TABLE IF NOT EXISTS `templates` (
  `id_template` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_bin NOT NULL,
  `url` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_template`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `templates`
--

INSERT INTO `templates` (`id_template`, `nom`, `url`) VALUES
(1, 'Batman Baffe', 'img/batmanbaffe.png'),
(2, 'Bob l\'Eponge', 'img/bobeponge.png'),
(3, 'Bouton Bleu', 'img/boutonbleu.png'),
(4, 'Bouton Rouge', 'img/boutonrouge.png'),
(5, 'Brûle tout', 'img/bruletout.png'),
(6, 'Bad Luck Brian', 'img/bryan.png'),
(7, 'Les cerveaux', 'img/cerveau.png'),
(8, 'Explorateur', 'img/explorateur.png'),
(9, 'Homme', 'img/homme.png'),
(10, 'Pikachu', 'img/pikachu.png'),
(11, 'Pillules', 'img/pills.png'),
(12, 'Pour un petit tour', 'img/pourunpetittour.png'),
(13, 'Tchin', 'img/tchin.png'),
(14, 'T\'es mort', 'img/tesmort.png'),
(15, 'Toy Story', 'img/toystory.png'),
(16, 'Une bière', 'img/unebiere.png'),
(17, 'Une idée', 'img/uneidee.png'),
(18, 'WTF', 'img/wtf.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
