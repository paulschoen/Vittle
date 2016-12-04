$(document).on('turbolinks:load', function() {
  $('#video').tubular({videoId: 'l-PxQsuNql0', mute: true});

});
$(window).bind("load", function() {
   $('div.hidden').fadeIn(5000).removeClass('hidden');
});
