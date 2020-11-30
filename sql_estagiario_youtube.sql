-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 30-Nov-2020 às 20:46
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `times`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `estados`
--

CREATE TABLE `estados` (
  `id` int(11) NOT NULL,
  `nome_estado` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `estados`
--

INSERT INTO `estados` (`id`, `nome_estado`) VALUES
(1, 'Paraná'),
(2, 'Goiás'),
(3, 'Minas Gerais'),
(4, 'Bahia'),
(5, 'Rio de Janeiro'),
(6, 'Ceará'),
(7, 'São Paulo'),
(8, 'Rio Grande do Sul'),
(9, 'Pernambuco');

-- --------------------------------------------------------

--
-- Estrutura da tabela `times`
--

CREATE TABLE `times` (
  `id` int(11) NOT NULL,
  `nome_time` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `times`
--

INSERT INTO `times` (`id`, `nome_time`) VALUES
(1, 'Internacional'),
(2, 'Flamengo'),
(3, 'Atlético-MG'),
(4, 'São Paulo'),
(5, 'Santos'),
(6, 'Fluminense'),
(7, 'Fortaleza'),
(8, 'Palmeiras'),
(9, 'Atlético-GO'),
(10, 'Grêmio'),
(11, 'Sport Recife'),
(12, 'Bahia'),
(13, 'Ceará SC'),
(14, 'Botafogo'),
(15, 'Vasco da Gama'),
(16, 'Corinthians'),
(17, 'Atlético-PR'),
(18, 'Coritiba'),
(19, 'Bragantino-SP'),
(20, 'Goiás');

-- --------------------------------------------------------

--
-- Estrutura da tabela `times_estados`
--

CREATE TABLE `times_estados` (
  `id` int(11) NOT NULL,
  `id_time` int(11) NOT NULL,
  `id_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `times_estados`
--

INSERT INTO `times_estados` (`id`, `id_time`, `id_estado`) VALUES
(1, 1, 8),
(2, 2, 5),
(3, 3, 3),
(4, 4, 7),
(5, 5, 7),
(6, 6, 5),
(7, 7, 6),
(8, 8, 7),
(9, 9, 2),
(10, 10, 8),
(11, 11, 9),
(12, 12, 4),
(13, 13, 6),
(14, 14, 5),
(15, 15, 5),
(16, 16, 7),
(17, 17, 1),
(18, 18, 1),
(19, 19, 7),
(20, 20, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `times`
--
ALTER TABLE `times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `times_estados`
--
ALTER TABLE `times_estados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `times_estados_ibfk_1` (`id_time`),
  ADD KEY `times_estados_ibfk_2` (`id_estado`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `estados`
--
ALTER TABLE `estados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `times`
--
ALTER TABLE `times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `times_estados`
--
ALTER TABLE `times_estados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `times_estados`
--
ALTER TABLE `times_estados`
  ADD CONSTRAINT `times_estados_ibfk_1` FOREIGN KEY (`id_time`) REFERENCES `times` (`id`),
  ADD CONSTRAINT `times_estados_ibfk_2` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
