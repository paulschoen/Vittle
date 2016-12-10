$(function() {
    restParamClick();
    locParamClick();
});

function restParamClick() {
  $('#rest-params').on('click', function(){
    $('#city').append('<input type="text" name="term" id="term" placeholder="Type in a city!" class="form-control col-xs-9">');
  }
);
}
function locParamClick() {
  $('.loc-params').click(function(){
  }
);
}
