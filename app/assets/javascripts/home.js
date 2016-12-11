$(function() {
    navigator.geolocation.getCurrentPosition(success, error, options);
    restParamClick();
});

function restParamClick() {
  $('#rest-params').on('click', function(){
    $('#city').append('<input type="text" name="term" id="term" placeholder="Type in a city!" class="form-control col-xs-9">');
  }
);
}

var options = {
  enableHighAccuracy: true,
  timeout: 5000,
  maximumAge: 0
};

function success(pos) {
  // global variable
  $('#gps').val("Looking for location");
  var crd = pos.coords;
  $('#hidden-latfield').val(crd.latitude + ',' + crd.longitude);
  $('#gps').val("Location Found!");
  setTimeout(function(){$('#gps').val("Use My Location");}, 1500);
}

function error(err) {
  console.warn('ERROR(' + err.code + '): ' + err.message);
}
