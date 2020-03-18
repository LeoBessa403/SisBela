INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, co_cliente, co_profissional, co_servico, co_usuario, dt_cadastro, st_status, ds_observacao) VALUES ("30", "2019-11-20 08:00:00", "2019-11-20 09:50:00", "0.00", "0", "13", "14", "7", "1", "2020-03-18 00:00:01", "6", "Mudou para o Status (Faltou) automaticamente pelo Sistema");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, co_cliente, co_profissional, co_servico, co_usuario, dt_cadastro, st_status, ds_observacao) VALUES ("29", "2019-11-12 08:00:00", "2019-11-12 08:30:00", "0.00", "0", "14", "6", "7", "1", "2020-03-18 00:00:01", "6", "Mudou para o Status (Faltou) automaticamente pelo Sistema");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, co_cliente, co_profissional, co_servico, co_usuario, dt_cadastro, st_status, ds_observacao) VALUES ("28", "2019-12-18 08:00:00", "2019-12-18 09:50:00", "0.00", "0", "14", "14", "11", "1", "2020-03-18 00:00:01", "5", "Mudou para o Status (Cancelado) automaticamente pelo Sistema");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, co_cliente, co_profissional, co_servico, co_usuario, dt_cadastro, st_status, ds_observacao) VALUES ("23", "2020-01-03 08:00:00", "2020-01-03 10:00:00", "0.00", "0", "13", "3", "11", "1", "2020-03-18 00:00:01", "6", "Mudou para o Status (Faltou) automaticamente pelo Sistema");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, co_cliente, co_profissional, co_servico, co_usuario, dt_cadastro, st_status, ds_observacao) VALUES ("22", "2020-01-16 08:00:00", "2020-01-16 12:00:00", "0.00", "0", "4", "14", "5", "1", "2020-03-18 00:00:01", "6", "Mudou para o Status (Faltou) automaticamente pelo Sistema");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, co_cliente, co_profissional, co_servico, co_usuario, dt_cadastro, st_status, ds_observacao) VALUES ("21", "2019-12-30 08:00:00", "2019-12-30 10:00:00", "0.00", "0", "13", "5", "11", "1", "2020-03-18 00:00:01", "5", "Mudou para o Status (Cancelado) automaticamente pelo Sistema");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, co_cliente, co_profissional, co_servico, co_usuario, dt_cadastro, st_status, ds_observacao) VALUES ("20", "2020-02-19 08:00:00", "2020-02-19 10:00:00", "0.00", "0", "13", "5", "11", "1", "2020-03-18 00:00:01", "5", "Mudou para o Status (Cancelado) automaticamente pelo Sistema");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, co_cliente, co_profissional, co_servico, co_usuario, dt_cadastro, st_status, ds_observacao) VALUES ("19", "2020-02-07 08:00:00", "2020-02-07 10:30:00", "0.00", "0", "4", "3", "5", "1", "2020-03-18 00:00:01", "6", "Mudou para o Status (Faltou) automaticamente pelo Sistema");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, co_cliente, co_profissional, co_servico, co_usuario, dt_cadastro, st_status, ds_observacao) VALUES ("17", "2020-03-13 08:00:00", "2020-03-13 09:00:00", "", "", "6", "14", "7", "1", "2020-03-18 00:00:01", "6", "Mudou para o Status (Faltou) automaticamente pelo Sistema");

UPDATE TB_HISTORICO_SUPORTE SET st_lido = "S" where co_historico_suporte = 18;

UPDATE TB_HISTORIA SET ds_titulo = "Criar Cron de desativar agendamento", ds_observacao = "Criar Cron de desativar agendamento", co_sessao = "8", st_situacao = "C", dt_atualizado = "2020-03-18 09:57:55" where co_historia = 28;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("8", "8"_restante, "2020-03-18 09:57:55", "28");

