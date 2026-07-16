<header>
  <div class="header__area">
    <div class="header__bottom" id="header-sticky">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-xl-2 col-lg-6 col-md-6 col-6">
            <div class="logo">
              <a href="{{route('home')}}">
                <img src="{{asset($generalsetting->white_logo)}}" alt="logo" />
              </a>
            </div>
          </div>
          <div class="col-xl-9 d-none d-xl-block">
            <div class="main-menu">
              <nav id="mobile-menu">
                <ul>
                  {{-- <li><a href="{{route('home')}}">Home</a></li> --}}
                  <li><a href="{{route('all.products')}}">Shop</a></li>
                  @foreach ($menucategories->take(10) as $scategory)
                      <li><a href="{{url('category/'.$scategory->slug)}}"> {{$scategory->name}}</a>
                      </li>
                @endforeach
                <li><a href="{{ route('all.blogs') }}">Blogs</a></li>
                </ul>
               
                {{-- <ul>
                  <li class="has-dropdown"><a href="#" class="fw-600"><span class="mr-2"><i
                          class="fa-regular fa-list"></i></span>
                      Categories</a>
                    <ul class="submenu">
                      @foreach ($menucategories->take(10) as $scategory)
                      <li><a href="{{url('category/'.$scategory->slug)}}"> {{$scategory->name}}</a>

                        <ul class="submenu">
                          @foreach ($scategory->subcategories as $subcategory)
                          <li><a href="{{url('subcategory/'.$subcategory->slug)}}">{{$subcategory->subcategoryName}}</a>
                            @if ($subcategory->childcategories->count() > 0)
                            <ul class="submenu">
                              @foreach ($subcategory->childcategories as $childcat)
                              <li><a href="{{url('products/'.$childcat->slug)}}">{{$childcat->childcategoryName}}</a>
                              </li>
                              @endforeach
                            </ul>
                            @endif
                          </li>
                          @endforeach
                        </ul>
                      </li>
                      @endforeach
                    </ul>
                  </li>
                  <li><a href="{{route('home')}}">Home</a></li>
                  <li><a href="{{route('all.products')}}">Shop</a></li>
                  @foreach($pagesright as $value)
                  @if($value->name == 'About US')
                  <li><a href="{{ route('page', ['slug' => $value->slug]) }}">{{ $value->name }}</a></li>
                  @break
                  @endif
                  @endforeach
                  <li><a href="{{route('contact')}}">Contact</a></li>
                </ul> --}}
              </nav>
            </div>
          </div>
          <div class="col-lg-6 col-xl-1 col-md-6 col-6">
            <div class="header__bottom-right d-flex justify-content-end align-items-center pl-30">
              <div class="header__search w-100 d-none d-xl-block"></div>
              <div class="header__btn">
                <button data-bs-toggle="offcanvas" data-bs-target="#offcanvasTop" aria-controls="offcanvasTop">
                  <i class="fa-regular fa-magnifying-glass"></i>
                </button>
                <button data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" class="header__cart"
                  aria-controls="offcanvasRight">
                  <div class="cart_icon">
                    <i class="fa-regular fa-bag-shopping text-xl"></i>

                  </div>
                  <span id="cart-count" class="icon_value">
                    {{ Cart::instance('shopping')->count() }}
                  </span>
                </button>


                @if (Auth::guard('customer')->user())
                <a class="text-white" style="font-size: 20px" href="{{route('customer.account')}}">
                  <i class="fa-regular fa-user"></i>
                </a>
                @else
                <button>
                  <a class="text-white" href="{{route('customer.login')}}">
                    <i class="fa-regular fa-user"></i>
                  </a>
                </button>
                @endif
              </div>
              <div class="header__hamburger d-xl-none">
                <button type="button" class="tp-menu-toggle">
                  <i class="fa-solid fa-bars"></i>
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</header>