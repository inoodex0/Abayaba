@extends('frontEnd.layouts.master')
@section('title','About Us')
@section('content')
      <div class="container mt-60">
        <div class="about__content pb-4">
           <div>
             <h5>{{$page->title}}</h5>
           </div>
            {!! $page->description !!}
        </div>
      </div>
@endsection