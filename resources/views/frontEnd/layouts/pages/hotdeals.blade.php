@extends('frontEnd.layouts.master')
@section('title','Hot Deals')
@section('content')
<!-- breadcrumb start  -->
<section class="product__breadcrumb">
  <div class="container">
    <ul>
      <li><a href="{{ url('/') }}">Home</a></li>
      <li><strong>Hot Deals</strong></li>
    </ul>
  </div>
</section>
<!-- breadcrumb end -->
<!-- hot deals area start  -->
<section class="shop__page">
  <div class="container">
    <div class="col-sm-6">
      <div class="col-sm-5">
        <div class="showing-data">
          <span>Showing {{ $products->firstItem() }}-{{ $products->lastItem() }} of {{ $products->total() }}
            Results</span>
        </div>
      </div>
    </div>
    {{-- <div class="col-sm-6">
                <div class="filter_sort">
                    <div class="filter_btn">
                        <i class="fa fa-list-ul"></i>
                    </div>
                    <div class="page-sort">
                        <form action="" class="sort-form">
                            <select name="sort" class="form-control form-select sort">
                                <option value="1" @if (request()->get('sort') == 1) selected @endif>Product: Latest
                                </option>
                                <option value="2" @if (request()->get('sort') == 2) selected @endif>Product: Oldest
                                </option>
                                <option value="3" @if (request()->get('sort') == 3) selected @endif>Price: High To Low
                                </option>
                                <option value="4" @if (request()->get('sort') == 4) selected @endif>Price: Low To High
                                </option>
                                <option value="5" @if (request()->get('sort') == 5) selected @endif>Name: A-Z</option>
                                <option value="6" @if (request()->get('sort') == 6) selected @endif>Name: Z-A</option>
                            </select>
                            <input type="hidden" name="min_price" value="{{ request()->get('min_price') }}" />
    <input type="hidden" name="max_price" value="{{ request()->get('max_price') }}" />
    </form>
  </div>
  </div>
  </div> --}}

  <div class="shop-4">
    @foreach ($products as $key => $value)
    <div class="product__item">
      <div class="product__img">
        <a href="{{ route('product', $value->slug) }}">
          <img src="{{ asset($value->image ? $value->image->image : '') }}" alt="{{ $value->img_alt_text }}" />
        </a>
      </div>
      <div class="product__content">
        <h4><a href="{{ route('product', $value->slug) }}">{{ Str::limit($value->name, 80) }}</a></h4>
        <div class="start_rating">
          <ul>
            @php
            $rating = floor($value->average_rating);
            @endphp
            @for ($i = 1; $i <= 5; $i++) @if ($i <=$rating) <li><i class="fa-solid fa-star "></i></li>
              @else
              <li><i class="fa-regular fa-star"></i></li>
              @endif
              @endfor
          </ul>
        </div>

        <div class="price__wrap">
          <div class="price">
            @if ($value->old_price)
            <span class="old-price">৳ {{ $value->old_price }}</span>
            @endif
            <span class="curr-price">৳ {{ $value->new_price }}</span>
          </div>
        </div>
        @if(! $value->prosizes->isEmpty() || ! $value->procolors->isEmpty())
        <div class="pro_btn">
          <div class="cart_btn">
            <a href="{{ route('product',$value->slug) }}" class="addcartbutton">Cart</a>
          </div>
          <div class="cart_btn order_button">
            <a href="{{ route('product',$value->slug) }}" class="addcartbutton">Order</a>
          </div>
        </div>
        @else

        <div class="pro_btn">
          <div class="cart_btn">
            <a data-id="{{$value->id}}" class="addcartbutton">Cart</a>
          </div>
          <form action="{{route('cart.store')}}" method="POST">
            @csrf
            <input type="hidden" name="id" value="{{$value->id}}" />
            <input type="hidden" name="qty" value="1" />
            <button type="submit">Order</button>
          </form>
        </div>
        @endif
      </div>
    </div>
    @endforeach
  </div>
  <div class="row mt-10">
    <div class="col-sm-12">
      <div class="custom_paginate text-center mt-20">
        <ul class="pagination justify-content-center">
          {{ $products->links('pagination::bootstrap-4') }}
        </ul>
      </div>
    </div>
  </div>
  </div>
</section>
<!-- hot deals area end -->
@endsection