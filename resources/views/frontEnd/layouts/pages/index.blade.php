@extends('frontEnd.layouts.master')
@section('title', 'Home')
@section('content')
    <!-- hero area start  -->
    @if ($sliders->isNotEmpty())
        <section class="hero__area">
            <div class="hero-slider">
                @foreach ($sliders as $slider)
                    <a href="#">
                        <img src="{{ asset($slider->image) }}" alt="" />
                    </a>
                @endforeach
            </div>
        </section>
    @endif
    <!-- hero area end  -->

    <!-- featured category area start  -->
    @include('frontEnd.layouts.pages.section.top-category')
    <!-- featured category area end -->

    <!-- best seller products start -->
    @include('frontEnd.layouts.pages.section.best-seller')
    <!-- best seller products end -->

    <!-- campaign products start -->
    @if ($new_campaign->isNotEmpty())
        @include('frontEnd.layouts.pages.section.campaign')
    @endif
    <!-- campaign products end -->

    <!-- Luxe art area start  -->
    @include('frontEnd.layouts.pages.section.luxe-area')
    <!--  Luxe art area end -->

    <!-- banner area start  -->
    @if ($hotdealBottomBanners->isNotEmpty())
        <section class="banner__area">
            <div class="container">
                <div class="col-sx-12 col-lg-6 banner">
                    @foreach ($hotdealBottomBanners as $item)
                        <div class="banner__item {{ $loop->iteration == 2 ? 'text-right' : '' }}">
                            <img src="{{ asset($item->image) }}" alt="" />
                        </div>
                    @endforeach
                </div>
            </div>
        </section>
    @endif

    <!-- banner area end -->

    <!-- classic area start  -->
    {{-- @include('frontEnd.layouts.pages.section.classic-area') --}}
    <!-- classic area end -->

    <!-- Glass Painting area start  -->
    @include('frontEnd.layouts.pages.section.glass-painting')
    <!-- Glasss Painting area end -->

    @if ($blogs->isNotEmpty())
        <!-- featured category area start  -->
        @include('frontEnd.layouts.pages.section.blog')
        <!-- featured category area end -->
    @endif

    <!-- banner area start  -->
    @if ($footerTopBanners->isNotEmpty())
        <section class="banner__area">
            <div class="container">
                <div class="col-sx-12 col-lg-6 banner">
                    @foreach ($footerTopBanners as $item)
                        <div class="banner__item {{ $loop->iteration == 2 ? 'text-right' : '' }}">
                            <img src="{{ asset($item->image) }}" alt="" />
                        </div>
                    @endforeach
                </div>
            </div>
        </section>
    @endif
    <!-- banner area end -->
    <!-- Back to top button start -->
    <button class="scroll-to-top position-fixed">
        <i class="fas fa-chevron-up"></i>
    </button>
    <!-- Back to top button end -->
    <!-- icon section start  -->
    <section class="icon__area">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="icon-box">
                        <div class="icon__img">
                            <i class="fa-solid fa-car"></i>
                        </div>
                        <div class="icon__text">
                            <h4>Next Day Dispatch</h4>
                            <p>Fast shipping all over india</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="icon-box">
                        <div class="icon__img">
                            <i class="fa-solid fa-steering-wheel"></i>
                        </div>
                        <div class="icon__text">
                            <h4>Unique Designs</h4>
                            <p>World class Quality and Design experience</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="icon-box">
                        <div class="icon__img">
                            <i class="fa-solid fa-arrow-rotate-right"></i>
                        </div>
                        <div class="icon__text">
                            <h4>Friendly Return Policy</h4>
                            <p>Customer get quick return and refund</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="icon-box">
                        <div class="icon__img">
                            <i class="fa-solid fa-dollar-sign"></i>
                        </div>
                        <div class="icon__text">
                            <h4>100% Secure Payment</h4>
                            <p>Trusted & Secure Payment</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- icon section end -->
@endsection
