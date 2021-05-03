-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2021 at 06:00 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bancoproa02`
--
-- --------------------------------------------------------

--
-- Table structure for table `exautor`
--

CREATE TABLE `exautor` (
  `autorID` int(11) NOT NULL,
  `nomeAutor` varchar(35) NOT NULL,
  `enderecoAutor` varchar(35) NOT NULL,
  `nascAutor` date NOT NULL,
  `origemAutor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exautor`
--

INSERT INTO `exautor` (`autorID`, `nomeAutor`, `enderecoAutor`, `nascAutor`, `origemAutor`) VALUES
(1, 'J. K. Rowling', '3277 Fairmont Avenue', '1971-08-14', 'Inglaterra'),
(2, 'Gilian Flynn', '2103 Randal Drive', '1971-07-17', 'Estados Unidos'),
(3, 'Luis Fernando Verissimo', 'Rocky Mount, 27801', '1936-03-01', 'Brasil'),
(4, 'Neil Gaiman', 'Cut And Shoot, 77301', '1960-11-10', 'Inglaterra'),
(5, 'Clive Baker', '2496 Rose Avenue', '1952-10-05', 'Reino Unido'),
(6, 'Rodrigo Polesso', '3788 Wetzel Lane', '1980-02-17', 'Brasil'),
(7, 'Ruy Ohtake', '2710 Bobcat Drive', '1938-01-27', 'Brasil');

-- --------------------------------------------------------

--
-- Table structure for table `exeditora`
--

CREATE TABLE `exeditora` (
  `editoraID` int(11) NOT NULL,
  `nomeEditora` varchar(25) NOT NULL,
  `telefoneEditora` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exeditora`
--

INSERT INTO `exeditora` (`editoraID`, `nomeEditora`, `telefoneEditora`) VALUES
(1, 'Rocco', 2025550171),
(2, 'Intriseca', 2025550187),
(3, 'Lero-lero', 2025550154),
(4, 'Editora Dark Sense', 2025550185),
(5, 'Editora Gente', 2025550110),
(6, 'Instituto Tomie Ohtake', 2025550134);

-- --------------------------------------------------------

--
-- Table structure for table `exgenero`
--

CREATE TABLE `exgenero` (
  `generoID` int(11) NOT NULL,
  `nomeGenero` varchar(27) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exgenero`
--

INSERT INTO `exgenero` (`generoID`, `nomeGenero`) VALUES
(1, 'Fantasia'),
(2, 'Suspense'),
(3, 'Comédia'),
(4, 'Auto-Ajuda'),
(5, 'Ficção Científica'),
(6, 'Romance');

-- --------------------------------------------------------

--
-- Table structure for table `exjacomprei`
--

CREATE TABLE `exjacomprei` (
  `IDjacomprei` int(11) NOT NULL,
  `nomeJaComprei` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exjacomprei`
--

INSERT INTO `exjacomprei` (`IDjacomprei`, `nomeJaComprei`) VALUES
(1, 'Sim'),
(2, 'Não');

-- --------------------------------------------------------

--
-- Table structure for table `exlivro`
--

CREATE TABLE `exlivro` (
  `livrosID` int(11) NOT NULL,
  `genero` int(1) NOT NULL,
  `dataCompra` date NOT NULL,
  `numPagina` int(11) NOT NULL,
  `valLivro` float NOT NULL,
  `jaComprei` int(1) NOT NULL,
  `autorLivro` int(5) NOT NULL,
  `editoraLivro` int(5) NOT NULL,
  `dataPublicacao` date NOT NULL,
  `rating` int(1) NOT NULL,
  `nomeLivro` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exlivro`
--

INSERT INTO `exlivro` (`livrosID`, `genero`, `dataCompra`, `numPagina`, `valLivro`, `jaComprei`, `autorLivro`, `editoraLivro`, `dataPublicacao`, `rating`, `nomeLivro`) VALUES
(1, 1, '2005-03-02', 368, 20.9, 1, 1, 1, '2007-02-03', 3, 'Harry Potter e a Pedra Filosofal'),
(2, 1, '2005-02-04', 598, 18.79, 1, 1, 1, '2012-02-04', 1, 'Harry Potter e o Prisioneiro de Azkaban'),
(3, 1, '2022-01-04', 798, 50.36, 2, 1, 1, '2005-08-20', 5, 'Harry Potter e a Ordem da Fênix'),
(4, 1, '2005-06-02', 328, 15.21, 2, 1, 1, '2019-01-25', 2, 'Harry Potter e a Câmara Secreta'),
(5, 2, '2005-07-02', 128, 60.23, 2, 2, 2, '2009-12-10', 4, 'Garota Exemplar'),
(6, 3, '2003-08-02', 208, 10, 2, 3, 3, '2005-11-10', 1, 'Diálogos Impossíveis'),
(7, 1, '2005-03-02', 368, 20.9, 1, 4, 1, '2005-03-02', 3, 'Harry Potter e o Prisioneiro de Azkaban'),
(8, 2, '2004-03-02', 158, 17.16, 1, 5, 4, '2020-03-02', 1, 'Arafat '),
(9, 4, '2019-01-25', 988, 9.81, 1, 6, 5, '2012-04-02', 5, 'Este não é mais um livro de dieta'),
(10, 5, '2022-12-04', 122, 20.55, 2, 7, 6, '2005-08-20', 2, 'Atenção Plena: Mindfulness');

-- --------------------------------------------------------

--
-- Table structure for table `exrating`
--

CREATE TABLE `exrating` (
  `ratingID` int(11) NOT NULL,
  `nomeRating` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exrating`
--

INSERT INTO `exrating` (`ratingID`, `nomeRating`) VALUES
(1, 'Gostei'),
(2, 'Não Gostei'),
(3, 'Muito Bom'),
(4, 'Fraco'),
(5, 'Maravilhoso');



-- Indexes for table `exautor`
--
ALTER TABLE `exautor`
  ADD PRIMARY KEY (`autorID`);

--
-- Indexes for table `exeditora`
--
ALTER TABLE `exeditora`
  ADD PRIMARY KEY (`editoraID`);

--
-- Indexes for table `exgenero`
--
ALTER TABLE `exgenero`
  ADD PRIMARY KEY (`generoID`);

--
-- Indexes for table `exjacomprei`
--
ALTER TABLE `exjacomprei`
  ADD PRIMARY KEY (`IDjacomprei`);

--
-- Indexes for table `exlivro`
--
ALTER TABLE `exlivro`
  ADD PRIMARY KEY (`livrosID`);

--
-- Indexes for table `exrating`
--
ALTER TABLE `exrating`
  ADD PRIMARY KEY (`ratingID`);


-- AUTO_INCREMENT for table `exautor`
--
ALTER TABLE `exautor`
  MODIFY `autorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `exeditora`
--
ALTER TABLE `exeditora`
  MODIFY `editoraID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `exgenero`
--
ALTER TABLE `exgenero`
  MODIFY `generoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `exjacomprei`
--
ALTER TABLE `exjacomprei`
  MODIFY `IDjacomprei` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exlivro`
--
ALTER TABLE `exlivro`
  MODIFY `livrosID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `exrating`
--
ALTER TABLE `exrating`
  MODIFY `ratingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
  
  
  select * from exeditora;
  select * from exautor;
  select * from exgenero;
  select * from exjacomprei;
  select * from exrating;
  select * from exlivro;