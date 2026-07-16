@extends('frontEnd.layouts.master')
@section('title', $category->meta_title)
@push('seo')
<meta name="app-url" content="{{ route('category', $category->slug) }}" />
<meta name="robots" content="index, follow" />
<meta name="description" content="{{ $category->meta_description }}" />
<meta name="keywords" content="{{ $category->slug }}" />

<!-- Twitter Card data -->
<meta name="twitter:card" content="product" />
<meta name="twitter:site" content="{{ $category->name }}" />
<meta name="twitter:title" content="{{ $category->name }}" />
<meta name="twitter:description" content="{{ $category->meta_description }}" />
<meta name="twitter:creator" content="gomobd.com" />
<meta property="og:url" content="{{ route('category', $category->slug) }}" />
<meta name="twitter:image" content="{{ asset($category->image) }}" />

<!-- Open Graph data -->
<meta property="og:title" content="{{ $category->name }}" />
<meta property="og:type" content="product" />
<meta property="og:url" content="{{ route('category', $category->slug) }}" />
<meta property="og:image" content="{{ asset($category->image) }}" />
<meta property="og:description" content="{{ $category->meta_description }}" />
<meta property="og:site_name" content="{{ $category->name }}" />
@endpush
@section('content')
<section class="product__breadcrumb">
  <div class="container">
    <ul>
      <li><a href="{{ url('/') }}">Home</a></li>
      <li>{{ $category->name }}</li>
    </ul>
  </div>
</section>
<!-- Glass Painting area start  -->
<section class="shop__page">
  <div class="container">

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
              <span class="old-price"><i class="fa-solid"></i>৳ {{ $value->old_price }}</span>
              @endif
              <span class="curr-price"><i class="fa-solid"></i>৳ {{ $value->new_price }}</span>
            </div>
          </div>
          <div>
            @if (!$value->prosizes->isEmpty() || !$value->procolors->isEmpty())
            <div class="pro_btn d-flex g-4">
              <div class="cart_btn ">
                <a href="{{ route('product', $value->slug) }}" class="addcartbutton product_btn">Add to Cart</a>
              </div>
              <div class="cart_btn order_button ">
                <a href="{{ route('product', $value->slug) }}" class="addcartbutton product_btn dark2">Order Now</a>
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
            {{ $products->links('pagination::bootstrap-4') }}
          </ul>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Glasss Painting area end -->
@endsection
@push('scirpts')
<script>
$("#price-range").click(function() {
  $(".price-submit").submit();
})
$(".form-attribute").on('change click', function() {
  $(".attribute-submit").submit();
})
$(".sort").change(function() {
  $(".sort-form").submit();
})
$(".form-checkbox").change(function() {
  $(".subcategory-submit").submit();
})
</script>
@endpush