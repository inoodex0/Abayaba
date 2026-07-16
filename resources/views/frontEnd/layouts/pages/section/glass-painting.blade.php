<section class="products__area mb-4">
  <div class="container">
    @foreach ($homeproducts as $homecat)
    <div class="product__title"> {{-- <h3>Glass Painting</h3> --}} <h3>{{ $homecat->name }}</h3> <a
        href="{{ route('category', $homecat->slug) }}">View All</a> </div>
    <div class="glass">
      @foreach ($homecat->products as $key => $value)
      <div class="product__item">
        <div class="product__img"> <a href="{{ route('product', $value->slug) }}"> <img
              src="{{ asset($value->image ? $value->image->image : '') }}" alt="{{ $value->img_alt_text }}" /> </a>
        </div>
        <div class="product__content">
          <h4> <a href="{{ route('product', $value->slug) }}">{{ $value->name }}</a> </h4>
          <div class="start_rating">
            <ul> @php $rating = floor($value->average_rating); @endphp @for ($i = 1; $i <= 5; $i++) @if ($i <=$rating)
                <li><i class="fa-solid fa-star "></i></li>
                @else
                <li><i class="fa-regular fa-star"></i></li>
                @endif @endfor </ul>
          </div>

          <div class="price__wrap">

            <div class="price"> <span class="curr-price">৳ {{ $value->new_price }}</span>
              @if ($value->old_price)
              <span class="old-price"><i class="fa-solid "></i>${{ $value->old_price }}</span>
              @endif
            </div>
          </div>
          <div>
            @if (!$value->prosizes->isEmpty() || !$value->procolors->isEmpty())
            <div class="pro_btn sub_btn">
              <div class="cart_btn"> <a class="cart_store product_btn" data-id="{{ $value->id }}">Add to
                  Cart</a> </div>
            </div>
            @else
            <div class="pro_btn sub_btn">
              <div class="cart_btn"> <a class="cart_store product_btn" data-id="{{ $value->id }}">Add to
                  Cart</a> </div>
            </div>
            @endif
          </div>

        </div>
      </div>
      @endforeach
    </div>
    @endforeach
  </div>
  </div>
</section>