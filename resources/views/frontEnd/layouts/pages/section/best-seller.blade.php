    <section class="section__area">
      <div class="container">
        <div class="section-title">
          <h2>{{__('Discover the Best Sellers')}}</h2>
        </div>
        {{-- <div class="best__seller">
                <div class="row">
                    @foreach ($topSales as $topsale)
                    <div class="col-6 col-lg-3 mb-4">
                        <a href="{{ route('product', $topsale->slug) }}" class="item">
        <img src="{{asset($topsale->image ? $topsale->image->image : '')}}" alt="{{$topsale->img_alt_text }}" />
        </a>
      </div>
      @endforeach
      </div>
      </div> --}}
      <div class="luxe-art">
        @foreach ($topSales as $value)
        <div class="product__item">
          <div class="product__img">
            <a href="{{ route('product', $value->slug) }}">
              <img src="{{ asset($value->image ? $value->image->image : '') }}" alt="{{ $value->img_alt_text }}" />
            </a>
          </div>
          <div class="product__content">
            <h4>
              <a href="{{ route('product', $value->slug) }}">{{ Str::limit($value->name, 40) }}</a>
            </h4>
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
                <span class="curr-price">
                  ৳ {{ $value->new_price }}
                </span>
                @if($value->old_price)
                <span class="old-price">৳ {{ $value->old_price }}
                </span>
                @endif
              </div>
            </div>
            <div>
              @if (!$value->prosizes->isEmpty() || !$value->procolors->isEmpty())
              <div class="pro_btn sub_btn">
                <div class="cart_btn">
                  <a class="cart_store product_btn" data-id="{{ $value->id }}">Add to
                    Cart</a>
                </div>
              </div>
              @else
              <div class="pro_btn sub_btn">
                <div class="cart_btn">
                  <a class="cart_store product_btn" data-id="{{ $value->id }}">Add to
                    Cart</a>
                </div>
              </div>
              @endif
            </div>
          </div>
        </div>
        @endforeach
      </div>
      </div>
      </div>
    </section>