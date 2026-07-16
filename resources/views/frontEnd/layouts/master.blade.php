<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Best Online Decor Store In Bangladesh</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    @stack('seo')

    <!-- Place favicon.ico in the root directory -->
    <link rel="shortcut icon" type="image/x-icon" href="{{asset('public/favicon-32x32.png')}}" />

    <!-- CSS here -->
    <link rel="stylesheet" href="{{ asset('public/frontEnd/assets/css/bootstrap.css') }}" />
    <link rel="stylesheet" href="{{ asset('public/frontEnd/assets/css/meanmenu.css') }}" />
    <link rel="stylesheet" href="{{ asset('public/frontEnd/assets/css/animate.css') }}" />
    <link rel="stylesheet" href="{{ asset('public/frontEnd/assets/css/swiper-bundle.css') }}" />
    <link rel="stylesheet" href="{{ asset('public/frontEnd/assets/css/slick.css') }}" />
    <link rel="stylesheet" href="{{ asset('public/frontEnd/assets/css/backtotop.css') }}" />
    <link rel="stylesheet" href="{{ asset('public/frontEnd/assets/css/magnific-popup.css') }}" />
    <link rel="stylesheet" href="{{ asset('public/frontEnd/assets/css/nice-select.css') }}" />
    <link rel="stylesheet" href="{{ asset('public/frontEnd/assets/css/ui-icon.css') }}" />
    <link rel="stylesheet" href="{{ asset('public/frontEnd/assets/css/font-awesome-pro.css') }}" />
    <link rel="stylesheet" href="{{ asset('public/frontEnd/assets/css/spacing.css') }}" />
    <link rel="stylesheet" href="{{ asset('public/frontEnd/assets/css/style.css') }}" />
    <link rel="stylesheet" href="{{ asset('public/frontEnd/assets/css/responsive.css') }}" />
    <!-- toastr css -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet">
    @stack('css')
    <!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-DP28J782QC"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-DP28J782QC');
</script>
</head>

