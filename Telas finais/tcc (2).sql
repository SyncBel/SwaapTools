-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 11-Nov-2019 às 00:37
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
  `versao` varchar(50) DEFAULT NULL,
  `threads` int(11) DEFAULT NULL,
  `nucleos` int(11) DEFAULT NULL,
  `frequencia` varchar(50) DEFAULT NULL,
  `desc_ddr` varchar(50) DEFAULT NULL,
  `desc_soquete` varchar(50) DEFAULT NULL,
  `cod_tipo` int(11) NOT NULL,
  `cod_modelo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `descricaopeca`
--

INSERT INTO `descricaopeca` (`cod_descricaopeca`, `qnt_memoria`, `versao`, `threads`, `nucleos`, `frequencia`, `desc_ddr`, `desc_soquete`, `cod_tipo`, `cod_modelo`) VALUES
(1, NULL, NULL, 4, 2, '3.9 Ghz', NULL, 'LGA1151', 2, 1),
(2, NULL, NULL, 4, 4, '3.2 Ghz', NULL, 'LGA1151', 2, 2),
(3, NULL, NULL, 8, 4, '3.6 Ghz', NULL, 'LGA1150', 2, 3),
(4, NULL, NULL, 4, 4, '3.3 Ghz', NULL, 'LGA1155', 2, 4);

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
(3, 'Corsair'),
(4, 'nVidia'),
(5, 'Kingston'),
(6, 'ADATA'),
(7, 'SanDisk'),
(8, 'Gigabyte'),
(9, 'Samsung'),
(10, 'HyperX Fury');

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
(1, 1, 'i3 7100'),
(2, 1, 'i5 6500'),
(3, 1, 'i7 4790'),
(4, 1, 'i5 2500');

-- --------------------------------------------------------

--
-- Estrutura da tabela `peca`
--

CREATE TABLE `peca` (
  `cod_peca` int(11) NOT NULL,
  `cod_descricaopeca` int(11) NOT NULL,
  `cpf` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `peca`
--

INSERT INTO `peca` (`cod_peca`, `cod_descricaopeca`, `cpf`) VALUES
(1, 1, 12345678901),
(2, 3, 12345678901),
(3, 4, 47480400845);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `cod_pedido` int(11) NOT NULL,
  `cod_peca` int(11) NOT NULL,
  `cpf` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`cod_pedido`, `cod_peca`, `cpf`) VALUES
(3, 1, 47480400845),
(5, 1, 47480400845),
(6, 1, 47480400845),
(7, 1, 47480400845),
(8, 1, 47480400845),
(9, 1, 47480400845),
(10, 1, 47480400845),
(11, 1, 47480400845),
(12, 2, 47480400845);

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
(1, 'Placa de Vídeo'),
(2, 'Processador'),
(3, 'Memória RAM'),
(4, 'HD'),
(5, 'SSD');

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
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`cpf`, `nome`, `sobrenome`, `email`, `senha`) VALUES
(11122233333, 'Gabriel ', 'Miranda ', 'gg@g.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(12345678901, 'Gabriel ', 'Silva', 'gg@g.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(47480400845, 'Gabriel ', 'Miranda', 'g@g.com', '81dc9bdb52d04dc20036dbd8313ed055');

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
  ADD KEY `cod_tipo` (`cod_tipo`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `endereco`
--
ALTER TABLE `endereco`
  MODIFY `cod_endereco` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
  MODIFY `cod_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `telefone`
--
ALTER TABLE `telefone`
  MODIFY `cod_telefone` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `descricaopeca`
--
ALTER TABLE `descricaopeca`
  ADD CONSTRAINT `descricaopeca_ibfk_1` FOREIGN KEY (`cod_tipo`) REFERENCES `tipo` (`cod_tipo`),
  ADD CONSTRAINT `fk_descricaopeca_modelo` FOREIGN KEY (`cod_modelo`) REFERENCES `modelo` (`cod_modelo`);

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
