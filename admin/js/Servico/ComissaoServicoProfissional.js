$(function () {

    $('.atende-profissional').each(function () {
        CarregaDisabilita($(this));
    }).change(function () {
        DisabilitaInput($(this));
    });

    function CarregaDisabilita(element) {
        if (!element.is(":checked")) {
            var id = element.attr("id").replace('atende-profissional-', '');
            $('.atende-profissional-' + id).attr('readonly', 'readonly');
        }
    }

    function DisabilitaInput(element) {
        var id = element.attr("id").replace('atende-profissional-', '');
        if (element.is(":checked")) {
            $('.atende-profissional-' + id).removeAttr('readonly');
        } else {
            $('.atende-profissional-' + id).attr('readonly', 'readonly').val('0');
        }
    }

    $('form').submit(function () {
        var val = true;
        $('.atende-profissional').each(function () {
            if ($(this).is(":checked")) {
                var id = $(this).attr("id").replace('atende-profissional-', '');
                var valida = false;
                $('.atende-profissional-' + id).each(function () {
                    if ($(this).val() != '0') {
                        valida = true;
                    }
                });
                if (!valida) {
                    var noProfissional = $('#registro-' + id + ' td:eq(1)').text();
                    Funcoes.Informativo('O Profissional ' + noProfissional + ' está com o Atendimento Ativo e TODAS as comissões configuradas 0.');
                    val = false;
                }
            }
        });
        if (!val) {
            return false;
        }
    });
});