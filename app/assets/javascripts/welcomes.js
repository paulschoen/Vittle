$(document).on('turbolinks:load', function() {
  hi();
});
function hi() {
  console.log('hi');
}
$(window).bind("load", function() {
   $('div.hidden').fadeIn(2000).removeClass('hidden');
});
