-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 04, 2024 at 07:59 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it250jams`
--

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
CREATE TABLE IF NOT EXISTS `artists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(40) NOT NULL,
  `lastName` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `firstName`, `lastName`, `country`) VALUES
(1, 'Elton', 'John', 'United Kingdom'),
(2, 'John', 'Denver', 'United States'),
(3, 'John', 'Mayer', 'United States'),
(4, 'John', 'Legend', 'United States'),
(5, 'Bear Ghosts', NULL, 'United States'),
(6, 'Paramore', NULL, 'United States'),
(7, 'Alan', 'Jackson', 'United States'),
(8, 'Huey Lewis and the News', NULL, 'United States'),
(9, 'Crush', NULL, 'South Korea');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
CREATE TABLE IF NOT EXISTS `genres` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `category`) VALUES
(1, 'soft rock'),
(2, 'progressive pop'),
(3, 'country'),
(4, 'classic rock'),
(5, 'adventure rock'),
(6, 'R&B'),
(7, 'pop'),
(8, 'pop rock'),
(9, 'rock'),
(10, 'pop punk'),
(11, 'Kpop');

-- --------------------------------------------------------

--
-- Table structure for table `songgenres`
--

DROP TABLE IF EXISTS `songgenres`;
CREATE TABLE IF NOT EXISTS `songgenres` (
  `songId` int NOT NULL,
  `genreId` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `songgenres`
--

INSERT INTO `songgenres` (`songId`, `genreId`) VALUES
(1, 7),
(4, 5),
(5, 8),
(5, 9),
(2, 8),
(3, 4),
(6, 3),
(7, 8),
(8, 6),
(9, 10),
(10, 3),
(11, 11);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
CREATE TABLE IF NOT EXISTS `songs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(40) NOT NULL,
  `releaseDate` year NOT NULL,
  `artistId` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `releaseDate`, `artistId`) VALUES
(1, 'Teardrops', '1993', 1),
(2, 'I\'m Still Standing', '1983', 1),
(3, 'Rocket Man', '1972', 1),
(4, 'Necromancin\' Dancin\'', '2016', 5),
(5, 'Hip to be Square', '1986', 8),
(6, 'Sunshine On My Shoulders', '1971', 2),
(7, 'Daughters', '2003', 3),
(8, 'All of Me', '2013', 4),
(9, '26', '2017', 6),
(10, 'I\'d Love You All Over Again', '1991', 7),
(11, 'Fall', '2016', 9);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
