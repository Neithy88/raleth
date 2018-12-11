-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 11 déc. 2018 à 10:34
-- Version du serveur :  10.1.36-MariaDB
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
-- Base de données :  `raleth`
--

-- --------------------------------------------------------

--
-- Structure de la table `memes`
--

CREATE TABLE `memes` (
  `id_meme` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_bin NOT NULL,
  `url` varchar(255) COLLATE utf8_bin NOT NULL,
  `id_template` int(11) NOT NULL,
  `catégorie` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'Autre'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `memes`
--

INSERT INTO `memes` (`id_meme`, `nom`, `url`, `id_template`, `catégorie`) VALUES
(1, 'oui', 'memes/oui', 17, 'Autre'),
(2, 'oui', 'memes/oui', 10, 'Autre'),
(3, 'oui', 'memes/oui', 22, 'Autre'),
(4, 'oui', 'memes/oui', 16, 'Autre'),
(5, 'oui', 'memes/oui', 16, 'Autre'),
(6, 'oui', 'memes/oui', 22, 'Autre'),
(7, 'oui', 'memes/oui', 3, 'Autre'),
(8, 'oui', 'memes/oui', 3, 'Autre'),
(9, 'oui', 'memes/oui', 1, 'Autre'),
(10, 'oui', 'memes/oui', 5, 'Autre'),
(11, 'oui', 'memes/oui', 2, 'Autre'),
(12, 'oui', 'memes/oui', 12, 'Autre'),
(13, 'oui', 'memes/oui', 9, 'Autre'),
(14, 'oui', 'memes/oui', 15, 'Autre'),
(15, 'oui', 'memes/oui', 15, 'Autre'),
(16, 'oui', 'memes/oui', 2, 'Autre'),
(17, 'oui', 'memes/oui', 22, 'Autre'),
(18, 'oui', 'memes/oui', 13, 'Autre'),
(19, 'oui', 'memes/oui', 17, 'Autre'),
(20, 'oui', 'memes/oui', 22, 'Autre'),
(21, 'oui', 'memes/oui', 22, 'Autre'),
(22, 'oui', 'memes/oui', 53, 'Autre'),
(23, 'oui', 'memes/oui', 53, 'Autre'),
(24, 'oui', 'memes/oui', 13, 'Autre'),
(25, 'oui', 'memes/oui', 6, 'Autre'),
(26, 'oui', 'memes/oui', 7, 'Autre'),
(27, 'oui', 'memes/oui', 2, 'Autre'),
(28, 'oui', 'memes/oui', 3, 'Autre'),
(29, 'oui', 'memes/oui', 16, 'Autre'),
(30, 'oui', 'memes/oui', 16, 'Autre'),
(31, 'oui', 'memes/oui', 16, 'Autre'),
(32, 'oui', 'memes/oui', 16, 'Autre'),
(33, 'oui', 'memes/oui', 10, 'Autre'),
(34, 'oui', 'memes/oui', 5, 'Autre'),
(35, 'oui', 'memes/oui', 3, 'Autre'),
(36, 'oui', 'memes/oui', 22, 'Autre'),
(37, 'oui', 'memes/oui', 5, 'Autre'),
(38, 'oui', 'memes/oui', 1, 'Autre'),
(39, 'oui', 'memes/oui', 9, 'Autre'),
(40, 'oui', 'memes/oui', 8, 'Autre'),
(41, 'oui', 'memes/oui', 8, 'Autre'),
(42, 'oui', 'memes/oui', 53, 'Autre'),
(43, 'oui', 'memes/oui', 17, 'Autre'),
(44, 'oui', 'memes/oui', 17, 'Autre'),
(45, 'oui', 'memes/oui', 6, 'Autre'),
(46, 'oui', 'memes/oui', 6, 'Autre'),
(51, 'oui', 'memes/oui', 6, 'Autre'),
(52, 'oui', 'memes/oui', 6, 'Autre'),
(53, 'oui', 'memes/oui', 13, 'Autre'),
(54, 'oui', 'memes/oui', 8, 'Autre'),
(55, 'oui', 'memes/oui', 17, 'Autre'),
(56, 'oui', 'memes/oui', 1, 'Autre'),
(57, 'oui', 'memes/oui', 10, 'Autre'),
(58, 'oui', 'memes/oui', 6, 'Autre'),
(59, 'oui', 'memes/oui', 9, 'Autre'),
(60, 'oui', 'memes/oui', 6, 'Autre'),
(61, 'oui', 'memes/oui', 6, 'Autre'),
(62, 'oui', 'memes/oui', 6, 'Autre'),
(63, 'oui', 'memes/oui', 6, 'Autre'),
(64, 'oui', 'memes/oui', 6, 'Autre'),
(65, 'oui', 'memes/oui', 9, 'Autre'),
(66, 'oui', 'memes/oui', 1, 'Autre'),
(67, 'oui', 'memes/oui', 6, 'Autre'),
(68, 'oui', 'memes/oui', 15, 'Autre'),
(69, 'oui', 'memes/oui', 3, 'Autre'),
(70, 'oui', 'memes/oui', 6, 'Autre'),
(71, 'oui', 'memes/oui', 2, 'Autre'),
(72, 'oui', 'memes/oui', 10, 'Autre'),
(73, 'oui', 'memes/oui', 4, 'Autre'),
(74, 'oui', 'memes/oui', 8, 'Autre'),
(75, 'oui', 'memes/oui', 5, 'Autre'),
(76, 'oui', 'memes/oui', 6, 'Autre'),
(77, 'oui', 'memes/oui', 8, 'Autre'),
(78, 'oui', 'memes/oui', 15, 'Autre'),
(79, 'oui', 'memes/oui', 6, 'Autre'),
(80, 'oui', 'memes/oui', 2, 'Autre'),
(81, 'oui', 'memes/oui', 2, 'Autre'),
(82, 'oui', 'memes/oui', 6, 'Autre'),
(83, 'oui', 'memes/oui', 6, 'Autre'),
(84, 'oui', 'memes/oui', 2, 'Autre'),
(85, 'oui', 'memes/oui', 6, 'Autre'),
(86, 'oui', 'memes/oui', 1, 'Autre'),
(87, 'oui', 'memes/oui', 6, 'Autre'),
(88, 'oui', 'memes/oui', 1, 'Autre'),
(89, 'oui', 'memes/oui', 6, 'Autre'),
(90, 'oui', 'memes/oui', 3, 'Autre'),
(91, 'oui', 'memes/oui', 6, 'Autre'),
(92, 'oui', 'memes/oui', 2, 'Autre'),
(93, 'oui', 'memes/oui', 6, 'Autre'),
(94, 'oui', 'memes/oui', 6, 'Autre'),
(95, 'oui', 'memes/oui', 9, 'Autre'),
(96, 'oui', 'memes/oui', 9, 'Autre'),
(97, 'oui', 'memes/oui', 4, 'Autre'),
(98, 'oui', 'memes/oui', 6, 'Autre'),
(99, 'oui', 'memes/oui', 2, 'Autre'),
(100, 'oui', 'memes/oui', 8, 'Autre'),
(101, 'oui', 'memes/oui', 8, 'Autre'),
(102, 'oui', 'memes/oui', 8, 'Autre'),
(103, 'oui', 'memes/oui', 8, 'Autre'),
(104, 'oui', 'memes/oui', 6, 'Autre'),
(105, 'oui', 'memes/oui', 2, 'Autre'),
(106, 'oui', 'memes/oui', 3, 'Autre'),
(107, 'oui', 'memes/oui', 1, 'Autre'),
(108, 'oui', 'memes/oui', 5, 'Autre'),
(109, 'oui', 'memes/oui', 5, 'Autre'),
(110, 'oui', 'memes/oui', 5, 'Autre'),
(111, 'oui', 'memes/oui', 5, 'Autre'),
(112, 'oui', 'memes/oui', 5, 'Autre'),
(113, 'oui', 'memes/oui', 5, 'Autre'),
(114, 'oui', 'memes/oui', 5, 'Autre'),
(115, 'oui', 'memes/oui', 5, 'Autre'),
(116, 'oui', 'memes/oui', 5, 'Autre'),
(117, 'oui', 'memes/oui', 5, 'Autre'),
(118, 'oui', 'memes/oui', 10, 'Autre'),
(119, 'oui', 'memes/oui', 12, 'Autre'),
(120, 'oui', 'memes/oui', 13, 'Autre'),
(121, 'oui', 'memes/oui', 6, 'Autre'),
(122, 'oui', 'memes/oui', 6, 'Autre'),
(123, 'oui', 'memes/oui', 6, 'Autre'),
(124, 'oui', 'memes/oui', 6, 'Autre'),
(125, 'oui', 'memes/oui', 6, 'Autre'),
(126, 'non', 'memes/', 6, 'Autre'),
(127, 'non', 'memes/', 5, 'Autre'),
(128, 'non', 'memes/', 8, 'Autre'),
(129, 'non', 'memes/', 8, 'Autre'),
(130, 'non', 'memes/', 8, 'Autre'),
(131, 'non', 'memes/', 8, 'Autre'),
(132, 'non', 'memes/', 8, 'Autre'),
(133, 'non', 'memes/', 8, 'Autre'),
(134, 'non', 'memes/', 8, 'Autre'),
(135, 'non', 'memes/134jpg', 2, 'Autre'),
(136, 'non', 'memes/135jpg', 2, 'Autre'),
(137, 'non', 'memes/136jpg', 2, 'Autre'),
(138, 'non', 'memes/137jpg', 2, 'Autre'),
(139, 'non', 'memes/138.jpg', 2, 'Autre'),
(140, 'non', 'memes/139.jpg', 2, 'Autre'),
(141, 'non', 'memes/140.jpg', 6, 'Autre'),
(142, 'non', 'memes/141.jpg', 2, 'Autre'),
(143, 'non', 'memes/143.jpg', 6, 'Autre'),
(144, 'non', 'memes/144.jpg', 8, 'Autre'),
(145, 'non', 'memes/145.jpg', 53, 'Autre'),
(146, 'non', 'memes/146.jpg', 6, 'Autre'),
(147, 'non', 'memes/147.jpg', 2, 'Autre'),
(148, 'non', '1.jpg', 2, 'Autre'),
(149, 'non', '1.jpg', 2, 'Autre'),
(150, 'non', '1.jpg', 2, 'Autre'),
(151, 'non', '1.jpg', 6, 'Autre'),
(152, 'non', '1.jpg', 17, 'Autre'),
(153, 'non', '1.jpg', 6, 'Autre'),
(154, 'non', '1.jpg', 15, 'Autre'),
(155, 'non', '1.jpg', 5, 'Autre'),
(156, 'non', '1.jpg', 2, 'Autre'),
(157, 'non', '1.jpg', 6, 'Autre'),
(158, 'non', '1.jpg', 3, 'Autre'),
(159, 'non', 'memes/159.jpg', 3, 'Autre'),
(160, 'non', 'memes/160.jpg', 5, 'Autre'),
(161, 'non', 'memes/161.jpg', 5, 'Autre'),
(162, 'non', 'memes/162.jpg', 5, 'Autre'),
(163, 'non', 'memes/163.jpg', 9, 'Autre'),
(164, 'non', 'memes/164.jpg', 9, 'Autre'),
(165, 'non', 'memes/165.jpg', 9, 'Autre'),
(166, 'non', 'memes/166.jpg', 5, 'Autre'),
(167, 'non', 'memes/167.jpg', 5, 'Autre'),
(168, 'non', 'memes/168.jpg', 5, 'Autre'),
(169, 'non', 'memes/169.jpg', 5, 'Autre'),
(170, 'non', 'memes/170.jpg', 5, 'Autre'),
(171, 'non', 'memes/171.jpg', 5, 'Autre'),
(172, 'non', 'memes/172.jpg', 5, 'Autre'),
(173, 'non', 'memes/173.jpg', 5, 'Autre'),
(174, 'non', 'memes/174.jpg', 5, 'Autre'),
(175, 'non', 'memes/175.jpg', 5, 'Autre'),
(176, 'non', 'memes/176.jpg', 5, 'Autre'),
(177, 'non', 'memes/177.jpg', 5, 'Autre'),
(178, 'non', 'memes/178.jpg', 5, 'Autre'),
(179, 'non', 'memes/179.jpg', 5, 'Autre'),
(180, 'non', 'memes/180.jpg', 9, 'Autre'),
(181, 'non', 'memes/181.jpg', 10, 'Autre'),
(182, 'non', 'memes/182.jpg', 10, 'Autre'),
(183, 'non', 'memes/183.jpg', 6, 'Autre'),
(184, 'non', 'memes/184.jpg', 15, 'Autre'),
(185, 'non', 'memes/185.jpg', 15, 'Autre'),
(186, 'non', 'memes/186.jpg', 15, 'Autre'),
(187, 'non', 'memes/187.jpg', 15, 'Autre'),
(188, 'non', 'memes/188.jpg', 15, 'Autre'),
(189, 'non', 'memes/189.jpg', 15, 'Autre'),
(190, 'non', 'memes/190.jpg', 15, 'Autre'),
(191, 'non', 'memes/191.jpg', 15, 'Autre'),
(192, 'non', 'memes/192.jpg', 13, 'Autre'),
(193, 'non', 'memes/193.jpg', 13, 'Autre'),
(194, 'non', 'memes/194.jpg', 6, 'Autre'),
(195, 'non', 'memes/195.jpg', 5, 'Autre'),
(196, 'non', 'memes/196.jpg', 5, 'Autre'),
(197, 'non', 'memes/197.jpg', 7, 'Autre'),
(198, 'non', 'memes/198.jpg', 6, 'Autre'),
(199, 'non', 'memes/199.jpg', 6, 'Autre'),
(200, 'non', 'memes/200.jpg', 1, 'Autre'),
(201, 'non', 'memes/201.jpg', 6, 'Autre'),
(202, 'non', 'memes/202.jpg', 6, 'Autre'),
(203, 'non', 'memes/203.jpg', 2, 'Autre'),
(204, 'non', 'memes/204.jpg', 1, 'Autre'),
(205, 'non', 'memes/205.jpg', 5, 'Autre'),
(206, 'non', 'memes/206.jpg', 55, 'Autre'),
(207, 'non', 'memes/207.jpg', 55, 'Autre'),
(210, 'non', 'memes/208.jpg', 21, 'Autre'),
(213, 'non', 'memes/211.jpg', 4, 'Autre'),
(214, 'non', 'memes/214.jpg', 5, 'Autre'),
(215, 'non', 'memes/215.jpg', 4, 'Autre'),
(216, 'non', 'memes/216.jpg', 6, 'Autre');

-- --------------------------------------------------------

--
-- Structure de la table `templates`
--

CREATE TABLE `templates` (
  `id_template` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_bin NOT NULL,
  `url` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
(18, 'WTF', 'img/wtf.png'),
(21, 'Pogchamp', 'img/pogchamp.png'),
(22, 'Kappadark', 'img/kappadark.jpg'),
(53, 'Bhjgkhk', 'img/bhjgkhk.png'),
(54, 'Logo ACS', 'img/Logo ACS.png'),
(55, 'Logo-access-code-web', 'img/Logo-access-code-web.gif');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `memes`
--
ALTER TABLE `memes`
  ADD PRIMARY KEY (`id_meme`),
  ADD KEY `memes_templates` (`id_template`);

--
-- Index pour la table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id_template`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `memes`
--
ALTER TABLE `memes`
  MODIFY `id_meme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT pour la table `templates`
--
ALTER TABLE `templates`
  MODIFY `id_template` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `memes`
--
ALTER TABLE `memes`
  ADD CONSTRAINT `memes_templates` FOREIGN KEY (`id_template`) REFERENCES `templates` (`id_template`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
