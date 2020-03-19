$(function () {

    var home = $("#home").attr('data-val');

    var dados = Funcoes.Ajax('Assinante/getSessaoPagamentoAssinante', null);
    //ID da sessão retornada pelo PagSeguro
    PagSeguroDirectPayment.setSessionId(dados.id);

    $("#co_plano").change(function () {
        if ($(this).val() == '') {
            limpaComboParcelas();
            iniciaComboParcelas();
        }
    });

    $(".cartao_credito").mask("9999 99?99 9999 9999").keyup(function () {
        var numCartao = $(this).val().replace(/[^0-9]+/g, '');
        var TamNumCartao = numCartao.length;
        var spanBandeira = $(this).parents('.input-group').children('span.input-group-addon');
        var spanMensagem = $(this).parents('.input-group').parents('.form-group').children('span.help-block');

        //Validar o cartão quando o usuário digitar 6 digitos do cartão
        if (TamNumCartao == 6) {
            spanBandeira.empty();

            //Instanciar a API do PagSeguro para validar o cartão
            PagSeguroDirectPayment.getBrand({
                cardBin: numCartao,
                success: function (retorno) {
                    //Enviar para o index a imagem da bandeira
                    var imgBand = retorno.brand.name;
                    spanBandeira.html("<img src='https://stc.pagseguro.uol.com.br/public/img/payment-methods-flags/42x20/" + imgBand + ".png'>");
                    // $('#bandeiraCartao').val(imgBand);
                },
                error: function (retorno) {

                    //Enviar para o index a mensagem de erro
                    spanBandeira.empty();
                    spanMensagem.text('Cartão inválido').prepend('<i class="fa clip-checkmark-circle-2"></i> ');
                },
                complete: function (retorno) {
                    var imgBand = retorno.brand.name;
                    recupParcelas(imgBand);
                }
            });
        } else if (TamNumCartao < 6) {
            spanBandeira.empty();
            spanMensagem.text('Cartão inválido').prepend('<i class="fa clip-checkmark-circle-2"></i> ');

            limpaComboParcelas();
            iniciaComboParcelas();
        }

        var valor = $(this).val().replace(/[^0-9]+/g, '');
        valor = valor.val().replace(/[^.-]+/g, '');
        $(this).val(valor);

    }).focusout(function () {
        var spanBandeira = $(this).parents('.input-group').children('span.input-group-addon');
        var spanMensagem = $(this).parents('.input-group').parents('.form-group').children('span.help-block');
        var numCartao = $(this).val().replace(/[^0-9]+/g, '');
        var TamNumCartao = numCartao.length;

        if (TamNumCartao < 16) {
            spanBandeira.empty();
            spanMensagem.text('Cartão inválido').prepend('<i class="fa clip-checkmark-circle-2"></i> ');
            limpaComboParcelas();
            iniciaComboParcelas();
        }
    });


//Recuperar a quantidade de parcelas e o valor das parcelas no PagSeguro
    function recupParcelas(bandeira) {
        var coPlano = $("#co_plano").val();
        var comboParc = $("#qntParcelas");
        if (coPlano) {
            var dados = Funcoes.Ajax('Assinante/getValorPlano', coPlano);
            var valorPlano = dados.nu_valor_assinatura;
            limpaComboParcelas();

            // NÚMERO DE PARCELAS SEM JUROS
            var noIntInstalQuantity = 1;
            PagSeguroDirectPayment.getInstallments({

                //Valor do produto
                amount: valorPlano,

                //Quantidade de parcelas sem juro
                maxInstallmentNoInterest: noIntInstalQuantity,

                //Tipo da bandeira
                brand: bandeira,
                success: function (retorno) {
                    $.each(retorno.installments, function (ia, obja) {
                        $.each(obja, function (ib, objb) {

                            //Converter o preço para o formato real com JavaScript
                            var valorParcela = objb.installmentAmount.toFixed(2).replace(".", ",");

                            //Acrecentar duas casas decimais apos o ponto
                            var valorParcelaDouble = objb.installmentAmount.toFixed(2);
                            //Apresentar quantidade de parcelas e o valor das parcelas para o usuário no campo SELECT
                            // $('#qntParcelas').show().append("<option value='" + objb.quantity + "' data-parcelas='" + valorParcelaDouble + "'>" + objb.quantity + " parcelas de R$ " + valorParcela + "</option>");

                            comboParc.append(new Option(objb.quantity + " x R$ " + valorParcela,
                                objb.quantity, false, false)).trigger('change');

                        });
                    });

                    iniciaComboParcelas();
                },
                error: function (retorno) {
                    // callback para chamadas que falharam.
                },
                complete: function (retorno) {
                    // Callback para todas chamadas.
                }
            });
        }
    }

    function limpaComboParcelas() {
        var comboParc = $("#qntParcelas");
        comboParc.select2("destroy");
        comboParc.empty();
        var newOptionParc = new Option('Selecione um Parcelamento', null, false, false);
        comboParc.append(newOptionParc).trigger('change');
    }

    function iniciaComboParcelas() {
        var comboParc = $("#qntParcelas");
        comboParc.select2({
            allowClear: false
        });
    }

});