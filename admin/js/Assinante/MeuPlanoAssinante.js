$(function () {

    $('#pagarAgora').click(function () {
        var coPlano = $('#co_plano').val();
        var dados = Funcoes.Ajax('Assinante/getReferenciaPagamentoAssinante', coPlano);
        $('#code').val(dados);
        $('#comprar').submit();
    });

});