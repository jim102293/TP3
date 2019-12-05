-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Erstellungszeit: 05. Dez 2019 um 17:31
-- Server-Version: 5.7.26
-- PHP-Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `site`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `activity`
--

DROP TABLE IF EXISTS `activity`;
CREATE TABLE IF NOT EXISTS `activity` (
  `id` int(11) NOT NULL,
  `activityname` varchar(80) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `activity`
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
-- Tabellenstruktur für Tabelle `dictionary`
--

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyvalue` varchar(80) NOT NULL,
  `en` text NOT NULL,
  `fr` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `dictionary`
--

INSERT INTO `dictionary` (`id`, `keyvalue`, `en`, `fr`) VALUES
(1, 'home', 'Home', 'Accueil'),
(2, 'subscribe', 'Subscribe', 'S\'inscrire'),
(3, 'localise', 'Find an activity', 'Localiser une activité'),
(4, 'natation', 'Swimming', 'Natation'),
(5, 'badminton', 'Badminton', 'Badminton'),
(6, 'randonee', 'Hiking', 'Randonnée'),
(7, 'kayak', 'Kayaking', 'Kayak'),
(8, 'velo', 'Biking', 'Vélo'),
(9, 'echec', 'Chess', 'Échecs'),
(10, 'student', 'I am a student', 'Je suis un étudiant');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `member`
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
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `member`
--

INSERT INTO `member` (`id`, `fullname`, `dob`, `sex`, `activityid`, `motivation`) VALUES
(1, 'Jimmy', '1211-02-12', 0, 0, 'Im a happy student'),
(2, 'Jimmy', '1211-02-12', 0, 0, 'Im a happy student'),
(3, 'Jimmy', '1211-02-12', 0, 0, 'Im a happy student'),
(4, 'Tommy', '0111-11-12', 0, 0, ''),
(5, 'Tommy', '0111-11-12', 0, 0, ''),
(6, 'Wagner', '2019-12-05', 0, 0, 'test'),
(7, 'Wagner', '2019-12-05', 0, 0, 'test'),
(8, 'Wagner', '2019-12-05', 0, 0, 'test'),
(9, 'Wagner', '2019-12-05', 0, 0, 'test'),
(10, 'Wagner', '2004-12-02', 0, 0, 'Hallo'),
(11, 'Wagner', '2004-12-02', 0, 0, 'Hallo'),
(12, 'Wagner', '2019-08-05', 0, 0, ''),
(13, 'Wagner', '2019-08-05', 0, 0, ''),
(14, 'Wagner', '2016-12-05', 0, 0, ''),
(15, 'Wagner', '2016-12-05', 0, 0, ''),
(16, 'WagnerSebastian', '2019-12-05', 0, 0, ''),
(17, 'WagnerSebastian', '2019-12-05', 0, 0, ''),
(18, 'Wagner Sebastian', '2019-12-05', 0, 1, ''),
(19, 'Wagner Sebastian', '2019-12-05', 0, 1, ''),
(20, 'Wagner Sebastian', '2019-12-05', 0, 1, ''),
(21, 'Wagner Sebastian', '2019-12-05', 0, 1, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `supervisor`
--

DROP TABLE IF EXISTS `supervisor`;
CREATE TABLE IF NOT EXISTS `supervisor` (
  `id` int(11) NOT NULL,
  `full name` varchar(80) NOT NULL,
  `activityid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
