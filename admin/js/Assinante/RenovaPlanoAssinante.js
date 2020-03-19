$(function () {

    var home = $("#home").attr('data-val');

    $('#pagarAgora').click(function () {
        var dados = Funcoes.Ajax('Assinante/getSessaoPagamentoAssinante', null);
        //ID da sessão retornada pelo PagSeguro
        PagSeguroDirectPayment.setSessionId(dados.id);
    });

});