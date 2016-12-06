$(function() {
    buttonClick();
});

function buttonClick() {
    $('#suggestion-submit').on('click', function(e) {
            e.preventDefault();
            var businessId = $(this).data().businessId;
            var suggestionBody = $('#suggestion_body').val();
            $.ajax({
                    url: '/suggestions',
                    method: 'POST',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json"
                }
            ).done(function() {
            console.log("SUCCESS");
            console.log(arguments);
        }).fail(function() {
            console.log("FAILURE");
            console.log(arguments);
        })
        .success(buttonClick());
    });
}
