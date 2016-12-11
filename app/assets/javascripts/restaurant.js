$('span.glyphicon').click(function() {
    if (('span.glyphicon').hasClass('spin-js')) {
        $('span.glyphicon').removeClass('spin-js');
    } else {
        $('span.glyphicon').addClass('spin-js');
    }
});
