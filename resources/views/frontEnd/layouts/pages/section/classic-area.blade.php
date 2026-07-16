<section class="section__area">
  <div class="container">
    <div class="section-title">
      <h2>{{__('Top Sale')}}</h2>
    </div>

    <div class="best__seller">
      <div class="classic">
        @foreach ($topSales as $topsale)
        <a href="{{ route('product', $topsale->slug) }}" class="item">
          <img src="{{asset($topsale->image ? $topsale->image->image : '')}}" alt="{{$topsale->img_alt_text }}" />
        </a>
        @endforeach
      </div>
    </div>
  </div>
</section>