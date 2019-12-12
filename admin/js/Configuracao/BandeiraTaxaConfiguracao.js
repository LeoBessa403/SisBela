$(function () {

    $('.aceite-deb').each(function () {
        CarregaDisabilita($(this), "deb");
    }).change(function () {
        DisabilitaInput($(this), "deb");
    });

    $('.aceite-cred').each(function () {
        CarregaDisabilita($(this), "cred");
    }).change(function () {
        DisabilitaInput($(this), "cred");
    });

    function CarregaDisabilita(element, classe) {
        if (!element.is(":checked")) {
            var id = element.attr("id").replace('aceite-bandeira-taxa-' + classe + '-', '');
            $('#bandeira-taxa-' + classe + '-' + id).attr('disabled', 'disabled');
            $('#bandeira-taxaAntec-' + classe + '-' + id).attr('disabled', 'disabled');
        }
    }

    function DisabilitaInput(element, classe) {
        var id = element.attr("id").replace('aceite-bandeira-taxa-' + classe + '-', '');
        if (element.is(":checked")) {
            $('#bandeira-taxa-' + classe + '-' + id).removeAttr('disabled');
            $('#bandeira-taxaAntec-' + classe + '-' + id).removeAttr('disabled');
        } else {
            $('#bandeira-taxa-' + classe + '-' + id).attr('disabled', 'disabled');
            $('#bandeira-taxaAntec-' + classe + '-' + id).attr('disabled', 'disabled');
        }
    }

});