$(function () {

    $('.menu_click').bind('click', function (e) {
        var div_ref = $(this).attr('data-class');
        $('html, body').animate({
            scrollTop: $("#" + div_ref).offset().top
        }, 1000)
    });

});