<body>
    <!-- cart shopping instance -->
    @php $subtotal = Cart::instance('shopping')->subtotal(); @endphp
    <!-- header area start -->
    @include('frontEnd.layouts.header')
    <!-- header area end -->
    <div class="tp-sidebar-menu">
        <button class="sidebar-close">
            <i class="fa-solid fa-xmark"></i>
        </button>
        <div class="mobile-menu"></div>
    </div>
    <div class="body-overlay"></div>
    <!-- offcanvas for cart start  -->
    <div class="cart__canvas">
        <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">

            <!-- Add id="cart-qty" here so Ajax can replace the content -->
            <div class="offcanvas-body" id="cart-qty">

                <div class="offcanvas-header">
                    <h5 class="offcanvas-title" id="offcanvasRightLabel">
                        <i class="fa-regular fa-cart-shopping"></i>
                        Your cart · <span id="cart-count">{{ Cart::instance('shopping')->count() }} items</span>
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close">
                    </button>
                </div>
                <div class="cart__sidebar">
                    @foreach (Cart::instance('shopping')->content() as $key => $value)
                        <div class="cart__product">
                            <div class="row">
                                <div class="col-3">
                                    <div class="cart__img">
                                        <img src="{{ asset($value->options->image) }}" alt="" />
                                    </div>
                                </div>
                                <div class="col-9">
                                    <div class="cart__sidebar__content">
                                        <div class="content__top">
                                            <h5><a href="">{{ Str::limit($value->name, 30) }}</a></h5>
                                            <button type="button" onclick="removeItem(this)"
                                                class="remove-cart cart_remove" data-id="{{ $value->rowId }}">
                                                <i class="fa-regular fa-trash-can"></i>
                                            </button>
                                        </div>
                                        <div class="content__bottom">
                                            <div class="cart__quantity">
                                                <span>Qty:{{ $value->qty }}</span>
                                            </div>
                                            <div class="cart__price">
                                                <span class="current">৳ {{ $value->price }}</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
                <div class="offcanvas-footer">
                    <div class="total__price">৳ {{ $subtotal }}</div>
                    <button type="button"><a href="{{ route('customer.checkout') }}">Checkout</a></button>
                </div>

            </div>
        </div>
    </div>

    <!-- offcanvas for cart end  -->

    <!-- offcanvas for search start  -->
    <div class="topcanvas">
        <div class="offcanvas offcanvas-top" tabindex="-1" id="offcanvasTop" aria-labelledby="offcanvasTopLabel">
            <div class="offcanvas-header">
                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <div class="row">
                    <div class="col-lg-5 mx-auto">
                        <form action="{{ route('search') }}">
                            <div class="input-group">
                                <input type="text" id="searchbox" class="form-control py-2" placeholder="Search Products"
                                    aria-label="Dollar amount  " name="keyword"/>
                                <span class="input-group-text"><i class="fa-regular fa-magnifying-glass"></i></span>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- offcanvas for search end  -->
    <main>
        @yield('content')
    </main>

    <!-- footer area start -->
    @include('frontEnd.layouts.footer')
    <!-- footer area end -->

    <!-- JS here -->
    <script src="{{ asset('public/frontEnd/assets/js/vendor/jquery.js') }}"></script>
    <script src="{{ asset('public/frontEnd/assets/js/vendor/waypoints.js') }}"></script>
    <script src="{{ asset('public/frontEnd/assets/js/bootstrap-bundle.js') }}"></script>
    <script src="{{ asset('public/frontEnd/assets/js/meanmenu.js') }}"></script>
    <script src="{{ asset('public/frontEnd/assets/js/swiper-bundle.js') }}"></script>
    <script src="{{ asset('public/frontEnd/assets/js/slick.js') }}"></script>
    <script src="{{ asset('public/frontEnd/assets/js/magnific-popup.js') }}"></script>
    <script src="{{ asset('public/frontEnd/assets/js/parallax.js') }}"></script>
    <script src="{{ asset('public/frontEnd/assets/js/backtotop.js') }}"></script>
    <script src="{{ asset('public/frontEnd/assets/js/nice-select.js') }}"></script>
    <script src="{{ asset('public/frontEnd/assets/js/counterup.js') }}"></script>
    <script src="{{ asset('public/frontEnd/assets/js/wow.js') }}"></script>
    <script src="{{ asset('public/frontEnd/assets/js/isotope-pkgd.js') }}"></script>
    <script src="{{ asset('public/frontEnd/assets/js/imagesloaded-pkgd.js') }}"></script>
    <script src="{{ asset('public/frontEnd/assets/js/ajax-form.js') }}"></script>
    <script src="{{ asset('public/frontEnd/assets/js/main.js') }}"></script>

    {{-- toastr --}}
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    {!! Toastr::message() !!}
    @stack('scripts')
    <!-- cart js start -->
    <script>
        $(".addcartbutton").on("click", function() {
            var id = $(this).data("id");
            var qty = 1;
            if (id) {
                $.ajax({
                    cache: "false",
                    type: "GET",
                    url: "{{ url('add-to-cart') }}/" + id + "/" + qty,
                    dataType: "json",
                    success: function(data) {
                        if (data) {
                            toastr.success('Success', 'Product add to cart successfully');
                            updateCartCount();
                            return cart_count() + mobile_cart();
                        }
                    },
                });
            }
        });
        $(".cart_store").on("click", function() {
            var id = $(this).data("id");
            var qty = $(this).parent().find("input").val();
            if (id) {
                $.ajax({
                    type: "POST",
                    data: {
                        id: id,
                        qty: qty ? qty : 1,
                        _token: '{{ csrf_token() }}'
                    },
                    url: "{{ route('cart.store') }}",
                    success: function(data) {
                        if (data) {
                            toastr.success('Success', 'Product add to cart succfully');
                            updateCartCount()
                            return cart_count() + mobile_cart();
                        }
                    },
                });
            }
        });

        // $(".cart_remove").on("click", function () {
        //     var id = $(this).data("id");
        //     if (id) {
        //         $.ajax({
        //             type: "GET",
        //             data: { id: id },
        //             url: "{{ route('cart.remove') }}",
        //             success: function (data) {
        //                 if (data) {
        //                     $(".cartlist").html(data);
        //                     return cart_count() + mobile_cart() + cart_summary();
        //                 }
        //             },
        //         });
        //     }
        // });

        $(".cart_increment").on("click", function() {
            var id = $(this).data("id");
            if (id) {
                $.ajax({
                    type: "GET",
                    data: {
                        id: id
                    },
                    url: "{{ route('cart.increment') }}",
                    success: function(data) {
                        if (data) {
                            $(".cartlist").html(data);
                            updateCartCount();
                            return cart_count() + mobile_cart();
                        }
                    },
                });
            }
        });

        $(".cart_decrement").on("click", function() {
            var id = $(this).data("id");
            if (id) {
                $.ajax({
                    type: "GET",
                    data: {
                        id: id
                    },
                    url: "{{ route('cart.decrement') }}",
                    success: function(data) {
                        if (data) {
                            $(".cartlist").html(data);
                            updateCartCount();
                            return cart_count() + mobile_cart();
                        }
                    },
                });
            }
        });

        function removeItem(ele) {
            var id = $(ele).data('id');
            if (id) {
                console.log('okk' + id);
                $.ajax({
                    type: "GET",
                    data: {
                        'id': id
                    },
                    url: "{{ route('cart.remove') }}",
                    success: function(data) {
                        if (data) {
                            $(".cartlist").html(data);
                            console.log(data)
                            updateCartCount();
                            return cart_count();
                        }
                    }
                });
            }
        }

        function cart_count() {
            $.ajax({
                type: "GET",
                url: "{{ route('cart.count') }}",
                success: function(data) {
                    if (data) {
                        $("#cart-qty").html(data);
                    } else {
                        $("#cart-qty").empty();
                    }
                },
            });
        }

        function mobile_cart() {
            $.ajax({
                type: "GET",
                url: "{{ route('mobile.cart.count') }}",
                success: function(data) {
                    if (data) {
                        $(".mobilecart-qty").html(data);
                    } else {
                        $(".mobilecart-qty").empty();
                    }
                },
            });
        }

        function cart_summary() {
            $.ajax({
                type: "GET",
                url: "{{ route('shipping.charge') }}",
                dataType: "html",
                success: function(response) {
                    $(".cart-summary").html(response);
                },
            });
        }
    </script>
    <!-- cart js end -->
    <!-- header cart count -->  
    <script>
        function updateCartCount() {
            $.ajax({
                url: "{{ route('cart.count.header') }}",
                type: "GET",
                success: function(count) {
                    $('#cart-count').html(count);
                },
                error: function() {
                    console.error('Failed to update cart count.');
                }
            });
        }
        </script>
    
    <!-- header cart count end-->
     <!-- search js start -->
        <script></script>
        <script></script>
        <script>
            $(".toggle").on("click", function () {
                $("#page-overlay").show();
                $(".mobile-menu").addClass("active");
            });

            $("#page-overlay").on("click", function () {
                $("#page-overlay").hide();
                $(".mobile-menu").removeClass("active");
                $(".feature-products").removeClass("active");
            });

            $(".mobile-menu-close").on("click", function () {
                $("#page-overlay").hide();
                $(".mobile-menu").removeClass("active");
            });

            $(".mobile-filter-toggle").on("click", function () {
                $("#page-overlay").show();
                $(".feature-products").addClass("active");
            });
        </script>
        <script>
            $(document).ready(function () {
                $(".parent-category").each(function () {
                    const menuCatToggle = $(this).find(".menu-category-toggle");
                    const secondNav = $(this).find(".second-nav");

                    menuCatToggle.on("click", function () {
                        menuCatToggle.toggleClass("active");
                        secondNav.slideToggle("fast");
                        $(this).closest(".parent-category").toggleClass("active");
                    });
                });
                $(".parent-subcategory").each(function () {
                    const menuSubcatToggle = $(this).find(".menu-subcategory-toggle");
                    const thirdNav = $(this).find(".third-nav");

                    menuSubcatToggle.on("click", function () {
                        menuSubcatToggle.toggleClass("active");
                        thirdNav.slideToggle("fast");
                        $(this).closest(".parent-subcategory").toggleClass("active");
                    });
                });
            });
        </script>

        <script>
            var menu = new MmenuLight(document.querySelector("#menu"), "all");

            var navigator = menu.navigation({
                selectedClass: "Selected",
                slidingSubmenus: true,
                // theme: 'dark',
                title: "Category",
            });

            var drawer = menu.offcanvas({
                // position: 'left'
            });

            //  Open the menu.
            document.querySelector('a[href="#menu"]').addEventListener("click", (evnt) => {
                evnt.preventDefault();
                drawer.open();
            });
        </script>
        <script>
            $(".filter_btn").click(function(){
               $(".filter_sidebar").addClass('active');
               $("body").css("overflow-y", "hidden");
            })
            $(".filter_close").click(function(){
               $(".filter_sidebar").removeClass('active');
               $("body").css("overflow-y", "auto");
            })
        </script>
        
        <!--search ANIMAtion-->
        <script>
            const texts1 = ['Search for something…','Search for other…','One more search'];
            const input1 = document.querySelector('#mobileSearch');
            const animationWorker1 = function (input1, texts1) {
              this.input1 = input1;
              this.defaultPlaceholder = this.input1.getAttribute('placeholder');
              this.texts1 = texts1;
              this.curTextNum = 0;
              this.curPlaceholder = '';
              this.blinkCounter = 0;
              this.animationFrameId = 0;
              this.animationActive = false;
              this.input1.setAttribute('placeholder',this.curPlaceholder);
            
              this.switch = (timeout) => {
                this.input1.classList.add('imitatefocus');
                setTimeout(
                  () => { 
                    this.input1.classList.remove('imitatefocus');
                    if (this.curTextNum == 0) 
                      this.input1.setAttribute('placeholder',this.defaultPlaceholder);
                    else
                      this.input1.setAttribute('placeholder',this.curPlaceholder);
            
                    setTimeout(
                      () => { 
                        this.input1.setAttribute('placeholder',this.curPlaceholder);
                        if(this.animationActive) 
                          this.animationFrameId = window.requestAnimationFrame(this.animate)}, 
                      timeout);
                  }, 
                  timeout);
              }
            
              this.animate = () => {
                if(!this.animationActive) return;
                let curPlaceholderFullText = this.texts1[this.curTextNum];
                let timeout = 900;
                if (this.curPlaceholder == curPlaceholderFullText+'|' && this.blinkCounter==3) {
                  this.blinkCounter = 0;
                  this.curTextNum = (this.curTextNum >= this.texts1.length-1)? 0 : this.curTextNum+1;
                  this.curPlaceholder = '|';
                  this.switch(1000);
                  return;
                }
                else if (this.curPlaceholder == curPlaceholderFullText+'|' && this.blinkCounter<3) {
                  this.curPlaceholder = curPlaceholderFullText;
                  this.blinkCounter++;
                }
                else if (this.curPlaceholder == curPlaceholderFullText && this.blinkCounter<3) {
                  this.curPlaceholder = this.curPlaceholder+'|';
                }
                else {
                  this.curPlaceholder = curPlaceholderFullText
                    .split('')
                    .slice(0,this.curPlaceholder.length+1)
                    .join('') + '|';
                  timeout = 50;
                }
                this.input1.setAttribute('placeholder',this.curPlaceholder);
                setTimeout(
                  () => { if(this.animationActive) this.animationFrameId = window.requestAnimationFrame(this.animate)}, 
                  timeout);
              }
            
              this.stop = () => {
                this.animationActive = false;
                window.cancelAnimationFrame(this.animationFrameId);
              }
            
              this.start = () => {
                this.animationActive = true;
                this.animationFrameId = window.requestAnimationFrame(this.animate);
                return this;
              }
            }
            
            document.addEventListener("DOMContentLoaded", () => {
              let aw = new animationWorker1(input1, texts1).start();
              input1.addEventListener("focus", (e) => aw.stop());
              input1.addEventListener("blur", (e) => {
                aw = new animationWorker1(input1, texts1);
                if(e.target.value == '') setTimeout( aw.start, 500);
              });
            });
            
            const texts = ['Search for something…','Search for other…','One more search'];
            const input = document.querySelector('#searchbox');
            const animationWorker = function (input, texts) {
              this.input = input;
              this.defaultPlaceholder = this.input.getAttribute('placeholder');
              this.texts = texts;
              this.curTextNum = 0;
              this.curPlaceholder = '';
              this.blinkCounter = 0;
              this.animationFrameId = 0;
              this.animationActive = false;
              this.input.setAttribute('placeholder',this.curPlaceholder);
            
              this.switch = (timeout) => {
                this.input.classList.add('imitatefocus');
                setTimeout(
                  () => { 
                    this.input.classList.remove('imitatefocus');
                    if (this.curTextNum == 0) 
                      this.input.setAttribute('placeholder',this.defaultPlaceholder);
                    else
                      this.input.setAttribute('placeholder',this.curPlaceholder);
            
                    setTimeout(
                      () => { 
                        this.input.setAttribute('placeholder',this.curPlaceholder);
                        if(this.animationActive) 
                          this.animationFrameId = window.requestAnimationFrame(this.animate)}, 
                      timeout);
                  }, 
                  timeout);
              }
            
              this.animate = () => {
                if(!this.animationActive) return;
                let curPlaceholderFullText = this.texts[this.curTextNum];
                let timeout = 900;
                if (this.curPlaceholder == curPlaceholderFullText+'|' && this.blinkCounter==3) {
                  this.blinkCounter = 0;
                  this.curTextNum = (this.curTextNum >= this.texts.length-1)? 0 : this.curTextNum+1;
                  this.curPlaceholder = '|';
                  this.switch(1000);
                  return;
                }
                else if (this.curPlaceholder == curPlaceholderFullText+'|' && this.blinkCounter<3) {
                  this.curPlaceholder = curPlaceholderFullText;
                  this.blinkCounter++;
                }
                else if (this.curPlaceholder == curPlaceholderFullText && this.blinkCounter<3) {
                  this.curPlaceholder = this.curPlaceholder+'|';
                }
                else {
                  this.curPlaceholder = curPlaceholderFullText
                    .split('')
                    .slice(0,this.curPlaceholder.length+1)
                    .join('') + '|';
                  timeout = 50;
                }
                this.input.setAttribute('placeholder',this.curPlaceholder);
                setTimeout(
                  () => { if(this.animationActive) this.animationFrameId = window.requestAnimationFrame(this.animate)}, 
                  timeout);
              }
            
              this.stop = () => {
                this.animationActive = false;
                window.cancelAnimationFrame(this.animationFrameId);
              }
            
              this.start = () => {
                this.animationActive = true;
                this.animationFrameId = window.requestAnimationFrame(this.animate);
                return this;
              }
            }
            
            document.addEventListener("DOMContentLoaded", () => {
              let aw = new animationWorker(input, texts).start();
              input.addEventListener("focus", (e) => aw.stop());
              input.addEventListener("blur", (e) => {
                aw = new animationWorker(input, texts);
                if(e.target.value == '') setTimeout( aw.start, 500);
              });
            });
            </script>
        <!--search ANIMAtion end-->
</body>
</html>
