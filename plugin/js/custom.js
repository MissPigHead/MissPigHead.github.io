/*----- js套件 AOS -----*/ 
// AOS.init();
$(function () {
  AOS.init({
    disable: 'mobile'
  }); // forbidden AOS in mobile senario
})

/*----- 打字效果 https://github.com/mattboldt/typed.js/ -----*/ 
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

/*----- nav toggle icon -----*/
$("#nav-toggle").mouseover(() => {
  $(".toggle-line-1").css("background", "var(--pink05)")
  $(".toggle-line-2").css("background", "var(--pink05)")
  $(".toggle-line-3").css("background", "var(--pink05)")
})

$("#nav-toggle").mouseout(() => {
  $(".toggle-line-1").css("background", "var(--pink08)")
  $(".toggle-line-2").css("background", "var(--pink08)")
  $(".toggle-line-3").css("background", "var(--pink08)")
})

$("#nav-toggle").on("click", (event) => {
  var item = event.currentTarget;
  if (item.classList.contains("act")) {
    $("#nav").css("left", -300)
    $("#nav-toggle").removeClass("act")
    $(".toggle-line-2").toggle().fadeIn();
    $(".toggle-line-1").removeClass("toggle-line-first")
    $(".toggle-line-3").removeClass("toggle-line-last")
  } else {
    $("#nav").css("left", 0)
    $("#nav-toggle").addClass("act")
    $(".toggle-line-2").toggle();
    $(".toggle-line-1").addClass("toggle-line-first")
    $(".toggle-line-3").addClass("toggle-line-last")
  }
})

/*----- Smooth scroll for the navigation menu and links with .scrollto classes -----*/
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

/*----- Activate smooth scroll on page load with hash links in the url -----*/
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

/*----- Navigation active state on scroll -----*/
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

/*----- form#sendMsg -----*/
$("input[name=name]").on('input', function (e) {
  let length = e.target.value.length
  if (length > 20) {
    Swal.fire({
      icon: 'warning',
      title: '聯絡人名稱最多20個字',
    });
  }
});

$("textarea[name=message]").on('input', function (e) {
  let length = e.target.value.length
  if (length > 200) {
    Swal.fire({
      icon: 'warning',
      title: '訊息最多200個字',
    });
  }
});

function sendFormData() {
  let form = document.querySelector("form");
  let formData = new FormData(form);
  let data = new Object();
  for (var pair of formData.entries()) {
    data[pair[0]] = pair[1];
  }
  $.ajax({
    type: "post",
    url: "https://formspree.io/f/mrgjgrrv",
    data: data,
    dataType: "json",
    success: function (response) {
      if (response.ok) {
        Swal.fire({
          icon: 'success',
          title: '訊息已送出',
          text: '謝謝您的留言，我在收到後，將盡快回覆您的訊息。',
          showConfirmButton: false,
          timer: 3000
        }).then(() => {
          location.href = "index.html";
        });
      } else {
        Swal.fire({
          icon: 'error',
          title: '請直接來電吧！',
          text: '留訊息太慢了...我期待聽見你的聲音～',
          showConfirmButton: false,
          footer: '<a href="tel:+886927775101">撥電話</a>'
        });
      }
    }
  });
}

function checkFormData() {
  let
    check = 1,
    err = [],
    err_msg = '',
    name = $("input[name='name']").val(),
    email = $("input[name='email']").val(),
    email_reg = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/,
    phone = $("input[name='phone']").val(),
    phone_reg = /^[0-9._-]{10,20}$/,
    message = $("textarea[name='message']").val();

  if (name.length < 1) {
    err.push("請輸入聯絡人名稱")
    check = 0
  }
  if (name.length > 20) {
    err.push("聯絡人名稱最多20個英文字母或中文字")
    check = 0
  }
  if (message.length < 1) {
    err.push("請輸入訊息資訊")
    check = 0
  }
  if (message.length > 200) {
    err.push("訊息最多200個英文字母或中文字")
    check = 0
  }
  if (!email_reg.test(email)) {
    err.push("請檢查email格式")
    check = 0
  }
  if (!phone_reg.test(phone)) {
    err.push("電話只能輸入數字與_-符號")
    check = 0
  }
  if (check) {
    sendFormData();
  } else {
    err.forEach(element => {
      err_msg += `<li class='text-left'>${element }</li>`
    });
    Swal.fire({
      icon: 'warning',
      title: '請檢查輸入內容',
      html: `<ul>${err_msg}</ul>`,
    })
  }
}

$("#sendMsg div.btn").click(() => {
  checkFormData();
})

