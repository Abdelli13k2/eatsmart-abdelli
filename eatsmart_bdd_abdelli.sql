-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 24 sep. 2025 à 23:32
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `eatsmart_bdd_abdelli`
--
CREATE DATABASE IF NOT EXISTS `eatsmart_bdd_abdelli` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `eatsmart_bdd_abdelli`;

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id_article` int(50) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `prix` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `id_categorie` varchar(50) NOT NULL,
  PRIMARY KEY (`id_article`),
  KEY `id_categorie` (`id_categorie`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id_article`, `nom`, `prix`, `description`, `id_categorie`) VALUES
(1, 'Anchois 23cm', '7.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, anchois, olive', '1'),
(2, 'Anchois 23cm', '7.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, anchois, olive', '1'),
(3, 'Anchois 33cm', '11.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, anchois, olive', '1'),
(4, 'Emmental 23cm', '7.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, emmental, basilic, olive', '1'),
(5, 'Emmental 33cm', '11.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, emmental, basilic, olive', '1'),
(6, 'Margherita 23cm', '7.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella', '1'),
(7, 'Margherita 33cm', '11.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella', '1'),
(8, '3 fromages 23cm', '8.40', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, emmental, chevre', '1'),
(9, '3 fromages 33cm', '12.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, emmental, chevre', '1'),
(10, '4 fromages 23cm', '8.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, emmental, chevre, roquefort', '1'),
(11, '4 fromages 33cm', '13.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, emmental, chevre, roquefort', '1'),
(12, 'Royale 23cm', '8.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, jambon label rouge, champignon brun, olive', '2'),
(13, 'Royale 33cm', '13.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, jambon label rouge, champignon brun, olive', '2'),
(14, 'Vegetarienne 23cm', '8.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, roquette, oignon rouge, poivron, champignon brun, olive', '2'),
(15, 'Vegetarienne 33cm', '13.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, roquette, oignon rouge, poivron, champignon brun, olive', '2'),
(16, 'Provencale 23cm', '8.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, filets de poulet rôti, oignon rouge, poivron, olive', '2'),
(17, 'Provencale 33cm', '13.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, filets de poulet rôti, oignon rouge, poivron, olive', '2'),
(18, 'Espagnol 23cm', '8.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, chorizo de León, poivron, olive', '2'),
(19, 'Espagnol 33cm', '13.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, chorizo de León, poivron, olive', '2'),
(20, 'Italienne 23cm', '10.40', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, jambon cru IGP, roquette, parmigiano reggiano, olive', '2'),
(21, 'Italienne 33cm', '16.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, jambon cru IGP, roquette, parmigiano reggiano, olive', '2'),
(22, 'Armenienne 23cm', '8.90', 'sauce crème fraîche premium, mozzarella, viande hachée 100% pur bœuf, oignon rouge, olive', '3'),
(23, 'Armenienne 33cm', '13.90', 'sauce crème fraîche premium, mozzarella, viande hachée 100% pur bœuf, oignon rouge, olive', '3'),
(24, 'White royale 23cm', '8.90', 'sauce crème fraîche premium, mozzarella, jambon label rouge, champignon brun, olive', '3'),
(25, 'White royale 33cm', '13.90', 'sauce crème fraîche premium, mozzarella, jambon label rouge, champignon brun, olive', '3'),
(26, 'Chevre miel 23cm', '8.90', 'sauce crème fraîche premium, mozzarella, chevre, miel, olive', '3'),
(27, 'Chevre miel 33cm', '13.90', 'sauce crème fraîche premium, mozzarella, chevre, miel, olive', '3'),
(28, 'Tiramisu', '3.90', 'boudoirs imbibés ou non de café, mascarpone, œufs, sucre, arôme vanille, cacao en poudre', '4'),
(29, 'Gourmande', '6.90', 'nutella, avec une glace noix de coco râpé ou chocolat, supplément fruits frais possible', '4'),
(30, 'Eaux', '1.90', 'eaux cristalline, san pellegrino, badoit', '5'),
(31, 'Soda 33cl', '1.90', 'coca original, zero, cherry', '5'),
(32, 'Soda 1L+', '3.00', 'coca, icetea, orangina, sprite, oasis', '5'),
(33, 'Biere', '3.50', 'desperados, heineken', '5'),
(34, 'Vin AOP 25cl', '4.90', 'rouge, rose', '5'),
(35, 'Vin AOP 50cl', '7.50', 'rouge, rose', '5');

-- --------------------------------------------------------

--
-- Structure de la table `assocarticlecommande`
--

DROP TABLE IF EXISTS `assocarticlecommande`;
CREATE TABLE IF NOT EXISTS `assocarticlecommande` (
  `id_article` int(50) NOT NULL AUTO_INCREMENT,
  `id_commande` varchar(50) NOT NULL,
  `quantiteArticle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_article`,`id_commande`),
  KEY `id_commande` (`id_commande`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `assocarticlecommande`
--

INSERT INTO `assocarticlecommande` (`id_article`, `id_commande`, `quantiteArticle`) VALUES
(1, '1', '1'),
(1, '2', '1'),
(3, '2', '1'),
(5, '2', '1'),
(1, '3', '3'),
(1, '4', '2'),
(3, '4', '1'),
(5, '4', '2'),
(7, '5', '1'),
(33, '5', '1'),
(27, '5', '1');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id_categorie` int(50) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_categorie`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `nom`) VALUES
(1, 'classic'),
(2, 'tradition'),
(3, 'creme'),
(4, 'dessert maison'),
(5, 'boisson');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `id_commande` int(50) NOT NULL AUTO_INCREMENT,
  `date_commande` varchar(50) DEFAULT NULL,
  `prixTotal` varchar(50) DEFAULT NULL,
  `etat` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_commande`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id_commande`, `date_commande`, `prixTotal`, `etat`) VALUES
(1, '2024-10-25 00:00:00', '7.90', 'en cours'),
(2, '2024-10-25 00:00:00', '23.20', 'en cours'),
(3, '2024-10-25 00:00:00', '23.70', 'en cours'),
(4, '2024-10-25 00:00:00', '34.20', 'en cours'),
(5, '2024-10-25 00:00:00', '17.70', 'en cours');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
