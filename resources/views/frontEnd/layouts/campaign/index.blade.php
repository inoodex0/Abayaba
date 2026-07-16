@extends('frontEnd.layouts.master')
@section('title', 'All Campaigns Products')
@section('content')
    <!-- breadcrumb start  -->
    <section class="product__breadcrumb">
        <div class="container">
            <ul>
                <li><a href="{{ url('/') }}">Home</a></li>
                <li>{{ __('All Campaigns Products') }}</li>
            </ul>
        </div>
    </section>
    <!-- breadcrumb end -->
    <div class="shop__page">

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="showing-data">
                        <span>Showing {{ $campaignProducts->firstItem() }}-{{ $campaignProducts->lastItem() }} of
                            {{ $campaignProducts->total() }} Results</span>
                    </div>
                </div>
            </div>
            <div class="shop-4">
                @foreach ($campaignProducts as $key => $value)
                    <div class="product__item">
                        <div class="product__img">
                            <a href="{{ route('product', $value->slug) }}">
                                <img src="{{ asset($value->image ? $value->image->image : '') }}"
                                    alt="{{ $value->img_alt_text }}" />
                            </a>
                        </div>
                        <div class="product__content">
                            <h4><a href="{{ route('product', $value->slug) }}">{{ Str::limit($value->name, 80) }}</a></h4>
                            <div class="start_rating">
                                <ul>
                                    @php
                                        $rating = floor($value->average_rating);
                                    @endphp
                                    @for ($i = 1; $i <= 5; $i++)
                                        @if ($i <= $rating)
                                            <li><i class="fa-solid fa-star "></i></li>
                                        @else
                                            <li><i class="fa-regular fa-star"></i></li>
                                        @endif
                                    @endfor
                                </ul>
                            </div>
                            {{-- @php
                                $basePrice = $value->old_price ?? $value->new_price;
                                $discount = $value->pivot->campaign_price ?? 0;
                                $campaignPrice = $discount ? round($basePrice - ($discount / 100 * $basePrice), 2) : $basePrice;
                            @endphp --}}
                            <div class="price__wrap">
                                {{-- <div class="price">
                                    @if ($value->old_price)
                                        <span class="old-price"><i class="fa-solid"></i>${{ $value->old_price }}</span>
                                    @endif
                                    <span class="curr-price"><i class="fa-solid"></i>${{ $value->new_price }}</span>
                                </div> --}}
                                {{-- <div class="price">
                                    @if ($value->pivot->campaign_price > 0)
                                        <span class="old-price"><s>${{ number_format($value->old_price ?? $value->new_price, 2) }}</s></span>
                                        <span class="curr-price">${{ number_format($value->campaign_final_price, 2) }}</span>
                                        <span class="discount text-danger">-{{ $value->pivot->campaign_price }}%</span>
                                    @else
                                        <span class="curr-price">${{ number_format($value->campaign_final_price, 2) }}</span>
                                    @endif
                                </div> --}}
                                @php
                                    $basePrice = $value->old_price ?? $value->new_price;
                                    $discount = $value->pivot->campaign_price ?? 0;
                                    $finalPrice = $discount ? round($basePrice - ($discount / 100 * $basePrice), 2) : $basePrice;
                                @endphp

                                <div class="price">
                                    @if ($discount > 0)
                                        <span class="old-price"><s>${{ number_format($basePrice, 2) }}</s></span>
                                        <span class="curr-price">${{ number_format($finalPrice, 2) }}</span>
                                        <span class="discount text-danger">-{{ $discount }}%</span>
                                    @else
                                        <span class="curr-price">${{ number_format($finalPrice, 2) }}</span>
                                    @endif
                                </div>
                                @if (!$value->prosizes->isEmpty() || !$value->procolors->isEmpty())
                                    <div class="pro_btn d-flex g-4">
                                        <div class="cart_btn ">
                                            <a href="{{ route('product', $value->slug) }}"
                                                class="addcartbutton product_btn">Add to
                                                Cart</a>
                                        </div>
                                        <div class="cart_btn order_button ">
                                            <a href="{{ route('product', $value->slug) }}"
                                                class="addcartbutton product_btn">Order
                                                Now</a>
                                        </div>

                                    </div>
                                @else
                                    <div class="pro_btn d-flex g-4">
                                        <div class="cart_btn ">
                                            <a data-id="{{ $value->id }}" class="addcartbutton product_btn">Add to
                                                Cart</a>
                                        </div>
                                        <form action="{{ route('cart.store') }}" method="POST">
                                            @csrf
                                            <input type="hidden" name="id" value="{{ $value->id }}" />
                                            <input type="hidden" name="qty" value="1" />
                                            <button type="submit" class="product_btn dark">Order Now</button>
                                        </form>
                                    </div>
                                @endif
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
            <div class="row mt-10">
                <div class="col-sm-12">
                    <div class="custom_paginate text-center mt-20">
                        <ul class="pagination justify-content-center">
                            {{ $campaignProducts->links('pagination::bootstrap-4') }}
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
