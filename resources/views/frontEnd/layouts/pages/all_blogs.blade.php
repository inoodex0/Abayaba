@extends('frontEnd.layouts.master')
@section('title', 'All Blogs')
@section('content')
<!-- breadcrumb start  -->
<section class="product__breadcrumb">
  <div class="container">
    <ul>
      <li><a href="{{ url('/') }}">Home</a></li>
      <li>{{ __('All Blogs') }}</li>
    </ul>
  </div>
</section>
<!-- breadcrumb end -->
<div class="shop__page">

  <div class="container">
    {{-- <div class="row">
      <div class="col-12">
        <div class="showing-data">
          <span>Showing {{ $products->firstItem() }}-{{ $products->lastItem() }} of
            {{ $products->total() }} Results</span>
        </div>
      </div>
    </div> --}}
    <div class="shop-4">
  @foreach ($blogs as $blog)
  <div class="product__item">
    <div class="product__img">
      <a href="{{ route('blog_details', $blog->slug) }}">
        <img src="{{ asset($blog->image)}}" alt="" />
      </a>
    </div>
    <div class="product__content">
      <h4><a href="{{ route('blog_details', $blog->slug) }}">{{ Str::limit($blog->title, 80) }}</a></h4>
      
        
          <div class="post__meta">
            <span>{{ $blog->created_at->format('d M, Y') }}</span>
            <span class="post_btn">{{ $blog->category->name }}</span>
          </div>
      
      
    </div>
  </div>
  @endforeach
</div>
<div class="row mt-10">
  <div class="col-sm-12">
    <div class="custom_paginate text-center mt-20">
      <ul class="pagination justify-content-center">
        {{ $blogs->links('pagination::bootstrap-4') }}
      </ul>
    </div>
  </div>
</div>
  </div>
</div>
</div>
</div>
@endsection