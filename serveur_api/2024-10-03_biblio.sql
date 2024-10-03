-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 03 oct. 2024 à 21:37
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `e_blio`
--
CREATE DATABASE IF NOT EXISTS biblio;
USE biblio;
-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE `livre` (
  `id` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `auteur` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`id`, `titre`, `auteur`) VALUES
(101, 'Bel Ami', 'Guy de Maupassant'),
(104, 'Le Comte de Monte Christo', 'Alexandre Dumas'),
(105, 'Les Trois Mousquetaires', 'Alexandre Dumas'),
(106, 'I, robot', 'Richard Matheson'),
(107, 'Le  Seigneur des Anneaux', 'J.R.R. Tolkien'),
(108, 'Hercule Poirot', 'Agatha Christie'),
(110, 'Les Deux Tours', 'J.R.R. Tolkien'),
(111, 'Shining', 'Stephen King'),
(112, 'Dune', 'Frank Herbert'),
(113, 'Fondation', 'Isaac Asimov'),
(114, 'Le  Seigneur des Anneaux', 'J.R.R. Tolkien'),
(115, 'Akira', 'Katsuhiro Otomo'),
(116, 'Les Trois Mousquetaires', 'Alexandre Dumas'),
(117, 'Dune', 'Frank Herbert'),
(118, 'Fondation', 'Isaac Asimov'),
(119, 'Je suis une légende', 'Richard Matheson'),
(120, 'Le Messie de Dune', 'Franck Herbert'),
(121, 'Le Jour des Fourmis', 'Bernard Werber'),
(122, 'Fondation et Empire', 'Isaac Asimov'),
(123, 'Les Enfants de Dune', 'Frank Herbert'),
(124, '1984', 'George Orwell'),
(130, 'Le retour du roi', 'J.R.R. Tolkien'),
(132, 'Ça', 'Stephen King'),
(133, 'Le livre de la jungle', 'Rudyard Kipling'),
(142, 'Le trône de fer', 'G.R.R. Martin'),
(147, 'Les Misérables', 'Victor Hugo'),
(148, 'Malevil', 'Robert Merle');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `livre`
--
ALTER TABLE `livre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
