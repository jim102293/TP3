-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 29, 2019 at 12:00 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `site`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
CREATE TABLE IF NOT EXISTS `activity` (
  `id` int(11) NOT NULL,
  `activityname` varchar(80) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity`
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
-- Table structure for table `dictionary`
--

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int(11) NOT NULL,
  `key` varchar(80) NOT NULL,
  `en` text NOT NULL,
  `fr` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dictionary`
--

INSERT INTO `dictionary` (`id`, `key`, `en`, `fr`) VALUES
(1, '1', '<section id=\"accueil\">\r\n            <h2>Notre but:</h2>\r\n            <p> Notre site propose aux étudiants désireux de réaliser une ou plusieurs activités de loisir de rejoindre les différentes activités proposées dans la liste suivante en 3 étapes: </p>\r\n                <ul>\r\n                    <li>S\'inscire</li>\r\n                    <li>Choisir une ou plusieurs activité</li>\r\n                    <li>Commencer les activités en groupe</li>\r\n                </ul>   \r\n            <p>Les différentes activités des groupes sont la responsabilité de professionnelles. Il s\'agit de passionnés du domaine qui vous feront découvrir des pans inédits de vos loisirs préférés. Qu\'attendez-vous..? Rejoignez-nous!</p>\r\n            <div class=\"box-5\">\r\n                <h2>Liste des activités disponibles</h2>\r\n                <div>\r\n                <input type=\"button\" name=\"show\" value=\"Remplir\" onclick=\"replaceDataInOrder(); showTable()\">\r\n                <input type=\"button\" name=\"hide\" value=\"Effacer\" onclick=\"hideTable()\">\r\n                </div>\r\n            </div>\r\n            <table> <!--Le tableau-->\r\n                <thead>\r\n                    <tr>\r\n                        <th onclick=\"activateTri(1)\">#</th>\r\n                        <th onclick=\"activateTri(2)\">Activité</th>\r\n                        <th onclick=\"activateTri(3)\">Responsable</th>\r\n                        <th onclick=\"activateTri(4)\">Nombre d\'inscrits</th>\r\n                    </tr>\r\n                </thead>\r\n                <tbody id=\"tableRows\"></tbody>    \r\n            </table>\r\n        </section>\r\n        <section id=\"inscription\">\r\n            <h2>Inscrivez-vous</h2>\r\n            <form method=\"post\" action=\"includes/serveur.php\">\r\n                <label>Nom</label>\r\n                <input type=\"text\" name=\"nom\" onkeyup=\"lettersOnly(this)\"><br>\r\n        \r\n                <label>Prénom</label>\r\n                <input type=\"text\" name=\"prenom\" onkeyup=\"lettersOnly(this)\"><br>\r\n        \r\n                <label>Date de naissance</label>\r\n                <input type=\"date\" name=\"bday\"><br>\r\n        \r\n                <label>Sexe</label>\r\n        \r\n                <input type=\"radio\" name=\"sexe\" value=\"Homme\">\r\n                <label>Homme</label>\r\n                <input type=\"radio\" name=\"sexe\" value=\"Femme\">\r\n                <label>Femme</label><br>\r\n        \r\n                <label>Activité</label>\r\n                <input list=\"activite\" name=\"activité\" value=\"\">\r\n                <datalist id=\"activite\">\r\n                    <option value=\"Natation\">\r\n                    <option value=\"Badminton\">\r\n                    <option value=\"Randonnée\">\r\n                    <option value=\"Kayak\">\r\n                    <option value=\"Vélo\">\r\n                    <option value=\"Échecs\">\r\n                </datalist><br>\r\n        \r\n                <label for=\"motivation\">Motivation</label>\r\n                <textarea id=\"motivation\" class=\"reposition\" name=\"motivation\" rows=\"5\" cols=\"40\"></textarea><br>\r\n        \r\n                <input type=\"reset\" name=\"reset\" value=\"Réinitialiser\" onclick=\"clearStyleOnReset()\">\r\n                <input type=\"submit\" name=\"submit\" value=\"Valider\">\r\n                <span id=\"validation\"></span>\r\n            </form>\r\n        </section>\r\n        <section id=\"sectioncarte\">\r\n                <h3>L\'adresse de l\'université</h3>\r\n                <!--La div pour la map -->\r\n                <div id=\"map\"></div>\r\n                <p>3351 Boulevard des Forges, Trois-Rivières, QC G8Z 4M3</p>\r\n        </section>\r\n    </section>\r\n</main>', '<section id=\"accueil\">\r\n            <h2>Notre but:</h2>\r\n            <p> Notre site propose aux étudiants désireux de réaliser une ou plusieurs activités de loisir de rejoindre les différentes activités proposées dans la liste suivante en 3 étapes: </p>\r\n                <ul>\r\n                    <li>S\'inscire</li>\r\n                    <li>Choisir une ou plusieurs activité</li>\r\n                    <li>Commencer les activités en groupe</li>\r\n                </ul>   \r\n            <p>Les différentes activités des groupes sont la responsabilité de professionnelles. Il s\'agit de passionnés du domaine qui vous feront découvrir des pans inédits de vos loisirs préférés. Qu\'attendez-vous..? Rejoignez-nous!</p>\r\n            <div class=\"box-5\">\r\n                <h2>Liste des activités disponibles</h2>\r\n                <div>\r\n                <input type=\"button\" name=\"show\" value=\"Remplir\" onclick=\"replaceDataInOrder(); showTable()\">\r\n                <input type=\"button\" name=\"hide\" value=\"Effacer\" onclick=\"hideTable()\">\r\n                </div>\r\n            </div>\r\n            <table> <!--Le tableau-->\r\n                <thead>\r\n                    <tr>\r\n                        <th onclick=\"activateTri(1)\">#</th>\r\n                        <th onclick=\"activateTri(2)\">Activité</th>\r\n                        <th onclick=\"activateTri(3)\">Responsable</th>\r\n                        <th onclick=\"activateTri(4)\">Nombre d\'inscrits</th>\r\n                    </tr>\r\n                </thead>\r\n                <tbody id=\"tableRows\"></tbody>    \r\n            </table>\r\n        </section>\r\n        <section id=\"inscription\">\r\n            <h2>Inscrivez-vous</h2>\r\n            <form method=\"post\" action=\"includes/serveur.php\">\r\n                <label>Nom</label>\r\n                <input type=\"text\" name=\"nom\" onkeyup=\"lettersOnly(this)\"><br>\r\n        \r\n                <label>Prénom</label>\r\n                <input type=\"text\" name=\"prenom\" onkeyup=\"lettersOnly(this)\"><br>\r\n        \r\n                <label>Date de naissance</label>\r\n                <input type=\"date\" name=\"bday\"><br>\r\n        \r\n                <label>Sexe</label>\r\n        \r\n                <input type=\"radio\" name=\"sexe\" value=\"Homme\">\r\n                <label>Homme</label>\r\n                <input type=\"radio\" name=\"sexe\" value=\"Femme\">\r\n                <label>Femme</label><br>\r\n        \r\n                <label>Activité</label>\r\n                <input list=\"activite\" name=\"activité\" value=\"\">\r\n                <datalist id=\"activite\">\r\n                    <option value=\"Natation\">\r\n                    <option value=\"Badminton\">\r\n                    <option value=\"Randonnée\">\r\n                    <option value=\"Kayak\">\r\n                    <option value=\"Vélo\">\r\n                    <option value=\"Échecs\">\r\n                </datalist><br>\r\n        \r\n                <label for=\"motivation\">Motivation</label>\r\n                <textarea id=\"motivation\" class=\"reposition\" name=\"motivation\" rows=\"5\" cols=\"40\"></textarea><br>\r\n        \r\n                <input type=\"reset\" name=\"reset\" value=\"Réinitialiser\" onclick=\"clearStyleOnReset()\">\r\n                <input type=\"submit\" name=\"submit\" value=\"Valider\">\r\n                <span id=\"validation\"></span>\r\n            </form>\r\n        </section>\r\n        <section id=\"sectioncarte\">\r\n                <h3>L\'adresse de l\'université</h3>\r\n                <!--La div pour la map -->\r\n                <div id=\"map\"></div>\r\n                <p>3351 Boulevard des Forges, Trois-Rivières, QC G8Z 4M3</p>\r\n        </section>\r\n    </section>\r\n</main>');

-- --------------------------------------------------------

--
-- Table structure for table `member`
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `fullname`, `dob`, `sex`, `activityid`, `motivation`) VALUES
(1, 'Jimmy', '1211-02-12', 0, 0, 'Im a happy student'),
(2, 'Jimmy', '1211-02-12', 0, 0, 'Im a happy student'),
(3, 'Jimmy', '1211-02-12', 0, 0, 'Im a happy student'),
(4, 'Tommy', '0111-11-12', 0, 0, ''),
(5, 'Tommy', '0111-11-12', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `supervisor`
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
