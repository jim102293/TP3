-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 10 déc. 2019 à 07:54
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `site`
--

-- --------------------------------------------------------

--
-- Structure de la table `activity`
--

DROP TABLE IF EXISTS `activity`;
CREATE TABLE IF NOT EXISTS `activity` (
  `id` int(11) NOT NULL,
  `activityname` varchar(80) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `activity`
--

INSERT INTO `activity` (`id`, `activityname`, `description`) VALUES
(1, 'Natation', 'Cours de natation'),
(2, 'Badminton', 'Cours de badminton'),
(3, 'Randonnée', 'Cours de randonnée'),
(4, 'Kayak', 'Cours de kayak'),
(5, 'Velo', 'Cours de velo'),
(6, 'Echecs', 'Cours d\'echecs');

-- --------------------------------------------------------

--
-- Structure de la table `dictionary`
--

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyvalue` varchar(80) NOT NULL,
  `en` text NOT NULL,
  `fr` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dictionary`
--

INSERT INTO `dictionary` (`id`, `keyvalue`, `en`, `fr`) VALUES
(1, 'home', 'Home', 'Acceuil'),
(2, 'subscribe', 'Subscribe', 'S\'inscrire'),
(3, 'localise', 'Find an activity', 'Localiser une activité'),
(4, 'natation', 'Swimming', 'Natation'),
(5, 'badminton', 'Badminton', 'Badminton'),
(6, 'randonnee', 'Hiking', 'Randonnée'),
(7, 'kayak', 'Kayaking', 'Kayak'),
(8, 'velo', 'Biking', 'Vélo'),
(9, 'echec', 'Chess', 'Échecs'),
(10, 'student', 'I am a student', 'Je suis un étudiant'),
(11, 'activite', 'Activity', 'Activité'),
(12, 'responsable', 'Responsible', 'Responsable'),
(13, 'nombreDinscrits', 'Number of subscribers\r\n', 'Nombre d\'inscrits'),
(24, 'accueiltitre', 'Our Goal', 'Notre but'),
(15, 'nom', 'Last Name', 'Nom'),
(16, 'prenom', 'First Name', 'prénom'),
(17, 'dob', 'Date of birth', 'Date de naissance'),
(18, 'sexe', 'Gender', 'Sexe'),
(19, 'homme', 'Male', 'Homme'),
(20, 'femme', 'Female', 'Femme'),
(21, 'motivation', 'Motivation', 'Motivation'),
(22, 'reinitialiser', 'Reset', 'Réinitialiser'),
(23, 'valider', 'Send', 'Valider'),
(25, 'inscriptiontitre', 'Enrollment for activities', 'Inscrivez-vous'),
(26, 'accueiltitretable', 'List of available activities', 'Liste des activités disponibles '),
(27, 'titresectioncarte', 'Adress of the university', 'L\'adresse de l\'université '),
(28, 'title', 'Activities for students!', 'Loisir pour les étudiants!'),
(29, 'buttonremplir', 'Fill', 'Remplir'),
(30, 'buttoneffacer', 'Delete', 'Effacer'),
(31, 'switch', '\"assets/images/fr.png\"', '\"assets/images/En.png\"'),
(32, 'change', 'en', 'fr');

-- --------------------------------------------------------

--
-- Structure de la table `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(80) NOT NULL,
  `dob` date NOT NULL,
  `sex` int(11) NOT NULL,
  `activityid` int(11) NOT NULL,
  `motivation` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `supervisor`
--

DROP TABLE IF EXISTS `supervisor`;
CREATE TABLE IF NOT EXISTS `supervisor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(80) NOT NULL,
  `activityid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `supervisor`
--

INSERT INTO `supervisor` (`id`, `fullname`, `activityid`) VALUES
(1, 'Michel Provencher', 1),
(2, 'Daniel Lefevbre', 2),
(3, 'Catherine Pelletier', 3),
(4, 'Josée Coté', 4),
(5, 'Jean-Yves Surroy', 5),
(6, 'Emilie Simard', 6);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
