-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 10-Nov-2019 às 20:57
-- Versão do servidor: 5.7.25
-- versão do PHP: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tcc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ddd`
--

CREATE TABLE `ddd` (
  `cod_ddd` int(11) NOT NULL,
  `descricao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `descricaopeca`
--

CREATE TABLE `descricaopeca` (
  `cod_descricaopeca` int(11) NOT NULL,
  `qnt_memoria` varchar(25) DEFAULT NULL,
  `threads` int(11) DEFAULT NULL,
  `nucleos` int(11) DEFAULT NULL,
  `frequencia` varchar(50) DEFAULT NULL,
  `desc_ddr` varchar(50) DEFAULT NULL,
  `desc_soquete` varchar(50) DEFAULT NULL,
  `cod_modelo` int(11) NOT NULL,
  `cod_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `descricaopeca`
--

INSERT INTO `descricaopeca` (`cod_descricaopeca`, `qnt_memoria`, `threads`, `nucleos`, `frequencia`, `desc_ddr`, `desc_soquete`, `cod_modelo`, `cod_tipo`) VALUES
(1, NULL, 4, 2, '3.9 Ghz', 'DDR4', 'LGA1151', 1, 1),
(2, NULL, 4, 4, '3.2 Ghz', 'DDR4', 'LGA1151', 4, 1),
(3, NULL, 8, 4, '3.6 Ghz', 'DDR3', 'LGA1150', 3, 1),
(4, NULL, 4, 4, '3.3 Ghz', 'DDR3', 'LGA1155', 4, 1),
(5, NULL, 8, 4, '2.93 Ghz', 'DDR3', 'LGA1156', 5, 1),
(6, NULL, 12, 6, '3.4 Ghz', 'DDR4', 'AM4', 6, 1),
(7, NULL, 16, 8, '3.7 Ghz', 'DDR4', 'AM4', 7, 1),
(8, NULL, 16, 8, '3.6 Ghz', 'DDR4', 'AM4', 8, 1),
(9, NULL, 8, 8, '4 Ghz', 'DDR3', 'AM3+', 9, 1),
(10, NULL, 6, 6, '3.2 Ghz', 'DDR3', 'AM3', 10, 1),
(11, '6GB', NULL, NULL, NULL, 'DDR5', 'PCIe 16x', 11, 2),
(12, NULL, NULL, NULL, NULL, 'DDR5', 'PCIe 16x', 12, 2),
(13, '512MB', NULL, NULL, NULL, 'DDR3', 'PCIe 16x', 13, 2),
(14, '1GB', NULL, NULL, NULL, 'DDR5', 'PCIe 16x', 14, 2),
(15, '2GB', NULL, NULL, NULL, 'DDR5', 'PCIe 16x', 15, 2),
(16, '2GB', NULL, NULL, NULL, 'DDR5', 'PCIe 16x', 17, 2),
(17, '1GB', NULL, NULL, NULL, 'DDR5', 'PCIe 16x', 17, 2),
(18, '3GB', NULL, NULL, NULL, 'DDR6', 'PCIe 16x', 18, 2),
(19, '8GB', NULL, NULL, NULL, 'DDR5', 'PCIe 16x', 19, 2),
(20, '8GB', NULL, NULL, NULL, 'DDR5', 'PCIe 16x', 20, 2),
(21, '8GB', NULL, NULL, '1600 Mhz', 'DDR3', NULL, 21, 3),
(22, '8GB', NULL, NULL, '2400 Mhz', 'DDR4', NULL, 22, 3),
(23, '4GB', NULL, NULL, '1866 Mhz', 'DDR3', NULL, 23, 3),
(24, '4GB', NULL, NULL, '2666 Mhz', 'DDR4', NULL, 24, 3),
(25, '8GB', NULL, NULL, '1600 Mhz', 'DDR3', NULL, 25, 3),
(26, '8GB', NULL, NULL, '2400 Mhz', 'DDR4', '', 26, 3),
(27, '4GB', NULL, NULL, '1333 Mhz', 'DDR3', NULL, 27, 3),
(28, '4GB', NULL, NULL, '2400 Mhz', 'DDR4', NULL, 28, 3),
(29, '4GB', NULL, NULL, '2666 Mhz', 'DDR4', NULL, 29, 3),
(30, '240GB', NULL, NULL, NULL, NULL, NULL, 30, 4),
(31, '120GB', NULL, NULL, NULL, NULL, NULL, 31, 4),
(32, '120GB', NULL, NULL, NULL, NULL, NULL, 32, 4),
(33, '1 TB', NULL, NULL, NULL, NULL, NULL, 33, 5),
(34, '250 GB', NULL, NULL, NULL, NULL, NULL, 34, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `cod_endereco` int(11) NOT NULL,
  `cpf` bigint(20) NOT NULL,
  `numero` int(11) DEFAULT NULL,
  `complemento` varchar(30) DEFAULT NULL,
  `cep` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `marca`
--

CREATE TABLE `marca` (
  `cod_marca` int(11) NOT NULL,
  `descricao` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `marca`
--

INSERT INTO `marca` (`cod_marca`, `descricao`) VALUES
(1, 'Intel'),
(2, 'AMD'),
(3, 'NVIDIA'),
(4, 'HyperX Fury'),
(5, 'Kingston'),
(6, 'ADATA '),
(7, 'SanDisk'),
(8, 'Corsair'),
(9, 'Gigabyte'),
(10, 'Samsung');

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `cod_modelo` int(11) NOT NULL,
  `cod_marca` int(11) NOT NULL,
  `descricao` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `modelo`
--

INSERT INTO `modelo` (`cod_modelo`, `cod_marca`, `descricao`) VALUES
(1, 1, 'i3 - 7100'),
(2, 1, 'i5 - 6500'),
(3, 1, 'i7 - 4790'),
(4, 1, 'i5 - 2500'),
(5, 1, 'i7 - 870'),
(6, 2, 'Ryzen 5 2600'),
(7, 2, 'Ryzen 7 2700'),
(8, 2, 'Ryzen 7 3700X'),
(9, 2, 'FX 8350'),
(10, 10, 'Phenom II X6 1090T'),
(11, 3, 'GTX 1060'),
(12, 3, 'GTX 1050ti'),
(13, 3, '9800GTX'),
(14, 3, 'GTX 550ti'),
(15, 3, 'GT 710'),
(16, 2, 'HD5770'),
(17, 2, 'HD7970'),
(18, 2, '5700 XT'),
(19, 2, 'RX 580'),
(20, 2, 'R9 390'),
(21, 4, 'CL 10'),
(22, 4, 'CL 15'),
(23, 4, 'CL 9'),
(24, 4, 'CL 16'),
(25, 5, 'CL 11'),
(26, 5, 'CL 17'),
(27, 5, 'CL 8'),
(28, 5, 'CL 19'),
(29, 6, 'AD4U'),
(30, 7, 'Plus'),
(31, 5, 'UV500'),
(32, 8, 'LE200'),
(33, 9, 'SATA III'),
(34, 10, '860 EVO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `peca`
--

CREATE TABLE `peca` (
  `cod_peca` int(11) NOT NULL,
  `cod_descricaopeca` int(11) NOT NULL,
  `cpf` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `cod_pedido` int(11) NOT NULL,
  `cod_peca` int(11) NOT NULL,
  `cpf` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone`
--

CREATE TABLE `telefone` (
  `cod_telefone` int(11) NOT NULL,
  `cpf` bigint(20) NOT NULL,
  `numero` int(11) NOT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `cod_ddd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo`
--

CREATE TABLE `tipo` (
  `cod_tipo` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipo`
--

INSERT INTO `tipo` (`cod_tipo`, `descricao`) VALUES
(1, 'Processador'),
(2, 'Placa de Vídeo'),
(3, 'Memória RAM'),
(4, 'SSD'),
(5, 'HD');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `cpf` bigint(20) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `sobrenome` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ddd`
--
ALTER TABLE `ddd`
  ADD PRIMARY KEY (`cod_ddd`);

--
-- Indexes for table `descricaopeca`
--
ALTER TABLE `descricaopeca`
  ADD PRIMARY KEY (`cod_descricaopeca`),
  ADD KEY `fk_descricaopeca_modelo` (`cod_modelo`),
  ADD KEY `fk_descricaopeca_tipo` (`cod_tipo`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`cod_endereco`,`cpf`),
  ADD KEY `fk_endereco` (`cpf`);

--
-- Indexes for table `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`cod_marca`);

--
-- Indexes for table `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`cod_modelo`),
  ADD KEY `fk_modelo` (`cod_marca`);

--
-- Indexes for table `peca`
--
ALTER TABLE `peca`
  ADD PRIMARY KEY (`cod_peca`),
  ADD KEY `fk_peca_descricaopeca` (`cod_descricaopeca`),
  ADD KEY `fk_peca_cpf` (`cpf`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`cod_pedido`),
  ADD KEY `fk_pedido_peca` (`cod_peca`),
  ADD KEY `fk_pedido_cpf` (`cpf`);

--
-- Indexes for table `telefone`
--
ALTER TABLE `telefone`
  ADD PRIMARY KEY (`cod_telefone`),
  ADD KEY `fk_telefone` (`cod_ddd`),
  ADD KEY `cpf` (`cpf`);

--
-- Indexes for table `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`cod_tipo`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cpf`);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `descricaopeca`
--
ALTER TABLE `descricaopeca`
  ADD CONSTRAINT `fk_descricaopeca_modelo` FOREIGN KEY (`cod_modelo`) REFERENCES `modelo` (`cod_modelo`),
  ADD CONSTRAINT `fk_descricaopeca_tipo` FOREIGN KEY (`cod_tipo`) REFERENCES `tipo` (`cod_tipo`);

--
-- Limitadores para a tabela `endereco`
--
ALTER TABLE `endereco`
  ADD CONSTRAINT `fk_endereco` FOREIGN KEY (`cpf`) REFERENCES `usuario` (`cpf`);

--
-- Limitadores para a tabela `modelo`
--
ALTER TABLE `modelo`
  ADD CONSTRAINT `fk_modelo` FOREIGN KEY (`cod_marca`) REFERENCES `marca` (`cod_marca`);

--
-- Limitadores para a tabela `peca`
--
ALTER TABLE `peca`
  ADD CONSTRAINT `fk_peca_cpf` FOREIGN KEY (`cpf`) REFERENCES `usuario` (`cpf`),
  ADD CONSTRAINT `fk_peca_descricaopeca` FOREIGN KEY (`cod_descricaopeca`) REFERENCES `descricaopeca` (`cod_descricaopeca`);

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `fk_pedido_cpf` FOREIGN KEY (`cpf`) REFERENCES `usuario` (`cpf`),
  ADD CONSTRAINT `fk_pedido_peca` FOREIGN KEY (`cod_peca`) REFERENCES `peca` (`cod_peca`);

--
-- Limitadores para a tabela `telefone`
--
ALTER TABLE `telefone`
  ADD CONSTRAINT `fk_telefone` FOREIGN KEY (`cod_ddd`) REFERENCES `ddd` (`cod_ddd`),
  ADD CONSTRAINT `telefone_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `usuario` (`cpf`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
