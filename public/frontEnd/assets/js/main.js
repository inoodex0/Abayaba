/***************************************************
==================== JS INDEX ======================
****************************************************
01. PreLoader Js


****************************************************/

(function ($) {
    "use strict";

    var windowOn = $(window);
    ////////////////////////////////////////////////////
    // 01. PreLoader Js
    windowOn.on("load", function () {
        $("#loading").fadeOut(500);
    });

    // window.addEventListener("scroll", function () {
    //   const slider = document.querySelector(".product__image__slider");
    //   const offsetTop = slider.offsetTop;
    //   if (window.pageYOffset >= offsetTop) {
    //     slider.style.position = "fixed";
    //     slider.style.top = "30px";
    //     slider.style.width = slider.parentElement.offsetWidth + "px"; // প্যারেন্টের প্রস্থ ধরে রাখতে
    //   } else {
    //     slider.style.position = "sticky";
    //     slider.style.top = "30px";
    //   }
    // });

    // const colorInput = document.querySelector('input[type=color]');
    // const colorVariable = '--tp-theme-1';

    // colorInput.addEventListener('change', function(e){
    // 	var clr = e.target.value;
    // 	document.documentElement.style.setProperty(colorVariable, clr);
    // })

    ////////////////////////////////////////////////////
    // 02. Mobile Menu Js
    $("#mobile-menu").meanmenu({
        meanMenuContainer: ".mobile-menu",
        meanScreenWidth: "991",
        meanExpand: ['<i class="fal fa-plus"></i>'],
    });

    ////////////////////////////////////////////////////
    // 03. Sidebar Js
    $(".tp-menu-toggle").on("click", function () {
        $(".tp-sidebar-menu").addClass("sidebar-opened");
        $(".body-overlay").addClass("opened");
    });
    $(".sidebar-close").on("click", function () {
        $(".tp-sidebar-menu").removeClass("sidebar-opened");
        $(".body-overlay").removeClass("opened");
    });

    ////////////////////////////////////////////////////
    // 04. Body overlay Js
    $(".body-overlay").on("click", function () {
        $(".tp-sidebar-menu").removeClass("sidebar-opened");
        $(".body-overlay").removeClass("opened");
    });

    ////////////////////////////////////////////////////
    // 05. Search Js
    $(".search-toggle").on("click", function () {
        $(".search__area").addClass("opened");
    });
    $(".search-close-btn").on("click", function () {
        $(".search__area").removeClass("opened");
    });

    // review form
    $(".review__form").hide();
    $(".review__btn button").click(function () {
        $(".review__form").slideToggle();
    });
    $(".form__btn .cancel").click(function () {
        $(".review__form").slideUp();
    });

    //   starIconEmpty: "far fa-star",
    //   starIconFull: "fas fa-star",
    //   starColorEmpty: "lightgray",
    //   starColorFull: "#FFC107",
    //   starsSize: 4, // em
    //   stars: 5,
    // });

    // $("#review").rating({
    //   color: "#222",
    //   emptyStar: "fa-regular fa-star",
    //   filledStar: "fa-solid fa-star",
    // });

    ////////////////////////////////////////////////////
    // 06. Sticky Header Js
    windowOn.on("scroll", function () {
        var scroll = $(window).scrollTop();
        if (scroll < 100) {
            $("#header-sticky").removeClass("header-sticky");
        } else {
            $("#header-sticky").addClass("header-sticky");
        }
    });

    ////////////////////////////////////////////////////
    // 07. Data CSS Js
    $("[data-background").each(function () {
        $(this).css(
            "background-image",
            "url( " + $(this).attr("data-background") + "  )"
        );
    });

    $("[data-width]").each(function () {
        $(this).css("width", $(this).attr("data-width"));
    });

    $("[data-bg-color]").each(function () {
        $(this).css("background-color", $(this).attr("data-bg-color"));
    });

    ////////////////////////////////////////////////////
    // 07. Nice Select Js
    // $("select").niceSelect();

    // mainSlider
    function mainSlider() {
        var BasicSlider = $(".slider-active");
        BasicSlider.on("init", function (e, slick) {
            var $firstAnimatingElements = $(".single-slider:first-child").find(
                "[data-animation]"
            );
            doAnimations($firstAnimatingElements);
        });
        BasicSlider.on(
            "beforeChange",
            function (e, slick, currentSlide, nextSlide) {
                var $animatingElements = $(
                    '.single-slider[data-slick-index="' + nextSlide + '"]'
                ).find("[data-animation]");
                doAnimations($animatingElements);
            }
        );
        BasicSlider.slick({
            autoplay: true,
            autoplaySpeed: 4000,
            dots: false,
            fade: true,
            arrows: true,
            prevArrow:
                '<button type="button" class="slick-prev"><i class="far fa-arrow-left"></i></button>',
            nextArrow:
                '<button type="button" class="slick-next"><i class="far fa-arrow-right"></i></button>',
            responsive: [
                {
                    breakpoint: 767,
                    settings: {
                        dots: false,
                        arrows: false,
                    },
                },
            ],
        });

        function doAnimations(elements) {
            var animationEndEvents =
                "webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend";
            elements.each(function () {
                var $this = $(this);
                var $animationDelay = $this.data("delay");
                var $animationType = "animated " + $this.data("animation");
                $this.css({
                    "animation-delay": $animationDelay,
                    "-webkit-animation-delay": $animationDelay,
                });
                $this
                    .addClass($animationType)
                    .one(animationEndEvents, function () {
                        $this.removeClass($animationType);
                    });
            });
        }
    }
    mainSlider();

    // hero carousel
    $(".hero-slider").slick({
        dots: false,
        infinite: true,
        speed: 300,
        slidesToShow: 1,
        autoplay: true,
        slidesToScroll: 1,
        arrows: true,

        // Custom arrows
        prevArrow:
            '<button type="button" class="slick-prev"><i class="fa-regular fa-angle-left"></i></button>',
        nextArrow:
            '<button type="button" class="slick-next"> <i class="fa-regular fa-angle-right"></i></button>',
    });

    $(".luxe-art").slick({
        dots: false,
        infinite: true,
        speed: 300,
        slidesToShow: 4,
        autoplay: true,
        slidesToScroll: 1,
        arrows: false,
        responsive: [
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 3,
                    infinite: true,
                    dots: false,
                },
            },
            {
                breakpoint: 800,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2,
                },
            },
            {
                breakpoint: 540,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1,
                },
            },
        ],
    });

    $(".glass").slick({
        dots: false,
        infinite: true,
        speed: 300,
        slidesToShow: 4,
        autoplay: true,
        slidesToScroll: 2,
        arrows: false,
        responsive: [
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 3,
                    infinite: true,
                    dots: false,
                },
            },
            {
                breakpoint: 800,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2,
                },
            },
            {
                breakpoint: 540,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1,
                },
            },
        ],
    });
    $(".testimonial__slider").slick({
        dots: false,
        infinite: true,
        speed: 400,
        slidesToShow: 3,
        autoplay: true,

        slidesToScroll: 1,
        arrows: false,
        responsive: [
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 1,
                    infinite: true,
                    dots: false,
                },
            },
            {
                breakpoint: 600,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1,
                },
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                },
            },
        ],
    });
    $(".category__wrapper").slick({
        dots: false,
        infinite: true,
        speed: 400,
        slidesToShow: 8,
        autoplay: true,

        slidesToScroll: 1,
        arrows: false,
        responsive: [
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 4,
                    slidesToScroll: 1,
                    infinite: true,
                    dots: false,
                },
            },
            {
                breakpoint: 800,
                settings: {
                    slidesToShow: 4,
                    slidesToScroll: 1,
                },
            },
            {
                breakpoint: 540,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 1,
                },
            },
        ],
    });

    $(".classic").slick({
        dots: false,
        infinite: true,
        speed: 300,
        slidesToShow: 4,
        autoplay: true,
        slidesToScroll: 1,
        arrows: false,
        responsive: [
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 3,
                    infinite: true,
                    dots: false,
                },
            },
            {
                breakpoint: 800,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2,
                },
            },
            {
                breakpoint: 540,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                },
            },
        ],
    });
    $(".premium").slick({
        dots: false,
        infinite: true,
        speed: 300,
        slidesToShow: 4,
        autoplay: true,
        slidesToScroll: 1,
        arrows: false,
        responsive: [
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 3,
                    infinite: true,
                    dots: false,
                },
            },
            {
                breakpoint: 800,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2,
                },
            },

            {
                breakpoint: 540,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                },
            },
        ],
    });

    // Initialize main slider
    $(".main-slider").slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: true,
        fade: false,
        prevArrow:
            '<button type="button" class="slick-prev"><i class="fa-solid fa-angle-left"></i></button>',
        nextArrow:
            '<button type="button" class="slick-next"><i class="fa-solid fa-angle-right"></i></button>',
        asNavFor: ".thumb-slider",
    });

    // Initialize thumbnail slider
    $(".thumb-slider").slick({
        slidesToShow: 4,
        slidesToScroll: 1,
        asNavFor: ".main-slider",
        dots: false,
        centerMode: false,
        focusOnSelect: true,
        arrows: false,
        responsive: [
            {
                breakpoint: 991,
                settings: {
                    centerMode: true,
                    slidesToShow: 4,
                    slidesToScroll: 1,
                },
            },
            {
                breakpoint: 540,
                settings: {
                    centerMode: true,
                    slidesToShow: 3,
                    slidesToScroll: 1,
                },
            },
        ],
    });

    //   // back to top js
    let btn = $(".scroll-to-top");

    $(window).scroll(function () {
        btn.toggleClass("show", $(window).scrollTop() > 300);
    });

    btn.click(function (e) {
        e.preventDefault();
        if (navigator.userAgent.toLowerCase().indexOf("firefox") > -1) {
            $("html").animate(
                {
                    scrollTop: 0,
                },
                1000
            );
        } else {
            $("html, body").animate(
                {
                    scrollTop: 0,
                },
                0
            );
        }
    });
    ////////////////////////////////////////////////////
    // 13. Masonary Js
    $(".grid").imagesLoaded(function () {
        // init Isotope
        var $grid = $(".grid").isotope({
            itemSelector: ".grid-item",
            percentPosition: true,
            masonry: {
                // use outer width of grid-sizer for columnWidth
                columnWidth: ".grid-item",
            },
        });

        // filter items on button click
        $(".masonary-menu").on("click", "button", function () {
            var filterValue = $(this).attr("data-filter");
            $grid.isotope({ filter: filterValue });
        });

        //for menu active class
        $(".masonary-menu button").on("click", function (event) {
            $(this).siblings(".active").removeClass("active");
            $(this).addClass("active");
            event.preventDefault();
        });
    });

    /* magnificPopup img view */
    $(".popup-image").magnificPopup({
        type: "image",
        gallery: {
            enabled: true,
        },
    });

    /* magnificPopup video view */
    $(".popup-video").magnificPopup({
        type: "iframe",
    });

    ////////////////////////////////////////////////////
    // 14. Wow Js
    new WOW().init();

    ////////////////////////////////////////////////////
    // 16. Cart Quantity Js
    $(".cart-minus").click(function () {
        var $input = $(this).parent().find("input");
        var count = parseInt($input.val()) - 1;
        count = count < 1 ? 1 : count;
        $input.val(count);
        $input.change();
        return false;
    });
    $(".cart-plus").click(function () {
        var $input = $(this).parent().find("input");
        $input.val(parseInt($input.val()) + 1);
        $input.change();
        return false;
    });

    ////////////////////////////////////////////////////
    // 17. Show Login Toggle Js
    $("#showlogin").on("click", function () {
        $("#checkout-login").slideToggle(900);
    });

    ////////////////////////////////////////////////////
    // 18. Show Coupon Toggle Js
    $("#showcoupon").on("click", function () {
        $("#checkout_coupon").slideToggle(900);
    });

    ////////////////////////////////////////////////////
    // 19. Create An Account Toggle Js
    $("#cbox").on("click", function () {
        $("#cbox_info").slideToggle(900);
    });

    ////////////////////////////////////////////////////
    // 20. Shipping Box Toggle Js
    $("#ship-box").on("click", function () {
        $("#ship-box-info").slideToggle(1000);
    });

    ////////////////////////////////////////////////////
    // 21. Counter Js
    $(".counter").counterUp({
        delay: 10,
        time: 1000,
    });

    ////////////////////////////////////////////////////
    // 22. Parallax Js
    if ($(".scene").length > 0) {
        $(".scene").parallax({
            scalarX: 10.0,
            scalarY: 15.0,
        });
    }

    ////////////////////////////////////////////////////
    // 23. InHover Active Js
    $(".hover__active").on("mouseenter", function () {
        $(this)
            .addClass("active")
            .parent()
            .siblings()
            .find(".hover__active")
            .removeClass("active");
    });
})(jQuery);
