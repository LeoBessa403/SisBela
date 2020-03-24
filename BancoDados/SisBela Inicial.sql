-- Atualizado em: 09/12/2019 12:26:49
-- AMBIENTE: http://localhost/sistemadabeleza/
-- BANCO: sistem25_dabelez


USE sisbela;


INSERT INTO TB_CONTATO VALUES("1","61993274991","6130826060","0","","leonardomcbessa@gmail.com","","","","");


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



INSERT INTO TB_ENDERECO VALUES("1","qr 403 conjunto 10 casa 28","","Samambaia Norte","72319111","Brasília","DF");



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



INSERT INTO TB_HISTORIA VALUES("2","Manter Assinante","Manter assinante do sistema e com data de expiração do sistema para o assinante, criar contato, criar pessoa, envio de email de confirmação com senha gerada.
\n
\n
\n
\n
\n
\n
\n
\n
\n
\nCriar o usuário quando criar o assinante, plano assinado
\n
\n
\n
\n
\n
\n
\n
\n
\n
\nModelagem: Assinante (Junção de pessoa, contato, usuário, data de expiração, status)","2019-12-18 12:11:52","2020-03-23 15:38:30","C","1");

INSERT INTO TB_HISTORIA VALUES("4","Configuração inicial do projeto","Configuração inicial do projeto","2019-12-18 12:16:19","2020-03-17 18:39:45","C","1");

INSERT INTO TB_HISTORIA VALUES("5","Mudar loguin","Mudar loguin para logar com email tb, recuperar senha e notificar de mudar senha.","2019-12-18 12:16:48","2020-03-09 16:49:59","C","1");

INSERT INTO TB_HISTORIA VALUES("6","Criar mensagem de expiração e bloqueio do sistema","Criar mensagem de expiração e bloqueio do sistema","2019-12-18 12:17:13","2020-03-09 16:40:54","C","1");

INSERT INTO TB_HISTORIA VALUES("8","Pesquisa Avançada dos Assinantes","Pesquisa Avançada dos Assinantes por razão social, nome fantasia, Responsável, cidade e UF, email, valor assinatura atual.","2019-12-18 12:18:35","2020-03-09 15:40:05","C","1");

INSERT INTO TB_HISTORIA VALUES("9","Dados complementares básicos","Manter dados: (Endereço, telefone, CNPJ, fantasia, razão e outros)
\n\n\n
\n\n\n
\n\n\n
\n\n\n
\n\n\n
\n\n\nModelagem: Contato, endereço e empresa ou pessoa","2019-12-18 12:20:44","2020-03-03 14:28:17","C","2");

INSERT INTO TB_HISTORIA VALUES("10","Manter Fotos do Estabelecimento","Manter Fotos do Estabelecimento para o Site
\n\n\n
\n\n\n
\n\n\n
\n\n\n
\n\n\n
\n\n\nModelagem: Imagem (FK Assinante)","2019-12-18 12:21:59","2020-03-03 14:28:08","C","2");

INSERT INTO TB_HISTORIA VALUES("11","Gestão de notificações","Gestão de notificações com as mensagens geradas do sistema de sucesso erro e avisos","2019-12-18 12:22:23","2020-03-03 14:28:35","C","2");

INSERT INTO TB_HISTORIA VALUES("12","Cadastrar Agendamento","Cadastrar Agendamento (Opção da recorrência)
\n\n
\n\n
\n\n
\n\n
\n\n
\n\n
\n\n
\n\nVários serviços e pacotes
\n\n
\n\n
\n\n
\n\n
\n\n
\n\n
\n\n
\n\nModelagem: (FK cliente, Serviço, Profissional, Assistente","2019-12-18 12:23:46","2020-03-10 12:11:11","C","3");

INSERT INTO TB_HISTORIA VALUES("13","Edição Agendamento","Edição Agendamento
\n\n
\n\n
\n\n
\n\n
\n\n
\n\n
\n\n
\n\nValidação dos status do agendamento e status do serviço","2019-12-18 12:24:38","2020-03-10 17:25:45","C","3");

INSERT INTO TB_HISTORIA VALUES("14","Implantação Agenda","Agenda CSS (Responsivo)","2019-12-18 12:25:03","2020-03-09 18:51:22","C","3");

INSERT INTO TB_HISTORIA VALUES("15","Pesquisa Avançada dos Agendamentos","Pesquisa de agendamento  por período, status, profissional, serviço, assistente, valor r$, cliente","2019-12-18 12:25:41","2020-03-10 17:25:56","C","3");

INSERT INTO TB_HISTORIA VALUES("16","Alterar Status do agendamento","Alterar Status do agendamento","2019-12-18 12:26:18","2020-03-10 17:26:12","C","3");

INSERT INTO TB_HISTORIA VALUES("17","Listagem dos agendamento (Calendário)","Listagem dos agendamento e auto render","2019-12-18 12:26:45","2020-03-10 12:11:25","C","3");

INSERT INTO TB_HISTORIA VALUES("18","Histórico do Agendamento","Histórico do Agendamento (Modal)","2019-12-18 12:27:19","2020-03-10 17:26:22","C","3");

INSERT INTO TB_HISTORIA VALUES("19","Deletar Agendamento","Deletar Agendamento (Modal) com Justificativa
\n\n
\n\n
\n\n
\n\n
\n\n
\n\n
\n\n
\n\nVisualizar na listagem da grid","2019-12-18 12:27:55","2020-03-10 17:26:31","C","3");

INSERT INTO TB_HISTORIA VALUES("20","Listagem dos agendamento (Grid)","Listagem dos agendamento (Grid)","2019-12-18 12:28:13","2020-03-10 12:11:48","C","3");

INSERT INTO TB_HISTORIA VALUES("21","Event Dragging & Resizing","Criar eventos Dragging & Resizing","2019-12-18 12:28:41","2020-03-10 17:55:15","C","3");

INSERT INTO TB_HISTORIA VALUES("22","Visualizar Agendamento","Visualizar Agendamento","2019-12-18 12:29:06","2020-03-10 12:11:58","C","3");

INSERT INTO TB_HISTORIA VALUES("23","Validações dos botões","Validações dos botões da tela de visualizar agendamento","2019-12-18 12:29:42","2020-03-10 12:12:10","C","3");

INSERT INTO TB_HISTORIA VALUES("24","Iniciar o sistema com as configurações básicas","Iniciar o sistema com as configurações básicas para depois iniciar o painel","2019-12-18 12:31:44","2020-03-18 12:13:12","C","4");

INSERT INTO TB_HISTORIA VALUES("25","Implantar sistema Suporte","Implantar sistema Suporte
\n\n
\n\n
\n\n
\n\n
\n\n
\n\n
\n\n
\n\nModelagem: suporte (FK Assinante, Categoria Suporte)
\n\n
\n\n
\n\n
\n\n
\n\n
\n\n
\n\n
\n\nTabela base Categoria Suporte","2019-12-18 12:32:21","2020-03-12 15:29:04","C","5");

INSERT INTO TB_HISTORIA VALUES("26","Relatórios de agendamentos","Relatórios de agendamentos por status do agendamento e período, Profissional, serviço e cliente
\n\n
\n\n
\n\n
\n\n
\n\n
\n\n
\n\n
\n\n Impressão dos gráficos e dados","2019-12-18 12:34:22","2020-03-11 15:07:26","C","6");

INSERT INTO TB_HISTORIA VALUES("27","Manter Usuário","Manter Usuário","2019-12-18 12:35:02","2020-03-05 15:48:01","C","7");

INSERT INTO TB_HISTORIA VALUES("28","Criar Cron de desativar agendamento","Criar Cron de desativar agendamento","2019-12-18 12:35:39","2020-03-18 09:57:55","C","8");

INSERT INTO TB_HISTORIA VALUES("29","Página de captura de cliente","Página de captura de cliente","2019-12-18 12:37:50","2019-12-18 12:37:50","N","9");

INSERT INTO TB_HISTORIA VALUES("30","Vídeos para a Página de captura de cliente","Vídeos para a Página de captura de cliente","2019-12-18 12:38:09","2019-12-18 12:38:09","N","9");

INSERT INTO TB_HISTORIA VALUES("31","Página de captura de lead","Página de captura de lead","2019-12-18 12:38:28","2019-12-18 12:38:28","N","9");

INSERT INTO TB_HISTORIA VALUES("32","Cadastro pelo site para o assinante","verificar o cadastro pelo site para manter um plano mesmo que que por experiência","2019-12-18 12:38:52","2019-12-18 12:38:52","N","9");

INSERT INTO TB_HISTORIA VALUES("33","Material do Pré Lançamento","Produção e Disponibilização do material para lista de lead
\n\n\n\n\n
\n\n\n\n\nDuração de 7 a 10 dias antes do Lançamento de 3 a 4 vídeos","2019-12-18 12:39:57","2019-12-18 12:39:57","N","11");

INSERT INTO TB_HISTORIA VALUES("34","Direcionar para o lançamento","Após Lançamento Direcionar para o lançamento o tráfego do PL","2019-12-18 12:40:34","2019-12-18 12:40:34","N","11");

INSERT INTO TB_HISTORIA VALUES("35","Criação da Lista de Lead","Criação da Lista de Lead já trabalhadas nas redes sociais e mais..","2019-12-18 12:42:55","2019-12-18 12:42:55","N","10");

INSERT INTO TB_HISTORIA VALUES("36","Criar conteúdos e Entregas","Criar conteúdos para entrega e ir formulando a lista de lead
\n\n\n\n\n
\n\n\n\n\nInicio da divulgação para o lançamento.","2019-12-18 12:43:22","2019-12-18 12:43:22","N","10");

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



INSERT INTO TB_IMAGEM VALUES("1","leonardo-m-c-bessa-56e8920c23ab66.jpg");


INSERT INTO TB_MODULO VALUES("1","Assinante","2019-12-18 11:29:02","1");

INSERT INTO TB_MODULO VALUES("2","Principal","2019-12-18 11:29:11","1");

INSERT INTO TB_MODULO VALUES("3","Site","2019-12-18 11:29:28","1");

INSERT INTO TB_MODULO VALUES("4","Lançamento do SisBela","2019-12-18 11:29:36","1");

INSERT INTO TB_MODULO VALUES("5","Teste","2019-12-18 11:29:44","1");



INSERT INTO TB_PACOTE VALUES("1","Assinante","Gestão do assinante no sistema da beleza","2018-07-30 14:00:00","2018-11-02");

INSERT INTO TB_PACOTE VALUES("2","Principal","Onde consta todas as funcionalidades padrões e básicas do sistema","2018-07-30 14:00:00","2018-11-02");


INSERT INTO TB_PERFIL VALUES("1","Master","A");

INSERT INTO TB_PERFIL VALUES("2","Gestor","A");

INSERT INTO TB_PERFIL VALUES("3","Colaborador","A");

INSERT INTO TB_PERFIL VALUES("4","Gerente","A");





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



INSERT INTO TB_PESSOA VALUES("1","","Usuário SisBela","","2016-10-31 00:00:00","0000-00-00","M","1","1","1");



INSERT INTO TB_PLANO VALUES("1","2018-07-31 10:17:46","Padrão","1","A");

INSERT INTO TB_PLANO VALUES("2","2020-01-29 18:49:51","Mensal","1","A");

INSERT INTO TB_PLANO VALUES("3","2020-01-29 18:59:12","Trimestral","3","A");

INSERT INTO TB_PLANO VALUES("4","2020-01-29 19:00:40","Semestral","6","A");

INSERT INTO TB_PLANO VALUES("5","2020-01-29 19:01:53","Anual","12","A");

INSERT INTO TB_PLANO VALUES("6","2020-01-29 19:03:13","Bienal","24","A");

INSERT INTO TB_PLANO VALUES("7","2020-03-18 10:39:16","Trienal","36","A");




INSERT INTO TB_PLANO_ASSINANTE VALUES("1","0.00","2018-07-31 10:17:46","Plano Padrão","1");

INSERT INTO TB_PLANO_ASSINANTE VALUES("2","14.90","2020-03-18 10:33:16","Por 1 meses","2");

INSERT INTO TB_PLANO_ASSINANTE VALUES("3","39.90","2020-03-18 10:33:46","Por 3 meses","3");

INSERT INTO TB_PLANO_ASSINANTE VALUES("4","69.90","2020-03-18 10:34:07","Por 6 Meses","4");

INSERT INTO TB_PLANO_ASSINANTE VALUES("5","124.90","2020-03-18 10:35:36","Por 12 Meses","5");

INSERT INTO TB_PLANO_ASSINANTE VALUES("6","239.90","2020-03-18 10:35:18","Por 24 Meses","6");

INSERT INTO TB_PLANO_ASSINANTE VALUES("7","339.90","2020-03-18 10:39:16","Por 36 Meses","7");




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



INSERT INTO TB_PROJETO VALUES("1","SisBela","2018-07-25 11:07:40");



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



INSERT INTO TB_USUARIO VALUES("1","123456**","TVRJek5EVTJLaW89","A","S","2016-10-31 00:00:00","1","1","0");



INSERT INTO TB_USUARIO_PERFIL VALUES("1","1","1","0");






