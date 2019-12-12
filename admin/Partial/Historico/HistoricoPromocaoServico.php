<?php
/** @var PrecoPromocaoEntidade $PrecoPromocao */
$PrecoPromocao = $historico;
/** @var PromocaoEntidade $promocao */
$promocao = $historico;
/** @var UsuarioService $usuarioService */
$usuarioService = new UsuarioService();
/** @var UsuarioEntidade $usuario */
$usuario = $usuarioService->PesquisaUmRegistro($historico->getCoUsuario()->getCoUsuario());

$atendi = '';
$dias = explode(', ', $PrecoPromocao->getNuDiaSemana());
foreach ($dias as $dia) {
    $atendi .= DiasEnum::getDescricaoValor($dia) . ', ';
}
?>
<div class="content">
    Serviço: <b><?= Valida::Resumi(
            $PrecoPromocao->getCoServico()->getNoServico(), 30
        ); ?></b></br>
    Valor R$: <b><?= $PrecoPromocao->getNuValor(); ?></b></br>
    Status: <b><?= Valida::SituacaoAtivoInativo($PrecoPromocao->getStStatus()); ?></b></br>
    Período: <b><?=
        Valida::DataShow($PrecoPromocao->getDtInicio())
        . ' a ' . Valida::DataShow($PrecoPromocao->getDtFim())
        ?></b></br>
    horário: <b><?=
        $PrecoPromocao->getNuHoraAbertura() . ' a ' . $PrecoPromocao->getNuHoraFechamento()
        ?></b></br>
    Dias de atendimento: <b><?= $atendi; ?></b></br>
    Cadastrado em: <b><?=
        Valida::DataShow(
            $PrecoPromocao->getDtCadastro(), 'd/m/Y H:i'
        )
        ?></b></br>
    Cadastrado por: <b><?= Valida::Resumi($usuario->getCoPessoa()->getNoPessoa(), 30); ?></b></br>
</div>