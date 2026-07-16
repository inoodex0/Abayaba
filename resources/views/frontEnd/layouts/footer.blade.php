<footer>
    <div class="footer__area">
        <div class="footer__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-sm-6 mb-4">
                        <div class="footer__widget">
                            <h3 class="footer__widget-title">TOP CATEGORIES</h3>

                            <ul>
                                @foreach ($menucategories->take(10) as $key=> $value)

                                <li>
                                    <a href="{{ route('category', $value->slug) }}">{{ $value->name }}</a>
                                </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 mb-4">
                        <div class="footer__widget">
                            <h3 class="footer__widget-title">FURTHER INFO</h3>

                            <ul>
                                 <li><a href="{{route('contact')}}">Contact Us</a></li>
                                @foreach ($pages as $page )
                                    <li><a href="{{route('page',['slug'=>$page->slug])}}">{{$page->name}}</a></li>
                                @endforeach
                                 <li><a href="{{ route('about') }}">About</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 mb-4">
                        <div class="footer__widget">
                            <h3 class="footer__widget-title">USEFUL LINKS</h3>
                            <div class="link">
                                <ul>
                                     @foreach($pagesright as $value)
                                        <li><a href="{{route('page',['slug'=>$value->slug])}}">{{$value->name}}</a></li>
                                    @endforeach
                                </ul>
                            </div>
                            {{-- <h3 class="footer__widget-title">GET EXTRA DISCOUNT</h3>
                            <p>
                                Sign up for exclusive updates, new arrivals & insider only
                                discounts
                            </p>
                            <div class="footer__newsletter">
                                <div class="footer__newsletter-form">
                                    <span><i class="fa-regular fa-envelope"></i></span>
                                    <input type="text" placeholder="Enter Your Email" />
                                </div>
                                <button>
                                    <i class="fa-solid fa-arrow-right"></i>
                                </button>
                            </div> --}}
                            <div class="footer__social">
                                <ul>
                                    @foreach ($socialicons  as $social)    
                                    <li>
                                        <a href="{{$social->link}}"><i class="{{$social->icon}}"></i></a>
                                    </li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="footer__widget">
                            <div class="contact__item">
                                <span> <i class="fa-solid fa-chart-mixed"></i></span>
                                <a href="{{route('customer.order_track')}}">Track Order</a>
                            </div>
                            <div class="contact__item">
                                <span> <i class="fa-regular fa-phone"></i></span>
                                <a href="tel:{{$contact->hotline}}">{{$contact->hotline}}</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
