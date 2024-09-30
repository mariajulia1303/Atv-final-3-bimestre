-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30/09/2024 às 20:22
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `controle de energia`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `id_cadastro` int(255) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `idade` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `nome_usuario` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `comodos`
--

CREATE TABLE `comodos` (
  `id_comodos` int(255) NOT NULL,
  `lugar` varchar(255) DEFAULT NULL,
  `objetos` varchar(255) DEFAULT NULL,
  `consumo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `consumo`
--

CREATE TABLE `consumo` (
  `id_consumo` int(255) NOT NULL,
  `lugar` varchar(255) DEFAULT NULL,
  `objetos` varchar(255) DEFAULT NULL,
  `consumo_kWh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `custo diario`
--

CREATE TABLE `custo diario` (
  `id_comodos` int(255) NOT NULL,
  `consumo_kWh` varchar(255) DEFAULT NULL,
  `Tempo_de_uso` varchar(255) DEFAULT NULL,
  `Valor_a_pagar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `custo mensal`
--

CREATE TABLE `custo mensal` (
  `id_comodos` int(255) NOT NULL,
  `consumo_kWh` varchar(255) DEFAULT NULL,
  `Tempo_de_uso` varchar(255) DEFAULT NULL,
  `Valor_a_pagar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `login`
--

CREATE TABLE `login` (
  `id_cadastro` int(255) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Senha` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lucro`
--

CREATE TABLE `lucro` (
  `id_comodos` int(255) NOT NULL,
  `objetos` varchar(255) DEFAULT NULL,
  `Renda_Bruta` varchar(255) DEFAULT NULL,
  `consumo_kWh` varchar(255) DEFAULT NULL,
  `Valor_a_Pagar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `monitoramento`
--

CREATE TABLE `monitoramento` (
  `id_comodos` int(255) NOT NULL,
  `objetos` varchar(255) DEFAULT NULL,
  `consumo_kWh` varchar(255) DEFAULT NULL,
  `Tempo_de_uso` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `objetos`
--

CREATE TABLE `objetos` (
  `id_objetos` int(255) NOT NULL,
  `objetos` varchar(255) DEFAULT NULL,
  `quantidade` varchar(255) DEFAULT NULL,
  `comodos` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `renda bruta`
--

CREATE TABLE `renda bruta` (
  `id_renda_bruta` int(255) NOT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `comodos` varchar(255) DEFAULT NULL,
  `consumo_kWh` varchar(255) DEFAULT NULL,
  `objetos` varchar(255) DEFAULT NULL,
  `renda_gerada` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(255) NOT NULL,
  `nome_usuario` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `valor em real`
--

CREATE TABLE `valor em real` (
  `id_valor_em_real` int(255) NOT NULL,
  `comodo` varchar(255) DEFAULT NULL,
  `consumo_kWh` varchar(255) DEFAULT NULL,
  `objetos` varchar(255) DEFAULT NULL,
  `valor_em_Reais` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`id_cadastro`);

--
-- Índices de tabela `comodos`
--
ALTER TABLE `comodos`
  ADD PRIMARY KEY (`id_comodos`);

--
-- Índices de tabela `consumo`
--
ALTER TABLE `consumo`
  ADD PRIMARY KEY (`id_consumo`);

--
-- Índices de tabela `custo diario`
--
ALTER TABLE `custo diario`
  ADD PRIMARY KEY (`id_comodos`);

--
-- Índices de tabela `custo mensal`
--
ALTER TABLE `custo mensal`
  ADD PRIMARY KEY (`id_comodos`);

--
-- Índices de tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_cadastro`);

--
-- Índices de tabela `lucro`
--
ALTER TABLE `lucro`
  ADD PRIMARY KEY (`id_comodos`);

--
-- Índices de tabela `monitoramento`
--
ALTER TABLE `monitoramento`
  ADD PRIMARY KEY (`id_comodos`);

--
-- Índices de tabela `objetos`
--
ALTER TABLE `objetos`
  ADD PRIMARY KEY (`id_objetos`);

--
-- Índices de tabela `renda bruta`
--
ALTER TABLE `renda bruta`
  ADD PRIMARY KEY (`id_renda_bruta`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Índices de tabela `valor em real`
--
ALTER TABLE `valor em real`
  ADD PRIMARY KEY (`id_valor_em_real`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `id_cadastro` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `comodos`
--
ALTER TABLE `comodos`
  MODIFY `id_comodos` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `consumo`
--
ALTER TABLE `consumo`
  MODIFY `id_consumo` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `custo diario`
--
ALTER TABLE `custo diario`
  MODIFY `id_comodos` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `custo mensal`
--
ALTER TABLE `custo mensal`
  MODIFY `id_comodos` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `id_cadastro` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lucro`
--
ALTER TABLE `lucro`
  MODIFY `id_comodos` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `monitoramento`
--
ALTER TABLE `monitoramento`
  MODIFY `id_comodos` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `objetos`
--
ALTER TABLE `objetos`
  MODIFY `id_objetos` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `renda bruta`
--
ALTER TABLE `renda bruta`
  MODIFY `id_renda_bruta` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `valor em real`
--
ALTER TABLE `valor em real`
  MODIFY `id_valor_em_real` int(255) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
