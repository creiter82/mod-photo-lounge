// Coffee version

// $(window).load(function() {
//   $('#slider').nivoSlider({
//     animSpeed: 500,
//     pauseTime: 2700,
//     directionNav: false,
//     controlNav: false,
//   });
// });

//

$(document).on('turbolinks:load', function () {
  $('#slider').nivoSlider({
    animSpeed: 500,
    pauseTime: 2700,
    directionNav: true,
    controlNav: false,
  });
});


