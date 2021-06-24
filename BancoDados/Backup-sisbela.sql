-- Atualizado em: 23/06/2021 23:33:34
-- AMBIENTE: http://localhost/SisBela/
-- BANCO: sisbela

CREATE DATABASE IF NOT EXISTS sisbela;

USE sisbela;

DROP TABLE IF EXISTS TB_AGENDA;


CREATE TABLE `TB_AGENDA` (
  `co_agenda` int(11) NOT NULL AUTO_INCREMENT,
  `ds_motivo` text DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_agenda`,`co_assinante`),
  KEY `fk_TB_AGENDAMENTO_TB_ASSINANTE1_idx` (`co_assinante`)
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
  PRIMARY KEY (`co_assinante`,`co_empresa`,`co_pessoa`),
  KEY `fk_TB_ASSINANTE_TB_EMPRESA1_idx` (`co_empresa`),
  KEY `fk_TB_ASSINANTE_TB_PESSOA1_idx` (`co_pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;


INSERT INTO TB_ASSINANTE VALUES('1','2021-06-16 11:02:06','2022-06-16','N','A','M','77','119');

INSERT INTO TB_ASSINANTE VALUES('4','2021-06-16 11:10:36','2021-07-16','N','A','M','80','122');

INSERT INTO TB_ASSINANTE VALUES('5','2021-06-16 11:44:15','2021-12-16','N','A','M','81','123');

INSERT INTO TB_ASSINANTE VALUES('26','2021-06-16 16:15:09','2021-12-16','N','A','M','102','144');

INSERT INTO TB_ASSINANTE VALUES('27','2021-06-16 16:26:36','2021-12-16','N','A','M','103','145');

INSERT INTO TB_ASSINANTE VALUES('36','2021-06-16 17:07:20','2021-07-16','N','A','M','112','154');

INSERT INTO TB_ASSINANTE VALUES('37','2021-06-16 17:08:25','2021-12-16','N','A','M','113','155');

INSERT INTO TB_ASSINANTE VALUES('44','2021-06-16 17:37:24','2021-07-16','N','A','M','120','162');

INSERT INTO TB_ASSINANTE VALUES('48','2021-06-16 17:48:32','2021-12-16','N','A','M','124','166');

INSERT INTO TB_ASSINANTE VALUES('49','2021-06-16 17:48:58','2021-07-16','N','A','M','125','167');

INSERT INTO TB_ASSINANTE VALUES('53','2021-06-16 18:01:06','2021-07-16','N','A','M','129','171');

INSERT INTO TB_ASSINANTE VALUES('54','2021-06-16 18:01:50','2021-07-16','N','A','M','130','172');

INSERT INTO TB_ASSINANTE VALUES('55','2021-06-16 18:02:37','2021-07-16','N','A','M','131','173');

INSERT INTO TB_ASSINANTE VALUES('56','2021-06-23 23:15:22','2022-06-23','N','A','M','132','174');




DROP TABLE IF EXISTS TB_BANCO;


CREATE TABLE `TB_BANCO` (
  `co_banco` int(11) NOT NULL COMMENT 'Código do banco',
  `no_banco` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`co_banco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_BOTAO;


CREATE TABLE `TB_BOTAO` (
  `co_botao` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tabela das informações dos botõs para ir para a págna de venda e dentro da página',
  `no_botao` varchar(45) DEFAULT NULL COMMENT 'Texto do Botão',
  `ds_botao` varchar(250) DEFAULT NULL COMMENT 'Descrição do Botão (Posição/cor)',
  `nu_total_cliques` int(8) DEFAULT NULL COMMENT 'Número de cliques no botão',
  `st_status` varchar(1) DEFAULT NULL COMMENT 'S - Sim / N - Não',
  PRIMARY KEY (`co_botao`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;


INSERT INTO TB_BOTAO VALUES('1','Inicio','Barra de navegação menu superior','0','A');

INSERT INTO TB_BOTAO VALUES('2','Planos','Barra de navegação menu superior','1','A');

INSERT INTO TB_BOTAO VALUES('3','Dúvidas','Barra de navegação menu superior','2','A');

INSERT INTO TB_BOTAO VALUES('4','Saiba Mais','Barra de navegação menu superior','0','A');

INSERT INTO TB_BOTAO VALUES('5','Bônus','Barra de navegação menu superior','1','A');

INSERT INTO TB_BOTAO VALUES('6','Comprar','Barra de navegação menu superior Botão Checkout','2','A');

INSERT INTO TB_BOTAO VALUES('7','Quero começar agora 1','Botão super promessa','0','A');

INSERT INTO TB_BOTAO VALUES('8','Quero começar agora 2','Botão MultiPlataforma','0','A');

INSERT INTO TB_BOTAO VALUES('9','Adquirir Plano Mensal','Comprar plano','0','A');

INSERT INTO TB_BOTAO VALUES('10','Adquirir Plano Semestral','Comprar plano','2','A');

INSERT INTO TB_BOTAO VALUES('11','Adquirir Plano Anual','Comprar Plano','1','A');

INSERT INTO TB_BOTAO VALUES('12','Quero organizar minha agenda agora','Botão das Dúvidas, direto para o checkout','0','A');

INSERT INTO TB_BOTAO VALUES('13','Visualizar Vídeo','Botão para visualizar o vídeo de Saiba Mais','1','A');

INSERT INTO TB_BOTAO VALUES('14','Quero esse bônus 1','Comprar o plano mensal direto no checkout','0','A');

INSERT INTO TB_BOTAO VALUES('15','Quero esse bônus 2','Comprar o plano semestral direto no checkout','2','A');

INSERT INTO TB_BOTAO VALUES('16','Quero esse bônus 3','Comprar o plano Anual direto no checkout','3','A');

INSERT INTO TB_BOTAO VALUES('17','Botão do WhatsApp','Botão de suporte no Site do nosso WhatsApp','2','A');




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
  PRIMARY KEY (`co_cliente`,`co_assinante`,`co_pessoa`),
  KEY `fk_TB_CLIENTE_TB_ASSINANTE1_idx` (`co_assinante`),
  KEY `fk_TB_CLIENTE_TB_PESSOA1_idx` (`co_pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;


INSERT INTO TB_CLIENTE VALUES('1','2020-03-25 16:37:38','A','','','S','S','S','S','','5','8');

INSERT INTO TB_CLIENTE VALUES('2','2020-03-25 16:47:42','A','','','S','S','S','S','','5','10');

INSERT INTO TB_CLIENTE VALUES('3','2020-04-07 11:48:49','A','','','S','S','S','S','','5','14');

INSERT INTO TB_CLIENTE VALUES('4','2020-04-07 11:49:18','A','','','S','S','S','S','','5','16');

INSERT INTO TB_CLIENTE VALUES('5','2020-04-07 12:02:04','A','','','S','S','S','S','','5','18');

INSERT INTO TB_CLIENTE VALUES('6','2020-04-07 12:02:48','A','','','S','S','S','S','','5','20');

INSERT INTO TB_CLIENTE VALUES('7','2020-04-07 12:03:20','A','','','S','S','S','S','','5','22');

INSERT INTO TB_CLIENTE VALUES('8','2020-04-07 12:08:46','A','','','S','S','S','S','','5','24');

INSERT INTO TB_CLIENTE VALUES('9','2020-04-07 13:06:59','A','','','S','S','S','S','','5','26');

INSERT INTO TB_CLIENTE VALUES('10','2020-04-07 13:08:32','A','','','S','S','S','S','','5','28');

INSERT INTO TB_CLIENTE VALUES('11','2020-04-07 13:09:51','A','','','S','S','S','S','','5','30');

INSERT INTO TB_CLIENTE VALUES('14','2020-04-07 13:14:21','A','','','S','S','S','S','','5','36');

INSERT INTO TB_CLIENTE VALUES('15','2020-04-07 13:19:21','A','','','S','S','S','S','','2','38');

INSERT INTO TB_CLIENTE VALUES('16','2021-03-31 11:42:24','A','','','S','S','S','S','','5','49');

INSERT INTO TB_CLIENTE VALUES('17','2021-04-06 16:46:41','A','','','S','S','S','S','','1','51');

INSERT INTO TB_CLIENTE VALUES('18','2021-04-06 16:47:05','A','','','S','S','S','S','','1','53');




DROP TABLE IF EXISTS TB_CLIQUE;


CREATE TABLE `TB_CLIQUE` (
  `co_clique` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_botao` int(11) NOT NULL,
  PRIMARY KEY (`co_clique`,`co_botao`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO TB_CLIQUE VALUES('1','2021-06-23 19:10:46','2');

INSERT INTO TB_CLIQUE VALUES('2','2021-06-23 19:14:55','10');

INSERT INTO TB_CLIQUE VALUES('3','2021-06-23 19:15:09','10');

INSERT INTO TB_CLIQUE VALUES('4','2021-06-23 19:15:22','11');

INSERT INTO TB_CLIQUE VALUES('5','2021-06-23 23:05:23','17');

INSERT INTO TB_CLIQUE VALUES('6','2021-06-23 23:05:33','13');

INSERT INTO TB_CLIQUE VALUES('7','2021-06-23 23:06:34','17');

INSERT INTO TB_CLIQUE VALUES('8','2021-06-23 23:06:59','15');

INSERT INTO TB_CLIQUE VALUES('9','2021-06-23 23:12:25','3');

INSERT INTO TB_CLIQUE VALUES('10','2021-06-23 23:13:05','3');

INSERT INTO TB_CLIQUE VALUES('11','2021-06-23 23:14:35','16');

INSERT INTO TB_CLIQUE VALUES('12','2021-06-23 23:30:44','16');

INSERT INTO TB_CLIQUE VALUES('13','2021-06-23 23:30:49','6');

INSERT INTO TB_CLIQUE VALUES('14','2021-06-23 23:30:56','16');

INSERT INTO TB_CLIQUE VALUES('15','2021-06-23 23:31:01','5');

INSERT INTO TB_CLIQUE VALUES('16','2021-06-23 23:31:03','6');

INSERT INTO TB_CLIQUE VALUES('17','2021-06-23 23:31:40','15');




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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;


INSERT INTO TB_CONTATO VALUES('1','61993274991','6130826060','0','','sisbela@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('2','6193624436','','','','lele.403@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('3','61993055454','','','','lucrece.neri@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('4','61993126972','','','','ddfds@fdsfjf.com.br','','','','');

INSERT INTO TB_CONTATO VALUES('5','61998110601','','','','fef@rtj.com','','','','');

INSERT INTO TB_CONTATO VALUES('6','6195959565','11999999999','','','leonardomcbessa@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('7','61922565323','','','','henriquecarvalhohca@outlook.com','','','','');

INSERT INTO TB_CONTATO VALUES('8','61995595599','','','','frabriceras15@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('9','6199566323','','','','leonardomcbessa@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('10','61992556968','','','','teste@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('11','61558996362','','','','thais.mail@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('12','61599663331','','','','teste@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('13','61995546653','','','','lele.403@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('14','61599633255','','','','lucrece.neri@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('15','61998863669','','','','leonardomcbessa@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('16','61965963322','','','','thais.mail@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('17','23443243258','','','','colaborador1@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('36','53253252666','','','','sisccaug@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('37','34554554547','','','','sisccaug@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('69','54656656566','','','','sisccaug@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('70','43567546655','','','','sisbela@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('79','57677889887','','','','sisccaug@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('80','32445435356','','','','barbecue@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('81','65476776777','','','','barbecue@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('84','43243242445','','','','barbecue@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('85','61993274991','','','','leonardomcbessa@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('106','3333333333','','','','barbecue@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('107','2323244444','','','','barbecue@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('116','34324242455','','','','barbecue@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('117','2344442414','','','','sisccaug@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('124','6199833900','','','','barbecue@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('128','6199494044','','','','barbecue@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('129','6167887667','','','','sisbela@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('133','6198839333','','','','barbecue@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('134','6198754445','','','','barbecue@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('135','76965656560','','','','barbecue55@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('136','3444455553','','','','sisccaug@gmail.com','','','','');




DROP TABLE IF EXISTS TB_CONTROLLER;


CREATE TABLE `TB_CONTROLLER` (
  `co_controller` int(11) NOT NULL AUTO_INCREMENT,
  `no_controller` varchar(60) DEFAULT NULL,
  `ds_class_icon` varchar(30) DEFAULT NULL COMMENT 'Classe do Ícone',
  PRIMARY KEY (`co_controller`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;


INSERT INTO TB_CONTROLLER VALUES('1','Gestão','clip-data');

INSERT INTO TB_CONTROLLER VALUES('2','Auditoria','fa fa-crosshairs');

INSERT INTO TB_CONTROLLER VALUES('3','Acesso','clip-connection-2');

INSERT INTO TB_CONTROLLER VALUES('4','Funcionalidade','fa fa-outdent');

INSERT INTO TB_CONTROLLER VALUES('5','Perfil','clip-stack-empty');

INSERT INTO TB_CONTROLLER VALUES('6','Usuário','fa fa-group');

INSERT INTO TB_CONTROLLER VALUES('7','Visita','clip-airplane');

INSERT INTO TB_CONTROLLER VALUES('8','Plano','clip-banknote');

INSERT INTO TB_CONTROLLER VALUES('9','Assinante','clip-user-5');

INSERT INTO TB_CONTROLLER VALUES('10','Agenda','fa fa-calendar');

INSERT INTO TB_CONTROLLER VALUES('11','Relatorio','fa fa-clipboard');

INSERT INTO TB_CONTROLLER VALUES('12','Suporte','fa fa-envelope');




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
  PRIMARY KEY (`co_empresa`,`co_pessoa`,`co_endereco`,`co_contato`,`co_imagem`),
  KEY `fk_TB_EMPRESA_TB_PESSOA1_idx` (`co_pessoa`),
  KEY `fk_TB_EMPRESA_TB_ENDERECO1_idx` (`co_endereco`),
  KEY `fk_TB_EMPRESA_TB_CONTATO1_idx` (`co_contato`),
  KEY `fk_TB_EMPRESA_TB_IMAGEM1_idx` (`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;


INSERT INTO TB_EMPRESA VALUES('1','','Esmaltaria Unha Padrão','2020-03-25 12:09:13','','','','','0','2','0','0');

INSERT INTO TB_EMPRESA VALUES('2','','Salão Novo Stylo 2','2020-03-25 12:17:19','','','','','0','3','0','0');

INSERT INTO TB_EMPRESA VALUES('3','','gfasdgfadg','2020-03-25 12:53:31','','','','','0','8','0','0');

INSERT INTO TB_EMPRESA VALUES('4','','rgreh h thtrhrtjrtj','2020-03-25 12:57:07','','','','','0','10','0','0');

INSERT INTO TB_EMPRESA VALUES('5','BARBEARIA NOVA BARBA RAZãO SOCIAL','BARBEARIA NOVA BARBA','2020-03-25 13:03:39','','','nova descrição','','0','4','0','0');

INSERT INTO TB_EMPRESA VALUES('6','','Cabelo Hairs','2020-04-11 18:20:43','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('7','','Moitaa coiffer','2020-04-15 10:44:55','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('8','','Cabelo Hairs','2020-04-15 10:50:44','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('9','','Cabelo Hairs','2020-04-15 10:52:48','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('10','','Moitaa coiffer','2020-04-15 10:54:18','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('11','','Moitaa coiffer','2020-04-15 10:55:48','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('12','','Moitaa coiffer','2020-04-15 10:57:20','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('13','','Moitaa coiffer','2020-04-15 11:00:01','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('32','','Salão novo Stylo','2021-06-14 17:36:09','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('33','','Salão novo Stylo','2021-06-14 17:36:43','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('65','','Salão novo Stylo','2021-06-14 18:11:47','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('66','','Salão novo Stylo II','2021-06-16 09:55:36','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('75','','Salão novo Stylo 1010','2021-06-16 10:52:05','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('76','','Barbearia top 10','2021-06-16 10:55:43','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('77','','Salão novo Stylo 1010','2021-06-16 11:02:06','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('80','','Salão novo Stylo 1010','2021-06-16 11:10:36','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('81','','Nova Esmaltaria top','2021-06-16 11:44:15','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('102','','Salão novo Stylo 1010','2021-06-16 16:15:09','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('103','','Nova Esmaltaria top 1010','2021-06-16 16:26:36','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('112','','gfgfjj','2021-06-16 17:07:20','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('113','','Salão novo Stylo','2021-06-16 17:08:25','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('120','','Cabeleleiro novo','2021-06-16 17:37:24','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('124','','Salão novo Stylo 1010','2021-06-16 17:48:32','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('125','','Salão novo Stylo','2021-06-16 17:48:58','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('129','','barbearia novo stylo','2021-06-16 18:01:06','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('130','','Salão novo Stylo 1010','2021-06-16 18:01:50','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('131','','Salão novo Stylo 1010','2021-06-16 18:02:37','','','','','0','14','0','0');

INSERT INTO TB_EMPRESA VALUES('132','','Salão novo Stylo 1010','2021-06-23 23:15:21','','','','','0','0','0','0');




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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;


INSERT INTO TB_ENDERECO VALUES('1','qr 403 conjunto 10 casa 28','','Samambaia Norte','72319111','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('2','','','','','','');

INSERT INTO TB_ENDERECO VALUES('3','','','','','','');

INSERT INTO TB_ENDERECO VALUES('4','QR 403 Conjunto 10','103','Samambaia Norte (Samambaia)','72319111','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('5','','','','','','');

INSERT INTO TB_ENDERECO VALUES('6','QR 403 Conjunto 10','103','Samambaia Norte (Samambaia)','72319111','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('7','QR 403 Conjunto 10','103','Samambaia Norte (Samambaia)','72319111','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('8','','','','','','');

INSERT INTO TB_ENDERECO VALUES('9','','','','','','');

INSERT INTO TB_ENDERECO VALUES('10','','','','','','');

INSERT INTO TB_ENDERECO VALUES('11','','','','','','');

INSERT INTO TB_ENDERECO VALUES('12','','','','','','');

INSERT INTO TB_ENDERECO VALUES('13','','','','','','');

INSERT INTO TB_ENDERECO VALUES('14','','','','','','');




DROP TABLE IF EXISTS TB_FUNCIONALIDADE;


CREATE TABLE `TB_FUNCIONALIDADE` (
  `co_funcionalidade` int(11) NOT NULL AUTO_INCREMENT,
  `no_funcionalidade` varchar(150) NOT NULL,
  `ds_action` varchar(120) DEFAULT NULL,
  `st_status` varchar(1) DEFAULT 'A' COMMENT '''A - Ativo / I - Inativo''',
  `st_menu` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não (Se apresenta no menu)',
  `co_controller` int(11) NOT NULL,
  PRIMARY KEY (`co_funcionalidade`,`co_controller`),
  KEY `fk_TB_FUNCIONALIDADE_TB_CONTROLLER1_idx` (`co_controller`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;


INSERT INTO TB_FUNCIONALIDADE VALUES('1','Perfil Master','PerfilMaster','A','S','0');

INSERT INTO TB_FUNCIONALIDADE VALUES('2','Auditoria Listar','ListarAuditoria','A','S','2');

INSERT INTO TB_FUNCIONALIDADE VALUES('3','Auditoria Detalhar','DetalharAuditoria','A','N','2');

INSERT INTO TB_FUNCIONALIDADE VALUES('4','Usuario Cadastrar','CadastroUsuario','A','N','6');

INSERT INTO TB_FUNCIONALIDADE VALUES('5','Usuario Listar','ListarUsuario','A','S','6');

INSERT INTO TB_FUNCIONALIDADE VALUES('6','Meu Perfil Usuario','MeuPerfilUsuario','A','S','6');

INSERT INTO TB_FUNCIONALIDADE VALUES('7','Perfil Listar','ListarPerfil','A','S','5');

INSERT INTO TB_FUNCIONALIDADE VALUES('8','Perfil Cadastrar','CadastroPerfil','A','S','5');

INSERT INTO TB_FUNCIONALIDADE VALUES('9','Funcionalidade Listar','ListarFuncionalidade','A','S','4');

INSERT INTO TB_FUNCIONALIDADE VALUES('10','Funcionalidade Cadastrar','CadastroFuncionalidade','A','S','4');

INSERT INTO TB_FUNCIONALIDADE VALUES('11','Troca Senha Usuario','TrocaSenhaUsuario','A','S','6');

INSERT INTO TB_FUNCIONALIDADE VALUES('12','Dados Complementares Assinante','DadosComplementaresAssinante','A','S','9');

INSERT INTO TB_FUNCIONALIDADE VALUES('13','Listar Visita','ListarVisita','A','S','7');

INSERT INTO TB_FUNCIONALIDADE VALUES('14','Config Gestao','ConfigGestao','A','S','1');

INSERT INTO TB_FUNCIONALIDADE VALUES('15','Gerar Entidades Gestao','GerarEntidadesGestao','A','S','1');

INSERT INTO TB_FUNCIONALIDADE VALUES('16','Gerar Backup Gestao','GerarBackupGestao','A','S','1');

INSERT INTO TB_FUNCIONALIDADE VALUES('17','Listar Acesso','ListarAcesso','A','S','3');

INSERT INTO TB_FUNCIONALIDADE VALUES('18','Listar Plano','ListarPlano','A','S','8');

INSERT INTO TB_FUNCIONALIDADE VALUES('19','Cadastro Plano','CadastroPlano','A','S','8');

INSERT INTO TB_FUNCIONALIDADE VALUES('20','Listar Assinante','ListarAssinante','A','S','9');

INSERT INTO TB_FUNCIONALIDADE VALUES('21','Cadastro Assinante','CadastroAssinante','A','S','9');

INSERT INTO TB_FUNCIONALIDADE VALUES('22','Pre Projeto Gestao','PreProjetoGestao','A','S','1');

INSERT INTO TB_FUNCIONALIDADE VALUES('23','Acompanhar Projeto Gestao','AcompanharProjetoGestao','A','N','1');

INSERT INTO TB_FUNCIONALIDADE VALUES('24','Limpar Banco Gestao','LimparBancoGestao','A','S','1');

INSERT INTO TB_FUNCIONALIDADE VALUES('25','Meu Plano Assinante','MeuPlanoAssinante','A','S','9');

INSERT INTO TB_FUNCIONALIDADE VALUES('26','Calendário','Agendamento','A','S','10');

INSERT INTO TB_FUNCIONALIDADE VALUES('27','Historico agendamento','HistoricoAgendamento','A','N','10');

INSERT INTO TB_FUNCIONALIDADE VALUES('28','Crons','CronsGestao','A','S','1');

INSERT INTO TB_FUNCIONALIDADE VALUES('29','Minificação','MinificacaoGestao','A','S','1');

INSERT INTO TB_FUNCIONALIDADE VALUES('30','Informações','GraficoRelatorio','A','S','11');

INSERT INTO TB_FUNCIONALIDADE VALUES('31','Listar Suporte','ListarSuporte','A','S','12');

INSERT INTO TB_FUNCIONALIDADE VALUES('32','Cadastro Suporte','CadastroSuporte','A','N','12');

INSERT INTO TB_FUNCIONALIDADE VALUES('33','Deleta Suporte','DeletaSuporte','A','N','12');

INSERT INTO TB_FUNCIONALIDADE VALUES('34','Renova Plano Assinante','RenovaPlanoAssinante','A','S','9');

INSERT INTO TB_FUNCIONALIDADE VALUES('35','Detalhar Assinatura Assinante','DetalharAssinaturaAssinante','A','N','9');

INSERT INTO TB_FUNCIONALIDADE VALUES('36','Notificação PagSeguro','NotificacaoPagSeguro','A','S','9');

INSERT INTO TB_FUNCIONALIDADE VALUES('37','Botões Site','ListarBotao','A','S','1');




DROP TABLE IF EXISTS TB_HISTORICO_PAG_ASSINATURA;


CREATE TABLE `TB_HISTORICO_PAG_ASSINATURA` (
  `co_historico_pag_assinatura` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_acao` varchar(100) DEFAULT NULL,
  `ds_usuario` varchar(100) DEFAULT NULL,
  `st_pagamento` int(1) DEFAULT NULL COMMENT '0 - Pendente / 1 - Aguardando pagamento / 2 - Em análise / 3 - Pago / 4 - Disponível / 5 - Em disputa / 6 - Devolvida / 7 - Cancelada\n',
  `co_plano_assinante_assinatura` int(11) NOT NULL,
  PRIMARY KEY (`co_historico_pag_assinatura`,`co_plano_assinante_assinatura`),
  KEY `fk_TB_HISTORICO_PAG_ASSINATURA_TB_PLANO_ASSINANTE_ASSINATUR_idx` (`co_plano_assinante_assinatura`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;


INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('1','2021-06-16 11:02:06','Inicia o pagamento','Barbecue Iniciou o pagamento','0','1');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('4','2021-06-16 11:10:36','Inicia o pagamento','Leo BEssa Iniciou o pagamento','0','4');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('5','2021-06-16 11:10:40','Mudou o Status do pagamento para Aguardando pagamento','Retorno da operadora do pagamento','1','4');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('6','2021-06-16 11:18:36','Mudou o Status do pagamento para Pago ','Retorno da operadora do pagamento','3','4');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('7','2021-06-16 11:44:15','Inicia o pagamento','Sou eu mesmo Iniciou o pagamento','0','6');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('8','2021-06-16 11:44:18','Mudou o Status do pagamento para Aguardando pagamento','Retorno da operadora do pagamento','1','6');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('9','2021-06-16 11:46:25','Mudou o Status do pagamento para Pago ','Retorno da operadora do pagamento','3','6');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('30','2021-06-16 16:15:09','Inicia o pagamento','Leo Bessa Iniciou o pagamento','0','27');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('31','2021-06-16 16:15:11','Mudou o Status do pagamento para Aguardando pagamento','Retorno da operadora do pagamento','1','27');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('32','2021-06-16 16:17:09','Mudou o Status do pagamento para Em análise','Retorno da operadora do pagamento','2','27');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('33','2021-06-16 16:26:36','Inicia o pagamento','Sou eu mesmo 1010 Iniciou o pagamento','0','28');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('34','2021-06-16 16:26:37','Mudou o Status do pagamento para Aguardando pagamento','Retorno da operadora do pagamento','1','28');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('35','2021-06-16 16:27:15','Mudou o Status do pagamento para Pago ','Retorno da operadora do pagamento','3','28');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('44','2021-06-16 17:07:20','Inicia o pagamento','Leo BEssa Iniciou o pagamento','0','41');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('45','2021-06-16 17:07:22','Mudou o Status do pagamento para Aguardando pagamento','Retorno da operadora do pagamento','1','41');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('46','2021-06-16 17:08:25','Inicia o pagamento','Leo BEssa Iniciou o pagamento','0','42');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('47','2021-06-16 17:08:28','Mudou o Status do pagamento para Aguardando pagamento','Retorno da operadora do pagamento','1','42');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('54','2021-06-16 17:37:24','Inicia o pagamento','Marcio Braga Iniciou o pagamento','0','49');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('55','2021-06-16 17:37:29','Mudou o Status do pagamento para Aguardando pagamento','Retorno da operadora do pagamento','1','49');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('59','2021-06-16 17:48:32','Inicia o pagamento','Marcio Braga Iniciou o pagamento','0','53');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('60','2021-06-16 17:48:33','Mudou o Status do pagamento para Aguardando pagamento','Retorno da operadora do pagamento','1','53');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('61','2021-06-16 17:48:58','Inicia o pagamento','Leo Bessa Iniciou o pagamento','0','54');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('62','2021-06-16 17:49:01','Mudou o Status do pagamento para Aguardando pagamento','Retorno da operadora do pagamento','1','54');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('66','2021-06-16 18:01:06','Inicia o pagamento','Osmar Novo Iniciou o pagamento','0','58');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('67','2021-06-16 18:01:11','Mudou o Status do pagamento para Aguardando pagamento','Retorno da operadora do pagamento','1','58');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('68','2021-06-16 18:01:50','Inicia o pagamento','Osmar No Iniciou o pagamento','0','59');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('69','2021-06-16 18:01:54','Mudou o Status do pagamento para Aguardando pagamento','Retorno da operadora do pagamento','1','59');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('70','2021-06-16 18:02:37','Inicia o pagamento','Osr No Iniciou o pagamento','0','60');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('71','2021-06-16 18:02:41','Mudou o Status do pagamento para Aguardando pagamento','Retorno da operadora do pagamento','1','60');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('72','2021-06-23 23:15:22','Inicia o pagamento','Leo Bessa Iniciou o pagamento','0','61');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('73','2021-06-23 23:15:24','Mudou o Status do pagamento para Aguardando pagamento','Retorno da operadora do pagamento','1','61');




DROP TABLE IF EXISTS TB_HISTORICO_SUPORTE;


CREATE TABLE `TB_HISTORICO_SUPORTE` (
  `co_historico_suporte` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_mensagem` text DEFAULT NULL,
  `st_lido` varchar(1) DEFAULT 'N' COMMENT 'S - Sim / N - Não',
  `co_suporte` int(11) NOT NULL,
  `co_usuario` int(10) NOT NULL,
  `co_imagem` int(10) unsigned NOT NULL COMMENT 'Chave do Anexo.',
  PRIMARY KEY (`co_historico_suporte`,`co_suporte`,`co_usuario`,`co_imagem`),
  KEY `fk_TB_HISTORICO_SUPORTE_TB_SUPORTE1_idx` (`co_suporte`),
  KEY `fk_TB_HISTORICO_SUPORTE_TB_USUARIO1_idx` (`co_usuario`),
  KEY `fk_TB_HISTORICO_SUPORTE_TB_IMAGEM1_idx` (`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;


INSERT INTO TB_HISTORICO_SUPORTE VALUES('1','2020-03-25 16:53:32','e so pra ver essa novidade mesmo','S','1','6','3');

INSERT INTO TB_HISTORICO_SUPORTE VALUES('2','2020-03-25 16:54:14','dsgsafg dfg hthhjhjjthjarthtdfh ghdfh  dfg fdahadfr greg','S','2','6','4');

INSERT INTO TB_HISTORICO_SUPORTE VALUES('3','2020-03-25 16:56:28','ta ok blz entendido','S','2','1','5');

INSERT INTO TB_HISTORICO_SUPORTE VALUES('4','2020-04-02 22:49:52','fe wqweg rg agrgrg reg','S','2','1','0');

INSERT INTO TB_HISTORICO_SUPORTE VALUES('5','2020-04-02 22:53:27','nh th trh trh','N','2','6','0');

INSERT INTO TB_HISTORICO_SUPORTE VALUES('6','2020-04-02 23:04:19','sdhfhfh5h54 h56h 5h','S','2','6','9');

INSERT INTO TB_HISTORICO_SUPORTE VALUES('7','2020-04-04 11:01:57','Ese esta sem imagens','N','2','1','0');

INSERT INTO TB_HISTORICO_SUPORTE VALUES('8','2020-04-04 11:02:24','Guarda roupas fechado','S','2','1','10');

INSERT INTO TB_HISTORICO_SUPORTE VALUES('9','2021-03-31 11:24:23','Legal','N','3','6','12');

INSERT INTO TB_HISTORICO_SUPORTE VALUES('10','2021-04-05 17:23:23','<h2>R&aacute;pido, f&aacute;cil e seguro de usar. Acabe com a dor de cabe&ccedil;a na hora de fazer a gest&atilde;o do seu negocio!</h2>\n\n\n\n<p>&nbsp;</p>\n\n\n\n<p>Voc&ecirc; pode controlar sua agenda do computador, tablet ou celular. Fa&ccedil;a a gest&atilde;o<span style=\"background-color:#e74c3c\"> completa dos seus agendamentos de qualquer lugar, com Relat&oacute;rios que s&atilde;o simples, claros e co</span>mpletos. R&aacute;pido e f&aacute;cil de usar.</p>','S','4','6','13');

INSERT INTO TB_HISTORICO_SUPORTE VALUES('11','2021-04-05 17:54:36','<p>f df sdf dsfdsa</p>','N','5','6','14');

INSERT INTO TB_HISTORICO_SUPORTE VALUES('12','2021-04-05 17:57:27','<p>fd saf gsda gdsg</p>','S','6','6','15');

INSERT INTO TB_HISTORICO_SUPORTE VALUES('13','2021-04-05 18:17:51','<p>fewafe wafgewgewgewg</p>','S','7','6','16');

INSERT INTO TB_HISTORICO_SUPORTE VALUES('14','2021-04-05 18:23:10','<p>gres htr htrh hgf</p>','S','8','6','17');

INSERT INTO TB_HISTORICO_SUPORTE VALUES('15','2021-04-05 18:24:51','<p>hgf hgfdhfh gfhfg dhfd g</p>','S','9','6','18');




DROP TABLE IF EXISTS TB_IMAGEM;


CREATE TABLE `TB_IMAGEM` (
  `co_imagem` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ds_caminho` varchar(150) NOT NULL,
  PRIMARY KEY (`co_imagem`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;


INSERT INTO TB_IMAGEM VALUES('1','leonardo-m-c-bessa-56e8920c23ab66.jpg');

INSERT INTO TB_IMAGEM VALUES('2','fp-barbearia-nova-barba-5-5e868bd43b6dd.jpg');

INSERT INTO TB_IMAGEM VALUES('3','suporte-1-5e7bb6bc5b319.png');

INSERT INTO TB_IMAGEM VALUES('4','suporte-2-5e7bb6e690064.png');

INSERT INTO TB_IMAGEM VALUES('5','suporte-2-5e7bb76c50418.png');

INSERT INTO TB_IMAGEM VALUES('6','henrique-carvalho-assuncao-5e7bb96caabc1.png');

INSERT INTO TB_IMAGEM VALUES('7','joao-victor-pereira-fernandes-5e868e182c29d.jpg');

INSERT INTO TB_IMAGEM VALUES('8','suporte-2-5e86971784b83.jpg');

INSERT INTO TB_IMAGEM VALUES('9','suporte-2-5e8699a3de762.jpg');

INSERT INTO TB_IMAGEM VALUES('10','suporte-2-5e88937015c50.jpg');

INSERT INTO TB_IMAGEM VALUES('11','lucrece-neri-portela-5e8ca7a40609e.jpg');

INSERT INTO TB_IMAGEM VALUES('12','suporte-3-60648617ea0f3.jpg');

INSERT INTO TB_IMAGEM VALUES('13','suporte-4-606b71bbdd523.jpg');

INSERT INTO TB_IMAGEM VALUES('14','suporte-5-606b790c5bea9.png');

INSERT INTO TB_IMAGEM VALUES('15','suporte-6-606b79b7d5bf2.png');

INSERT INTO TB_IMAGEM VALUES('16','suporte-7-606b7e7f57eba.jpg');

INSERT INTO TB_IMAGEM VALUES('17','suporte-8-606b7fbecd09f.png');

INSERT INTO TB_IMAGEM VALUES('18','suporte-9-606b802385f39.png');




DROP TABLE IF EXISTS TB_IMAGEM_ASSINANTE;


CREATE TABLE `TB_IMAGEM_ASSINANTE` (
  `co_imagem_assinante` int(10) NOT NULL AUTO_INCREMENT,
  `co_assinante` int(11) NOT NULL,
  `co_imagem` int(10) unsigned NOT NULL,
  PRIMARY KEY (`co_imagem_assinante`,`co_assinante`,`co_imagem`),
  KEY `fk_TB_ASSINANTE_has_TB_IMAGEM_TB_IMAGEM1_idx` (`co_imagem`),
  KEY `fk_TB_ASSINANTE_has_TB_IMAGEM_TB_ASSINANTE1_idx` (`co_assinante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_PACOTE;


CREATE TABLE `TB_PACOTE` (
  `co_pacote` int(11) NOT NULL AUTO_INCREMENT,
  `no_pacote` varchar(50) DEFAULT NULL,
  `ds_descricao` text DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_lancamento` date DEFAULT NULL,
  PRIMARY KEY (`co_pacote`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


INSERT INTO TB_PACOTE VALUES('1','Assinante','Gestão do assinante no sistema da beleza','2018-07-30 14:00:00','2018-11-02');

INSERT INTO TB_PACOTE VALUES('2','Agendamento','Onde consta todas as funcionalidades padrões e básicas do sistema','2018-07-30 14:00:00','2018-11-02');




DROP TABLE IF EXISTS TB_PERFIL;


CREATE TABLE `TB_PERFIL` (
  `co_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `no_perfil` varchar(45) NOT NULL COMMENT 'Nome do Perfil',
  `st_status` varchar(1) NOT NULL DEFAULT 'A' COMMENT '''A - Ativo / I - Inativo''',
  PRIMARY KEY (`co_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;


INSERT INTO TB_PERFIL VALUES('1','Master','A');

INSERT INTO TB_PERFIL VALUES('2','Gestor','A');

INSERT INTO TB_PERFIL VALUES('3','Colaborador','A');

INSERT INTO TB_PERFIL VALUES('4','Gerente','A');




DROP TABLE IF EXISTS TB_PERFIL_ASSINANTE;


CREATE TABLE `TB_PERFIL_ASSINANTE` (
  `co_perfil_assinante` int(11) NOT NULL AUTO_INCREMENT,
  `no_perfil` varchar(45) DEFAULT NULL,
  `st_status` varchar(1) DEFAULT NULL,
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_perfil_assinante`,`co_assinante`),
  KEY `fk_TB_PERFIL_ASSINANTE_TB_ASSINANTE1_idx` (`co_assinante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_PERFIL_FUNCIONALIDADE;


CREATE TABLE `TB_PERFIL_FUNCIONALIDADE` (
  `co_perfil_funcionalidade` int(11) NOT NULL AUTO_INCREMENT,
  `co_funcionalidade` int(11) NOT NULL,
  `co_perfil` int(11) NOT NULL,
  `co_perfil_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_perfil_funcionalidade`,`co_funcionalidade`,`co_perfil`,`co_perfil_assinante`),
  KEY `fk_tb_perfil_tb_funcionalidade_tb_funcionalidade1_idx` (`co_funcionalidade`),
  KEY `fk_tb_perfil_tb_funcionalidade_tb_perfil1_idx` (`co_perfil`),
  KEY `fk_TB_PERFIL_FUNCIONALIDADE_TB_PERFIL_ASSINANTE1_idx` (`co_perfil_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;


INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('1','1','1','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('2','27','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('3','26','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('4','25','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('5','12','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('6','11','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('7','6','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('8','5','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('10','27','3','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('11','26','3','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('12','11','3','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('13','6','3','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('22','27','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('23','26','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('24','12','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('25','11','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('26','6','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('27','5','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('29','4','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('30','4','3','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('31','4','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('33','31','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('34','31','3','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('35','31','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('36','32','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('37','32','3','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('38','32','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('39','33','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('40','33','3','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('41','33','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('42','34','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('43','34','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('44','35','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('45','35','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('46','30','2','0');




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
  PRIMARY KEY (`co_pessoa`,`co_endereco`,`co_contato`,`co_imagem`),
  KEY `fk_TB_PESSOA_TB_ENDERECO1_idx` (`co_endereco`),
  KEY `fk_TB_PESSOA_TB_CONTATO1_idx` (`co_contato`),
  KEY `fk_TB_PESSOA_TB_IMAGEM1_idx` (`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8;


INSERT INTO TB_PESSOA VALUES('1','','Usuário SisBela','','2016-10-31 00:00:00','','M','1','1','1');

INSERT INTO TB_PESSOA VALUES('2','01304694160','LETíCIA MACHADO CARVALHO BESSA','','2020-03-25 12:09:13','','','0','2','0');

INSERT INTO TB_PESSOA VALUES('3','','LUCRECE NERI PORTELA','','2020-03-25 12:17:19','','','9','3','0');

INSERT INTO TB_PESSOA VALUES('4','','sdaf dsf agsdg','','2020-03-25 12:53:31','','','0','4','0');

INSERT INTO TB_PESSOA VALUES('5','','EFWEGRG NOVIDADES','','2020-03-25 12:57:07','','','12','5','0');

INSERT INTO TB_PESSOA VALUES('6','12345678909','LEO BESSA','','2020-03-25 13:03:39','','','5','6','0');

INSERT INTO TB_PESSOA VALUES('7','','O Cara','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('8','','Juju','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('9','','Profiça 10','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('10','','Lele','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('11','05418337157','HENRIQUE CARVALHO ASSUNçãO','3481937','2020-03-25 17:05:01','1998-03-05','M','6','7','0');

INSERT INTO TB_PESSOA VALUES('12','07970134157','JOãO VICTOR PEREIRA FERNANDES','3947853','2020-03-25 17:33:09','1981-03-05','M','7','8','0');

INSERT INTO TB_PESSOA VALUES('13','','O Cara 33','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('14','','Juju 333','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('15','','O Cara 33','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('16','','Juju 333','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('17','','O Cara 33','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('18','','Juju 333','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('19','','O Cara 33','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('20','','Juju 333','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('21','','O Cara 33','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('22','','Juju 333','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('23','','O Cara 33','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('24','','Juju 333','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('25','','O Cara 33','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('26','','Juju 333','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('27','','O Cara 33','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('28','','Juju 333','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('29','','O Cara 33','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('30','','Juju 333','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('35','','O Cara 33','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('36','','Juju 333','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('37','','O Cara 33','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('38','','Juju 333','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('39','','HENRIQUE CARVALHO ASSUNçãO','','2020-04-11 18:20:43','','','0','9','0');

INSERT INTO TB_PESSOA VALUES('40','','Marcelo Moita','','2020-04-15 10:44:55','','','0','10','0');

INSERT INTO TB_PESSOA VALUES('41','','JOãO VICTOR PEREIRA FERNANDES','','2020-04-15 10:50:44','','','0','11','0');

INSERT INTO TB_PESSOA VALUES('42','','HENRIQUE CARVALHO ASSUNçãO','','2020-04-15 10:52:48','','','0','12','0');

INSERT INTO TB_PESSOA VALUES('43','','Marcelo Moita','','2020-04-15 10:54:18','','','0','13','0');

INSERT INTO TB_PESSOA VALUES('44','','HENRIQUE CARVALHO ASSUNçãO','','2020-04-15 10:55:48','','','0','14','0');

INSERT INTO TB_PESSOA VALUES('45','','JOãO VICTOR PEREIRA FERNANDES','','2020-04-15 10:57:20','','','0','15','0');

INSERT INTO TB_PESSOA VALUES('46','','Marcelo Moita','','2020-04-15 11:00:01','','','0','16','0');

INSERT INTO TB_PESSOA VALUES('47','','Nota 10','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('48','','Profissa 10','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('49','','Teste 1010','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('50','','Meu novo Profissa','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('51','','Karlena','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('52','','Nota 10','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('53','','Teste 1010','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('54','','novidades','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('55','49978109080','NOVO COLABORADOR','','2021-04-19 14:16:33','','','11','17','0');

INSERT INTO TB_PESSOA VALUES('74','','Leo Bessa','','2021-06-14 17:36:09','','','0','36','0');

INSERT INTO TB_PESSOA VALUES('75','','Leo Bessa','','2021-06-14 17:36:43','','','0','37','0');

INSERT INTO TB_PESSOA VALUES('107','','Leo Bessa','','2021-06-14 18:11:47','','','0','69','0');

INSERT INTO TB_PESSOA VALUES('108','','Leo Bessa','','2021-06-16 09:55:36','','','0','70','0');

INSERT INTO TB_PESSOA VALUES('117','','Leo Bessa top','','2021-06-16 10:52:05','','','0','79','0');

INSERT INTO TB_PESSOA VALUES('118','','Barbecue','','2021-06-16 10:55:43','','','0','80','0');

INSERT INTO TB_PESSOA VALUES('119','','Barbecue','','2021-06-16 11:02:06','','','0','81','0');

INSERT INTO TB_PESSOA VALUES('122','','Leo BEssa','','2021-06-16 11:10:36','','','0','84','0');

INSERT INTO TB_PESSOA VALUES('123','','Sou eu mesmo','','2021-06-16 11:44:15','','','0','85','0');

INSERT INTO TB_PESSOA VALUES('144','','Leo Bessa','','2021-06-16 16:15:09','','','0','106','0');

INSERT INTO TB_PESSOA VALUES('145','','Sou eu mesmo 1010','','2021-06-16 16:26:36','','','0','107','0');

INSERT INTO TB_PESSOA VALUES('154','','Leo BEssa','','2021-06-16 17:07:20','','','0','116','0');

INSERT INTO TB_PESSOA VALUES('155','','Leo BEssa','','2021-06-16 17:08:25','','','0','117','0');

INSERT INTO TB_PESSOA VALUES('162','','Marcio Braga','','2021-06-16 17:37:24','','','0','124','0');

INSERT INTO TB_PESSOA VALUES('166','','Marcio Braga','','2021-06-16 17:48:32','','','0','128','0');

INSERT INTO TB_PESSOA VALUES('167','','Leo Bessa','','2021-06-16 17:48:58','','','0','129','0');

INSERT INTO TB_PESSOA VALUES('171','','Osmar Novo','','2021-06-16 18:01:06','','','0','133','0');

INSERT INTO TB_PESSOA VALUES('172','','Osmar No','','2021-06-16 18:01:50','','','0','134','0');

INSERT INTO TB_PESSOA VALUES('173','','OSR NO','','2021-06-16 18:02:37','','','13','135','0');

INSERT INTO TB_PESSOA VALUES('174','','Leo Bessa','','2021-06-23 23:15:21','','','0','136','0');




DROP TABLE IF EXISTS TB_PLANO;


CREATE TABLE `TB_PLANO` (
  `co_plano` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `no_plano` varchar(100) DEFAULT NULL,
  `nu_mes_ativo` int(1) DEFAULT NULL COMMENT 'Número de meses ativo do plano (1, 3, 6, 12 e 24)',
  `st_status` varchar(1) DEFAULT 'A' COMMENT 'Status do plano A - Ativo / I - Inativo',
  PRIMARY KEY (`co_plano`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


INSERT INTO TB_PLANO VALUES('1','2018-07-31 10:17:46','Padrão','1','A');

INSERT INTO TB_PLANO VALUES('2','2020-01-29 18:49:51','Mensal','1','A');

INSERT INTO TB_PLANO VALUES('3','2020-01-29 18:59:12','Trimestral','3','I');

INSERT INTO TB_PLANO VALUES('4','2020-01-29 19:00:40','Semestral','6','A');

INSERT INTO TB_PLANO VALUES('5','2020-01-29 19:01:53','Anual','12','A');

INSERT INTO TB_PLANO VALUES('6','2020-01-29 19:03:13','Bienal','24','I');

INSERT INTO TB_PLANO VALUES('7','2020-03-18 10:39:16','Trienal','36','I');




DROP TABLE IF EXISTS TB_PLANO_ASSINANTE;


CREATE TABLE `TB_PLANO_ASSINANTE` (
  `co_plano_assinante` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tabela de Histórico de dados do Plano',
  `nu_valor` decimal(8,2) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_observacao` text DEFAULT NULL,
  `co_plano` int(11) NOT NULL,
  PRIMARY KEY (`co_plano_assinante`,`co_plano`),
  KEY `fk_TB_PLANO_ASSINANTE_TB_PLANO1_idx` (`co_plano`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;


INSERT INTO TB_PLANO_ASSINANTE VALUES('1','0.00','2018-07-31 10:17:46','Plano Padrão','1');

INSERT INTO TB_PLANO_ASSINANTE VALUES('2','29.90','2020-03-18 10:33:16','Por 1 meses','2');

INSERT INTO TB_PLANO_ASSINANTE VALUES('3','79.90','2020-03-18 10:33:46','Por 3 meses','3');

INSERT INTO TB_PLANO_ASSINANTE VALUES('4','139.90','2020-03-18 10:34:07','Por 6 Meses','4');

INSERT INTO TB_PLANO_ASSINANTE VALUES('5','249.90','2020-03-18 10:35:36','Por 12 Meses','5');

INSERT INTO TB_PLANO_ASSINANTE VALUES('6','449.90','2020-03-18 10:35:18','Por 24 Meses','6');

INSERT INTO TB_PLANO_ASSINANTE VALUES('7','599.90','2020-03-18 10:39:16','Por 36 Meses','7');

INSERT INTO TB_PLANO_ASSINANTE VALUES('8','599.90','2021-06-14 16:13:21','Por 36 Meses','7');

INSERT INTO TB_PLANO_ASSINANTE VALUES('9','449.90','2021-06-14 16:16:19','Por 24 Meses','6');

INSERT INTO TB_PLANO_ASSINANTE VALUES('10','79.90','2021-06-14 16:16:31','Por 3 meses','3');

INSERT INTO TB_PLANO_ASSINANTE VALUES('11','187.00','2021-06-14 16:16:47','Por 12 Meses','5');

INSERT INTO TB_PLANO_ASSINANTE VALUES('12','97.00','2021-06-14 16:16:58','Por 6 Meses','4');

INSERT INTO TB_PLANO_ASSINANTE VALUES('13','17.00','2021-06-14 16:17:09','Por 1 meses','2');

INSERT INTO TB_PLANO_ASSINANTE VALUES('14','27.97','2021-06-17 11:32:53','Por 1 meses','2');

INSERT INTO TB_PLANO_ASSINANTE VALUES('15','97.97','2021-06-17 11:34:05','Por 6 Meses','4');

INSERT INTO TB_PLANO_ASSINANTE VALUES('16','187.97','2021-06-17 11:34:17','Por 12 Meses','5');

INSERT INTO TB_PLANO_ASSINANTE VALUES('17','127.97','2021-06-17 11:41:13','Por 6 Meses','4');




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
  `co_assinante` int(11) NOT NULL,
  `co_plano_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_plano_assinante_assinatura`,`co_assinante`,`co_plano_assinante`),
  KEY `fk_TB_PLANO_ASSINANTE_ASSINATURA_TB_ASSINANTE1_idx` (`co_assinante`),
  KEY `fk_TB_PLANO_ASSINANTE_ASSINATURA_TB_PLANO_ASSINANTE1_idx` (`co_plano_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;


INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('1','2021-06-16 11:02:06','2022-06-16','','5','0','','','','null','0','0','I','null','187.00','1','11');

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('4','2021-06-16 11:10:36','2021-07-16','2021-06-16 11:18:36','5','3','2021-06-16 11:18:36','1.08','15.92','https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=f0d34bcb3cf53d59bbbcb14c7ef8f597e1beca06ded171ddf840922a83527ffd505609ca987b3222','0','0','A','034862E9-6BA3-47A2-B068-871BC00B80E7','17.00','4','13');

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('5','','','','','0','','','','null','0','0','I','null','','0','0');

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('6','2021-06-16 11:44:15','2021-12-16','2021-06-16 11:46:25','5','3','2021-06-16 11:46:25','4.27','92.73','https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=ab216616f2eb656b0cef63409320c9fc881fa56bba3c761f03268a5f55f7f8f1a4954e1f817c50ac','0','0','A','A06E67F6-DA5A-4C87-9F46-E91E0759CAD3','97.00','5','12');

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('7','','','','','0','','','','null','0','0','I','null','','0','0');

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('27','2021-06-16 16:15:09','2021-12-16','','3','2','2021-06-16 16:17:09','5.89','91.11','','0','0','I','5DBB6C7C-8B54-448C-87DC-28365EA0658C','97.00','26','12');

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('28','2021-06-16 16:26:36','2021-12-16','2021-06-16 16:27:15','3','3','2021-06-16 16:27:15','6.33','90.67','','0','0','A','D5212774-A746-4A9E-9FF4-49F0D63A45BA','97.00','27','12');

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('29','','','','','0','','','','null','0','0','I','null','','0','0');

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('41','2021-06-16 17:07:20','2021-07-16','','3','1','2021-06-16 17:07:22','1.69','15.31','','0','0','I','04F91C92-4D81-4735-95B7-CB266866AD4D','17.00','36','13');

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('42','2021-06-16 17:08:25','2021-12-16','','5','1','2021-06-16 17:08:28','4.27','92.73','https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=a0b47b6ae10bf2d095ca7d60fd913c449d82989b5bcd3e59db23dc8e7ce2516800b5092217149787','0','0','I','ED952A6F-EF5B-444F-9895-10E75D116B88','97.00','37','12');

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('49','2021-06-16 17:37:24','2021-07-16','','5','1','2021-06-16 17:37:29','1.08','15.92','https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=1050a7dcedab7081a6e71b0b1a94dd0c099fba33249523d6991de47a692095ba98943a6e8d2edfa2','0','0','I','A7E13DA7-B1E1-457D-B8AF-A866AF3C4FFA','17.00','44','13');

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('53','2021-06-16 17:48:32','2021-12-16','','3','1','2021-06-16 17:48:33','5.42','91.58','','0','0','I','3F3DEAEA-4B65-4B20-8CA0-1246E6D931B0','97.00','48','12');

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('54','2021-06-16 17:48:58','2021-07-16','','5','1','2021-06-16 17:49:01','1.08','15.92','https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=00d84e2213097433c27dda53ebb82d72c40ad12241c5e810c7883b8da5b2d0b3f92f906a16af5afe','0','0','I','740F3095-684E-448C-BAD8-F683D42A6D97','17.00','49','13');

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('58','2021-06-16 18:01:06','2021-07-16','','5','1','2021-06-16 18:01:11','1.08','15.92','https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=83b79dfbf3c4cdc53159aca2e41360d447168b44dda6838755f7829d9669c44246ff40e867f8abbc','0','0','I','A4E2E0A2-20D2-458C-8C66-CE5090D3AF79','17.00','53','13');

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('59','2021-06-16 18:01:50','2021-07-16','','5','1','2021-06-16 18:01:54','1.08','15.92','https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=a673078ca4f370f81505c5c489ca1d8016527b1acf8530bab017484da0756d447aaec6ce3c3bd8c7','0','0','I','FC45952C-882F-4D26-82A8-2AC1AE8B5622','17.00','54','13');

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('60','2021-06-16 18:02:37','2021-07-16','','5','1','2021-06-16 18:02:41','1.08','15.92','https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=902be1eb43139b2ea3ba616c42452a5fe80803eda0896cb074696448d782efa6a4cfe67979358c10','0','0','I','9C859AEB-66BC-4812-A12F-D4E2C8033C18','17.00','55','13');

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('61','2021-06-23 23:15:22','2022-06-23','','5','1','2021-06-23 23:15:24','7.90','180.07','https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=c95a6b9ed7763ed9846d6d667362126d74f7f9dbb4ce6354264e198a4bfbf70cf2d9a470350a3632','0','0','I','EB482D7F-5BFF-455C-8339-E88EBE7AECF6','187.97','56','16');




DROP TABLE IF EXISTS TB_PLANO_PACOTE;


CREATE TABLE `TB_PLANO_PACOTE` (
  `co_plano_pacote` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Planos do Módulo',
  `co_plano` int(11) NOT NULL,
  `co_pacote` int(11) NOT NULL,
  PRIMARY KEY (`co_plano_pacote`,`co_plano`,`co_pacote`),
  KEY `fk_TB_PLANO_has_TB_MODULO_TB_MODULO1_idx` (`co_pacote`),
  KEY `fk_TB_PLANO_has_TB_MODULO_TB_PLANO1_idx` (`co_plano`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;


INSERT INTO TB_PLANO_PACOTE VALUES('1','1','1');

INSERT INTO TB_PLANO_PACOTE VALUES('2','1','2');

INSERT INTO TB_PLANO_PACOTE VALUES('15','7','2');

INSERT INTO TB_PLANO_PACOTE VALUES('16','7','1');

INSERT INTO TB_PLANO_PACOTE VALUES('17','6','2');

INSERT INTO TB_PLANO_PACOTE VALUES('18','6','1');

INSERT INTO TB_PLANO_PACOTE VALUES('19','3','2');

INSERT INTO TB_PLANO_PACOTE VALUES('20','3','1');

INSERT INTO TB_PLANO_PACOTE VALUES('27','2','2');

INSERT INTO TB_PLANO_PACOTE VALUES('28','2','1');

INSERT INTO TB_PLANO_PACOTE VALUES('31','5','2');

INSERT INTO TB_PLANO_PACOTE VALUES('32','5','1');

INSERT INTO TB_PLANO_PACOTE VALUES('33','4','2');

INSERT INTO TB_PLANO_PACOTE VALUES('34','4','1');




DROP TABLE IF EXISTS TB_PRECO_SERVICO;


CREATE TABLE `TB_PRECO_SERVICO` (
  `co_preco_servico` int(11) NOT NULL AUTO_INCREMENT,
  `nu_valor` decimal(6,2) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_observacao` varchar(120) DEFAULT NULL,
  `co_servico` int(11) NOT NULL,
  `co_usuario` int(10) NOT NULL,
  PRIMARY KEY (`co_preco_servico`,`co_servico`,`co_usuario`),
  KEY `fk_TB_PRECO_SERVICO_TB_SERVICO1_idx` (`co_servico`),
  KEY `fk_TB_PRECO_SERVICO_TB_USUARIO1_idx` (`co_usuario`)
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
  PRIMARY KEY (`co_profissional`,`co_imagem`,`co_pessoa`,`co_usuario`,`co_assinante`),
  KEY `fk_TB_PROFISSIONAL_TB_IMAGEM1_idx` (`co_imagem`),
  KEY `fk_TB_PROFISSIONAL_TB_PESSOA1_idx` (`co_pessoa`),
  KEY `fk_TB_PROFISSIONAL_TB_USUARIO1_idx` (`co_usuario`),
  KEY `fk_TB_PROFISSIONAL_TB_ASSINANTE1_idx` (`co_assinante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





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
  PRIMARY KEY (`co_servico`,`co_categoria_servico`,`co_imagem`,`co_assinante`),
  KEY `fk_TB_SERVICO_TB_IMAGEM1_idx` (`co_imagem`),
  KEY `fk_TB_SERVICO_TB_ASSINANTE1_idx` (`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;


INSERT INTO TB_SERVICO VALUES('15','2021-03-30 14:38:47','A','','Corte cabelo novo','','','0','0','5');

INSERT INTO TB_SERVICO VALUES('16','2021-03-31 11:42:24','A','','Corte da Barba','','','0','0','5');

INSERT INTO TB_SERVICO VALUES('17','2021-04-06 16:46:41','A','','Escova elastica','','','0','0','1');

INSERT INTO TB_SERVICO VALUES('18','2021-04-06 16:47:05','A','','Corte cabelo novo','','','0','0','1');




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
  PRIMARY KEY (`co_status_agenda`,`co_cliente`,`co_agenda`,`co_usuario`,`co_profissional`,`co_servico`),
  KEY `fk_TB_STATUS_AGENDAMENTO_TB_CLIENTE1_idx` (`co_cliente`),
  KEY `fk_TB_STATUS_AGENDAMENTO_TB_AGENDAMENTO1_idx` (`co_agenda`),
  KEY `fk_TB_STATUS_AGENDAMENTO_TB_USUARIO1_idx` (`co_usuario`),
  KEY `fk_TB_STATUS_AGENDA_TB_PROFISSIONAL1_idx` (`co_profissional`),
  KEY `fk_TB_STATUS_AGENDA_TB_SERVICO1_idx` (`co_servico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_SUPORTE;


CREATE TABLE `TB_SUPORTE` (
  `co_suporte` int(11) NOT NULL AUTO_INCREMENT,
  `st_status` varchar(1) DEFAULT 'A' COMMENT 'A - Ativa / I - Inativa',
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_assunto` varchar(100) DEFAULT NULL,
  `st_tipo_assunto` int(1) DEFAULT NULL COMMENT '1 - Sugestão ou Melhorias / 2 - Reclamação / 3 -  Correção no Sistema / 4 - Outros',
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_suporte`,`co_assinante`),
  KEY `fk_TB_SUPORTE_TB_ASSINANTE1_idx` (`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;


INSERT INTO TB_SUPORTE VALUES('1','I','2020-03-25 16:53:32','Novidade','2','5');

INSERT INTO TB_SUPORTE VALUES('2','I','2020-03-25 16:54:14','Novidade','2','5');

INSERT INTO TB_SUPORTE VALUES('3','I','2021-03-31 11:24:23','Ta ficando masssa','1','5');

INSERT INTO TB_SUPORTE VALUES('4','I','2021-04-05 17:23:23','Ta ficando masssa','2','5');

INSERT INTO TB_SUPORTE VALUES('5','I','2021-04-05 17:54:36','Ta ficando masssa','2','5');

INSERT INTO TB_SUPORTE VALUES('6','I','2021-04-05 17:57:27','Ta ficando masssa','1','5');

INSERT INTO TB_SUPORTE VALUES('7','I','2021-04-05 18:17:50','Ta ficando masssa','2','5');

INSERT INTO TB_SUPORTE VALUES('8','I','2021-04-05 18:23:10','gregre g','2','5');

INSERT INTO TB_SUPORTE VALUES('9','I','2021-04-05 18:24:51','gregre g','3','5');




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
  PRIMARY KEY (`co_usuario`,`co_imagem`,`co_pessoa`,`co_assinante`),
  KEY `fk_TB_USUARIO_TB_IMAGEM1_idx` (`co_imagem`),
  KEY `fk_TB_USUARIO_TB_PESSOA1_idx` (`co_pessoa`),
  KEY `fk_TB_USUARIO_TB_ASSINANTE1_idx` (`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;


INSERT INTO TB_USUARIO VALUES('1','123456**','TVRJek5EVTJLaW89','A','S','2016-10-31 00:00:00','1','1','0');

INSERT INTO TB_USUARIO VALUES('2','123456**','TVRJek5EVTJLaW89','A','N','2020-03-25 12:09:13','0','2','1');

INSERT INTO TB_USUARIO VALUES('3','123456**','TVRJek5EVTJLaW89','A','N','2020-03-25 12:17:19','11','3','2');

INSERT INTO TB_USUARIO VALUES('4','QYK2NEW6','VVZsTE1rNUZWelk9','I','N','2020-03-25 12:53:31','0','4','3');

INSERT INTO TB_USUARIO VALUES('5','ALO7ZKC0','UVV4UE4xcExRekE9','A','N','2020-03-25 12:57:07','0','5','4');

INSERT INTO TB_USUARIO VALUES('6','12345678**','TVRJek5EVTJOemdxS2c9PQ==','A','S','2020-03-25 13:03:39','0','6','5');

INSERT INTO TB_USUARIO VALUES('7','12345678**','TVRJek5EVTJOemdxS2c9PQ==','A','N','2020-03-25 17:05:01','6','11','5');

INSERT INTO TB_USUARIO VALUES('8','12345678**','TVRJek5EVTJOemdxS2c9PQ==','A','N','2020-03-25 17:33:09','7','12','5');

INSERT INTO TB_USUARIO VALUES('9','12345678**','TVRJek5EVTJOemdxS2c9PQ==','I','N','2020-04-11 18:20:44','0','39','6');

INSERT INTO TB_USUARIO VALUES('10','KHU7VVQ0','UzBoVk4xWldVVEE9','I','N','2020-04-15 10:44:55','0','40','7');

INSERT INTO TB_USUARIO VALUES('11','WMD1OVY0','VjAxRU1VOVdXVEE9','I','N','2020-04-15 10:50:44','0','41','8');

INSERT INTO TB_USUARIO VALUES('12','IRB5YWB8','U1ZKQ05WbFhRamc9','I','N','2020-04-15 10:52:48','0','42','9');

INSERT INTO TB_USUARIO VALUES('13','NYU4PBQ8','VGxsVk5GQkNVVGc9','I','N','2020-04-15 10:54:18','0','43','10');

INSERT INTO TB_USUARIO VALUES('14','WHZ5KYN6','VjBoYU5VdFpUalk9','I','N','2020-04-15 10:55:48','0','44','11');

INSERT INTO TB_USUARIO VALUES('15','HEX8AWT0','U0VWWU9FRlhWREE9','I','N','2020-04-15 10:57:20','0','45','12');

INSERT INTO TB_USUARIO VALUES('16','OWR3KWM1','VDFkU00wdFhUVEU9','I','N','2020-04-15 11:00:01','0','46','13');

INSERT INTO TB_USUARIO VALUES('17','123456**','TVRJek5EVTJLaW89','A','N','2021-04-19 14:16:33','0','55','1');

INSERT INTO TB_USUARIO VALUES('35','AML3WVA9','UVUxTU0xZFdRVGs9','I','N','2021-06-14 17:36:09','0','74','31');

INSERT INTO TB_USUARIO VALUES('36','OEF6DPE6','VDBWR05rUlFSVFk9','I','N','2021-06-14 17:36:43','0','75','32');

INSERT INTO TB_USUARIO VALUES('68','ALH4TCP5','UVV4SU5GUkRVRFU9','I','N','2021-06-14 18:11:47','0','107','64');

INSERT INTO TB_USUARIO VALUES('69','OHU1UBJ5','VDBoVk1WVkNTalU9','I','N','2021-06-16 09:55:37','0','108','65');

INSERT INTO TB_USUARIO VALUES('78','GQE8WKR4','UjFGRk9GZExValE9','I','N','2021-06-16 10:52:05','0','117','74');

INSERT INTO TB_USUARIO VALUES('79','PDS5ZUD6','VUVSVE5WcFZSRFk9','I','N','2021-06-16 10:55:43','0','118','75');

INSERT INTO TB_USUARIO VALUES('80','CIT1MSE5','UTBsVU1VMVRSVFU9','I','N','2021-06-16 11:02:06','0','119','1');

INSERT INTO TB_USUARIO VALUES('83','JQO5KZL1','U2xGUE5VdGFUREU9','I','N','2021-06-16 11:10:36','0','122','4');

INSERT INTO TB_USUARIO VALUES('84','MAK7GEW6','VFVGTE4wZEZWelk9','I','N','2021-06-16 11:44:15','0','123','5');

INSERT INTO TB_USUARIO VALUES('105','MRF2EQM3','VFZKR01rVlJUVE09','I','N','2021-06-16 16:15:09','0','144','26');

INSERT INTO TB_USUARIO VALUES('106','QNC3VJI4','VVU1RE0xWktTVFE9','I','N','2021-06-16 16:26:36','0','145','27');

INSERT INTO TB_USUARIO VALUES('115','EZG2SXR4','UlZwSE1sTllValE9','I','N','2021-06-16 17:07:20','0','154','36');

INSERT INTO TB_USUARIO VALUES('116','QQT8MWC8','VVZGVU9FMVhRemc9','I','N','2021-06-16 17:08:25','0','155','37');

INSERT INTO TB_USUARIO VALUES('123','RFJ0TKC7','VWtaS01GUkxRemM9','I','N','2021-06-16 17:37:24','0','162','44');

INSERT INTO TB_USUARIO VALUES('127','NHC7JBW7','VGtoRE4wcENWemM9','I','N','2021-06-16 17:48:32','0','166','48');

INSERT INTO TB_USUARIO VALUES('128','QJD2UYN1','VVVwRU1sVlpUakU9','I','N','2021-06-16 17:48:58','0','167','49');

INSERT INTO TB_USUARIO VALUES('132','YZQ7PWD3','V1ZwUk4xQlhSRE09','I','N','2021-06-16 18:01:06','0','171','53');

INSERT INTO TB_USUARIO VALUES('133','GFV6XEC0','UjBaV05saEZRekE9','I','N','2021-06-16 18:01:50','0','172','54');

INSERT INTO TB_USUARIO VALUES('134','LYJ9BIX7','VEZsS09VSkpXRGM9','A','N','2021-06-16 18:02:37','0','173','55');

INSERT INTO TB_USUARIO VALUES('135','LZE7SZT7','VEZwRk4xTmFWRGM9','I','N','2021-06-23 23:15:22','0','174','56');




DROP TABLE IF EXISTS TB_USUARIO_PERFIL;


CREATE TABLE `TB_USUARIO_PERFIL` (
  `co_usuario_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `co_usuario` int(10) NOT NULL,
  `co_perfil` int(11) NOT NULL,
  `co_perfil_assinante` int(10) NOT NULL,
  PRIMARY KEY (`co_usuario_perfil`,`co_usuario`,`co_perfil`,`co_perfil_assinante`),
  KEY `fk_tb_usuario_tb_perfil_tb_perfil1_idx` (`co_perfil`),
  KEY `fk_tb_usuario_tb_perfil_tb_usuario_idx` (`co_usuario`),
  KEY `fk_TB_USUARIO_PERFIL_TB_PERFIL_ASSINANTE1_idx` (`co_perfil_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;


INSERT INTO TB_USUARIO_PERFIL VALUES('1','1','1','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('2','2','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('3','3','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('4','4','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('6','6','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('7','7','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('10','8','4','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('11','8','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('12','0','4','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('13','0','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('14','0','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('15','0','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('16','9','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('17','10','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('18','11','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('19','12','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('20','13','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('21','14','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('22','15','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('23','16','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('25','0','4','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('26','0','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('27','0','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('28','0','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('29','0','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('30','0','4','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('31','0','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('32','0','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('33','5','4','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('34','5','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('35','17','4','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('36','17','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('37','35','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('38','36','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('39','68','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('40','69','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('41','78','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('42','79','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('43','80','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('44','83','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('45','84','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('46','105','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('47','106','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('48','115','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('49','116','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('50','123','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('51','127','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('52','128','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('53','132','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('54','133','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('56','134','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('57','134','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('58','135','2','0');




