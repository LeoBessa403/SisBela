$(function () {

    $('#co_servico').change(function () {
        CarregaValorServico($(this).val());
    });

    function CarregaValorServico(coServico) {
        var dados = Funcoes.Ajax('Servico/GetPrecoServico', coServico);
        $("#valor_servico").val(dados.nu_valor);
        limpaCamposValores();
    }

    $('#nu_valor').blur(function () {
        var preco_cadastrado = parseInt($("#valor_servico").val().replace('.', '').replace(',', '').trim());
        var preco_promocional = parseInt($("#nu_valor").val().replace('.', '').replace(',', '').replace('R$', '').trim());

        if ($("#valor_servico").val() == '') {
            limpaCamposValores();
        } else {
            if ($("#nu_valor").val() != '') {
                if (preco_cadastrado < preco_promocional) {
                    Funcoes.Alerta("Preço Promocinal de <b>" + $("#nu_valor").val() +
                        "</b> é maior que o Preço do Serviço <b>R$ " + $("#valor_servico").val().replace('.', ',') +
                        "</b> já cadastrado!");
                    limpaCamposValores();
                }
                var desconto = 100 - ((preco_promocional / preco_cadastrado) * 100);
                $('#desconto').val(desconto.toFixed(2));
            } else {
                limpaCamposValores();
            }
        }
    });

    $('#desconto').blur(function () {
        var preco_cadastrado = parseInt($("#valor_servico").val().replace('.', '').replace(',', '').trim());
        var desconto_promocional = parseInt($("#desconto").val().replace('.', '').replace(',', '').trim());

        if ($("#valor_servico").val() == '') {
            limpaCamposValores();
        } else {
            if ($("#desconto").val() != '') {
                if (desconto_promocional > 9999) {
                    Funcoes.Alerta("Desconto Promocinal de <b>" + $("#nu_valor").val() + "</b> é maior que o permitido!");
                    limpaCamposValores();
                }
                var nu_valor = preco_cadastrado - (((preco_cadastrado / 100) * desconto_promocional) / 100);
                nu_valor = parseInt(nu_valor);
                nu_valor = (nu_valor / 100);
                nu_valor = "R$ " + nu_valor.toFixed(2);
                nu_valor = nu_valor.replace('.', ',');
                $('#nu_valor').val(nu_valor);
            } else {
                limpaCamposValores();
            }
        }
    });

    function limpaCamposValores() {
        $("#nu_valor").val('');
        $("#desconto").val('');
        Funcoes.TiraValidacao('nu_valor');
    }

});