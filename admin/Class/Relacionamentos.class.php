<?php

/**
 * Relacionamentos.class [ RELACIONAMENTOS DO BANCO ]
 * @copyright (c) 2018, Leo Bessa
 */

class Relacionamentos
{

    public static function getRelacionamentos()
    {
        return array(
            (AssinanteEntidade::TABELA) => Array(
                (CO_PLANO_ASSINANTE_ASSINATURA) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'PlanoAssinanteAssinaturaEntidade',
                    ('Tipo') => '2',
                ),
                (CO_EMPRESA) => Array(
                    ('Campo') => CO_EMPRESA,
                    ('Entidade') => 'EmpresaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PESSOA) => Array(
                    ('Campo') => CO_PESSOA,
                    ('Entidade') => 'PessoaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_ASSINANTE_MATRIZ) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteMatrizEntidade',
                    ('Tipo') => '2',
                ),
                (CO_ASSINANTE_FILIAL) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteFilialEntidade',
                    ('Tipo') => '2',
                ),
                (CO_IMAGEM_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'ImagemAssinanteEntidade',
                    ('Tipo') => '2',
                ),
                (CO_FACILIDADE_BENEFICIO) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'FacilidadeBeneficioEntidade',
                    ('Tipo') => '1',
                ),
                (CO_FUNCIONAMENTO) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'FuncionamentoEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (AcessoEntidade::TABELA) => Array(
                (CO_USUARIO) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'UsuarioEntidade',
                    ('Tipo') => '1',
                ),
                (CO_TRAFEGO) => Array(
                    ('Campo') => CO_TRAFEGO,
                    ('Entidade') => 'TrafegoEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (UsuarioEntidade::TABELA) => Array(
                (CO_ACESSO) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'AcessoEntidade',
                    ('Tipo') => '2',
                ),
                (CO_AUDITORIA) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'AuditoriaEntidade',
                    ('Tipo') => '2',
                ),
                (CO_IMAGEM) => Array(
                    ('Campo') => CO_IMAGEM,
                    ('Entidade') => 'ImagemEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PESSOA) => Array(
                    ('Campo') => CO_PESSOA,
                    ('Entidade') => 'PessoaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_USUARIO_PERFIL) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'UsuarioPerfilEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (FuncionalidadeEntidade::TABELA) => Array(
                (CO_PERFIL_FUNCIONALIDADE) => Array(
                    ('Campo') => CO_FUNCIONALIDADE,
                    ('Entidade') => 'PerfilFuncionalidadeEntidade',
                    ('Tipo') => '2',
                ),
                (CO_CONTROLLER) => Array(
                    ('Campo') => CO_CONTROLLER,
                    ('Entidade') => 'ControllerEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (AuditoriaEntidade::TABELA) => Array(
                (CO_USUARIO) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'UsuarioEntidade',
                    ('Tipo') => '1',
                ),
                (CO_AUDITORIA_TABELA) => Array(
                    ('Campo') => CO_AUDITORIA,
                    ('Entidade') => 'AuditoriaTabelaEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (AuditoriaItensEntidade::TABELA) => Array(
                (CO_AUDITORIA_TABELA) => Array(
                    ('Campo') => CO_AUDITORIA_TABELA,
                    ('Entidade') => 'AuditoriaTabelaEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (AuditoriaTabelaEntidade::TABELA) => Array(
                (CO_AUDITORIA_ITENS) => Array(
                    ('Campo') => CO_AUDITORIA_TABELA,
                    ('Entidade') => 'AuditoriaItensEntidade',
                    ('Tipo') => '2',
                ),
                (CO_AUDITORIA) => Array(
                    ('Campo') => CO_AUDITORIA,
                    ('Entidade') => 'AuditoriaEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (PessoaEntidade::TABELA) => Array(
                (CO_ENDERECO) => Array(
                    ('Campo') => CO_ENDERECO,
                    ('Entidade') => 'EnderecoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_CONTATO) => Array(
                    ('Campo') => CO_CONTATO,
                    ('Entidade') => 'ContatoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_IMAGEM) => Array(
                    ('Campo') => CO_IMAGEM,
                    ('Entidade') => 'ImagemEntidade',
                    ('Tipo') => '1',
                ),
                (CO_USUARIO) => Array(
                    ('Campo') => CO_PESSOA,
                    ('Entidade') => 'UsuarioEntidade',
                    ('Tipo') => '1',
                ),
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_PESSOA,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PROFISSIONAL) => Array(
                    ('Campo') => CO_PESSOA,
                    ('Entidade') => 'ProfissionalEntidade',
                    ('Tipo') => '1',
                ),
                (CO_CLIENTE) => Array(
                    ('Campo') => CO_PESSOA,
                    ('Entidade') => 'ClienteEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (ContatoEntidade::TABELA) => Array(
                (CO_PESSOA) => Array(
                    ('Campo') => CO_CONTATO,
                    ('Entidade') => 'PessoaEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (EnderecoEntidade::TABELA) => Array(
                (CO_PESSOA) => Array(
                    ('Campo') => CO_ENDERECO,
                    ('Entidade') => 'PessoaEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (ImagemEntidade::TABELA) => Array(),
            (PerfilFuncionalidadeEntidade::TABELA) => Array(
                (CO_PERFIL) => Array(
                    ('Campo') => CO_PERFIL,
                    ('Entidade') => 'PerfilEntidade',
                    ('Tipo') => '1',
                ),
                (CO_FUNCIONALIDADE) => Array(
                    ('Campo') => CO_FUNCIONALIDADE,
                    ('Entidade') => 'FuncionalidadeEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PERFIL_ASSINANTE) => Array(
                    ('Campo') => CO_PERFIL_ASSINANTE,
                    ('Entidade') => 'PerfilAssinanteEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (PerfilEntidade::TABELA) => Array(
                (CO_PERFIL_FUNCIONALIDADE) => Array(
                    ('Campo') => CO_PERFIL,
                    ('Entidade') => 'PerfilFuncionalidadeEntidade',
                    ('Tipo') => '2',
                ),
                (CO_USUARIO_PERFIL) => Array(
                    ('Campo') => CO_PERFIL,
                    ('Entidade') => 'UsuarioPerfilEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (PerfilAssinanteEntidade::TABELA) => Array(
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
                (CO_USUARIO_PERFIL) => Array(
                    ('Campo') => CO_PERFIL_ASSINANTE,
                    ('Entidade') => 'UsuarioPerfilEntidade',
                    ('Tipo') => '2',
                ),
                (CO_PERFIL_FUNCIONALIDADE) => Array(
                    ('Campo') => CO_PERFIL_ASSINANTE,
                    ('Entidade') => 'PerfilFuncionalidadeEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (UsuarioPerfilEntidade::TABELA) => Array(
                (CO_USUARIO) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'UsuarioEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PERFIL) => Array(
                    ('Campo') => CO_PERFIL,
                    ('Entidade') => 'PerfilEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PERFIL_ASSINANTE) => Array(
                    ('Campo') => CO_PERFIL_ASSINANTE,
                    ('Entidade') => 'PerfilAssinanteEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (VisitaEntidade::TABELA) => Array(
                (CO_TRAFEGO) => Array(
                    ('Campo') => CO_TRAFEGO,
                    ('Entidade') => 'TrafegoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PAGINA_VISITA) => Array(
                    ('Campo') => CO_VISITA,
                    ('Entidade') => 'PaginaVisitaEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (PaginaEntidade::TABELA) => Array(
                (CO_PAGINA_VISITA) => Array(
                    ('Campo') => CO_PAGINA,
                    ('Entidade') => 'PaginaVisitaEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (PaginaVisitaEntidade::TABELA) => Array(
                (CO_PAGINA) => Array(
                    ('Campo') => CO_PAGINA,
                    ('Entidade') => 'PaginaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_VISITA) => Array(
                    ('Campo') => CO_VISITA,
                    ('Entidade') => 'VisitaEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (AnotacaoEntidade::TABELA) => Array(
                (CO_HISTORIA) => Array(
                    ('Campo') => CO_HISTORIA,
                    ('Entidade') => 'HistoriaEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (HistoricoHistoriaEntidade::TABELA) => Array(
                (CO_HISTORIA) => Array(
                    ('Campo') => CO_HISTORIA,
                    ('Entidade') => 'HistoriaEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (HistoriaEntidade::TABELA) => Array(
                (CO_ANOTACAO) => Array(
                    ('Campo') => CO_HISTORIA,
                    ('Entidade') => 'AnotacaoEntidade',
                    ('Tipo') => '2',
                ),
                (CO_SESSAO) => Array(
                    ('Campo') => CO_SESSAO,
                    ('Entidade') => 'SessaoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_HISTORICO_HISTORIA) => Array(
                    ('Campo') => CO_HISTORIA,
                    ('Entidade') => 'HistoricoHistoriaEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (SessaoEntidade::TABELA) => Array(
                (CO_HISTORIA) => Array(
                    ('Campo') => CO_SESSAO,
                    ('Entidade') => 'HistoriaEntidade',
                    ('Tipo') => '2',
                ),
                (CO_MODULO) => Array(
                    ('Campo') => CO_MODULO,
                    ('Entidade') => 'ModuloEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (ModuloEntidade::TABELA) => Array(
                (CO_PROJETO) => Array(
                    ('Campo') => CO_PROJETO,
                    ('Entidade') => 'ProjetoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_SESSAO) => Array(
                    ('Campo') => CO_MODULO,
                    ('Entidade') => 'SessaoEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (ProjetoEntidade::TABELA) => Array(
                (CO_MODULO) => Array(
                    ('Campo') => CO_PROJETO,
                    ('Entidade') => 'ModuloEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (TrafegoEntidade::TABELA) => Array(),
            (FeriadoEntidade::TABELA) => Array(),
            (PlanoPacoteEntidade::TABELA) => Array(
                (CO_PLANO) => Array(
                    ('Campo') => CO_PLANO,
                    ('Entidade') => 'PlanoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PACOTE) => Array(
                    ('Campo') => CO_PACOTE,
                    ('Entidade') => 'PacoteEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (PlanoEntidade::TABELA) => Array(
                (CO_PLANO_PACOTE) => Array(
                    ('Campo') => CO_PLANO,
                    ('Entidade') => 'PlanoPacoteEntidade',
                    ('Tipo') => '2',
                ),
                (CO_PLANO_ASSINANTE) => Array(
                    ('Campo') => CO_PLANO,
                    ('Entidade') => 'PlanoAssinanteEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (ControllerEntidade::TABELA) => Array(
                (CO_FUNCIONALIDADE) => Array(
                    ('Campo') => CO_CONTROLLER,
                    ('Entidade') => 'FuncionalidadeEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (PacoteEntidade::TABELA) => Array(
                (CO_PLANO_PACOTE) => Array(
                    ('Campo') => CO_PACOTE,
                    ('Entidade') => 'PlanoPacoteEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (PlanoAssinanteEntidade::TABELA) => Array(
                (CO_PLANO) => Array(
                    ('Campo') => CO_PLANO,
                    ('Entidade') => 'PlanoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PLANO_ASSINANTE_ASSINATURA) => Array(
                    ('Campo') => CO_PLANO_ASSINANTE,
                    ('Entidade') => 'PlanoAssinanteAssinaturaEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (PlanoAssinanteAssinaturaEntidade::TABELA) => Array(
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PLANO_ASSINANTE) => Array(
                    ('Campo') => CO_PLANO_ASSINANTE,
                    ('Entidade') => 'PlanoAssinanteEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (ConfigClienteEntidade::TABELA) => Array(
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (EmpresaEntidade::TABELA) => Array(
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_EMPRESA,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (AssinanteMatrizEntidade::TABELA) => Array(
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
                (CO_ASSINANTE_FILIAL) => Array(
                    ('Campo') => CO_ASSINANTE_MATRIZ,
                    ('Entidade') => 'AssinanteFilialEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (AssinanteFilialEntidade::TABELA) => Array(
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
                (CO_ASSINANTE_MATRIZ) => Array(
                    ('Campo') => CO_ASSINANTE_MATRIZ,
                    ('Entidade') => 'AssinanteMatrizEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (FacilidadePagamentoEntidade::TABELA) => Array(
                (CO_TIPO_PAGAMENTO) => Array(
                    ('Campo') => CO_TIPO_PAGAMENTO,
                    ('Entidade') => 'TipoPagamentoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_FACILIDADE_BENEFICIO) => Array(
                    ('Campo') => CO_FACILIDADE_BENEFICIO,
                    ('Entidade') => 'FacilidadeBeneficioEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PAGAMENTO_BANDEIRA_CARTAO) => Array(
                    ('Campo') => CO_FACILIDADE_PAGAMENTO,
                    ('Entidade') => 'PagamentoBandeiraCartaoEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (TipoPagamentoEntidade::TABELA) => Array(
                (CO_FACILIDADE_PAGAMENTO) => Array(
                    ('Campo') => CO_TIPO_PAGAMENTO,
                    ('Entidade') => 'FacilidadePagamentoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PARCELAMENTO) => Array(
                    ('Campo') => CO_TIPO_PAGAMENTO,
                    ('Entidade') => 'ParcelamentoEntidade',
                    ('Tipo') => '2',
                ),
                (CO_SALDO) => Array(
                    ('Campo') => CO_TIPO_PAGAMENTO,
                    ('Entidade') => 'SaldoEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (FacilidadeBeneficioEntidade::TABELA) => Array(
                (CO_FACILIDADE_PAGAMENTO) => Array(
                    ('Campo') => CO_FACILIDADE_BENEFICIO,
                    ('Entidade') => 'FacilidadePagamentoEntidade',
                    ('Tipo') => '2',
                ),
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (FuncionamentoEntidade::TABELA) => Array(
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (ImagemAssinanteEntidade::TABELA) => Array(
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
                (CO_IMAGEM) => Array(
                    ('Campo') => CO_IMAGEM,
                    ('Entidade') => 'ImagemEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (DiaEspecialEntidade::TABELA) => Array(
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (TaxaCartaoEntidade::TABELA) => Array(
                (CO_PAGAMENTO_BANDEIRA_CARTAO) => Array(
                    ('Campo') => CO_PAGAMENTO_BANDEIRA_CARTAO,
                    ('Entidade') => 'PagamentoBandeiraCartaoEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (PagamentoBandeiraCartaoEntidade::TABELA) => Array(
                (CO_TAXA_CARTAO) => Array(
                    ('Campo') => CO_PAGAMENTO_BANDEIRA_CARTAO,
                    ('Entidade') => 'TaxaCartaoEntidade',
                    ('Tipo') => '2',
                ),
                (CO_FACILIDADE_PAGAMENTO) => Array(
                    ('Campo') => CO_FACILIDADE_PAGAMENTO,
                    ('Entidade') => 'FacilidadePagamentoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_BANDEIRA_CARTAO) => Array(
                    ('Campo') => CO_BANDEIRA_CARTAO,
                    ('Entidade') => 'BandeiraCartaoEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (BandeiraCartaoEntidade::TABELA) => Array(
                (CO_PAGAMENTO_BANDEIRA_CARTAO) => Array(
                    ('Campo') => CO_BANDEIRA_CARTAO,
                    ('Entidade') => 'PagamentoBandeiraCartaoEntidade',
                    ('Tipo') => '2',
                ),
                (CO_SALDO) => Array(
                    ('Campo') => CO_BANDEIRA_CARTAO,
                    ('Entidade') => 'SaldoEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (ConfigAgendamentoEntidade::TABELA) => Array(
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (MotivoDescontoAssinanteEntidade::TABELA) => Array(
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
                (CO_MOTIVO_DESCONTO) => Array(
                    ('Campo') => CO_MOTIVO_DESCONTO,
                    ('Entidade') => 'MotivoDescontoEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (MotivoDescontoEntidade::TABELA) => Array(
                (CO_MOTIVO_DESCONTO_ASSINANTE) => Array(
                    ('Campo') => CO_MOTIVO_DESCONTO,
                    ('Entidade') => 'MotivoDescontoAssinanteEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (ProfissionalCargoEntidade::TABELA) => Array(
                (CO_CARGO) => Array(
                    ('Campo') => CO_CARGO,
                    ('Entidade') => 'CargoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PROFISSIONAL) => Array(
                    ('Campo') => CO_PROFISSIONAL,
                    ('Entidade') => 'ProfissionalEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (CargoEntidade::TABELA) => Array(
                (CO_PROFISSIONAL_CARGO) => Array(
                    ('Campo') => CO_CARGO,
                    ('Entidade') => 'ProfissionalCargoEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (ProfissionalEntidade::TABELA) => Array(
                (CO_PROFISSIONAL_CARGO) => Array(
                    ('Campo') => CO_PROFISSIONAL,
                    ('Entidade') => 'ProfissionalCargoEntidade',
                    ('Tipo') => '2',
                ),
                (CO_IMAGEM) => Array(
                    ('Campo') => CO_IMAGEM,
                    ('Entidade') => 'ImagemEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PESSOA) => Array(
                    ('Campo') => CO_PESSOA,
                    ('Entidade') => 'PessoaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_USUARIO) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'UsuarioEntidade',
                    ('Tipo') => '1',
                ),
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
                (CO_CONTA_BANCARIA) => Array(
                    ('Campo') => CO_CONTA_BANCARIA,
                    ('Entidade') => 'ContaBancariaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_JORNADA_TRABALHO) => Array(
                    ('Campo') => CO_PROFISSIONAL,
                    ('Entidade') => 'JornadaTrabalhoEntidade',
                    ('Tipo') => '2',
                ),
                (CO_AUSENCIA) => Array(
                    ('Campo') => CO_PROFISSIONAL,
                    ('Entidade') => 'AusenciaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PERCENTUAL_COMISSAO) => Array(
                    ('Campo') => CO_PROFISSIONAL,
                    ('Entidade') => 'PercentualComissaoEntidade',
                    ('Tipo') => '2',
                ),
                (CO_SERVICO_PROFISSIONAL) => Array(
                    ('Campo') => CO_PROFISSIONAL,
                    ('Entidade') => 'ServicoProfissionalEntidade',
                    ('Tipo') => '2',
                ),
                (CO_STATUS_AGENDA_PROFISSIONAL) => Array(
                    ('Campo') => CO_PROFISSIONAL,
                    ('Entidade') => 'StatusAgendaProfissionalEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (ContaBancariaEntidade::TABELA) => Array(
                (CO_PROFISSIONAL) => Array(
                    ('Campo') => CO_CONTA_BANCARIA,
                    ('Entidade') => 'ProfissionalEntidade',
                    ('Tipo') => '1',
                ),
                (CO_BANCO) => Array(
                    ('Campo') => CO_BANCO,
                    ('Entidade') => 'BancoEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (JornadaTrabalhoEntidade::TABELA) => Array(
                (CO_PROFISSIONAL) => Array(
                    ('Campo') => CO_PROFISSIONAL,
                    ('Entidade') => 'ProfissionalEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (BancoEntidade::TABELA) => Array(),
            (AusenciaEntidade::TABELA) => Array(
                (CO_PROFISSIONAL) => Array(
                    ('Campo') => CO_PROFISSIONAL,
                    ('Entidade') => 'ProfissionalEntidade',
                    ('Tipo') => '1',
                ),
                (CO_USUARIO) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'UsuarioEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (ClienteEntidade::TABELA) => Array(
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PESSOA) => Array(
                    ('Campo') => CO_PESSOA,
                    ('Entidade') => 'PessoaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_CORTESIA) => Array(
                    ('Campo') => CO_CLIENTE,
                    ('Entidade') => 'CortesiaEntidade',
                    ('Tipo') => '2',
                ),
                (CO_STATUS_AGENDA) => Array(
                    ('Campo') => CO_CLIENTE,
                    ('Entidade') => 'StatusAgendaEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (ConfigProfissionalEntidade::TABELA) => Array(
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (CategoriaServicoEntidade::TABELA) => Array(
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
                (CO_SERVICO) => Array(
                    ('Campo') => CO_CATEGORIA_SERVICO,
                    ('Entidade') => 'ServicoEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (PrecoServicoEntidade::TABELA) => Array(
                (CO_SERVICO) => Array(
                    ('Campo') => CO_SERVICO,
                    ('Entidade') => 'ServicoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_USUARIO) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'UsuarioEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (ServicoEntidade::TABELA) => Array(
                (CO_PRECO_SERVICO) => Array(
                    ('Campo') => CO_SERVICO,
                    ('Entidade') => 'PrecoServicoEntidade',
                    ('Tipo') => '2',
                ),
                (CO_CATEGORIA_SERVICO) => Array(
                    ('Campo') => CO_CATEGORIA_SERVICO,
                    ('Entidade') => 'CategoriaServicoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_IMAGEM) => Array(
                    ('Campo') => CO_IMAGEM,
                    ('Entidade') => 'ImagemEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PERCENTUAL_COMISSAO) => Array(
                    ('Campo') => CO_SERVICO,
                    ('Entidade') => 'PercentualComissaoEntidade',
                    ('Tipo') => '2',
                ),
                (CO_SERVICO_PROFISSIONAL) => Array(
                    ('Campo') => CO_SERVICO,
                    ('Entidade') => 'ServicoProfissionalEntidade',
                    ('Tipo') => '2',
                ),
                (CO_SERVICO_PACOTE) => Array(
                    ('Campo') => CO_SERVICO,
                    ('Entidade') => 'ServicoPacoteEntidade',
                    ('Tipo') => '2',
                ),
                (CO_PRECO_PROMOCAO) => Array(
                    ('Campo') => CO_SERVICO,
                    ('Entidade') => 'PrecoPromocaoEntidade',
                    ('Tipo') => '2',
                ),
                (CO_CORTESIA) => Array(
                    ('Campo') => CO_SERVICO,
                    ('Entidade') => 'CortesiaEntidade',
                    ('Tipo') => '2',
                ),
                (CO_STATUS_AGENDA_SERVICO) => Array(
                    ('Campo') => CO_SERVICO,
                    ('Entidade') => 'StatusAgendaServicoEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (ConfigComissaoEntidade::TABELA) => Array(
                (CO_HISTORICO_COMISSAO) => Array(
                    ('Campo') => CO_CONFIG_COMISSAO,
                    ('Entidade') => 'HistoricoComissaoEntidade',
                    ('Tipo') => '2',
                ),
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (HistoricoComissaoEntidade::TABELA) => Array(
                (CO_CONFIG_COMISSAO) => Array(
                    ('Campo') => CO_CONFIG_COMISSAO,
                    ('Entidade') => 'ConfigComissaoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PERCENTUAL_COMISSAO) => Array(
                    ('Campo') => CO_HISTORICO_COMISSAO,
                    ('Entidade') => 'PercentualComissaoEntidade',
                    ('Tipo') => '2',
                ),
                (CO_USUARIO) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'UsuarioEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (PercentualComissaoEntidade::TABELA) => Array(
                (CO_HISTORICO_COMISSAO) => Array(
                    ('Campo') => CO_HISTORICO_COMISSAO,
                    ('Entidade') => 'HistoricoComissaoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_SERVICO) => Array(
                    ('Campo') => CO_SERVICO,
                    ('Entidade') => 'ServicoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PROFISSIONAL) => Array(
                    ('Campo') => CO_PROFISSIONAL,
                    ('Entidade') => 'ProfissionalEntidade',
                    ('Tipo') => '1',
                ),
                (CO_SERVICO_PROFISSIONAL) => Array(
                    ('Campo') => CO_SERVICO_PROFISSIONAL,
                    ('Entidade') => 'ServicoProfissionalEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (ServicoProfissionalEntidade::TABELA) => Array(
                (CO_PROFISSIONAL) => Array(
                    ('Campo') => CO_PROFISSIONAL,
                    ('Entidade') => 'ProfissionalEntidade',
                    ('Tipo') => '1',
                ),
                (CO_SERVICO) => Array(
                    ('Campo') => CO_SERVICO,
                    ('Entidade') => 'ServicoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PERCENTUAL_COMISSAO) => Array(
                    ('Campo') => CO_SERVICO_PROFISSIONAL,
                    ('Entidade') => 'PercentualComissaoEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (PacoteServEntidade::TABELA) => Array(
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PRECO_PACOTE) => Array(
                    ('Campo') => CO_PACOTE_SERV,
                    ('Entidade') => 'PrecoPacoteEntidade',
                    ('Tipo') => '2',
                ),
                (CO_SERVICO_PACOTE) => Array(
                    ('Campo') => CO_PACOTE_SERV,
                    ('Entidade') => 'ServicoPacoteEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (PrecoPacoteEntidade::TABELA) => Array(
                (CO_USUARIO) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'UsuarioEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PACOTE_SERV) => Array(
                    ('Campo') => CO_PACOTE_SERV,
                    ('Entidade') => 'PacoteServEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (ServicoPacoteEntidade::TABELA) => Array(
                (CO_SERVICO) => Array(
                    ('Campo') => CO_SERVICO,
                    ('Entidade') => 'ServicoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PACOTE_SERV) => Array(
                    ('Campo') => CO_PACOTE_SERV,
                    ('Entidade') => 'PacoteServEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (PromocaoEntidade::TABELA) => Array(
                (CO_PRECO_PROMOCAO) => Array(
                    ('Campo') => CO_PROMOCAO,
                    ('Entidade') => 'PrecoPromocaoEntidade',
                    ('Tipo') => '2',
                ),
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (PrecoPromocaoEntidade::TABELA) => Array(
                (CO_SERVICO) => Array(
                    ('Campo') => CO_SERVICO,
                    ('Entidade') => 'ServicoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PROMOCAO) => Array(
                    ('Campo') => CO_PROMOCAO,
                    ('Entidade') => 'PromocaoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_USUARIO) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'UsuarioEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (CortesiaEntidade::TABELA) => Array(
                (CO_CLIENTE) => Array(
                    ('Campo') => CO_CLIENTE,
                    ('Entidade') => 'ClienteEntidade',
                    ('Tipo') => '1',
                ),
                (CO_USUARIO) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'UsuarioEntidade',
                    ('Tipo') => '1',
                ),
                (CO_SERVICO) => Array(
                    ('Campo') => CO_SERVICO,
                    ('Entidade') => 'ServicoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
                (CO_SALDO) => Array(
                    ('Campo') => CO_CORTESIA,
                    ('Entidade') => 'SaldoEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (ValePresenteEntidade::TABELA) => Array(
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
                (CO_USUARIO) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'UsuarioEntidade',
                    ('Tipo') => '1',
                ),
                (CO_SALDO) => Array(
                    ('Campo') => CO_VALE_PRESENTE,
                    ('Entidade') => 'SaldoEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (AgendaEntidade::TABELA) => Array(
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
                (CO_STATUS_AGENDA) => Array(
                    ('Campo') => CO_AGENDA,
                    ('Entidade') => 'StatusAgendaEntidade',
                    ('Tipo') => '2',
                ),
                (CO_COMISSAO) => Array(
                    ('Campo') => CO_AGENDA,
                    ('Entidade') => 'ComissaoEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (StatusAgendaEntidade::TABELA) => Array(
                (CO_CLIENTE) => Array(
                    ('Campo') => CO_CLIENTE,
                    ('Entidade') => 'ClienteEntidade',
                    ('Tipo') => '1',
                ),
                (CO_AGENDA) => Array(
                    ('Campo') => CO_AGENDA,
                    ('Entidade') => 'AgendaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_USUARIO) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'UsuarioEntidade',
                    ('Tipo') => '1',
                ),
                (CO_STATUS_AGENDA_PROFISSIONAL) => Array(
                    ('Campo') => CO_STATUS_AGENDA,
                    ('Entidade') => 'StatusAgendaProfissionalEntidade',
                    ('Tipo') => '2',
                ),
                (CO_STATUS_AGENDA_SERVICO) => Array(
                    ('Campo') => CO_STATUS_AGENDA,
                    ('Entidade') => 'StatusAgendaServicoEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (StatusAgendaProfissionalEntidade::TABELA) => Array(
                (CO_STATUS_AGENDA) => Array(
                    ('Campo') => CO_STATUS_AGENDA,
                    ('Entidade') => 'StatusAgendaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PROFISSIONAL) => Array(
                    ('Campo') => CO_PROFISSIONAL,
                    ('Entidade') => 'ProfissionalEntidade',
                    ('Tipo') => '1',
                ),
                (CO_STATUS_AGENDA_SERVICO) => Array(
                    ('Campo') => CO_STATUS_AGENDA_SERVICO,
                    ('Entidade') => 'StatusAgendaServicoEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (StatusAgendaServicoEntidade::TABELA) => Array(
                (CO_STATUS_AGENDA_PROFISSIONAL) => Array(
                    ('Campo') => CO_STATUS_AGENDA_SERVICO,
                    ('Entidade') => 'StatusAgendaProfissionalEntidade',
                    ('Tipo') => '2',
                ),
                (CO_SERVICO) => Array(
                    ('Campo') => CO_SERVICO,
                    ('Entidade') => 'ServicoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_STATUS_AGENDA) => Array(
                    ('Campo') => CO_STATUS_AGENDA,
                    ('Entidade') => 'StatusAgendaEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (CaixaEntidade::TABELA) => Array(
                (CO_USUARIO) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'UsuarioEntidade',
                    ('Tipo') => '1',
                ),
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
                (CO_SALDO) => Array(
                    ('Campo') => CO_CAIXA,
                    ('Entidade') => 'SaldoEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (ComissaoEntidade::TABELA) => Array(
                (CO_AGENDA) => Array(
                    ('Campo') => CO_AGENDA,
                    ('Entidade') => 'AgendaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_SALDO) => Array(
                    ('Campo') => CO_SALDO,
                    ('Entidade') => 'SaldoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PAGAMENTO) => Array(
                    ('Campo') => CO_PAGAMENTO,
                    ('Entidade') => 'PagamentoEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (SaldoEntidade::TABELA) => Array(
                (CO_COMISSAO) => Array(
                    ('Campo') => CO_SALDO,
                    ('Entidade') => 'ComissaoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_CAIXA) => Array(
                    ('Campo') => CO_CAIXA,
                    ('Entidade') => 'CaixaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_TIPO_SALDO) => Array(
                    ('Campo') => CO_TIPO_SALDO,
                    ('Entidade') => 'TipoSaldoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_TIPO_PAGAMENTO) => Array(
                    ('Campo') => CO_TIPO_PAGAMENTO,
                    ('Entidade') => 'TipoPagamentoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_CORTESIA) => Array(
                    ('Campo') => CO_CORTESIA,
                    ('Entidade') => 'CortesiaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_VALE_PRESENTE) => Array(
                    ('Campo') => CO_VALE_PRESENTE,
                    ('Entidade') => 'ValePresenteEntidade',
                    ('Tipo') => '1',
                ),
                (CO_BANDEIRA_CARTAO) => Array(
                    ('Campo') => CO_BANDEIRA_CARTAO,
                    ('Entidade') => 'BandeiraCartaoEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (PagamentoEntidade::TABELA) => Array(
                (CO_COMISSAO) => Array(
                    ('Campo') => CO_PAGAMENTO,
                    ('Entidade') => 'ComissaoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PARCELAMENTO) => Array(
                    ('Campo') => CO_PAGAMENTO,
                    ('Entidade') => 'ParcelamentoEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (ParcelamentoEntidade::TABELA) => Array(
                (CO_PAGAMENTO) => Array(
                    ('Campo') => CO_PAGAMENTO,
                    ('Entidade') => 'PagamentoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_TIPO_PAGAMENTO) => Array(
                    ('Campo') => CO_TIPO_PAGAMENTO,
                    ('Entidade') => 'TipoPagamentoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_USUARIO) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'UsuarioEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (TipoSaldoEntidade::TABELA) => Array(
                (CO_SALDO) => Array(
                    ('Campo') => CO_TIPO_SALDO,
                    ('Entidade') => 'SaldoEntidade',
                    ('Tipo') => '2',
                ),
            ),
        );
    }
}

