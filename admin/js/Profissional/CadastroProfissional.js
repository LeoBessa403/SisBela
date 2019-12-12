$(function () {

    var agenda_online = $("#st_agenda_online").parents('#form-group-st_agenda_online');
    var agenda = $("#st_agenda");

    agenda.change(function () {
        disabilitaCampoAgenda();
    });

    // CADASTRO De Profissional
    function disabilitaCampoAgenda() {
        if (agenda.prop('checked')) {
            agenda_online.slideDown("slow");
        } else {
            agenda_online.slideUp("fast");
            $("#st_agenda_online").removeAttr('checked')
                .parents('.switch-animate').removeClass('switch-on').addClass('switch-off');
        }
    }

    disabilitaCampoAgenda();
});