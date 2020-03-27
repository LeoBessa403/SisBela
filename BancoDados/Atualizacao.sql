UPDATE TB_PESSOA SET nu_cpf = "12345678909" where co_pessoa = 6;

UPDATE TB_CONTATO SET nu_tel1 = "6155565565" where co_contato = 6;

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_profissionais, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao, co_plano_assinante_assinatura_ativo) VALUES ("6", "5", "49", "0", "239.90", "4", "2020-03-27 19:44:23", "2022-04-09", "6"_assinatura_ativo);

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("8", "2020-03-27 19:44:23", "Inicia o pagamento", "LEO BESSA Iniciou o pagamento", "0");

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_pagamento = "1", dt_modificado = "2020-03-27T19:44:26.000-03:00", nu_valor_desconto = "9.97", nu_valor_real = "229.93", ds_link_boleto = "https://sandbox.pagseguro.uol.com.br/checkout/payment/eft/print.jhtml?c=af67f2b0e357cfc862c36dd336d24b136ff153d2f084c2671d65f056ee5c9a190f48b18f41a05961", ds_code_transacao = "65150A2A-1D95-4220-8EBA-9D1EC6233B3D", co_plano_assinante = "6" where co_plano_assinante_assinatura = 8;

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("8", "2020-03-27T19:44:26.000-03:00", "Mudou para o Status do pagamento de Aguardando pagamento", "Retorno da operadora do pagamento", "1");

UPDATE TB_PESSOA SET nu_cpf = "12345678909" where co_pessoa = 6;

UPDATE TB_CONTATO SET nu_tel1 = "5555555555" where co_contato = 6;

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_profissionais, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao, co_plano_assinante_assinatura_ativo) VALUES ("4", "5", "13", "0", "69.90", "5", "2020-03-27 20:11:15", "2020-10-09", "4"_assinatura_ativo);

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("9", "2020-03-27 20:11:15", "Inicia o pagamento", "LEO BESSA Iniciou o pagamento", "0");

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_pagamento = "1", dt_modificado = "2020-03-27T20:11:20.000-03:00", nu_valor_desconto = "3.19", nu_valor_real = "66.71", ds_link_boleto = "https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=eae56d9b6d547ac5aac0e4ca1a28ecc4b6d3173595fee1ab347a2a9e1b9a667f7b18b61f16abbd4a", ds_code_transacao = "3F9F1DF4-44DD-437F-92D4-F1DF473A8C6C", co_plano_assinante = "4" where co_plano_assinante_assinatura = 9;

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("9", "2020-03-27T20:11:20.000-03:00", "Mudou para o Status do pagamento de Aguardando pagamento", "Retorno da operadora do pagamento", "1");

UPDATE TB_PESSOA SET nu_cpf = "12345678909" where co_pessoa = 6;

UPDATE TB_CONTATO SET nu_tel1 = "7855522225" where co_contato = 6;

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_profissionais, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao, co_plano_assinante_assinatura_ativo) VALUES ("5", "5", "25", "0", "124.90", "5", "2020-03-27 20:16:26", "2021-04-09", "5"_assinatura_ativo);

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("10", "2020-03-27 20:16:26", "Inicia o pagamento", "LEO BESSA Iniciou o pagamento", "0");

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_pagamento = "1", dt_modificado = "2020-03-27T20:16:29.000-03:00", nu_valor_desconto = "5.38", nu_valor_real = "119.52", ds_link_boleto = "https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=2c3663994b33bfcfed4b5db4fc3bebd38e82aa2cd5c32442634547b3a165d8ef3ece4f60594d7970", ds_code_transacao = "069BC6BF-743D-4282-96B9-0A25391A040C", co_plano_assinante = "5" where co_plano_assinante_assinatura = 10;

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("10", "2020-03-27T20:16:29.000-03:00", "Mudou para o Status do pagamento de Aguardando pagamento", "Retorno da operadora do pagamento", "1");

