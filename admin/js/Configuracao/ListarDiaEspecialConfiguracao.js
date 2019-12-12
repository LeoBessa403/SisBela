$(function () {

    $('#acao-feriado').bind('click', function (e) {
        $('html, body').animate({
            scrollTop: $("#feriados").offset().top
        }, 1000)
    });

});