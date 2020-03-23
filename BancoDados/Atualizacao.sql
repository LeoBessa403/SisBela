INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("35", "4");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("35", "2");

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (35);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("35", "4");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("35", "2");

UPDATE TB_PESSOA SET nu_cpf = "12345678909" where co_pessoa = 42;

UPDATE TB_CONTATO SET nu_tel1 = "1694113154" where co_contato = 54;

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_profissionais, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao) VALUES ("25", "3", "73", "0", "339.90", "3", "2020-03-22 00:51:45", "2023-03-20");

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_pagamento = "2", dt_modificado = "2020-03-22T00:51:48.000-03:00", nu_valor_desconto = "23.96", nu_valor_real = "315.94", ds_link_boleto = "", ds_code_transacao = "1418B304-276E-4CB8-AB9E-238EA9F61B48", co_plano_assinante = "25" where co_plano_assinante_assinatura = 7;

UPDATE TB_PESSOA SET nu_cpf = "12345678909" where co_pessoa = 42;

UPDATE TB_CONTATO SET nu_tel1 = "6136692622" where co_contato = 54;

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_profissionais, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao) VALUES ("20", "3", "7", "0", "39.90", "3", "2020-03-23 12:48:54", "2020-06-20");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("8", "2020-03-23 12:48:54", "Inicia o pagamento", "THAIS LIMA ROCHA Iniciou o pagamento", "0");

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_pagamento = "2", dt_modificado = "2020-03-23T12:48:59.000-03:00", nu_valor_desconto = "3.90", nu_valor_real = "36.00", ds_link_boleto = "", ds_code_transacao = "1591E041-88E2-4BD0-9A93-5927DD5C3E84", co_plano_assinante = "20" where co_plano_assinante_assinatura = 8;

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("8", "2020-03-23T12:48:59.000-03:00", "Mudou para o Status do pagamento de Em análise", "Retorno da operadora do pagamento", "0");

INSERT INTO TB_SESSAO (no_sessao, co_modulo, dt_cadastro) VALUES ("Pagamento", "1", "2020-03-23 15:24:26");

INSERT INTO TB_HISTORIA (ds_titulo, ds_observacao, co_sessao, st_situacao, dt_atualizado, dt_cadastro) VALUES ("Listar pagamentos", "Listar pagamentos Assinante / Perfil Master", "15", "C", "2020-03-23 15:25:32", "2020-03-23 15:25:32");

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("13", "13"_restante, "2020-03-23 15:25:32", "58");

INSERT INTO TB_HISTORIA (ds_titulo, ds_observacao, co_sessao, st_situacao, dt_atualizado, dt_cadastro) VALUES ("Renovar Assinatura", "Renovar Assinatura Boleo / Cartao e transferencia", "15", "C", "2020-03-23 15:26:14", "2020-03-23 15:26:14");

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("30", "30"_restante, "2020-03-23 15:26:14", "59");

INSERT INTO TB_HISTORIA (ds_titulo, ds_observacao, co_sessao, st_situacao, dt_atualizado, dt_cadastro) VALUES ("Estorno / Cancelamento do assinatura", "Estorno / Cancelamento do assinatura", "15", "I", "2020-03-23 15:26:55", "2020-03-23 15:26:55");

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("13", "13"_restante, "2020-03-23 15:26:55", "60");

INSERT INTO TB_HISTORIA (ds_titulo, ds_observacao, co_sessao, st_situacao, dt_atualizado, dt_cadastro) VALUES ("Detalhes da transação da assinatura", "Modal Detalhes da transação da assinatura", "15", "N", "2020-03-23 15:27:35", "2020-03-23 15:27:35");

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("8", "8"_restante, "2020-03-23 15:27:35", "61");

INSERT INTO TB_HISTORIA (ds_titulo, ds_observacao, co_sessao, st_situacao, dt_atualizado, dt_cadastro) VALUES ("Manter Planos do Assinante Sistema Expirado", "Manter Planos do Assinante Sistema Expirado", "15", "N", "2020-03-23 15:32:59", "2020-03-23 15:32:59");

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("13", "13"_restante, "2020-03-23 15:32:59", "62");

