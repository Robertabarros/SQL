-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 24-Nov-2017 às 21:50
-- Versão do servidor: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `condominio`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `empregados`
--

DROP TABLE IF EXISTS `empregados`;
CREATE TABLE IF NOT EXISTS `empregados` (
  `nome` varchar(255) NOT NULL,
  `funcao` varchar(255) NOT NULL,
  `turno` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `morador`
--

DROP TABLE IF EXISTS `morador`;
CREATE TABLE IF NOT EXISTS `morador` (
  `nome` varchar(255) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `veiculos` varchar(255) NOT NULL,
  `unidade` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ocorrencia`
--

DROP TABLE IF EXISTS `ocorrencia`;
CREATE TABLE IF NOT EXISTS `ocorrencia` (
  `morador` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `data` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `prestador_de_servico`
--

DROP TABLE IF EXISTS `prestador_de_servico`;
CREATE TABLE IF NOT EXISTS `prestador_de_servico` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `observacao` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reserva_espaco`
--

DROP TABLE IF EXISTS `reserva_espaco`;
CREATE TABLE IF NOT EXISTS `reserva_espaco` (
  `morador` varchar(255) NOT NULL,
  `data` date NOT NULL,
  `tipo_unidade` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_identificacao`
--

DROP TABLE IF EXISTS `tipo_identificacao`;
CREATE TABLE IF NOT EXISTS `tipo_identificacao` (
  `id_tipo_identificacao` int(11) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  PRIMARY KEY (`id_tipo_identificacao`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_proprietario`
--

DROP TABLE IF EXISTS `tipo_proprietario`;
CREATE TABLE IF NOT EXISTS `tipo_proprietario` (
  `morador` varchar(255) NOT NULL,
  `visitante` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_unidade`
--

DROP TABLE IF EXISTS `tipo_unidade`;
CREATE TABLE IF NOT EXISTS `tipo_unidade` (
  `apartamento` varchar(255) NOT NULL,
  `casa` varchar(255) NOT NULL,
  `sobrado` varchar(255) NOT NULL,
  `salao_de_festa` varchar(255) NOT NULL,
  `espaco_lazer` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_veiculo`
--

DROP TABLE IF EXISTS `tipo_veiculo`;
CREATE TABLE IF NOT EXISTS `tipo_veiculo` (
  `placa` varchar(255) NOT NULL,
  `modelo` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_visitante`
--

DROP TABLE IF EXISTS `tipo_visitante`;
CREATE TABLE IF NOT EXISTS `tipo_visitante` (
  `prestador_de_servico` int(11) NOT NULL,
  `empregados` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidade`
--

DROP TABLE IF EXISTS `unidade`;
CREATE TABLE IF NOT EXISTS `unidade` (
  `tipo_unidade` varchar(255) NOT NULL,
  `local` varchar(255) NOT NULL,
  PRIMARY KEY (`tipo_unidade`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

DROP TABLE IF EXISTS `veiculo`;
CREATE TABLE IF NOT EXISTS `veiculo` (
  `tipo_veiculo` varchar(255) NOT NULL,
  `tipo_proprietario` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `visitantes`
--

DROP TABLE IF EXISTS `visitantes`;
CREATE TABLE IF NOT EXISTS `visitantes` (
  `numero_documento` int(11) NOT NULL,
  `id_tipo_documento` int(11) NOT NULL,
  `tipo_visitante` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`numero_documento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
