$(function () {

    $('.atende-servico').each(function () {
        CarregaDisabilita($(this));
    }).change(function () {
        DisabilitaInput($(this));
    });

    function CarregaDisabilita(element) {
        if (!element.is(":checked")) {
            var id = element.attr("id").replace('atende-servico-', '');
            $('.atende-servico-' + id).attr('readonly', 'readonly');
        }
    }

    function DisabilitaInput(element) {
        var id = element.attr("id").replace('atende-servico-', '');
        if (element.is(":checked")) {
            $('.atende-servico-' + id).removeAttr('readonly');
        } else {
            $('.atende-servico-' + id).attr('readonly', 'readonly').val('0');
        }
    }

    $('form').submit(function () {
        var val = true;
        $('.atende-servico').each(function () {
            if ($(this).is(":checked")) {
                var id = $(this).attr("id").replace('atende-servico-', '');
                var valida = false;
                $('.atende-servico-' + id).each(function () {
                    if ($(this).val() != '0') {
                        valida = true;
                    }
                });
                if (!valida) {
                    var noServico = $('#registro-' + id + ' td:eq(1)').text();
                    Funcoes.Informativo('O serviço ' + noServico + ' está com o Atendimento Ativo e TODAS as comissões configuradas 0.');
                    val = false;
                }
            }
        });
        if (!val) {
            return false;
        }
    });
});