UPDATE TB_HISTORIA SET ds_titulo = "Manter Assinante", ds_observacao = "Manter assinante do sistema e com data de expiração do sistema para o assinante, criar contato, criar pessoa, envio de email de confirmação com senha gerada.









Criar o usuário quando criar o assinante, plano assinado









Modelagem: Assinante (Junção de pessoa, contato, usuário, data de expiração, status)", co_sessao = "1", st_situacao = "C", dt_atualizado = "2020-03-23 15:38:30" where co_historia = 2;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("30", "30"_restante, "2020-03-23 15:38:30", "2");

UPDATE TB_HISTORIA SET ds_titulo = "Estorno / Cancelamento do assinatura", ds_observacao = "Estorno / Cancelamento do assinatura", co_sessao = "15", st_situacao = "I", dt_atualizado = "2020-03-23 15:38:48" where co_historia = 60;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("20", "20"_restante, "2020-03-23 15:38:48", "60");

UPDATE TB_HISTORIA SET ds_titulo = "Renovar Assinatura", ds_observacao = "Renovar Assinatura Boleo / Cartao e transferencia", co_sessao = "15", st_situacao = "C", dt_atualizado = "2020-03-23 15:39:03" where co_historia = 59;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("40", "40"_restante, "2020-03-23 15:39:03", "59");

INSERT INTO TB_HISTORIA (ds_titulo, ds_observacao, co_sessao, st_situacao, dt_atualizado, dt_cadastro) VALUES ("Notificação do PagSeguro", "Notificação do PagSeguro atualização automática mais funcionalidade de teste", "15", "I", "2020-03-23 15:39:51", "2020-03-23 15:39:51");

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("20", "20"_restante, "2020-03-23 15:39:51", "63");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("", "", "Mudou para o Status do pagamento de ", "Retorno da operadora do pagamento", "");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (st_pagamento, dt_modificado) VALUES ("", "");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("", "", "Mudou para o Status do pagamento de ", "Retorno da operadora do pagamento", "");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (st_pagamento, dt_modificado) VALUES ("", "");

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (36);

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("", "", "Mudou para o Status do pagamento de ", "Retorno da operadora do pagamento", "");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (st_pagamento, dt_modificado) VALUES ("", "");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("8", "2020-03-23T12:48:59.000-03:00", "Mudou para o Status do pagamento de Em análise", "Retorno da operadora do pagamento", "2");

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_pagamento = "2", dt_modificado = "2020-03-23T12:48:59.000-03:00" where co_plano_assinante_assinatura = 8;

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_status = "I" where co_plano_assinante_assinatura = 2;

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_status = "I" where co_plano_assinante_assinatura = 2;

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_status = "I" where co_plano_assinante_assinatura = 2;

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("6", "2020-03-21T18:10:10.000-03:00", "Mudou para o Status do pagamento de Pago ", "Retorno da operadora do pagamento", "3");

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_pagamento = "3", dt_modificado = "2020-03-21T18:10:10.000-03:00", dt_confirma_pagamento = "2020-03-21T18:10:10.000-03:00", st_status = "A" where co_plano_assinante_assinatura = 6;

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_status = "I" where co_plano_assinante_assinatura = 2;

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("6", "2020-03-21T18:10:10.000-03:00", "Mudou para o Status do pagamento de Pago ", "Retorno da operadora do pagamento", "3");

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_pagamento = "3", dt_modificado = "2020-03-21T18:10:10.000-03:00", dt_confirma_pagamento = "2020-03-21T18:10:10.000-03:00", st_status = "A" where co_plano_assinante_assinatura = 6;

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_status = "I" where co_plano_assinante_assinatura = 2;

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("6", "2020-03-21T18:10:10.000-03:00", "Mudou para o Status do pagamento de Pago ", "Retorno da operadora do pagamento", "3");

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_pagamento = "3", dt_modificado = "2020-03-21T18:10:10.000-03:00", dt_confirma_pagamento = "2020-03-21T18:10:10.000-03:00", st_status = "A" where co_plano_assinante_assinatura = 6;

