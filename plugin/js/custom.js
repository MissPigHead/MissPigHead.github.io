AOS.init();

// 打字效果 https://github.com/mattboldt/typed.js/ 
let typed1_str = $(".typed1").data('typed-items');
typed1_str = typed1_str.split(',')
new Typed('.typed1', {
  strings: typed1_str,
  loop: true,
  typeSpeed: 100,
  backSpeed: 0,
  backDelay: 0,
  showCursor: false,
  fadeOut: true,
  fadeOutClass: 'typed-fade-out',
  fadeOutDelay: 1000,
});


let typed2_str = $(".typed2").data('typed-items');
typed2_str = typed2_str.split(';')
new Typed('.typed2', {
  strings: typed2_str,
  // startDelay:3000,
  loop: true,
  startDelay: 0,
  typeSpeed: 10,
  backSpeed: 0,
  backDelay: 0,
  showCursor: false,
  fadeOut: true,
  fadeOutClass: 'typed-fade-out',
  fadeOutDelay: 1000,

});



// Smooth scroll for the navigation menu and links with .scrollto classes
$(document).on('click', '.nav-menu a, .scrollto', function (e) {
  if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this
    .hostname) {
    e.preventDefault();
    var target = $(this.hash);
    if (target.length) {

      var scrollto = target.offset().top;

      $('html, body').animate({
        scrollTop: scrollto
      }, 1500, 'easeInOutExpo');

      if ($(this).parents('.nav-menu, .mobile-nav').length) {
        $('.nav-menu .active, .mobile-nav .active').removeClass('active');
        $(this).closest('li').addClass('active');
      }

      if ($('body').hasClass('mobile-nav-active')) {
        $('body').removeClass('mobile-nav-active');
        $('.mobile-nav-toggle i').toggleClass('icofont-navigation-menu fa-times');
      }
      return false;
    }
  }
});


// Activate smooth scroll on page load with hash links in the url
$(document).ready(function () {
  if (window.location.hash) {
    var initial_nav = window.location.hash;
    if ($(initial_nav).length) {
      var scrollto = $(initial_nav).offset().top;
      $('html, body').animate({
        scrollTop: scrollto
      }, 1500, 'easeInOutExpo');
    }
  }
});

$(document).on('click', '.mobile-nav-toggle', function (e) {
  $('body').toggleClass('mobile-nav-active');
  $('.mobile-nav-toggle i').toggleClass('icofont-navigation-menu fa-times');
});

$(document).click(function (e) {
  var container = $(".mobile-nav-toggle");
  if (!container.is(e.target) && container.has(e.target).length === 0) {
    if ($('body').hasClass('mobile-nav-active')) {
      $('body').removeClass('mobile-nav-active');
      $('.mobile-nav-toggle i').toggleClass('icofont-navigation-menu fa-times');
    }
  }
});

// Navigation active state on scroll
var nav_sections = $('section');
var main_nav = $('.nav-menu, .mobile-nav');

$(window).on('scroll', function () {
  var cur_pos = $(this).scrollTop() + 200;

  nav_sections.each(function () {
    var top = $(this).offset().top,
      bottom = top + $(this).outerHeight();

    if (cur_pos >= top && cur_pos <= bottom) {
      if (cur_pos <= bottom) {
        main_nav.find('li').removeClass('active');
      }
      main_nav.find('a[href="#' + $(this).attr('id') + '"]').parent('li').addClass('active');
    }
    if (cur_pos < 300) {
      $(".nav-menu ul:first li:first").addClass('active');
    }
  });
});

function goTop() {
  let
    nowat = $(window).scrollTop(),
    height = $("#banner").height();
  if (nowat <= height) {
    $("#scrolltop").removeClass("shown");
  } else {
    $("#scrolltop").addClass("shown");
  }
}
$(window).scroll(() => {
  goTop(); // bounce to top
});