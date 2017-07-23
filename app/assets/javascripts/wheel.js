
var spin = function() {
  var spinner = $("#spinner-after");

  function rotate(degrees) {
    spinner.css({
      '-webkit-transform': 'rotate(' + degrees + 'deg)',
      '-moz-transform': 'rotate(' + degrees + 'deg)',
      '-ms-transform': 'rotate(' + degrees + 'deg)',
      'transform': 'rotate(' + degrees + 'deg)',
    });
  }

  $.when($({
    deg: 0
  }).animate({
    deg: 360 * 30
  }, {
    duration: 7000,
    step: function() {
      var deg = this.deg;
      rotate(deg);
    }
  })).then(function(){
    $('#result').css('display', 'inline-block');
  });

}

$(document).ready(function() {
  $("#spin-button").on('submit', spin());


  });