-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2020 at 04:59 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistema_eleicao`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidatos`
--

CREATE TABLE `candidatos` (
  `candidato_id` int(11) NOT NULL,
  `partido_id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `numero` int(11) NOT NULL,
  `partido_politicos` varchar(255) NOT NULL,
  `cargo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `descricao` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eleitores`
--

CREATE TABLE `eleitores` (
  `eleitor_id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `numero_titulo` int(11) NOT NULL,
  `zona_eleitoral` int(11) NOT NULL,
  `sessao_eleitoral` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `municipios`
--

CREATE TABLE `municipios` (
  `municipio_id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `quantidade_habitantes` int(11) DEFAULT NULL,
  `numero_vagas_vereador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `partidos_politicos`
--

CREATE TABLE `partidos_politicos` (
  `partido_id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `sigla` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `urnas`
--

CREATE TABLE `urnas` (
  `urna_id` int(11) NOT NULL,
  `municipio` varchar(255) NOT NULL,
  `zona_eleitoral` int(11) NOT NULL,
  `sessao_eleitoral` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`candidato_id`),
  ADD KEY `partido_id` (`partido_id`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eleitores`
--
ALTER TABLE `eleitores`
  ADD PRIMARY KEY (`eleitor_id`);

--
-- Indexes for table `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`municipio_id`);

--
-- Indexes for table `partidos_politicos`
--
ALTER TABLE `partidos_politicos`
  ADD PRIMARY KEY (`partido_id`);

--
-- Indexes for table `urnas`
--
ALTER TABLE `urnas`
  ADD PRIMARY KEY (`urna_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `candidato_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eleitores`
--
ALTER TABLE `eleitores`
  MODIFY `eleitor_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `municipios`
--
ALTER TABLE `municipios`
  MODIFY `municipio_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partidos_politicos`
--
ALTER TABLE `partidos_politicos`
  MODIFY `partido_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `urnas`
--
ALTER TABLE `urnas`
  MODIFY `urna_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `candidatos`
--
ALTER TABLE `candidatos`
  ADD CONSTRAINT `candidatos_ibfk_1` FOREIGN KEY (`partido_id`) REFERENCES `partidos_politicos` (`partido_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
