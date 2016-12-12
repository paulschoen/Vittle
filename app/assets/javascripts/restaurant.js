$(window).on("turbolinks:load", function() {
  $('#sugg-tab').click(function() {
    console.log('hi');
        $('#suggestion-container').removeClass('hidden');
        $('#restaurant-container').addClass('hidden');
  });

  $('#rest-tab').click(function() {
    console.log('sup');
        $('#restaurant-container').removeClass('hidden');
        $('#suggestion-container').addClass('hidden');
  });
});
