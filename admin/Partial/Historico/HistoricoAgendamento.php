<style>
    tr:hover {
        color: black;
    }
</style>
<?php
/** @var StatusAgendaEntidade $historico */
$historico = $historico;
/** @var UsuarioService $usuarioService */
$usuarioService = new UsuarioService();
/** @var ServicoService $servicoService */
$servicoService = new ServicoService();
/** @var ProfissionalService $profissionalService */
$profissionalService = new ProfissionalService();
/** @var ClienteService $clienteService */
$clienteService = new ClienteService();
/** @var UsuarioEntidade $usuario */
$usuario = $usuarioService->PesquisaUmRegistro($historico->getCoUsuario()->getCoUsuario());
/** @var ClienteEntidade $cliente */
$cliente = $clienteService->PesquisaUmRegistro($historico->getCoCliente()->getCoCliente());
?>
<div class="content">
    Cliente: <b>
        <?= Valida::Resumi($cliente->getCoPessoa()->getNoPessoa(), 30); ?></b></br>
    Status Agendamento: <b><?= '<span style="border: 0.5px solid rgba(255,255,255,0.5) !important;" 
    class="circle-img label-' . StatusAgendamentoEnum::$cores[$historico->getStStatus()] . '">';
        echo "&nbsp;&nbsp;&nbsp;&nbsp;</span> " . StatusAgendamentoEnum::$descricao[$historico->getStStatus()]; ?></b></br>
    Data: <b><?= Valida::DataShow($historico->getDtInicioAgenda(), 'd/m/Y'); ?></b></br>
    Período: <b>de <?= Valida::DataShow($historico->getDtInicioAgenda(), 'h:i'); ?> a
        <?= Valida::DataShow($historico->getDtFimAgenda(), 'h:i'); ?></b></br>
    Valor: <b><?= Valida::FormataMoeda($historico->getNuValor(), 'R$'); ?></b></br>
    Duração: <b>
        <?= $historico->getNuDuracao(); ?> Minutos</b></br>
    Observação: <b>
        <?= Valida::Resumi($historico->getDsObservacao(), 50); ?></b></br>
    Cadastrado em: <b><?=
        Valida::DataShow(
            $historico->getDtCadastro(), 'd/m/Y H:i'
        )
        ?></b></br>
    Cadastrado por: <b><?= Valida::Resumi($usuario->getCoPessoa()->getNoPessoa(), 30); ?></b></br>
    <table class="table-striped table-bordered table-hover table-full-width table-nodatable" id="nova"
           style="width: 100%" cellspacing="0" cellpadding="0">
        <thead>
        <tr style="background-color: #99ccff; color: #000;">
            <th>Serviço</th>
            <th>Profissional</th>
            <th>Assistente</th>
            <th>Atendimento</th>
        </tr>
        </thead>
        <tbody>
        <tr class="linha-tabela">
            <?php
            /** @var StatusAgendaServicoEntidade $statusServico */
            foreach ($historico->getCoStatusAgendaServico() as $statusServico) {
                /** @var ServicoEntidade $servico */
                $servico = $servicoService->PesquisaUmRegistro($statusServico->getCoServico()); ?>
                <td><?= $servico->getNoServico(); ?></td>
                <?php
                /** @var StatusAgendaServicoEntidade $statusServico2 */
                foreach ($servico->getCoStatusAgendaServico() as $statusServico2) {
                    if ($statusServico2->getCoStatusAgendaServico() == $statusServico->getCoStatusAgendaServico()) {
                        $statusProf = $statusServico2->getCoStatusAgendaProfissional();
                        /** @var StatusAgendaProfissionalEntidade $stProf */
                        foreach ($statusProf as $stProf) {
                            /** @var ProfissionalEntidade $profissional */
                            $profissional = $profissionalService->PesquisaUmRegistro($stProf->getCoProfissional());
                            if ($stProf->getTpProfissional() == 1) {
                                ?>
                                <td><?= Valida::Resumi($profissional->getCoPessoa()->getNoPessoa(), 25); ?></td>
                            <?php }
                            if ($stProf->getTpProfissional() == 2) {
                                if ($profissional) {
                                    ?>
                                    <td><?= Valida::Resumi($profissional->getCoPessoa()->getNoPessoa(), 25); ?></td>
                                <?php } else {
                                    echo '<td>Sem Assistente</td>';
                                }
                            }
                        } ?>
                        <td><?= StatusAtendimentoEnum::$descricao[$statusServico2->getStStatus()]; ?></td>
                    <?php }
                }
            } ?>
        </tr>
        </tbody>
    </table>
</div>