$(document).on('turbolinks:load', function() {
  $('.render-suggestions').click(function(){
    $('.partial-load').load('/suggestions');
  });
});
