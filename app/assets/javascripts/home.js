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
  var crd = pos.coords;
  console.log(crd.latitude + '' + crd.longitude);
  $('#hidden-latfield').val(crd.latitude + ',' + crd.longitude);
  console.log('Latitude : ' + crd.latitude);
  console.log('Longitude: ' + crd.longitude);
  console.log('More or less ' + crd.accuracy + ' meters.');
}

function error(err) {
  console.warn('ERROR(' + err.code + '): ' + err.message);
}
