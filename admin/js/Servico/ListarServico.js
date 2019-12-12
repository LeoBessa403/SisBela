$(function () {
    function manterStatusServico(acao, coServico, element) {
        var dados = Funcoes.Ajax('Servico/' + acao, coServico);

        if (acao == 'DesativarServico') {
            element.removeClass('btn-green').addClass('btn-bricky').attr('data-acao', 'AtivarServico');
            element.children('i').removeClass('glyphicon-ok-sign').addClass('glyphicon-remove-circle');
        } else {
            element.removeClass('btn-bricky').addClass('btn-green').attr('data-acao', 'DesativarServico');
            element.children('i').removeClass('glyphicon-remove-circle').addClass('glyphicon-ok-sign');
        }
        Funcoes.Sucesso('Status do Serviço alterado com Sucesso.');
    }

    $(".servico").click(function () {
        var id = $(this).attr("id").replace('st_status', '');
        var acao = $(this).attr("data-acao");
        manterStatusServico(acao, id, $(this));
    });
});