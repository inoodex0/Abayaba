@extends('frontEnd.layouts.master')
@section('title', $blog->title)
@section('content')
    <section class="breadcrumb">
        <div class="container">
            <h3>{{ $blog->title }}</h3>
            <ul>
                <li><a href="{{ url('/') }}">Home</a></li>
                <li>{{ $blog->title }}</li>
            </ul>
        </div>
    </section>
    <!-- breadcrumb area end  -->

    <div class="container page-padding">
        <div class="about__content pb-4">
            <div class="mb-4 text-center">
                <img src="{{ asset($blog->image) }}" width="80%" alt="">
            </div>
            <div>
                <h5>{{ $blog->title }}</h5>
            </div>
            {!! $blog->description !!}
        </div>
    </div>
@endsection
