INSERT INTO TB_ENDERECO (ds_endereco) VALUES ("");

UPDATE TB_EMPRESA SET co_endereco = "3" where co_empresa = 1;

INSERT INTO TB_CONTATO (ds_email, nu_tel1) VALUES ("leonardo.bessa@basis.com.br", "61993274991");

INSERT INTO TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo bessa", "5", "2020-01-30 16:28:52");

INSERT INTO TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Beaulty Hair salão", "2020-01-30 16:28:52");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "5", "2", "2020-01-30 16:28:52", "2020-02-14");

INSERT INTO TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("2", "5", "KTA2CGN3", "UzFSQk1rTkhUak09", "I", "2020-01-30 16:28:52");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_profissionais, nu_filiais, dt_cadastro, dt_expiracao, nu_valor_assinatura) VALUES ("1", "2", "3", "0", "2020-01-30 16:28:52", "2020-02-14", "0.00");

INSERT INTO TB_USUARIO_PERFIL (co_perfil, co_usuario) VALUES ("2", "3");

