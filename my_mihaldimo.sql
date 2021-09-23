-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 23, 2021 at 04:37 PM
-- Server version: 8.0.21
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `my_mihaldimo`
--

-- --------------------------------------------------------

--
-- Table structure for table `Acquisto`
--

CREATE TABLE IF NOT EXISTS `Acquisto` (
  `N_cliente` int NOT NULL,
  `N_ordine` int NOT NULL,
  PRIMARY KEY (`N_cliente`,`N_ordine`),
  KEY `N_ordine` (`N_ordine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Acquisto`
--

INSERT INTO `Acquisto` (`N_cliente`, `N_ordine`) VALUES
(9, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Cliente`
--

CREATE TABLE IF NOT EXISTS `Cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Nome_cliente` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AUTO_INCREMENT=101 ;

--
-- Dumping data for table `Cliente`
--

INSERT INTO `Cliente` (`id`, `Nome_cliente`) VALUES
(1, 'marco calzolari'),
(2, 'ezio greggio'),
(4, 'reali danilo'),
(5, 'galata rosario\r\n'),
(6, 'sclafani alessandro'),
(7, 'fabio gagliarducci\r\n'),
(8, 'marco dorato'),
(9, 'mohamed agrum'),
(10, 'alessandro carta'),
(11, 'michele dimo'),
(12, 'tonio cartelloni'),
(13, 'antonio tarallo'),
(14, 'maria cristafulli'),
(15, 'pippo santonocito'),
(16, 'giorgio battiato'),
(17, 'alessandro raeli'),
(18, 'leonardo di dio'),
(19, 'emanuele plebiscito'),
(20, 'domenico lo verde'),
(21, 'daniele minerva'),
(22, 'giuseppe platania'),
(23, 'giovanni ciaccia'),
(24, 'roberto liotta'),
(25, 'marco orofino'),
(26, 'peppe maratona'),
(27, 'christian rama'),
(28, 'cristian moro'),
(29, 'antonio savoca'),
(30, 'marco riggatoni'),
(31, 'francesco del piero'),
(32, 'paolo lezzotti'),
(33, 'gigi modico'),
(34, 'marco mengoni'),
(35, 'alessandra iella'),
(36, 'ciccio scafati'),
(37, 'roberta raeli'),
(38, 'vittorio mazzotti'),
(39, 'pino materazzi'),
(40, 'Franco Toscano\r\n'),
(41, 'Facino Sabbatini\r\n'),
(42, 'Virgilio Russo\r\n'),
(43, 'Barbara Bianchi\r\n'),
(44, 'Petronilla Sagese\r\n'),
(45, 'Orazio Pinto\r\n'),
(46, 'Lia Folliero\r\n'),
(47, 'Veronica Milano\r\n'),
(48, 'Franco Toscano\r\n'),
(49, 'Santina Folliero\r\n'),
(50, 'Ubaldo Piccio\r\n'),
(51, 'Ginevra Lettiere\r\n'),
(52, 'Albano Udinese\r\n'),
(53, 'Gennaro Folliero\r\n'),
(54, 'Alina Li Fonti\r\n'),
(55, 'Sebastiano Cocci\r\n'),
(56, 'Dario Napolitano\r\n'),
(57, 'Natalia Moretti\r\n'),
(58, 'Beniamino Iadanza\r\n'),
(59, 'Delfina Baresi\r\n'),
(60, 'Batilda Fallaci\r\n'),
(61, 'Anita Capon\r\n'),
(62, 'Iole Pinto\r\n'),
(63, 'Gaudenzio Toscano\r\n'),
(64, 'Aloisia Napolitani\r\n'),
(65, 'Natale Genovesi\r\n'),
(66, 'Rosetta Marcelo\r\n'),
(67, 'Narciso Fiorentini\r\n'),
(68, 'Anselmo Fiore\r\n'),
(69, 'Clementina Loggia\r\n'),
(70, 'Fausta Cattaneo\r\n'),
(71, 'Rodrigo Lettiere\r\n'),
(72, 'Abbondanzio Padovano\r\n'),
(73, 'Valeria Mazzanti\r\n'),
(74, 'Giona Udinesi\r\n'),
(75, 'Averardo Fanucci\r\n'),
(76, 'Ermenegilda Napolitani\r\n'),
(77, 'Deodato Siciliano\r\n'),
(78, 'Santo Romania\r\n'),
(79, 'Narciso Beneventi\r\n'),
(80, 'Alfonsa Loggiari\r\n'),
(81, 'Jacopo Trentini\r\n'),
(82, 'Ilario Ferri\r\n'),
(83, 'Fedra Panicucci\r\n'),
(84, 'Esmeralda Morichelli'),
(85, 'Smeralda Trevisani\r\n'),
(86, 'Algisa Zito\r\n'),
(87, 'Berenice Nucci\r\n'),
(88, 'Anna Udinesi\r\n'),
(89, 'Vladimiro Pugliesi\r\n'),
(90, 'Annibale Milanesi\r\n'),
(91, 'Livia Cocci\r\n'),
(92, 'Ludovico Romani\r\n'),
(93, 'Teresa Lucchesoni'),
(94, 'Spartaco Bianchi\r\n'),
(95, 'Urbano Loggia\r\n'),
(96, 'Liberio Angelo\r\n'),
(97, 'Bonifacio Mazzi\r\n'),
(98, 'Anselma Genovese\r\n'),
(99, 'Ambrosino Toscano\r\n'),
(100, 'Jolanda Pirozzi\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `Ordine`
--

CREATE TABLE IF NOT EXISTS `Ordine` (
  `id` int NOT NULL,
  `nome_prod` varchar(255) DEFAULT NULL,
  `quantita` int NOT NULL DEFAULT '0',
  `tipo_sped` varchar(255) DEFAULT NULL,
  `time` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Ordine`
--

INSERT INTO `Ordine` (`id`, `nome_prod`, `quantita`, `tipo_sped`, `time`) VALUES
(1, 'tv samsung', 3, 'express', '2021-05-23 12:11:59'),
(2, 'iphone 13', 5, '1 day delivery', '2021-05-23 12:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `provadb1`
--

CREATE TABLE IF NOT EXISTS `provadb1` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nome_prodotto` varchar(15) NOT NULL,
  `Produttore` varchar(15) NOT NULL,
  `Magazzino_ref` varchar(15) NOT NULL,
  `quantita` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `provadb1`
--

INSERT INTO `provadb1` (`ID`, `Nome_prodotto`, `Produttore`, `Magazzino_ref`, `quantita`) VALUES
(1, 'tv', 'samsung', 'roma', 4029),
(2, 'fotocamera', 'reflex', 'napoli', 349);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(13, 'marcociccio23', '$2y$10$VYr9IT.muFyHTaZs.bqLhuvx6rSDlWDWFnb.q99zccvULPa9FdAoa', '2021-05-23 16:37:23'),
(12, 'mbaressimo', '$2y$10$5p4PJg2tjDQSzJXh086QweArFF/BjlePoeOYVw5a2ElErjAC3utvS', '2021-05-22 19:08:16'),
(14, 'marco_carta023', '$2y$10$U1UWoQwQmNZnNklxd5g63efutUWaoLdVMfv5JZVMV1AEQZYEKdJQm', '2021-05-23 17:05:57'),
(15, 'Paolo_morri23', '$2y$10$AWvgAO7OcS1SYKNL9Wp0K./hxzIuDg1bKL4L5suab.98Yh4DxW4ei', '2021-05-24 08:09:08'),
(16, 'Danilo363', '$2y$10$TCeXfGKqMqpEIkdod8yO1uILOlOj3aNpKuTvwpXJv.o0Kkx4DQNU.', '2021-05-24 08:25:30'),
(17, 'danilo_raeli25', '$2y$10$lVQx5xbpeHfR3Zni2z89w.oD0pxU/jTBzRYu1NXQ2ahcfL8fH7tcS', '2021-05-24 10:04:05'),
(18, 'cicciogamer89', '$2y$10$pOQ66aqVWPvmkbdb926tZupKm//gqvPm18tWo0RslSbzZdqArxIXi', '2021-05-24 17:10:34');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Acquisto`
--
ALTER TABLE `Acquisto`
  ADD CONSTRAINT `Acquisto_ibfk_1` FOREIGN KEY (`N_cliente`) REFERENCES `Cliente` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `Acquisto_ibfk_2` FOREIGN KEY (`N_ordine`) REFERENCES `Ordine` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
