
--
-- Database: `funvildevendas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(220) NOT NULL,
  `email` varchar(520) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `situacoe_id` int(11) NOT NULL DEFAULT '0',
  `niveis_acesso_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `situacoe_id`, `niveis_acesso_id`, `created`, `modified`) VALUES
(1, 'matheus Levy', 'matheuslevy@hotmail.com', '1234', 1, 1, '2016-02-14 00:00:01', '2016-02-20 21:58:01'),
(2, 'Wanessa Gomes', 'wanessagomes@gmail.com', '1234', 1, 2, '2016-02-14 00:00:04', '2016-02-20 21:58:12'),
(3, 'Yasmin Gabriely', 'yasmingabriely@hotmail.com', '1234', 1, 3, '2016-02-14 00:00:03', '2016-02-20 21:58:25'),
(5, 'Igor Maciel', 'igormaciel@hotmail.com', '1234', 1, 1, '2016-01-01 10:10:01', '2016-02-20 21:58:57'),
(9, 'gomes', 'gomes@yahoo.com.br', '123', 2, 3, '2016-02-20 20:48:44', NULL),
(10, 'silva', 'silva@hotmail.com', '123', 2, 3, '2016-02-20 20:49:02', NULL);


-- --------------------------------------------------------

--
-- Estrutura da tabela `niveis_acessos`
--

CREATE TABLE IF NOT EXISTS `niveis_acessos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `niveis_acessos`
--

INSERT INTO `niveis_acessos` (`id`, `nome`, `created`, `modified`) VALUES
(1, 'Administrador', '2016-02-19 00:00:00', NULL),
(2, 'Colaborador', '2016-02-19 00:00:00', NULL),
(3, 'Cliente', '2016-02-19 00:00:00', NULL);

-- --------------------------------------------------------