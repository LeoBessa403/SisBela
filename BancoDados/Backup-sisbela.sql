-- Atualizado em: 07/04/2020 10:07:07
-- AMBIENTE: http://localhost/SisBela/
-- BANCO: sisbela

CREATE DATABASE IF NOT EXISTS sisbela;

USE sisbela;

DROP TABLE IF EXISTS TB_ACESSO;


CREATE TABLE `TB_ACESSO` (
  `co_acesso` int(11) NOT NULL AUTO_INCREMENT,
  `ds_session_id` varchar(255) DEFAULT NULL,
  `dt_inicio_acesso` datetime DEFAULT NULL,
  `dt_fim_acesso` datetime DEFAULT NULL,
  `tp_situacao` varchar(1) DEFAULT NULL COMMENT 'A - Ativo / F - Finalizado',
  `co_usuario` int(10) NOT NULL,
  `co_trafego` int(11) NOT NULL,
  PRIMARY KEY (`co_acesso`,`co_usuario`,`co_trafego`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;


INSERT INTO TB_ACESSO VALUES("29","n5pgs4u9q8645lkd0jpu6hpug9","2020-04-04 10:20:43","2020-04-04 12:48:32","F","1","29");

INSERT INTO TB_ACESSO VALUES("30","n5pgs4u9q8645lkd0jpu6hpug9","2020-04-04 12:56:02","2020-04-04 13:26:05","F","6","30");

INSERT INTO TB_ACESSO VALUES("31","n5pgs4u9q8645lkd0jpu6hpug9","2020-04-04 13:50:24","2020-04-04 13:50:33","F","6","31");

INSERT INTO TB_ACESSO VALUES("32","n5pgs4u9q8645lkd0jpu6hpug9","2020-04-04 13:50:36","2020-04-04 13:54:43","F","1","32");

INSERT INTO TB_ACESSO VALUES("33","n5pgs4u9q8645lkd0jpu6hpug9","2020-04-04 13:54:47","2020-04-04 14:31:34","A","6","33");




DROP TABLE IF EXISTS TB_AGENDA;


CREATE TABLE `TB_AGENDA` (
  `co_agenda` int(11) NOT NULL AUTO_INCREMENT,
  `ds_motivo` text DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_agenda`,`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


INSERT INTO TB_AGENDA VALUES("1","","2020-03-25 16:37:38","5");

INSERT INTO TB_AGENDA VALUES("2","fd gfdh hhhh","2020-03-25 16:47:42","5");

INSERT INTO TB_AGENDA VALUES("3","","2020-03-25 16:58:31","5");




DROP TABLE IF EXISTS TB_ANOTACAO;


CREATE TABLE `TB_ANOTACAO` (
  `co_anotacao` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_observacao` text DEFAULT NULL,
  `ds_titulo` varchar(80) DEFAULT NULL,
  `co_historia` int(11) NOT NULL,
  PRIMARY KEY (`co_anotacao`,`co_historia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_ASSINANTE;


CREATE TABLE `TB_ASSINANTE` (
  `co_assinante` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_expiracao` date DEFAULT NULL COMMENT 'Data da expiração de utilização do sistema',
  `st_dados_complementares` varchar(1) DEFAULT 'N' COMMENT 'S - Sim / N - Não',
  `st_status` varchar(1) DEFAULT 'A' COMMENT 'A - Ativo / I - inativo',
  `tp_assinante` varchar(1) DEFAULT 'M' COMMENT 'M  - Matriz / F - Filial',
  `co_empresa` int(11) NOT NULL,
  `co_pessoa` int(11) NOT NULL COMMENT 'Responsável pelo Assinante',
  PRIMARY KEY (`co_assinante`,`co_empresa`,`co_pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


INSERT INTO TB_ASSINANTE VALUES("1","2020-03-25 12:09:13","2020-04-09","N","A","M","1","2");

INSERT INTO TB_ASSINANTE VALUES("2","2020-03-25 12:17:19","2020-04-09","N","A","M","2","3");

INSERT INTO TB_ASSINANTE VALUES("3","2020-03-25 12:53:31","2020-04-09","N","A","M","3","4");

INSERT INTO TB_ASSINANTE VALUES("4","2020-03-25 12:57:07","2020-04-09","N","A","M","4","5");

INSERT INTO TB_ASSINANTE VALUES("5","2020-03-25 13:03:39","2020-04-09","S","A","M","5","6");




DROP TABLE IF EXISTS TB_AUDITORIA;


CREATE TABLE `TB_AUDITORIA` (
  `co_auditoria` int(11) NOT NULL AUTO_INCREMENT,
  `dt_realizado` datetime DEFAULT NULL,
  `ds_perfil_usuario` text DEFAULT NULL,
  `co_usuario` int(10) NOT NULL,
  PRIMARY KEY (`co_auditoria`,`co_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;


INSERT INTO TB_AUDITORIA VALUES("83","2020-04-04 13:55:19","Gestor","6");

INSERT INTO TB_AUDITORIA VALUES("84","2020-04-04 13:57:43","Gestor","6");

INSERT INTO TB_AUDITORIA VALUES("85","2020-04-04 14:01:30","Gestor","6");




DROP TABLE IF EXISTS TB_AUDITORIA_ITENS;


CREATE TABLE `TB_AUDITORIA_ITENS` (
  `co_auditoria_itens` int(11) NOT NULL AUTO_INCREMENT,
  `ds_item_anterior` varchar(255) DEFAULT NULL,
  `ds_item_atual` varchar(255) DEFAULT NULL,
  `ds_campo` varchar(120) DEFAULT NULL,
  `co_auditoria_tabela` int(11) NOT NULL,
  PRIMARY KEY (`co_auditoria_itens`,`co_auditoria_tabela`)
) ENGINE=InnoDB AUTO_INCREMENT=1833 DEFAULT CHARSET=utf8;


INSERT INTO TB_AUDITORIA_ITENS VALUES("1522","","2","co_suporte","213");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1523","","2020-04-02 23:04:19","dt_cadastro","213");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1524","","sdhfhfh5h54 h56h 5h","ds_mensagem","213");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1525","","N","st_lido","213");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1526","","6","co_usuario","213");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1527","","9","co_imagem","213");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1662","6","","co_pessoa","235");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1663","12345678909","05418337157","nu_cpf","235");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1664","LEO BESSA","","no_pessoa","235");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1665","","","nu_rg","235");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1666","2020-03-25 13:03:39","","dt_cadastro","235");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1667","","","dt_nascimento","235");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1668","","","st_sexo","235");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1669","5","","co_endereco","235");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1670","6","","co_contato","235");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1671","0","","co_imagem","235");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1672","6","","co_contato","236");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1673","7855522225","6199552332","nu_tel1","236");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1674","11999999999","","nu_tel2","236");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1675","","","nu_tel3","236");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1676","","","nu_tel_0800","236");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1677","leonardo.bessa@basis.com.br","","ds_email","236");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1678","","","ds_site","236");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1679","","","ds_facebook","236");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1680","","","ds_twitter","236");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1681","","","ds_instagram","236");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1682","","3","co_plano_assinante","237");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1683","","5","co_assinante","237");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1684","","7","nu_profissionais","237");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1685","","0","nu_filiais","237");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1686","","39.90","nu_valor_assinatura","237");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1687","","5","tp_pagamento","237");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1688","","2020-04-04 13:55:19","dt_cadastro","237");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1689","","2020-07-09","dt_expiracao","237");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1690","","5","co_plano_assinante_assinatura_ativo","237");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1691","","11","co_plano_assinante_assinatura","238");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1692","","2020-04-04 13:55:19","dt_cadastro","238");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1693","","Inicia o pagamento","ds_acao","238");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1694","","LEO BESSA Iniciou o pagamento","ds_usuario","238");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1695","","0","st_pagamento","238");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1696","11","","co_plano_assinante_assinatura","239");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1697","2020-04-04 13:55:19","","dt_cadastro","239");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1698","2020-07-09","","dt_expiracao","239");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1699","","","dt_confirma_pagamento","239");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1700","5","","tp_pagamento","239");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1701","0","1","st_pagamento","239");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1702","","2020-04-04T13:55:27.000-03:00","dt_modificado","239");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1703","","1.99","nu_valor_desconto","239");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1704","","37.91","nu_valor_real","239");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1705","null","https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=035c74e4680fe8b271bd056c44f457a7fe00437c0fe106dcdfe145f256ab5acd53092dfb85a827ec","ds_link_boleto","239");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1706","0","","nu_filiais","239");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1707","5","","co_plano_assinante_assinatura_ativo","239");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1708","I","","st_status","239");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1709","null","CD6110D9-4252-41E8-93DE-815263F3C02D","ds_code_transacao","239");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1710","39.90","","nu_valor_assinatura","239");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1711","7","","nu_profissionais","239");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1712","5","","co_assinante","239");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1713","3","3","co_plano_assinante","239");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1714","","11","co_plano_assinante_assinatura","240");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1715","","2020-04-04T13:55:27.000-03:00","dt_cadastro","240");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1716","","Mudou para o Status do pagamento de Aguardando pagamento","ds_acao","240");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1717","","Retorno da operadora do pagamento","ds_usuario","240");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1718","","1","st_pagamento","240");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1719","6","","co_pessoa","241");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1720","05418337157","12345678909","nu_cpf","241");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1721","LEO BESSA","","no_pessoa","241");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1722","","","nu_rg","241");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1723","2020-03-25 13:03:39","","dt_cadastro","241");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1724","","","dt_nascimento","241");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1725","","","st_sexo","241");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1726","5","","co_endereco","241");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1727","6","","co_contato","241");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1728","0","","co_imagem","241");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1729","6","","co_contato","242");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1730","6199552332","54668755655","nu_tel1","242");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1731","11999999999","","nu_tel2","242");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1732","","","nu_tel3","242");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1733","","","nu_tel_0800","242");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1734","leonardo.bessa@basis.com.br","","ds_email","242");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1735","","","ds_site","242");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1736","","","ds_facebook","242");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1737","","","ds_twitter","242");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1738","","","ds_instagram","242");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1739","","5","co_plano_assinante","243");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1740","","5","co_assinante","243");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1741","","25","nu_profissionais","243");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1742","","0","nu_filiais","243");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1743","","124.90","nu_valor_assinatura","243");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1744","","5","tp_pagamento","243");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1745","","2020-04-04 13:57:43","dt_cadastro","243");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1746","","2021-04-09","dt_expiracao","243");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1747","","5","co_plano_assinante_assinatura_ativo","243");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1748","","12","co_plano_assinante_assinatura","244");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1749","","2020-04-04 13:57:43","dt_cadastro","244");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1750","","Inicia o pagamento","ds_acao","244");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1751","","LEO BESSA Iniciou o pagamento","ds_usuario","244");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1752","","0","st_pagamento","244");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1753","12","","co_plano_assinante_assinatura","245");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1754","2020-04-04 13:57:43","","dt_cadastro","245");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1755","2021-04-09","","dt_expiracao","245");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1756","","","dt_confirma_pagamento","245");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1757","5","","tp_pagamento","245");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1758","0","1","st_pagamento","245");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1759","","2020-04-04T13:57:52.000-03:00","dt_modificado","245");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1760","","5.38","nu_valor_desconto","245");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1761","","119.52","nu_valor_real","245");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1762","null","https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=d71b3af5146918cb665df8d98fe28ff091c013353b587e74bc21ee64b415f9ae67b7766690138a66","ds_link_boleto","245");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1763","0","","nu_filiais","245");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1764","5","","co_plano_assinante_assinatura_ativo","245");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1765","I","","st_status","245");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1766","null","29439106-A1B4-47FA-B558-BBA1AA16FCBC","ds_code_transacao","245");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1767","124.90","","nu_valor_assinatura","245");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1768","25","","nu_profissionais","245");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1769","5","","co_assinante","245");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1770","5","5","co_plano_assinante","245");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1771","","12","co_plano_assinante_assinatura","246");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1772","","2020-04-04T13:57:52.000-03:00","dt_cadastro","246");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1773","","Mudou para o Status do pagamento de Aguardando pagamento","ds_acao","246");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1774","","Retorno da operadora do pagamento","ds_usuario","246");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1775","","1","st_pagamento","246");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1776","6","","co_pessoa","247");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1777","12345678909","12345678909","nu_cpf","247");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1778","LEO BESSA","","no_pessoa","247");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1779","","","nu_rg","247");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1780","2020-03-25 13:03:39","","dt_cadastro","247");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1781","","","dt_nascimento","247");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1782","","","st_sexo","247");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1783","5","","co_endereco","247");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1784","6","","co_contato","247");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1785","0","","co_imagem","247");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1786","6","","co_contato","248");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1787","54668755655","6184455656","nu_tel1","248");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1788","11999999999","","nu_tel2","248");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1789","","","nu_tel3","248");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1790","","","nu_tel_0800","248");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1791","leonardo.bessa@basis.com.br","","ds_email","248");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1792","","","ds_site","248");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1793","","","ds_facebook","248");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1794","","","ds_twitter","248");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1795","","","ds_instagram","248");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1796","","2","co_plano_assinante","249");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1797","","5","co_assinante","249");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1798","","3","nu_profissionais","249");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1799","","0","nu_filiais","249");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1800","","14.90","nu_valor_assinatura","249");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1801","","3","tp_pagamento","249");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1802","","2020-04-04 14:01:30","dt_cadastro","249");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1803","","2020-05-09","dt_expiracao","249");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1804","","5","co_plano_assinante_assinatura_ativo","249");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1805","","13","co_plano_assinante_assinatura","250");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1806","","2020-04-04 14:01:30","dt_cadastro","250");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1807","","Inicia o pagamento","ds_acao","250");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1808","","LEO BESSA Iniciou o pagamento","ds_usuario","250");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1809","","0","st_pagamento","250");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1810","13","","co_plano_assinante_assinatura","251");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1811","2020-04-04 14:01:30","","dt_cadastro","251");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1812","2020-05-09","","dt_expiracao","251");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1813","","","dt_confirma_pagamento","251");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1814","3","","tp_pagamento","251");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1815","0","2","st_pagamento","251");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1816","","2020-04-04T14:01:37.000-03:00","dt_modificado","251");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1817","","0.99","nu_valor_desconto","251");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1818","","13.91","nu_valor_real","251");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1819","null","","ds_link_boleto","251");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1820","0","","nu_filiais","251");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1821","5","","co_plano_assinante_assinatura_ativo","251");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1822","I","","st_status","251");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1823","null","DCAB740B-F6D5-4150-AFF2-9CE647BF8038","ds_code_transacao","251");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1824","14.90","","nu_valor_assinatura","251");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1825","3","","nu_profissionais","251");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1826","5","","co_assinante","251");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1827","2","2","co_plano_assinante","251");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1828","","13","co_plano_assinante_assinatura","252");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1829","","2020-04-04T14:01:37.000-03:00","dt_cadastro","252");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1830","","Mudou para o Status do pagamento de Em análise","ds_acao","252");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1831","","Retorno da operadora do pagamento","ds_usuario","252");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1832","","2","st_pagamento","252");




DROP TABLE IF EXISTS TB_AUDITORIA_TABELA;


CREATE TABLE `TB_AUDITORIA_TABELA` (
  `co_auditoria_tabela` int(11) NOT NULL AUTO_INCREMENT,
  `no_tabela` varchar(45) DEFAULT NULL,
  `tp_operacao` varchar(1) DEFAULT NULL,
  `co_registro` int(11) DEFAULT NULL,
  `co_auditoria` int(11) NOT NULL,
  PRIMARY KEY (`co_auditoria_tabela`,`co_auditoria`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8;


INSERT INTO TB_AUDITORIA_TABELA VALUES("213","TB_HISTORICO_SUPORTE","I","6","62");

INSERT INTO TB_AUDITORIA_TABELA VALUES("235","TB_PESSOA","U","6","83");

INSERT INTO TB_AUDITORIA_TABELA VALUES("236","TB_CONTATO","U","6","83");

INSERT INTO TB_AUDITORIA_TABELA VALUES("237","TB_PLANO_ASSINANTE_ASSINATURA","I","11","83");

INSERT INTO TB_AUDITORIA_TABELA VALUES("238","TB_HISTORICO_PAG_ASSINATURA","I","20","83");

INSERT INTO TB_AUDITORIA_TABELA VALUES("239","TB_PLANO_ASSINANTE_ASSINATURA","U","11","83");

INSERT INTO TB_AUDITORIA_TABELA VALUES("240","TB_HISTORICO_PAG_ASSINATURA","I","21","83");

INSERT INTO TB_AUDITORIA_TABELA VALUES("241","TB_PESSOA","U","6","84");

INSERT INTO TB_AUDITORIA_TABELA VALUES("242","TB_CONTATO","U","6","84");

INSERT INTO TB_AUDITORIA_TABELA VALUES("243","TB_PLANO_ASSINANTE_ASSINATURA","I","12","84");

INSERT INTO TB_AUDITORIA_TABELA VALUES("244","TB_HISTORICO_PAG_ASSINATURA","I","22","84");

INSERT INTO TB_AUDITORIA_TABELA VALUES("245","TB_PLANO_ASSINANTE_ASSINATURA","U","12","84");

INSERT INTO TB_AUDITORIA_TABELA VALUES("246","TB_HISTORICO_PAG_ASSINATURA","I","23","84");

INSERT INTO TB_AUDITORIA_TABELA VALUES("247","TB_PESSOA","U","6","85");

INSERT INTO TB_AUDITORIA_TABELA VALUES("248","TB_CONTATO","U","6","85");

INSERT INTO TB_AUDITORIA_TABELA VALUES("249","TB_PLANO_ASSINANTE_ASSINATURA","I","13","85");

INSERT INTO TB_AUDITORIA_TABELA VALUES("250","TB_HISTORICO_PAG_ASSINATURA","I","24","85");

INSERT INTO TB_AUDITORIA_TABELA VALUES("251","TB_PLANO_ASSINANTE_ASSINATURA","U","13","85");

INSERT INTO TB_AUDITORIA_TABELA VALUES("252","TB_HISTORICO_PAG_ASSINATURA","I","25","85");




DROP TABLE IF EXISTS TB_BANCO;


CREATE TABLE `TB_BANCO` (
  `co_banco` int(11) NOT NULL COMMENT 'Código do banco',
  `no_banco` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`co_banco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_CLIENTE;


CREATE TABLE `TB_CLIENTE` (
  `co_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `st_status` varchar(1) DEFAULT 'A' COMMENT 'A - Ativo / I - Inativo\n',
  `no_apelido` varchar(45) DEFAULT NULL,
  `ds_observacao` text DEFAULT NULL,
  `st_receber_email_agendamento` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não',
  `st_lembrete_horario_agendamento` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não',
  `st_sms_marketing` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não',
  `st_email_marketing` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não',
  `nu_como_conheceu` varchar(1) DEFAULT NULL COMMENT 'ComoConheceuEnum',
  `co_assinante` int(11) NOT NULL,
  `co_pessoa` int(11) NOT NULL,
  PRIMARY KEY (`co_cliente`,`co_assinante`,`co_pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


INSERT INTO TB_CLIENTE VALUES("1","2020-03-25 16:37:38","A","","","S","S","S","S","","5","8");

INSERT INTO TB_CLIENTE VALUES("2","2020-03-25 16:47:42","A","","","S","S","S","S","","5","10");




DROP TABLE IF EXISTS TB_CONTATO;


CREATE TABLE `TB_CONTATO` (
  `co_contato` int(11) NOT NULL AUTO_INCREMENT,
  `nu_tel1` varchar(15) DEFAULT NULL,
  `nu_tel2` varchar(15) DEFAULT NULL,
  `nu_tel3` varchar(15) DEFAULT NULL,
  `nu_tel_0800` varchar(30) DEFAULT NULL,
  `ds_email` varchar(150) DEFAULT NULL,
  `ds_site` varchar(100) DEFAULT NULL,
  `ds_facebook` varchar(90) DEFAULT NULL,
  `ds_twitter` varchar(90) DEFAULT NULL,
  `ds_instagram` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`co_contato`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;


INSERT INTO TB_CONTATO VALUES("1","61993274991","6130826060","0","","leonardomcbessa@gmail.com","","","","");

INSERT INTO TB_CONTATO VALUES("2","61991058681","","","","lele.403@hotmail.com","","","","");

INSERT INTO TB_CONTATO VALUES("3","61993055454","","","","lucrece.neri@hotmail.com","","","","");

INSERT INTO TB_CONTATO VALUES("4","61993126972","","","","ddfds@fdsfjf.com.br","","","","");

INSERT INTO TB_CONTATO VALUES("5","61998110601","","","","fef@rtj.com","","","","");

INSERT INTO TB_CONTATO VALUES("6","6184455656","11999999999","","","leonardo.bessa@basis.com.br","","","","");

INSERT INTO TB_CONTATO VALUES("7","61922565323","","","","henriquecarvalhohca@outlook.com","","","","");

INSERT INTO TB_CONTATO VALUES("8","61995595599","","","","frabriceras15@gmail.com","","","","");




DROP TABLE IF EXISTS TB_CONTROLLER;


CREATE TABLE `TB_CONTROLLER` (
  `co_controller` int(11) NOT NULL AUTO_INCREMENT,
  `no_controller` varchar(60) DEFAULT NULL,
  `ds_class_icon` varchar(30) DEFAULT NULL COMMENT 'Classe do Ícone',
  PRIMARY KEY (`co_controller`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;


INSERT INTO TB_CONTROLLER VALUES("1","Gestão","clip-data");

INSERT INTO TB_CONTROLLER VALUES("2","Auditoria","fa fa-crosshairs");

INSERT INTO TB_CONTROLLER VALUES("3","Acesso","clip-connection-2");

INSERT INTO TB_CONTROLLER VALUES("4","Funcionalidade","fa fa-outdent");

INSERT INTO TB_CONTROLLER VALUES("5","Perfil","clip-stack-empty");

INSERT INTO TB_CONTROLLER VALUES("6","Usuário","fa fa-group");

INSERT INTO TB_CONTROLLER VALUES("7","Visita","clip-airplane");

INSERT INTO TB_CONTROLLER VALUES("8","Plano","clip-banknote");

INSERT INTO TB_CONTROLLER VALUES("9","Assinante","clip-user-5");

INSERT INTO TB_CONTROLLER VALUES("10","Agenda","fa fa-calendar");

INSERT INTO TB_CONTROLLER VALUES("11","Relatorio","fa fa-clipboard");

INSERT INTO TB_CONTROLLER VALUES("12","Suporte","fa fa-envelope");




DROP TABLE IF EXISTS TB_CRONS;


CREATE TABLE `TB_CRONS` (
  `co_cron` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `no_cron` varchar(70) DEFAULT NULL,
  `ds_sql` text DEFAULT NULL,
  PRIMARY KEY (`co_cron`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_EMPRESA;


CREATE TABLE `TB_EMPRESA` (
  `co_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `no_empresa` varchar(250) DEFAULT NULL COMMENT 'Razão Social\n',
  `no_fantasia` varchar(150) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `nu_cnpj` varchar(20) DEFAULT NULL,
  `nu_insc_estadual` varchar(20) DEFAULT NULL,
  `ds_observacao` text DEFAULT NULL,
  `st_status` varchar(1) DEFAULT NULL,
  `co_pessoa` int(11) NOT NULL COMMENT 'Pessoa responsável pela empresa\n',
  `co_endereco` int(11) NOT NULL,
  `co_contato` int(11) NOT NULL,
  `co_imagem` int(11) NOT NULL,
  PRIMARY KEY (`co_empresa`,`co_pessoa`,`co_endereco`,`co_contato`,`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


INSERT INTO TB_EMPRESA VALUES("1","","Esmaltaria Unha Padrão","2020-03-25 12:09:13","","","","","0","2","0","0");

INSERT INTO TB_EMPRESA VALUES("2","","Salão Novo Stylo 2","2020-03-25 12:17:19","","","","","0","3","0","0");

INSERT INTO TB_EMPRESA VALUES("3","","gfasdgfadg","2020-03-25 12:53:31","","","","","0","8","0","0");

INSERT INTO TB_EMPRESA VALUES("4","","rgreh h thtrhrtjrtj","2020-03-25 12:57:07","","","","","0","0","0","0");

INSERT INTO TB_EMPRESA VALUES("5","BARBEARIA NOVA BARBA RAZãO SOCIAL","BARBEARIA NOVA BARBA","2020-03-25 13:03:39","","","nova descrição","","0","4","0","0");




DROP TABLE IF EXISTS TB_ENDERECO;


CREATE TABLE `TB_ENDERECO` (
  `co_endereco` int(11) NOT NULL AUTO_INCREMENT,
  `ds_endereco` varchar(150) DEFAULT NULL,
  `ds_complemento` varchar(100) DEFAULT NULL,
  `ds_bairro` varchar(80) DEFAULT NULL,
  `nu_cep` varchar(12) DEFAULT NULL,
  `no_cidade` varchar(80) DEFAULT NULL,
  `sg_uf` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`co_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;


INSERT INTO TB_ENDERECO VALUES("1","qr 403 conjunto 10 casa 28","","Samambaia Norte","72319111","Brasília","DF");

INSERT INTO TB_ENDERECO VALUES("2","","","","","","");

INSERT INTO TB_ENDERECO VALUES("3","","","","","","");

INSERT INTO TB_ENDERECO VALUES("4","QR 403 Conjunto 10","103","Samambaia Norte (Samambaia)","72319111","Brasília","DF");

INSERT INTO TB_ENDERECO VALUES("5","","","","","","");

INSERT INTO TB_ENDERECO VALUES("6","QR 403 Conjunto 10","103","Samambaia Norte (Samambaia)","72319111","Brasília","DF");

INSERT INTO TB_ENDERECO VALUES("7","QR 403 Conjunto 10","103","Samambaia Norte (Samambaia)","72319111","Brasília","DF");

INSERT INTO TB_ENDERECO VALUES("8","","","","","","");




DROP TABLE IF EXISTS TB_FUNCIONALIDADE;


CREATE TABLE `TB_FUNCIONALIDADE` (
  `co_funcionalidade` int(11) NOT NULL AUTO_INCREMENT,
  `no_funcionalidade` varchar(150) NOT NULL,
  `ds_action` varchar(120) DEFAULT NULL,
  `st_status` varchar(1) DEFAULT 'A' COMMENT '''A - Ativo / I - Inativo''',
  `st_menu` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não (Se apresenta no menu)',
  `co_controller` int(11) NOT NULL,
  PRIMARY KEY (`co_funcionalidade`,`co_controller`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;


INSERT INTO TB_FUNCIONALIDADE VALUES("1","Perfil Master","PerfilMaster","A","S","0");

INSERT INTO TB_FUNCIONALIDADE VALUES("2","Auditoria Listar","ListarAuditoria","A","S","2");

INSERT INTO TB_FUNCIONALIDADE VALUES("3","Auditoria Detalhar","DetalharAuditoria","A","N","2");

INSERT INTO TB_FUNCIONALIDADE VALUES("4","Usuario Cadastrar","CadastroUsuario","A","N","6");

INSERT INTO TB_FUNCIONALIDADE VALUES("5","Usuario Listar","ListarUsuario","A","S","6");

INSERT INTO TB_FUNCIONALIDADE VALUES("6","Meu Perfil Usuario","MeuPerfilUsuario","A","S","6");

INSERT INTO TB_FUNCIONALIDADE VALUES("7","Perfil Listar","ListarPerfil","A","S","5");

INSERT INTO TB_FUNCIONALIDADE VALUES("8","Perfil Cadastrar","CadastroPerfil","A","S","5");

INSERT INTO TB_FUNCIONALIDADE VALUES("9","Funcionalidade Listar","ListarFuncionalidade","A","S","4");

INSERT INTO TB_FUNCIONALIDADE VALUES("10","Funcionalidade Cadastrar","CadastroFuncionalidade","A","S","4");

INSERT INTO TB_FUNCIONALIDADE VALUES("11","Troca Senha Usuario","TrocaSenhaUsuario","A","S","6");

INSERT INTO TB_FUNCIONALIDADE VALUES("12","Dados Complementares Assinante","DadosComplementaresAssinante","A","S","9");

INSERT INTO TB_FUNCIONALIDADE VALUES("13","Listar Visita","ListarVisita","A","S","7");

INSERT INTO TB_FUNCIONALIDADE VALUES("14","Config Gestao","ConfigGestao","A","S","1");

INSERT INTO TB_FUNCIONALIDADE VALUES("15","Gerar Entidades Gestao","GerarEntidadesGestao","A","S","1");

INSERT INTO TB_FUNCIONALIDADE VALUES("16","Gerar Backup Gestao","GerarBackupGestao","A","S","1");

INSERT INTO TB_FUNCIONALIDADE VALUES("17","Listar Acesso","ListarAcesso","A","S","3");

INSERT INTO TB_FUNCIONALIDADE VALUES("18","Listar Plano","ListarPlano","A","S","8");

INSERT INTO TB_FUNCIONALIDADE VALUES("19","Cadastro Plano","CadastroPlano","A","S","8");

INSERT INTO TB_FUNCIONALIDADE VALUES("20","Listar Assinante","ListarAssinante","A","S","9");

INSERT INTO TB_FUNCIONALIDADE VALUES("21","Cadastro Assinante","CadastroAssinante","A","S","9");

INSERT INTO TB_FUNCIONALIDADE VALUES("22","Pre Projeto Gestao","PreProjetoGestao","A","S","1");

INSERT INTO TB_FUNCIONALIDADE VALUES("23","Acompanhar Projeto Gestao","AcompanharProjetoGestao","A","N","1");

INSERT INTO TB_FUNCIONALIDADE VALUES("24","Limpar Banco Gestao","LimparBancoGestao","A","S","1");

INSERT INTO TB_FUNCIONALIDADE VALUES("25","Meu Plano Assinante","MeuPlanoAssinante","A","S","9");

INSERT INTO TB_FUNCIONALIDADE VALUES("26","Calendário","Agendamento","A","S","10");

INSERT INTO TB_FUNCIONALIDADE VALUES("27","Historico agendamento","HistoricoAgendamento","A","N","10");

INSERT INTO TB_FUNCIONALIDADE VALUES("28","Crons","CronsGestao","A","S","1");

INSERT INTO TB_FUNCIONALIDADE VALUES("29","Minificação","MinificacaoGestao","A","S","1");

INSERT INTO TB_FUNCIONALIDADE VALUES("30","Gráfico","GraficoRelatorio","A","S","11");

INSERT INTO TB_FUNCIONALIDADE VALUES("31","Listar Suporte","ListarSuporte","A","S","12");

INSERT INTO TB_FUNCIONALIDADE VALUES("32","Cadastro Suporte","CadastroSuporte","A","N","12");

INSERT INTO TB_FUNCIONALIDADE VALUES("33","Deleta Suporte","DeletaSuporte","A","N","12");

INSERT INTO TB_FUNCIONALIDADE VALUES("34","Renova Plano Assinante","RenovaPlanoAssinante","A","S","9");

INSERT INTO TB_FUNCIONALIDADE VALUES("35","Detalhar Assinatura Assinante","DetalharAssinaturaAssinante","A","N","9");

INSERT INTO TB_FUNCIONALIDADE VALUES("36","Notificação PagSeguro","NotificacaoPagSeguro","A","S","9");




DROP TABLE IF EXISTS TB_HISTORIA;


CREATE TABLE `TB_HISTORIA` (
  `co_historia` int(11) NOT NULL AUTO_INCREMENT,
  `ds_titulo` varchar(80) DEFAULT NULL,
  `ds_observacao` text DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_atualizado` datetime DEFAULT NULL,
  `st_situacao` varchar(1) DEFAULT 'N' COMMENT 'N - Não iniciada / I - Iniciada / C - Concluida',
  `co_sessao` int(11) NOT NULL,
  PRIMARY KEY (`co_historia`,`co_sessao`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;


INSERT INTO TB_HISTORIA VALUES("2","Manter Assinante","Manter assinante do sistema e com data de expiração do sistema para o assinante, criar contato, criar pessoa, envio de email de confirmação com senha gerada.\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nCriar o usuário quando criar o assinante, plano assinado\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nModelagem: Assinante (Junção de pessoa, contato, usuário, data de expiração, status)","2019-12-18 12:11:52","2020-03-23 15:38:30","C","1");

INSERT INTO TB_HISTORIA VALUES("4","Configuração inicial do projeto","Configuração inicial do projeto","2019-12-18 12:16:19","2020-03-17 18:39:45","C","1");

INSERT INTO TB_HISTORIA VALUES("5","Mudar loguin","Mudar loguin para logar com email tb, recuperar senha e notificar de mudar senha.","2019-12-18 12:16:48","2020-03-09 16:49:59","C","1");

INSERT INTO TB_HISTORIA VALUES("6","Criar mensagem de expiração e bloqueio do sistema","Criar mensagem de expiração e bloqueio do sistema","2019-12-18 12:17:13","2020-03-09 16:40:54","C","1");

INSERT INTO TB_HISTORIA VALUES("8","Pesquisa Avançada dos Assinantes","Pesquisa Avançada dos Assinantes por razão social, nome fantasia, Responsável, cidade e UF, email, valor assinatura atual.","2019-12-18 12:18:35","2020-03-09 15:40:05","C","1");

INSERT INTO TB_HISTORIA VALUES("9","Dados complementares básicos","Manter dados: (Endereço, telefone, CNPJ, fantasia, razão e outros)\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nModelagem: Contato, endereço e empresa ou pessoa","2019-12-18 12:20:44","2020-03-03 14:28:17","C","2");

INSERT INTO TB_HISTORIA VALUES("10","Manter Fotos do Estabelecimento","Manter Fotos do Estabelecimento para o Site\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nModelagem: Imagem (FK Assinante)","2019-12-18 12:21:59","2020-03-03 14:28:08","C","2");

INSERT INTO TB_HISTORIA VALUES("11","Gestão de notificações","Gestão de notificações com as mensagens geradas do sistema de sucesso erro e avisos","2019-12-18 12:22:23","2020-03-03 14:28:35","C","2");

INSERT INTO TB_HISTORIA VALUES("12","Cadastrar Agendamento","Cadastrar Agendamento (Opção da recorrência)\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nVários serviços e pacotes\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nModelagem: (FK cliente, Serviço, Profissional, Assistente","2019-12-18 12:23:46","2020-03-10 12:11:11","C","3");

INSERT INTO TB_HISTORIA VALUES("13","Edição Agendamento","Edição Agendamento\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nValidação dos status do agendamento e status do serviço","2019-12-18 12:24:38","2020-03-10 17:25:45","C","3");

INSERT INTO TB_HISTORIA VALUES("14","Implantação Agenda","Agenda CSS (Responsivo)","2019-12-18 12:25:03","2020-03-09 18:51:22","C","3");

INSERT INTO TB_HISTORIA VALUES("15","Pesquisa Avançada dos Agendamentos","Pesquisa de agendamento  por período, status, profissional, serviço, assistente, valor r$, cliente","2019-12-18 12:25:41","2020-03-10 17:25:56","C","3");

INSERT INTO TB_HISTORIA VALUES("16","Alterar Status do agendamento","Alterar Status do agendamento","2019-12-18 12:26:18","2020-03-10 17:26:12","C","3");

INSERT INTO TB_HISTORIA VALUES("17","Listagem dos agendamento (Calendário)","Listagem dos agendamento e auto render","2019-12-18 12:26:45","2020-03-10 12:11:25","C","3");

INSERT INTO TB_HISTORIA VALUES("18","Histórico do Agendamento","Histórico do Agendamento (Modal)","2019-12-18 12:27:19","2020-03-10 17:26:22","C","3");

INSERT INTO TB_HISTORIA VALUES("19","Deletar Agendamento","Deletar Agendamento (Modal) com Justificativa\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nVisualizar na listagem da grid","2019-12-18 12:27:55","2020-03-10 17:26:31","C","3");

INSERT INTO TB_HISTORIA VALUES("20","Listagem dos agendamento (Grid)","Listagem dos agendamento (Grid)","2019-12-18 12:28:13","2020-03-10 12:11:48","C","3");

INSERT INTO TB_HISTORIA VALUES("21","Event Dragging & Resizing","Criar eventos Dragging & Resizing","2019-12-18 12:28:41","2020-03-10 17:55:15","C","3");

INSERT INTO TB_HISTORIA VALUES("22","Visualizar Agendamento","Visualizar Agendamento","2019-12-18 12:29:06","2020-03-10 12:11:58","C","3");

INSERT INTO TB_HISTORIA VALUES("23","Validações dos botões","Validações dos botões da tela de visualizar agendamento","2019-12-18 12:29:42","2020-03-10 12:12:10","C","3");

INSERT INTO TB_HISTORIA VALUES("24","Iniciar o sistema com as configurações básicas","Iniciar o sistema com as configurações básicas para depois iniciar o painel","2019-12-18 12:31:44","2020-03-18 12:13:12","C","4");

INSERT INTO TB_HISTORIA VALUES("25","Implantar sistema Suporte","Implantar sistema Suporte\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nModelagem: suporte (FK Assinante, Categoria Suporte)\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTabela base Categoria Suporte","2019-12-18 12:32:21","2020-03-12 15:29:04","C","5");

INSERT INTO TB_HISTORIA VALUES("26","Relatórios de agendamentos","Relatórios de agendamentos por status do agendamento e período, Profissional, serviço e cliente\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Impressão dos gráficos e dados","2019-12-18 12:34:22","2020-03-11 15:07:26","C","6");

INSERT INTO TB_HISTORIA VALUES("27","Manter Usuário","Manter Usuário","2019-12-18 12:35:02","2020-03-05 15:48:01","C","7");

INSERT INTO TB_HISTORIA VALUES("28","Criar Cron de desativar agendamento","Criar Cron de desativar agendamento","2019-12-18 12:35:39","2020-03-18 09:57:55","C","8");

INSERT INTO TB_HISTORIA VALUES("29","Página de captura de cliente","Página de captura de cliente","2019-12-18 12:37:50","2019-12-18 12:37:50","N","9");

INSERT INTO TB_HISTORIA VALUES("30","Vídeos para a Página de captura de cliente","Vídeos para a Página de captura de cliente","2019-12-18 12:38:09","2019-12-18 12:38:09","N","9");

INSERT INTO TB_HISTORIA VALUES("31","Página de captura de lead","Página de captura de lead","2019-12-18 12:38:28","2019-12-18 12:38:28","N","9");

INSERT INTO TB_HISTORIA VALUES("32","Cadastro pelo site para o assinante","verificar o cadastro pelo site para manter um plano mesmo que que por experiência","2019-12-18 12:38:52","2019-12-18 12:38:52","N","9");

INSERT INTO TB_HISTORIA VALUES("33","Material do Pré Lançamento","Produção e Disponibilização do material para lista de lead\n\n\n\n\n\n\n\n\n\n\n\nDuração de 7 a 10 dias antes do Lançamento de 3 a 4 vídeos","2019-12-18 12:39:57","2019-12-18 12:39:57","N","11");

INSERT INTO TB_HISTORIA VALUES("34","Direcionar para o lançamento","Após Lançamento Direcionar para o lançamento o tráfego do PL","2019-12-18 12:40:34","2019-12-18 12:40:34","N","11");

INSERT INTO TB_HISTORIA VALUES("35","Criação da Lista de Lead","Criação da Lista de Lead já trabalhadas nas redes sociais e mais..","2019-12-18 12:42:55","2019-12-18 12:42:55","N","10");

INSERT INTO TB_HISTORIA VALUES("36","Criar conteúdos e Entregas","Criar conteúdos para entrega e ir formulando a lista de lead\n\n\n\n\n\n\n\n\n\n\n\nInicio da divulgação para o lançamento.","2019-12-18 12:43:22","2019-12-18 12:43:22","N","10");

INSERT INTO TB_HISTORIA VALUES("37","Lançamento das Vendas","de 1 a 7 dias de vendas com página aquecida","2019-12-18 12:44:04","2019-12-18 12:44:04","N","12");

INSERT INTO TB_HISTORIA VALUES("38","Vídeos para lançamento de vendas","produção de Vídeos para lançamento de vendas","2019-12-18 12:44:29","2019-12-18 12:44:38","N","12");

INSERT INTO TB_HISTORIA VALUES("39","Teste sessão assinante","Teste sessão assinante","2019-12-18 12:45:23","2019-12-18 12:45:23","N","13");

INSERT INTO TB_HISTORIA VALUES("40","Teste sessão Complemento do assinante","Teste sessão Complemento do assinante","2019-12-18 12:45:36","2020-03-17 18:44:03","N","13");

INSERT INTO TB_HISTORIA VALUES("41","Teste sessão Agendamento","Teste sessão Agendamento","2019-12-18 12:45:56","2020-03-17 18:43:49","N","13");

INSERT INTO TB_HISTORIA VALUES("42","Teste sessão Iniciar o sistema","Teste sessão Iniciar o sistema","2019-12-18 12:46:20","2019-12-18 12:46:20","N","13");

INSERT INTO TB_HISTORIA VALUES("43","Teste sessão Suporte","Teste sessão Suporte","2019-12-18 12:46:50","2019-12-18 12:46:50","N","13");

INSERT INTO TB_HISTORIA VALUES("44","Teste sessão Relatório","Teste sessão Relatório","2019-12-18 12:47:05","2019-12-18 12:47:05","N","13");

INSERT INTO TB_HISTORIA VALUES("45","Teste sessão Usuário","Teste sessão Usuário","2019-12-18 12:47:20","2019-12-18 12:47:20","N","13");

INSERT INTO TB_HISTORIA VALUES("46","Trocar Senha","Confirmar senha antiga e nova e se esqueceu a senha encaminhar no email","2020-03-04 11:13:55","2020-03-04 11:52:53","C","7");

INSERT INTO TB_HISTORIA VALUES("47","Dados complementares Perfil Master edição","Dados complementares Perfil Master edição","2020-03-09 11:46:09","2020-03-09 11:46:18","C","2");

INSERT INTO TB_HISTORIA VALUES("50","Relatório Agendamentos Gráficos","Relatório Agendamentos Gráficos por status do agendamento e período, Profissional, serviço e cliente","2020-03-10 18:03:50","2020-03-11 15:06:52","C","6");

INSERT INTO TB_HISTORIA VALUES("51","Listar Suporte","Listar Suporte","2020-03-12 15:29:22","2020-03-17 17:38:02","C","5");

INSERT INTO TB_HISTORIA VALUES("52","Criar Suporte","Criar Suporte","2020-03-12 15:29:36","2020-03-16 14:44:29","C","5");

INSERT INTO TB_HISTORIA VALUES("53","Excluir Suporte","Excluir Suporte","2020-03-12 15:29:57","2020-03-17 17:38:22","C","5");

INSERT INTO TB_HISTORIA VALUES("54","Responder Suporte","Responder Suporte","2020-03-12 15:30:12","2020-03-16 15:42:55","C","5");

INSERT INTO TB_HISTORIA VALUES("55","Criar Notificação de Mensagem","Criar Notificação de Mensagem","2020-03-17 17:38:57","2020-03-17 18:25:18","C","5");

INSERT INTO TB_HISTORIA VALUES("56","Configurar Ambiente de Teste","Configurar Todo Ambiente de Teste no site e carregar projeto pra ser testado","2020-03-17 18:46:29","2020-03-17 18:46:29","N","14");

INSERT INTO TB_HISTORIA VALUES("57","Validar Número de profissionais no cadastro","Validar Número de profissionais no cadastro","2020-03-18 11:09:50","2020-03-18 11:59:28","C","3");

INSERT INTO TB_HISTORIA VALUES("58","Listar pagamentos","Listar pagamentos Assinante / Perfil Master","2020-03-23 15:25:32","2020-03-23 15:25:32","C","15");

INSERT INTO TB_HISTORIA VALUES("59","Renovar Assinatura","Renovar Assinatura Boleo / Cartao e transferencia","2020-03-23 15:26:14","2020-03-23 15:39:03","C","15");

INSERT INTO TB_HISTORIA VALUES("60","Estorno / Cancelamento do assinatura","Estorno / Cancelamento do assinatura","2020-03-23 15:26:55","2020-03-23 19:35:23","C","15");

INSERT INTO TB_HISTORIA VALUES("61","Detalhes da transação da assinatura","Modal Detalhes da transação da assinatura","2020-03-23 15:27:35","2020-03-24 12:45:03","C","15");

INSERT INTO TB_HISTORIA VALUES("62","Manter Planos do Assinante Sistema Expirado","Manter Planos do Assinante Sistema Expirado","2020-03-23 15:32:59","2020-03-24 19:28:39","C","15");

INSERT INTO TB_HISTORIA VALUES("63","Notificação do PagSeguro","Notificação do PagSeguro atualização automática mais funcionalidade de teste","2020-03-23 15:39:51","2020-03-23 17:29:00","C","15");

INSERT INTO TB_HISTORIA VALUES("64","Abrir Boleto e redirecionar para banco","Abrir Boleto e redirecionar para banco","2020-03-23 19:35:56","2020-03-24 16:59:37","C","15");

INSERT INTO TB_HISTORIA VALUES("65","Adaptação da estrutura do site","Adaptação da estrutura do site","2020-04-04 11:06:57","2020-04-04 11:06:57","I","9");




DROP TABLE IF EXISTS TB_HISTORICO_HISTORIA;


CREATE TABLE `TB_HISTORICO_HISTORIA` (
  `co_historico_historia` int(11) NOT NULL AUTO_INCREMENT,
  `nu_esforco` varchar(2) DEFAULT NULL,
  `nu_esforco_restante` varchar(2) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_historia` int(11) NOT NULL,
  PRIMARY KEY (`co_historico_historia`,`co_historia`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8;


INSERT INTO TB_HISTORICO_HISTORIA VALUES("2","20","8","2019-12-18 12:11:52","2");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("4","8","3","2019-12-18 12:16:19","4");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("5","20","8","2019-12-18 12:16:48","5");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("6","13","3","2019-12-18 12:17:13","6");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("8","20","20","2019-12-18 12:18:35","8");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("9","20","8","2019-12-18 12:20:44","9");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("10","8","3","2019-12-18 12:21:59","10");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("11","20","8","2019-12-18 12:22:23","11");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("12","20","8","2019-12-18 12:23:46","12");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("13","20","13","2019-12-18 12:23:55","12");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("14","","8","2019-12-18 12:24:38","13");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("15","8","3","2019-12-18 12:25:03","14");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("16","13","5","2019-12-18 12:25:41","15");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("17","20","8","2019-12-18 12:25:53","13");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("18","5","2","2019-12-18 12:26:18","16");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("19","8","3","2019-12-18 12:26:45","17");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("20","13","8","2019-12-18 12:27:19","18");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("21","5","2","2019-12-18 12:27:55","19");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("22","13","5","2019-12-18 12:28:13","20");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("23","13","5","2019-12-18 12:28:41","21");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("24","8","4","2019-12-18 12:29:06","22");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("25","3","1","2019-12-18 12:29:42","23");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("26","13","8","2019-12-18 12:31:44","24");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("27","40","40","2019-12-18 12:32:21","25");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("28","13","13","2019-12-18 12:34:22","26");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("29","20","13","2019-12-18 12:35:02","27");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("30","8","8","2019-12-18 12:35:39","28");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("31","40","40","2019-12-18 12:37:50","29");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("32","30","30","2019-12-18 12:38:09","30");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("33","20","20","2019-12-18 12:38:28","31");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("34","8","8","2019-12-18 12:38:52","32");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("35","40","40","2019-12-18 12:39:57","33");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("36","13","13","2019-12-18 12:40:34","34");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("37","40","40","2019-12-18 12:42:55","35");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("38","40","40","2019-12-18 12:43:22","36");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("39","40","40","2019-12-18 12:44:04","37");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("40","20","20","2019-12-18 12:44:29","38");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("41","30","30","2019-12-18 12:44:38","38");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("42","40","40","2019-12-18 12:45:23","39");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("43","13","13","2019-12-18 12:45:36","40");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("44","20","20","2019-12-18 12:45:56","41");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("45","8","8","2019-12-18 12:46:20","42");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("46","20","20","2019-12-18 12:46:50","43");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("47","8","8","2019-12-18 12:47:05","44");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("48","13","13","2019-12-18 12:47:20","45");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("50","20","0","2020-01-30 12:54:32","2");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("51","20","5","2020-01-30 12:55:05","27");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("52","8","0","2020-03-03 14:28:08","10");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("53","20","0","2020-03-03 14:28:17","9");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("54","20","0","2020-03-03 14:28:35","11");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("55","8","5","2020-03-04 11:13:55","46");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("56","8","0","2020-03-04 11:52:53","46");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("57","40","20","2020-03-04 11:53:10","27");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("58","40","0","2020-03-05 15:48:01","27");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("59","5","5","2020-03-09 11:46:09","47");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("60","5","0","2020-03-09 11:46:18","47");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("61","20","20","2020-03-09 12:06:45","8");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("62","20","10","2020-03-09 13:45:33","8");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("63","20","0","2020-03-09 15:40:05","8");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("65","13","0","2020-03-09 16:40:54","6");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("66","8","0","2020-03-09 16:49:59","5");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("67","20","3","2020-03-09 17:15:16","14");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("68","13","10","2020-03-09 17:15:29","15");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("69","13","10","2020-03-09 17:15:43","14");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("70","5","4","2020-03-09 17:15:54","16");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("71","8","6","2020-03-09 17:16:04","17");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("72","13","10","2020-03-09 17:16:13","18");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("73","5","4","2020-03-09 17:16:21","19");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("74","13","10","2020-03-09 17:16:31","20");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("75","13","10","2020-03-09 17:16:41","21");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("76","8","6","2020-03-09 17:16:49","22");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("77","13","0","2020-03-09 18:51:22","14");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("79","20","8","2020-03-09 18:53:32","12");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("80","20","0","2020-03-10 12:11:11","12");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("81","8","0","2020-03-10 12:11:25","17");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("82","13","0","2020-03-10 12:11:48","20");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("83","8","0","2020-03-10 12:11:58","22");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("84","3","0","2020-03-10 12:12:10","23");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("85","20","0","2020-03-10 17:25:45","13");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("86","13","0","2020-03-10 17:25:56","15");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("87","5","0","2020-03-10 17:26:12","16");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("88","13","0","2020-03-10 17:26:22","18");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("89","5","0","2020-03-10 17:26:31","19");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("90","13","0","2020-03-10 17:55:15","21");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("91","13","13","2020-03-10 18:03:22","26");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("92","13","13","2020-03-10 18:03:50","50");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("93","13","13","2020-03-10 18:04:17","26");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("94","13","13","2020-03-10 18:04:33","50");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("95","13","0","2020-03-11 15:06:52","50");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("96","1","0","2020-03-11 15:07:26","26");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("97","8","0","2020-03-12 15:29:04","25");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("98","13","13","2020-03-12 15:29:22","51");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("99","13","13","2020-03-12 15:29:36","52");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("100","5","5","2020-03-12 15:29:57","53");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("101","13","13","2020-03-12 15:30:12","54");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("102","13","3","2020-03-16 14:44:19","51");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("103","8","0","2020-03-16 14:44:29","52");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("104","8","5","2020-03-16 14:44:43","54");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("105","8","0","2020-03-16 15:42:55","54");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("106","13","0","2020-03-17 17:38:02","51");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("107","5","5","2020-03-17 17:38:15","53");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("108","5","0","2020-03-17 17:38:22","53");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("109","5","5","2020-03-17 17:38:57","55");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("110","5","0","2020-03-17 18:25:18","55");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("111","13","5","2020-03-17 18:37:11","24");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("112","8","0","2020-03-17 18:39:45","4");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("114","30","30","2020-03-17 18:43:49","41");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("115","8","8","2020-03-17 18:44:03","40");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("116","40","40","2020-03-17 18:46:29","56");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("117","8","0","2020-03-18 09:57:55","28");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("118","5","5","2020-03-18 11:09:50","57");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("119","5","0","2020-03-18 11:59:28","57");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("120","13","0","2020-03-18 12:13:12","24");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("126","13","0","2020-03-23 15:25:32","58");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("127","30","0","2020-03-23 15:26:14","59");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("128","13","5","2020-03-23 15:26:55","60");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("129","8","8","2020-03-23 15:27:35","61");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("130","13","13","2020-03-23 15:32:59","62");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("131","30","0","2020-03-23 15:38:30","2");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("132","20","5","2020-03-23 15:38:48","60");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("133","40","0","2020-03-23 15:39:03","59");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("134","20","8","2020-03-23 15:39:51","63");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("135","20","0","2020-03-23 17:29:00","63");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("136","20","0","2020-03-23 19:35:23","60");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("137","5","5","2020-03-23 19:35:56","64");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("138","8","0","2020-03-24 12:45:03","61");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("139","5","0","2020-03-24 16:59:37","64");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("140","13","0","2020-03-24 19:28:39","62");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("141","20","10","2020-04-04 11:06:57","65");




DROP TABLE IF EXISTS TB_HISTORICO_PAG_ASSINATURA;


CREATE TABLE `TB_HISTORICO_PAG_ASSINATURA` (
  `co_historico_pag_assinatura` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_acao` varchar(100) DEFAULT NULL,
  `ds_usuario` varchar(100) DEFAULT NULL,
  `st_pagamento` int(1) DEFAULT NULL COMMENT '0 - Pendente / 1 - Aguardando pagamento / 2 - Em análise / 3 - Pago / 4 - Disponível / 5 - Em disputa / 6 - Devolvida / 7 - Cancelada\n',
  `co_plano_assinante_assinatura` int(11) NOT NULL,
  PRIMARY KEY (`co_historico_pag_assinatura`,`co_plano_assinante_assinatura`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;


INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("1","2020-03-25 12:09:13","Plano Grátis","Usuário SisBela Iniciou o plano de experiência","3","1");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("2","2020-03-25 12:17:19","Plano Grátis","Usuário SisBela Iniciou o plano de experiência","3","2");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("3","2020-03-25 12:53:31","Plano Grátis","Usuário SisBela Iniciou o plano de experiência","3","3");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("4","2020-03-25 12:57:07","Plano Grátis","Usuário SisBela Iniciou o plano de experiência","3","4");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("5","2020-03-25 13:03:42","Plano Grátis","Usuário SisBela Iniciou o plano de experiência","3","5");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("6","2020-03-25 15:50:56","Inicia o pagamento","LEO Bessa Iniciou o pagamento","0","6");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("7","2020-03-25 15:51:06","Mudou para o Status do pagamento de Em análise","Retorno da operadora do pagamento","2","6");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("8","2020-03-25 15:51:06","Mudou para o Status do pagamento de Em análise","Retorno da operadora do pagamento","2","6");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("9","2020-03-25 16:14:43","Mudou para o Status do pagamento de Cancelada","Suporte Efetuou o cancelamento.","7","6");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("10","2020-03-25 16:15:38","Inicia o pagamento","LEO Bessa Iniciou o pagamento","0","7");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("11","2020-03-25 16:15:46","Mudou para o Status do pagamento de Aguardando pagamento","Retorno da operadora do pagamento","1","7");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("12","2020-03-25 16:17:47","Mudou para o Status do pagamento de Pago ","Retorno da operadora do pagamento","3","7");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("13","2020-03-25 16:18:42","Mudou para o Status do pagamento de Devolvida","Suporte Efetuou o estorno.","6","7");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("14","2020-03-27 19:44:23","Inicia o pagamento","LEO BESSA Iniciou o pagamento","0","8");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("15","2020-03-27 19:44:26","Mudou para o Status do pagamento de Aguardando pagamento","Retorno da operadora do pagamento","1","8");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("16","2020-03-27 20:11:15","Inicia o pagamento","LEO BESSA Iniciou o pagamento","0","9");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("17","2020-03-27 20:11:20","Mudou para o Status do pagamento de Aguardando pagamento","Retorno da operadora do pagamento","1","9");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("18","2020-03-27 20:16:26","Inicia o pagamento","LEO BESSA Iniciou o pagamento","0","10");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("19","2020-03-27 20:16:29","Mudou para o Status do pagamento de Aguardando pagamento","Retorno da operadora do pagamento","1","10");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("20","2020-04-04 13:55:19","Inicia o pagamento","LEO BESSA Iniciou o pagamento","0","11");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("21","2020-04-04 13:55:27","Mudou para o Status do pagamento de Aguardando pagamento","Retorno da operadora do pagamento","1","11");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("22","2020-04-04 13:57:43","Inicia o pagamento","LEO BESSA Iniciou o pagamento","0","12");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("23","2020-04-04 13:57:52","Mudou para o Status do pagamento de Aguardando pagamento","Retorno da operadora do pagamento","1","12");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("24","2020-04-04 14:01:30","Inicia o pagamento","LEO BESSA Iniciou o pagamento","0","13");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("25","2020-04-04 14:01:37","Mudou para o Status do pagamento de Em análise","Retorno da operadora do pagamento","2","13");




DROP TABLE IF EXISTS TB_HISTORICO_SUPORTE;


CREATE TABLE `TB_HISTORICO_SUPORTE` (
  `co_historico_suporte` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_mensagem` text DEFAULT NULL,
  `st_lido` varchar(1) DEFAULT 'N' COMMENT 'S - Sim / N - Não',
  `co_suporte` int(11) NOT NULL,
  `co_usuario` int(10) NOT NULL,
  `co_imagem` int(10) unsigned NOT NULL COMMENT 'Chave do Anexo.',
  PRIMARY KEY (`co_historico_suporte`,`co_suporte`,`co_usuario`,`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;


INSERT INTO TB_HISTORICO_SUPORTE VALUES("1","2020-03-25 16:53:32","e so pra ver essa novidade mesmo","S","1","6","3");

INSERT INTO TB_HISTORICO_SUPORTE VALUES("2","2020-03-25 16:54:14","dsgsafg dfg hthhjhjjthjarthtdfh ghdfh  dfg fdahadfr greg","S","2","6","4");

INSERT INTO TB_HISTORICO_SUPORTE VALUES("3","2020-03-25 16:56:28","ta ok blz entendido","S","2","1","5");

INSERT INTO TB_HISTORICO_SUPORTE VALUES("4","2020-04-02 22:49:52","fe wqweg rg agrgrg reg","S","2","1","0");

INSERT INTO TB_HISTORICO_SUPORTE VALUES("5","2020-04-02 22:53:27","nh th trh trh","N","2","6","0");

INSERT INTO TB_HISTORICO_SUPORTE VALUES("6","2020-04-02 23:04:19","sdhfhfh5h54 h56h 5h","S","2","6","9");

INSERT INTO TB_HISTORICO_SUPORTE VALUES("7","2020-04-04 11:01:57","Ese esta sem imagens","N","2","1","0");

INSERT INTO TB_HISTORICO_SUPORTE VALUES("8","2020-04-04 11:02:24","Guarda roupas fechado","N","2","1","10");




DROP TABLE IF EXISTS TB_IMAGEM;


CREATE TABLE `TB_IMAGEM` (
  `co_imagem` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ds_caminho` varchar(150) NOT NULL,
  PRIMARY KEY (`co_imagem`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;


INSERT INTO TB_IMAGEM VALUES("1","leonardo-m-c-bessa-56e8920c23ab66.jpg");

INSERT INTO TB_IMAGEM VALUES("2","fp-barbearia-nova-barba-5-5e868bd43b6dd.jpg");

INSERT INTO TB_IMAGEM VALUES("3","suporte-1-5e7bb6bc5b319.png");

INSERT INTO TB_IMAGEM VALUES("4","suporte-2-5e7bb6e690064.png");

INSERT INTO TB_IMAGEM VALUES("5","suporte-2-5e7bb76c50418.png");

INSERT INTO TB_IMAGEM VALUES("6","henrique-carvalho-assuncao-5e7bb96caabc1.png");

INSERT INTO TB_IMAGEM VALUES("7","joao-victor-pereira-fernandes-5e868e182c29d.jpg");

INSERT INTO TB_IMAGEM VALUES("8","suporte-2-5e86971784b83.jpg");

INSERT INTO TB_IMAGEM VALUES("9","suporte-2-5e8699a3de762.jpg");

INSERT INTO TB_IMAGEM VALUES("10","suporte-2-5e88937015c50.jpg");




DROP TABLE IF EXISTS TB_IMAGEM_ASSINANTE;


CREATE TABLE `TB_IMAGEM_ASSINANTE` (
  `co_imagem_assinante` int(10) NOT NULL AUTO_INCREMENT,
  `co_assinante` int(11) NOT NULL,
  `co_imagem` int(10) unsigned NOT NULL,
  PRIMARY KEY (`co_imagem_assinante`,`co_assinante`,`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


INSERT INTO TB_IMAGEM_ASSINANTE VALUES("1","5","2");




DROP TABLE IF EXISTS TB_MODULO;


CREATE TABLE `TB_MODULO` (
  `co_modulo` int(11) NOT NULL AUTO_INCREMENT,
  `no_modulo` varchar(50) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_projeto` int(11) NOT NULL,
  PRIMARY KEY (`co_modulo`,`co_projeto`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;


INSERT INTO TB_MODULO VALUES("1","Assinante","2019-12-18 11:29:02","1");

INSERT INTO TB_MODULO VALUES("2","Principal","2019-12-18 11:29:11","1");

INSERT INTO TB_MODULO VALUES("3","Site","2019-12-18 11:29:28","1");

INSERT INTO TB_MODULO VALUES("4","Lançamento do SisBela","2019-12-18 11:29:36","1");

INSERT INTO TB_MODULO VALUES("5","Teste","2019-12-18 11:29:44","1");




DROP TABLE IF EXISTS TB_PACOTE;


CREATE TABLE `TB_PACOTE` (
  `co_pacote` int(11) NOT NULL AUTO_INCREMENT,
  `no_pacote` varchar(50) DEFAULT NULL,
  `ds_descricao` text DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_lancamento` date DEFAULT NULL,
  PRIMARY KEY (`co_pacote`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


INSERT INTO TB_PACOTE VALUES("1","Assinante","Gestão do assinante no sistema da beleza","2018-07-30 14:00:00","2018-11-02");

INSERT INTO TB_PACOTE VALUES("2","Principal","Onde consta todas as funcionalidades padrões e básicas do sistema","2018-07-30 14:00:00","2018-11-02");




DROP TABLE IF EXISTS TB_PAGINA;


CREATE TABLE `TB_PAGINA` (
  `co_pagina` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_titulo_url_amigavel` varchar(255) DEFAULT NULL COMMENT 'Url amigável da página',
  `nu_visualizacao` int(11) DEFAULT NULL,
  `nu_usuario` int(11) DEFAULT NULL COMMENT 'Número de usuário que visitou a página',
  PRIMARY KEY (`co_pagina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_PAGINA_VISITA;


CREATE TABLE `TB_PAGINA_VISITA` (
  `co_pagina_visita` int(11) NOT NULL AUTO_INCREMENT,
  `co_visita` int(11) NOT NULL,
  `co_pagina` int(11) NOT NULL,
  PRIMARY KEY (`co_pagina_visita`,`co_visita`,`co_pagina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_PERFIL;


CREATE TABLE `TB_PERFIL` (
  `co_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `no_perfil` varchar(45) NOT NULL COMMENT 'Nome do Perfil',
  `st_status` varchar(1) NOT NULL DEFAULT 'A' COMMENT '''A - Ativo / I - Inativo''',
  PRIMARY KEY (`co_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;


INSERT INTO TB_PERFIL VALUES("1","Master","A");

INSERT INTO TB_PERFIL VALUES("2","Gestor","A");

INSERT INTO TB_PERFIL VALUES("3","Colaborador","A");

INSERT INTO TB_PERFIL VALUES("4","Gerente","A");




DROP TABLE IF EXISTS TB_PERFIL_ASSINANTE;


CREATE TABLE `TB_PERFIL_ASSINANTE` (
  `co_perfil_assinante` int(11) NOT NULL AUTO_INCREMENT,
  `no_perfil` varchar(45) DEFAULT NULL,
  `st_status` varchar(1) DEFAULT NULL,
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_perfil_assinante`,`co_assinante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_PERFIL_FUNCIONALIDADE;


CREATE TABLE `TB_PERFIL_FUNCIONALIDADE` (
  `co_perfil_funcionalidade` int(11) NOT NULL AUTO_INCREMENT,
  `co_funcionalidade` int(11) NOT NULL,
  `co_perfil` int(11) NOT NULL,
  `co_perfil_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_perfil_funcionalidade`,`co_funcionalidade`,`co_perfil`,`co_perfil_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;


INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("1","1","1","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("2","27","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("3","26","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("4","25","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("5","12","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("6","11","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("7","6","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("8","5","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("10","27","3","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("11","26","3","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("12","11","3","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("13","6","3","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("22","27","4","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("23","26","4","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("24","12","4","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("25","11","4","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("26","6","4","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("27","5","4","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("29","4","4","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("30","4","3","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("31","4","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("32","30","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("33","31","4","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("34","31","3","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("35","31","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("36","32","4","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("37","32","3","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("38","32","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("39","33","4","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("40","33","3","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("41","33","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("42","34","4","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("43","34","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("44","35","4","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("45","35","2","0");




DROP TABLE IF EXISTS TB_PESSOA;


CREATE TABLE `TB_PESSOA` (
  `co_pessoa` int(11) NOT NULL AUTO_INCREMENT,
  `nu_cpf` varchar(15) DEFAULT NULL,
  `no_pessoa` varchar(100) DEFAULT NULL,
  `nu_rg` varchar(45) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_nascimento` date DEFAULT NULL,
  `st_sexo` varchar(1) DEFAULT NULL COMMENT 'M - Masculino ou F - Feminino',
  `co_endereco` int(11) NOT NULL,
  `co_contato` int(11) NOT NULL,
  `co_imagem` int(10) NOT NULL,
  PRIMARY KEY (`co_pessoa`,`co_endereco`,`co_contato`,`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;


INSERT INTO TB_PESSOA VALUES("1","","Usuário SisBela","","2016-10-31 00:00:00","","M","1","1","1");

INSERT INTO TB_PESSOA VALUES("2","","LETíCIA MACHADO CARVALHO BESSA","","2020-03-25 12:09:13","","","0","2","0");

INSERT INTO TB_PESSOA VALUES("3","","LUCRECE NERI PORTELA","","2020-03-25 12:17:19","","","0","3","0");

INSERT INTO TB_PESSOA VALUES("4","","sdaf dsf agsdg","","2020-03-25 12:53:31","","","0","4","0");

INSERT INTO TB_PESSOA VALUES("5","","efwegrg","","2020-03-25 12:57:07","","","0","5","0");

INSERT INTO TB_PESSOA VALUES("6","12345678909","LEO BESSA","","2020-03-25 13:03:39","","","5","6","0");

INSERT INTO TB_PESSOA VALUES("7","","O Cara","","","","","0","0","0");

INSERT INTO TB_PESSOA VALUES("8","","Juju","","","","","0","0","0");

INSERT INTO TB_PESSOA VALUES("9","","Profiça 10","","","","","0","0","0");

INSERT INTO TB_PESSOA VALUES("10","","Lele","","","","","0","0","0");

INSERT INTO TB_PESSOA VALUES("11","05418337157","HENRIQUE CARVALHO ASSUNçãO","3481937","2020-03-25 17:05:01","1998-03-05","M","6","7","0");

INSERT INTO TB_PESSOA VALUES("12","07970134157","JOãO VICTOR PEREIRA FERNANDES","3947853","2020-03-25 17:33:09","1981-03-05","M","7","8","0");




DROP TABLE IF EXISTS TB_PLANO;


CREATE TABLE `TB_PLANO` (
  `co_plano` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `no_plano` varchar(100) DEFAULT NULL,
  `nu_mes_ativo` int(1) DEFAULT NULL COMMENT 'Número de meses ativo do plano (1, 3, 6, 12 e 24)',
  `st_status` varchar(1) DEFAULT 'A' COMMENT 'Status do plano A - Ativo / I - Inativo',
  PRIMARY KEY (`co_plano`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


INSERT INTO TB_PLANO VALUES("1","2018-07-31 10:17:46","Padrão","1","A");

INSERT INTO TB_PLANO VALUES("2","2020-01-29 18:49:51","Mensal","1","A");

INSERT INTO TB_PLANO VALUES("3","2020-01-29 18:59:12","Trimestral","3","A");

INSERT INTO TB_PLANO VALUES("4","2020-01-29 19:00:40","Semestral","6","A");

INSERT INTO TB_PLANO VALUES("5","2020-01-29 19:01:53","Anual","12","A");

INSERT INTO TB_PLANO VALUES("6","2020-01-29 19:03:13","Bienal","24","A");

INSERT INTO TB_PLANO VALUES("7","2020-03-18 10:39:16","Trienal","36","A");




DROP TABLE IF EXISTS TB_PLANO_ASSINANTE;


CREATE TABLE `TB_PLANO_ASSINANTE` (
  `co_plano_assinante` int(11) NOT NULL AUTO_INCREMENT,
  `nu_valor` decimal(8,2) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_observacao` text DEFAULT NULL,
  `co_plano` int(11) NOT NULL,
  PRIMARY KEY (`co_plano_assinante`,`co_plano`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


INSERT INTO TB_PLANO_ASSINANTE VALUES("1","0.00","2018-07-31 10:17:46","Plano Padrão","1");

INSERT INTO TB_PLANO_ASSINANTE VALUES("2","14.90","2020-03-18 10:33:16","Por 1 meses","2");

INSERT INTO TB_PLANO_ASSINANTE VALUES("3","39.90","2020-03-18 10:33:46","Por 3 meses","3");

INSERT INTO TB_PLANO_ASSINANTE VALUES("4","69.90","2020-03-18 10:34:07","Por 6 Meses","4");

INSERT INTO TB_PLANO_ASSINANTE VALUES("5","124.90","2020-03-18 10:35:36","Por 12 Meses","5");

INSERT INTO TB_PLANO_ASSINANTE VALUES("6","239.90","2020-03-18 10:35:18","Por 24 Meses","6");

INSERT INTO TB_PLANO_ASSINANTE VALUES("7","339.90","2020-03-18 10:39:16","Por 36 Meses","7");




DROP TABLE IF EXISTS TB_PLANO_ASSINANTE_ASSINATURA;


CREATE TABLE `TB_PLANO_ASSINANTE_ASSINATURA` (
  `co_plano_assinante_assinatura` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_expiracao` date DEFAULT NULL COMMENT 'data de expiriração da assinatura',
  `dt_confirma_pagamento` datetime DEFAULT NULL COMMENT 'Data que confirmou o pagamento',
  `tp_pagamento` int(1) DEFAULT NULL COMMENT '3 - Cartão de Crédito / 4 - Depósito ou Transferência / 5 - Boleto',
  `st_pagamento` int(1) DEFAULT 0 COMMENT '0 - Pendente / 1 - Aguardando pagamento / 2 - Em análise / 3 - Pago / 4 - Disponível / 5 - Em disputa / 6 - Devolvida / 7 - Cancelada',
  `dt_modificado` datetime DEFAULT NULL COMMENT 'Data da ùltima modificação',
  `nu_valor_desconto` decimal(8,2) DEFAULT NULL COMMENT 'Valor de Desconto do PagSeguro',
  `nu_valor_real` decimal(8,2) DEFAULT NULL COMMENT 'Valor de recebimento do PagSeguro\n',
  `ds_link_boleto` text DEFAULT 'null' COMMENT 'Link do Boleto que retorno da PagSeguro',
  `nu_filiais` int(11) DEFAULT 0 COMMENT 'Número de filiais para a assinatura',
  `co_plano_assinante_assinatura_ativo` int(11) DEFAULT 0 COMMENT 'Número do co_plano_assinante_assinatura que esta ativo',
  `st_status` varchar(1) DEFAULT 'I' COMMENT 'A - Ativo / I - Inativo',
  `ds_code_transacao` varchar(80) DEFAULT 'null' COMMENT 'Code da transação do PagSeguro',
  `nu_valor_assinatura` decimal(8,2) DEFAULT NULL COMMENT 'Valor final da assinatura',
  `nu_profissionais` int(3) DEFAULT NULL COMMENT 'Número de profissionais que o sistema ira gerenciar',
  `co_assinante` int(11) NOT NULL,
  `co_plano_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_plano_assinante_assinatura`,`co_assinante`,`co_plano_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;


INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("1","2020-03-25 12:09:13","2020-04-09","","","3","2020-03-25 12:09:13","","","null","0","0","A","null","0.00","3","1","1");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("2","2020-03-25 12:17:19","2020-04-09","","","3","2020-03-25 12:17:19","","","null","0","0","A","null","0.00","3","2","1");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("3","2020-03-25 12:53:31","2020-04-09","","","3","2020-03-25 12:53:31","","","null","0","0","A","null","0.00","3","3","1");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("4","2020-03-25 12:57:07","2020-04-09","","","3","2020-03-25 12:57:07","","","null","0","0","A","null","0.00","3","4","1");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("5","2020-03-25 13:03:42","2020-04-09","","","3","2020-03-25 13:03:42","","","null","0","0","A","null","0.00","3","5","1");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("6","2020-03-25 15:50:56","2022-04-09","","3","7","2020-03-25 16:14:43","17.03","222.87","","0","5","I","5E706DDC-A10D-4D74-A0B6-3B6AF09E97D8","239.90","49","5","6");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("7","2020-03-25 16:15:38","2021-04-09","2020-03-25 16:17:47","5","6","2020-03-25 16:18:42","5.38","119.52","https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=7b44c80e5b528387bc67d405b29d4d7827c2f0f5f1425d56c8d41170005505e083fbc0f342424194","0","5","I","EDA0F0A7-B225-4F2B-877D-AE6021DE7077","124.90","25","5","5");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("8","2020-03-27 19:44:23","2022-04-09","","4","1","2020-03-27 19:44:26","9.97","229.93","https://sandbox.pagseguro.uol.com.br/checkout/payment/eft/print.jhtml?c=af67f2b0e357cfc862c36dd336d24b136ff153d2f084c2671d65f056ee5c9a190f48b18f41a05961","0","5","I","65150A2A-1D95-4220-8EBA-9D1EC6233B3D","239.90","49","5","6");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("9","2020-03-27 20:11:15","2020-10-09","","5","1","2020-03-27 20:11:20","3.19","66.71","https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=eae56d9b6d547ac5aac0e4ca1a28ecc4b6d3173595fee1ab347a2a9e1b9a667f7b18b61f16abbd4a","0","5","I","3F9F1DF4-44DD-437F-92D4-F1DF473A8C6C","69.90","13","5","4");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("10","2020-03-27 20:16:26","2021-04-09","","5","1","2020-03-27 20:16:29","5.38","119.52","https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=2c3663994b33bfcfed4b5db4fc3bebd38e82aa2cd5c32442634547b3a165d8ef3ece4f60594d7970","0","5","I","069BC6BF-743D-4282-96B9-0A25391A040C","124.90","25","5","5");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("11","2020-04-04 13:55:19","2020-07-09","","5","1","2020-04-04 13:55:27","1.99","37.91","https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=035c74e4680fe8b271bd056c44f457a7fe00437c0fe106dcdfe145f256ab5acd53092dfb85a827ec","0","5","I","CD6110D9-4252-41E8-93DE-815263F3C02D","39.90","7","5","3");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("12","2020-04-04 13:57:43","2021-04-09","","5","1","2020-04-04 13:57:52","5.38","119.52","https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=d71b3af5146918cb665df8d98fe28ff091c013353b587e74bc21ee64b415f9ae67b7766690138a66","0","5","I","29439106-A1B4-47FA-B558-BBA1AA16FCBC","124.90","25","5","5");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("13","2020-04-04 14:01:30","2020-05-09","","3","2","2020-04-04 14:01:37","0.99","13.91","","0","5","I","DCAB740B-F6D5-4150-AFF2-9CE647BF8038","14.90","3","5","2");




DROP TABLE IF EXISTS TB_PLANO_PACOTE;


CREATE TABLE `TB_PLANO_PACOTE` (
  `co_plano_pacote` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Planos do Módulo',
  `co_plano` int(11) NOT NULL,
  `co_pacote` int(11) NOT NULL,
  PRIMARY KEY (`co_plano_pacote`,`co_plano`,`co_pacote`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;


INSERT INTO TB_PLANO_PACOTE VALUES("1","1","1");

INSERT INTO TB_PLANO_PACOTE VALUES("2","1","2");

INSERT INTO TB_PLANO_PACOTE VALUES("3","2","1");

INSERT INTO TB_PLANO_PACOTE VALUES("4","2","2");

INSERT INTO TB_PLANO_PACOTE VALUES("5","3","1");

INSERT INTO TB_PLANO_PACOTE VALUES("6","3","2");

INSERT INTO TB_PLANO_PACOTE VALUES("7","4","1");

INSERT INTO TB_PLANO_PACOTE VALUES("8","4","2");

INSERT INTO TB_PLANO_PACOTE VALUES("9","6","1");

INSERT INTO TB_PLANO_PACOTE VALUES("10","6","2");

INSERT INTO TB_PLANO_PACOTE VALUES("11","5","1");

INSERT INTO TB_PLANO_PACOTE VALUES("12","5","2");

INSERT INTO TB_PLANO_PACOTE VALUES("13","7","1");

INSERT INTO TB_PLANO_PACOTE VALUES("14","7","2");




DROP TABLE IF EXISTS TB_PRECO_SERVICO;


CREATE TABLE `TB_PRECO_SERVICO` (
  `co_preco_servico` int(11) NOT NULL AUTO_INCREMENT,
  `nu_valor` decimal(6,2) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_observacao` varchar(120) DEFAULT NULL,
  `co_servico` int(11) NOT NULL,
  `co_usuario` int(10) NOT NULL,
  PRIMARY KEY (`co_preco_servico`,`co_servico`,`co_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_PROFISSIONAL;


CREATE TABLE `TB_PROFISSIONAL` (
  `co_profissional` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_cor_agenda` varchar(7) DEFAULT NULL COMMENT 'Valor Hexadecimal',
  `st_assistente` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não * Se pode ser assitente de outro profissional',
  `ds_sobre` text DEFAULT NULL,
  `no_apelido` varchar(45) DEFAULT NULL,
  `ds_motivo` text DEFAULT NULL,
  `st_agenda` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não * Se possui agenda',
  `st_agenda_online` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não * Se pode ser ter agendamento on line',
  `st_status` varchar(1) DEFAULT 'A' COMMENT 'A - Ativo / I - Inativo',
  `tp_contratacao` int(1) DEFAULT NULL COMMENT '1 - Contrato de trabalho CLT / 2 - Contrato de trabalho por prazo determinado / 3 - Sem vínculo empregatício / 4 - Contrato de Locação de espaço / 5 - Outros',
  `dt_admissao` date DEFAULT NULL,
  `dt_demissao` date DEFAULT NULL,
  `co_imagem` int(10) unsigned NOT NULL,
  `co_pessoa` int(10) unsigned NOT NULL,
  `co_usuario` int(10) NOT NULL,
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_profissional`,`co_imagem`,`co_pessoa`,`co_usuario`,`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


INSERT INTO TB_PROFISSIONAL VALUES("1","2020-03-25 16:37:38","","S","","","","S","S","A","","","","0","7","0","5");

INSERT INTO TB_PROFISSIONAL VALUES("2","2020-03-25 16:47:42","","S","","","","S","S","A","","","","0","9","0","5");




DROP TABLE IF EXISTS TB_PROJETO;


CREATE TABLE `TB_PROJETO` (
  `co_projeto` int(11) NOT NULL AUTO_INCREMENT,
  `no_projeto` varchar(80) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  PRIMARY KEY (`co_projeto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


INSERT INTO TB_PROJETO VALUES("1","SisBela","2018-07-25 11:07:40");




DROP TABLE IF EXISTS TB_SERVICO;


CREATE TABLE `TB_SERVICO` (
  `co_servico` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `st_status` varchar(1) DEFAULT 'A' COMMENT 'A - Ativo / I - Inativo',
  `st_assistente` varchar(1) DEFAULT NULL COMMENT 'S - Sim / N - Não * Se precisa ter um assitente',
  `no_servico` varchar(100) DEFAULT NULL,
  `nu_duracao` int(3) DEFAULT NULL,
  `ds_descricao` text DEFAULT NULL,
  `co_categoria_servico` int(11) NOT NULL,
  `co_imagem` int(10) NOT NULL,
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_servico`,`co_categoria_servico`,`co_imagem`,`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


INSERT INTO TB_SERVICO VALUES("1","2020-03-25 16:37:38","A","","Penteado afro","","","0","0","5");




DROP TABLE IF EXISTS TB_SESSAO;


CREATE TABLE `TB_SESSAO` (
  `co_sessao` int(11) NOT NULL AUTO_INCREMENT,
  `no_sessao` varchar(80) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_modulo` int(11) NOT NULL,
  PRIMARY KEY (`co_sessao`,`co_modulo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;


INSERT INTO TB_SESSAO VALUES("1","Assinante","2019-12-18 11:36:52","1");

INSERT INTO TB_SESSAO VALUES("2","Complemento do assinante","2019-12-18 11:37:00","1");

INSERT INTO TB_SESSAO VALUES("3","Agendamento","2019-12-18 11:39:46","2");

INSERT INTO TB_SESSAO VALUES("4","Iniciar o sistema","2019-12-18 11:40:59","2");

INSERT INTO TB_SESSAO VALUES("5","Suporte","2019-12-18 11:41:25","2");

INSERT INTO TB_SESSAO VALUES("6","Relatório","2019-12-18 11:41:33","2");

INSERT INTO TB_SESSAO VALUES("7","Usuário","2019-12-18 11:41:47","1");

INSERT INTO TB_SESSAO VALUES("8","Cron Jobs","2019-12-18 11:42:19","2");

INSERT INTO TB_SESSAO VALUES("9","Site do Sistema SisBela","2019-12-18 11:43:29","3");

INSERT INTO TB_SESSAO VALUES("10","PPL - Pré Pré Lançamento","2019-12-18 11:44:07","4");

INSERT INTO TB_SESSAO VALUES("11","PL - Pré Lançamento","2019-12-18 11:43:50","4");

INSERT INTO TB_SESSAO VALUES("12","L - Lançamento","2019-12-18 11:44:00","4");

INSERT INTO TB_SESSAO VALUES("13","Teste das Sessões","2019-12-18 11:45:19","5");

INSERT INTO TB_SESSAO VALUES("14","Configurar Ambiente de Teste","2020-03-17 18:45:38","5");

INSERT INTO TB_SESSAO VALUES("15","Pagamento","2020-03-23 15:24:26","1");




DROP TABLE IF EXISTS TB_STATUS_AGENDA;


CREATE TABLE `TB_STATUS_AGENDA` (
  `co_status_agenda` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `st_status` int(2) DEFAULT NULL COMMENT '1 - Agendado / 2 - Confirmado / 3 - Aguardando / 4 - Em Atendimento / 5 - Cancelado / 6 - Faltou / 7 - Finalizado \n',
  `dt_inicio_agenda` datetime DEFAULT NULL,
  `dt_fim_agenda` datetime DEFAULT NULL,
  `nu_valor` decimal(8,2) DEFAULT NULL COMMENT 'Valor total do agendamento',
  `nu_duracao` int(3) DEFAULT NULL COMMENT 'Em minutos',
  `ds_observacao` text DEFAULT NULL,
  `co_cliente` int(11) NOT NULL,
  `co_agenda` int(11) NOT NULL,
  `co_usuario` int(10) NOT NULL,
  `co_profissional` int(11) NOT NULL,
  `co_servico` int(11) NOT NULL,
  PRIMARY KEY (`co_status_agenda`,`co_cliente`,`co_agenda`,`co_usuario`,`co_profissional`,`co_servico`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


INSERT INTO TB_STATUS_AGENDA VALUES("1","2020-03-25 16:37:38","2","2020-03-18 17:50:00","2020-03-18 18:00:00","0.00","0","frf rg rg","1","1","6","1","1");

INSERT INTO TB_STATUS_AGENDA VALUES("2","2020-03-25 16:41:56","3","2020-03-18 17:50:00","2020-03-18 18:00:00","0.00","0","frf rg rg","1","1","6","1","1");

INSERT INTO TB_STATUS_AGENDA VALUES("3","2020-03-25 16:47:42","1","2020-03-25 11:00:00","2020-03-25 18:00:00","0.00","0","f dsaf g","2","2","6","2","1");

INSERT INTO TB_STATUS_AGENDA VALUES("4","2020-03-25 16:49:39","8","2020-03-25 11:00:00","2020-03-25 18:00:00","","","f dsaf g","2","2","6","2","1");

INSERT INTO TB_STATUS_AGENDA VALUES("5","2020-03-25 16:50:11","7","2020-03-18 17:50:00","2020-03-18 18:00:00","","","frf rg rg","1","1","6","1","1");

INSERT INTO TB_STATUS_AGENDA VALUES("6","2020-03-25 16:58:31","4","2020-03-27 08:00:00","2020-03-27 18:00:00","0.00","0","ghmghmhgmgmd  f bfdb d dfg fdg rthg th","2","3","6","2","1");

INSERT INTO TB_STATUS_AGENDA VALUES("7","2020-04-02 00:00:01","5","2020-03-27 08:00:00","2020-03-27 18:00:00","0.00","0","Mudou para o Status (Cancelado) automaticamente pelo Sistema","2","3","1","2","1");




DROP TABLE IF EXISTS TB_SUPORTE;


CREATE TABLE `TB_SUPORTE` (
  `co_suporte` int(11) NOT NULL AUTO_INCREMENT,
  `st_status` varchar(1) DEFAULT 'A' COMMENT 'A - Ativa / I - Inativa',
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_assunto` varchar(100) DEFAULT NULL,
  `st_tipo_assunto` int(1) DEFAULT NULL COMMENT '1 - Sugestão ou Melhorias / 2 - Reclamação / 3 -  Correção no Sistema / 4 - Outros',
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_suporte`,`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


INSERT INTO TB_SUPORTE VALUES("1","I","2020-03-25 16:53:32","Novidade","2","5");

INSERT INTO TB_SUPORTE VALUES("2","A","2020-03-25 16:54:14","Novidade","2","5");




DROP TABLE IF EXISTS TB_TRAFEGO;


CREATE TABLE `TB_TRAFEGO` (
  `co_trafego` int(11) NOT NULL AUTO_INCREMENT,
  `nu_ip` varchar(20) DEFAULT NULL,
  `ds_pais` varchar(100) DEFAULT NULL,
  `ds_code_pais` varchar(100) DEFAULT NULL,
  `ds_uf` varchar(45) DEFAULT NULL,
  `ds_estado` varchar(100) DEFAULT NULL,
  `ds_cidade` varchar(120) DEFAULT NULL,
  `ds_navegador` varchar(45) DEFAULT NULL,
  `ds_sistema_operacional` varchar(45) DEFAULT NULL,
  `ds_dispositivo` varchar(45) DEFAULT NULL,
  `ds_agente` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`co_trafego`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;


INSERT INTO TB_TRAFEGO VALUES("29","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:74.0) Gecko/20100101 Firefox/74.0");

INSERT INTO TB_TRAFEGO VALUES("30","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:74.0) Gecko/20100101 Firefox/74.0");

INSERT INTO TB_TRAFEGO VALUES("31","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:74.0) Gecko/20100101 Firefox/74.0");

INSERT INTO TB_TRAFEGO VALUES("32","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:74.0) Gecko/20100101 Firefox/74.0");

INSERT INTO TB_TRAFEGO VALUES("33","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:74.0) Gecko/20100101 Firefox/74.0");




DROP TABLE IF EXISTS TB_USUARIO;


CREATE TABLE `TB_USUARIO` (
  `co_usuario` int(10) NOT NULL AUTO_INCREMENT,
  `ds_senha` varchar(100) NOT NULL,
  `ds_code` varchar(50) NOT NULL COMMENT 'Senha criptografada',
  `st_status` varchar(1) NOT NULL DEFAULT 'I' COMMENT '''A - Ativo / I - Inativo''',
  `st_troca_senha` varchar(1) DEFAULT 'N',
  `dt_cadastro` datetime NOT NULL,
  `co_imagem` int(10) NOT NULL,
  `co_pessoa` int(11) NOT NULL,
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_usuario`,`co_imagem`,`co_pessoa`,`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;


INSERT INTO TB_USUARIO VALUES("1","123456**","TVRJek5EVTJLaW89","A","S","2016-10-31 00:00:00","1","1","0");

INSERT INTO TB_USUARIO VALUES("2","JRU0GSB3","U2xKVk1FZFRRak09","I","N","2020-03-25 12:09:13","0","2","1");

INSERT INTO TB_USUARIO VALUES("3","WXY3JNL5","VjFoWk0wcE9URFU9","I","N","2020-03-25 12:17:19","0","3","2");

INSERT INTO TB_USUARIO VALUES("4","QYK2NEW6","VVZsTE1rNUZWelk9","I","N","2020-03-25 12:53:31","0","4","3");

INSERT INTO TB_USUARIO VALUES("5","ALO7ZKC0","UVV4UE4xcExRekE9","I","N","2020-03-25 12:57:07","0","5","4");

INSERT INTO TB_USUARIO VALUES("6","12345678**","TVRJek5EVTJOemdxS2c9PQ==","A","S","2020-03-25 13:03:39","0","6","5");

INSERT INTO TB_USUARIO VALUES("7","12345678**","TVRJek5EVTJOemdxS2c9PQ==","A","N","2020-03-25 17:05:01","6","11","5");

INSERT INTO TB_USUARIO VALUES("8","12345678**","TVRJek5EVTJOemdxS2c9PQ==","A","N","2020-03-25 17:33:09","7","12","5");




DROP TABLE IF EXISTS TB_USUARIO_PERFIL;


CREATE TABLE `TB_USUARIO_PERFIL` (
  `co_usuario_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `co_usuario` int(10) NOT NULL,
  `co_perfil` int(11) NOT NULL,
  `co_perfil_assinante` int(10) NOT NULL,
  PRIMARY KEY (`co_usuario_perfil`,`co_usuario`,`co_perfil`,`co_perfil_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;


INSERT INTO TB_USUARIO_PERFIL VALUES("1","1","1","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("2","2","2","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("3","3","2","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("4","4","2","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("5","5","2","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("6","6","2","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("7","7","3","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("10","8","4","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("11","8","3","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("12","0","4","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("13","0","3","0");




DROP TABLE IF EXISTS TB_VISITA;


CREATE TABLE `TB_VISITA` (
  `co_visita` int(11) NOT NULL AUTO_INCREMENT,
  `dt_realizado` datetime DEFAULT NULL,
  `dt_atualizado` datetime DEFAULT NULL,
  `nu_visitas` int(11) DEFAULT NULL,
  `co_trafego` int(11) NOT NULL,
  PRIMARY KEY (`co_visita`,`co_trafego`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





