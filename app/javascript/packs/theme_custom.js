(function ($) {
  "use strict";
    // SMOOTHSCROLL
    $(function() {
      $('.nav-link, .nav-btn, .custom-btn-link').on('click', function (event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
          scrollTop: $($anchor.attr('href')).offset().top - 80
        }, 1000);
        event.preventDefault();
      });

      $('.home-link').on('click', function (event) {
        var $anchor = $(this);
        $('html, body').stop().animate({ scrollTop: 0 }, 1000);
        event.preventDefault();
      });

      // TOOLTIP
      $('a').tooltip();
    })
})(jquery);