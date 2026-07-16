@extends('frontEnd.layouts.master')
@section('title', 'About Us')
@section('content')
    <!-- breadcrumb start  -->
    <section class="product__breadcrumb">
        <div class="container">
            <ul>
                <li><a href="{{ url('/') }}">Home</a></li>
                <li>{{ __('About Us') }}</li>
            </ul>
        </div>
    </section>
    <!-- breadcrumb end -->
    <div class="shop__page">

        <!-- About Section -->
<section class="py-5" style="background: #f8f9fa;">
    <div class="container">
        <div class="row align-items-center">

            <!-- Left Content -->
            <div class="col-lg-6 mb-4 mb-lg-0">
                <h2 class="fw-bold mb-3">Welcome to <span style="color:#ff6a00;">Abayaba</span></h2>
                <p class="text-muted">
                    Bangladesh’s trusted online shopping destination bringing you quality, authenticity, and fair pricing.
                    From electronics & gadgets, kitchen appliances, toys, kids & baby products, home & living items,
                    fashion accessories, health & beauty essentials to seasonal collections – everything you need is in one place.
                </p>

                <div class="row mt-4">
                    <div class="col-6 mb-3">
                        <div class="d-flex align-items-center">
                            <i class="fa-solid fa-truck-fast fa-2x me-3 text-primary"></i>
                            <div>
                                <h6 class="mb-0 fw-semibold">Fast Delivery</h6>
                                <small class="text-muted">Nationwide shipping in 2-4 days</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-6 mb-3">
                        <div class="d-flex align-items-center">
                            <i class="fa-solid fa-shield-check fa-2x me-3 text-success"></i>
                            <div>
                                <h6 class="mb-0 fw-semibold">Secure Payment</h6>
                                <small class="text-muted">100% safe transactions</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-6 mb-3">
                        <div class="d-flex align-items-center">
                            <i class="fa-solid fa-money-bill-wave fa-2x me-3 text-warning"></i>
                            <div>
                                <h6 class="mb-0 fw-semibold">Cash on Delivery</h6>
                                <small class="text-muted">Pay when you receive</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-6 mb-3">
                        <div class="d-flex align-items-center">
                            <i class="fa-solid fa-rotate-left fa-2x me-3 text-danger"></i>
                            <div>
                                <h6 class="mb-0 fw-semibold">Easy Returns</h6>
                                <small class="text-muted">7-Day return policy</small>
                            </div>
                        </div>
                    </div>
                </div>

                <a href="{{ route('home') }}" class="btn btn-dark mt-3 px-4">Start Shopping</a>
            </div>

            <!-- Right Stats Card -->
            <div class="col-lg-6">
                <div class="card shadow-lg border-0 rounded-4 p-4">
                    <h5 class="fw-bold mb-4 text-center">Why Customers Trust Us</h5>

                    <div class="row text-center">
                        <div class="col-6 mb-4">
                            <h3 class="fw-bold text-primary">50,000+</h3>
                            <p class="text-muted mb-0">Happy Customers</p>
                        </div>
                        <div class="col-6 mb-4">
                            <h3 class="fw-bold text-success">10,000+</h3>
                            <p class="text-muted mb-0">Products Available</p>
                        </div>
                        <div class="col-6">
                            <h3 class="fw-bold text-warning">64+</h3>
                            <p class="text-muted mb-0">Districts Covered</p>
                        </div>
                        <div class="col-6">
                            <h3 class="fw-bold text-danger">24/7</h3>
                            <p class="text-muted mb-0">Customer Support</p>
                        </div>
                    </div>

                    <hr>

                    <p class="text-muted small text-center mb-0">
                        Serving customers in Dhaka, Chattogram, Sylhet, Rajshahi, Khulna and across Bangladesh with care and reliability.
                    </p>
                </div>
            </div>

        </div>
    </div>
</section>

    </div>
@endsection
