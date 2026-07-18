@extends('frontEnd.layouts.master')
@section('title', $details->name)
@push('seo')
<meta name="app-url" content="{{ route('product', $details->slug) }}" />
<meta name="robots" content="index, follow" />
<meta name="description" content="{{ $details->meta_description }}" />
<meta name="keywords" content="{{ $details->slug }}" />

<!-- Twitter Card data -->
<meta name="twitter:card" content="product" />
<meta name="twitter:site" content="{{ $details->name }}" />
<meta name="twitter:title" content="{{ $details->name }}" />
<meta name="twitter:description" content="{{ $details->meta_description }}" />
<meta name="twitter:creator" content="{{ URL::to('/') }}" />
<meta property="og:url" content="{{ route('product', $details->slug) }}" />
<meta name="twitter:image" content="{{ asset($details->image?->image) }}" />


<!-- Open Graph data -->
<meta property="og:title" content="{{ $details->name }}" />
<meta property="og:type" content="product" />
<meta property="og:url" content="{{ route('product', $details->slug) }}" />
<meta property="og:image" content="{{ asset($details->image?->image) }}" />
<meta property="og:description" content="{{ $details->meta_description }}" />
<meta property="og:site_name" content="{{ $details->name }}" />
@endpush
@section('content')
<!-- breadcrumb start  -->
<section class="product__breadcrumb">
  <div class="container">
    <ul>
      <li><a href="{{ url('/') }}">Home</a></li>
      <li><a href="{{ url('category/' . $details->category->slug) }}">{{ $details->category->name }}</a>
      </li>
      @if ($details->subcategory)
      <li><a href="">{{ $details->subcategory ? $details->subcategory->subcategoryName : '' }}</a>
      </li>
      @endif
      @if ($details->childcategory)
      <li><a href="">{{ $details->childcategory->childcategoryName }}</a></li>
      @endif
      <li>{{ Str::limit($details->name, 80) }}</li>
    </ul>
  </div>
</section>
<!-- breadcrumb end -->
<!-- product details area  start -->
<section class="product__details_area">
  <div class="container">
    <div class="row">
      <div class="col-lg-8">
        <div class="product__image__slider">
          <div class="main-slider">
            @foreach ($details->images as $value)
            <div>
              <img src="{{ asset($value->image) }}" alt="{{ $details->img_alt_text }}" />
            </div>
            @endforeach
          </div>
          <!-- Thumbnail Slider -->
          <div class="thumb-slider">
            @foreach ($details->images as $key => $image)
            <div>
              <img src="{{ asset($image->image) }}" alt="{{ $details->img_alt_text }}" />
            </div>
            @endforeach
          </div>
        </div>
        <!-- product video section  -->
        @if ($details->pro_vide)
        <div class="product__video">
          <video src="{{ $details->pro_video }}" controls autoplay muted></video>
        </div>
        @endif
      </div>
      <div class="col-lg-4">
        <div class="product__info">
          <h3>{{ $details->name }}</h3>
          <div class="star-rating">
            @php
            $averageRating = $reviews->avg('ratting');
            $filledStars = floor($averageRating);
            $emptyStars = 5 - $filledStars;
            @endphp

            @if ($averageRating >= 0 && $averageRating <= 5) @for ($i=1; $i <=$filledStars; $i++) <i
              class="fas fa-star"></i>
              @endfor

              @if ($averageRating == $filledStars)
              @else
              <i class="far fa-star-half-alt"></i>
              @endif

              @for ($i = 1; $i <= $emptyStars; $i++) <i class="far fa-star"></i>
                @endfor

                <span>{{ number_format($averageRating, 2) }}/5</span>
                @else
                <span>Invalid rating range</span>
                @endif
          </div>
           @php
              // Try to get active campaign first
              $campaign = $details->activeCampaign->first();
              $basePrice = $details->old_price ?? $details->new_price;
              $discountPercent = $campaign->pivot->campaign_price ?? 0;
              $finalPrice = $discountPercent 
                  ? round($basePrice - ($discountPercent / 100 * $basePrice), 2) 
                  : $details->new_price;

              // Calculate regular discount if no campaign discount
              $regularDiscount = 0;
              if (!$discountPercent && $details->old_price) {
                  $regularDiscount = ((($details->old_price - $details->new_price) * 100) / $details->old_price);
              }
          @endphp

          <div class="price">
              @if ($discountPercent > 0)
                  <span class="old__price">৳ {{ number_format($basePrice, 2) }}</span>
                  <span class="current__price">৳ {{ number_format($finalPrice, 2) }}</span>
                  <span class="discount">SAVE {{ number_format($discountPercent, 0) }}%</span>
                  <span class="discount">This product is on campaign discount!</span>
              @else
                  @if ($details->old_price)
                      <span class="old__price">৳ {{ number_format($details->old_price, 2) }}</span>
                  @endif
                  <span class="current__price">৳ {{ number_format($details->new_price, 2) }}</span>
                  @if ($regularDiscount > 0)
                      <span class="discount">SAVE {{ number_format($regularDiscount, 0) }}%</span>
                  @endif
              @endif
          </div>
          {{-- <div class="price">
            @if ($details->old_price)
            <span class="old__price">৳  {{ $details->old_price }}</span>
            @endif
            <span class="current__price">৳  {{ $details->new_price }}</span>

            @if ($details->old_price)
            <span class="discount">SAVE @php $discount=(((($details->old_price)-($details->new_price))*100) /
              ($details->old_price)) @endphp {{ number_format($discount, 0) }}% </span>
            @endif
          </div> --}}
          {{-- <div class="bestprice">Home Decor Best Price</div>
                            <div class="option d-flex align-items-center">
                            <span class="option-title">Frame Type:</span>
                            <span class="option-desc"
                                >Ready To Hang (Fitted With Wood Frame)</span
                            >
                            </div>
                            <div class="discount__img">
                            <img src="assets/img/slider/product-details.jpg" alt="" />
                            </div>
                            <div class="custom__order">
                            <span>Extra Discount on <a href="#">Bulk Order</a></span>
                            <a href="#">Customize Order</a>
                            </div> --}}
          {{-- <div class="order__btn">
                            <a  class="theme-btn cart cart_store" data-id="{{$details->id}}">Add to Cart</a>
          <input type="hidden" class="product-qty" value="1">
          <form action="{{route('cart.store')}}" method="POST">
            @csrf
            <input type="hidden" name="id" value="{{$details->id}}" />
            <input type="hidden" name="qty" value="1" />
            <button class="theme-btn buy" type="submit">Buy Now</button>
          </form>
        </div> --}}
        <form action="{{ route('cart.store') }}" method="POST" name="formName">
          @csrf
          <input type="hidden" name="id" value="{{ $details->id }}" />
          @if ($productcolors->count() > 0)
          <div class="pro-color" style="width: 100%;">
            <div class="color_inner">
              <p>Color -</p>
              <div class="size-container">
                <div class="selector">
                  @foreach ($productcolors as $procolor)
                  <div class="selector-item">
                    <input type="radio" id="fc-option{{ $procolor->id }}"
                      value="{{ $procolor->color ? $procolor->color->colorName : '' }}" name="product_color"
                      class="selector-item_radio emptyalert" required />
                    <label for="fc-option{{ $procolor->id }}"
                      style="background-color: {{ $procolor->color ? $procolor->color->color : '' }}"
                      class="selector-item_label">
                      <span>
                        <img src="{{ asset('public/frontEnd/images') }}/check-icon.svg" alt="Checked Icon" />
                      </span>
                    </label>
                  </div>
                  @endforeach
                </div>
              </div>
            </div>
          </div>
          @endif @if ($productsizes->count() > 0)
          <div class="pro-size" style="width: 100%;">
            <div class="size_inner">
              <p>Size- <span class="attibute-name"></span></p>
              <div class="size-container">
                <div class="selector">
                  @foreach ($productsizes as $prosize)
                  <div class="selector-item">
                    <input type="radio" id="f-option{{ $prosize->id }}"
                      value="{{ $prosize->size ? $prosize->size->sizeName : '' }}" name="product_size"
                      class="selector-item_radio emptyalert" required />
                    <label for="f-option{{ $prosize->id }}"
                      class="selector-item_label">{{ $prosize->size ? $prosize->size->sizeName : '' }}</label>
                  </div>
                  @endforeach
                </div>
              </div>
            </div>
          </div>
          @endif
          @if ($details->pro_unit)
          <div class="pro_unig">
            <label>Unit: {{ $details->pro_unit }}</label>
            <input type="hidden" name="pro_unit" value="{{ $details->pro_unit }}" />
          </div>
          @endif
          <div class="pro_brand">
            <p>Brand :
              {{ $details->brand ? $details->brand->name : 'Own / Local' }}
            </p>
          </div>

          <div class="row p-md-0 p-sm-0">
            {{-- <div class="qty-cart col-sm-12">
                                            <div class="quantity">
                                                <span class="minus">-</span>
                                                <input type="text" name="qty"
                                                    value="1" />
                                                <span class="plus">+</span>
                                            </div>
                                        </div> --}}
            <div class="qty-cart col-sm-12">
              <div class="quantity">
                {{-- <span class="minus">-</span> --}}
                <input type="hidden" name="qty" value="1" />
                {{-- <span class="plus">+</span> --}}
              </div>
            </div>
            <div class="order__btn">
              <input type="submit" class="theme-btn cart" id="" onclick="return sendSuccess();" name="add_cart"
                value="Add To Cart" />

              <input type="submit" class="theme-btn buy" onclick="return sendSuccess();" name="order_now"
                value="Order Now" />
            </div>
          </div>
          <div class="mt-md-2 mt-2">
            <h4 class="font-weight-bold">
              <a class="btn btn-success w-100 call_now_btn" href="tel: {{ $contact->hotline }}">
                <i class="fa fa-phone-square"></i>
                {{ $contact->hotline }}
              </a>
            </h4>
          </div>
          <div class="mt-md-2 mt-2">
            <div class="del_charge_area">
              <div class="alert alert-info text-xs">
                <div class="flext_area">
                  <i class="fa-solid fa-cubes"></i>
                  <div>

                    @foreach ($shippingcharge as $key => $value)
                    <span>{{ $value->name }} <br /></span>
                    @endforeach
                  </div>
                </div>
              </div>
            </div>
          </div>
        </form>
        <!-- delivery stats  -->
        <div class="delivery__stats">
          <div class="row">
            <div class="col-3 col-lg-3">
              <div class="icon__box">
                <div class="icon__img">
                  <img src="{{ asset('public/frontEnd/assets/img/product-details/delivery.avif') }}" alt="" />
                </div>
                <div class="icon__content">
                  <span>Free Delivery</span>
                </div>
              </div>
            </div>
            <div class="col-3 col-lg-3">
              <div class="icon__box">
                <div class="icon__img">
                  <img src="{{ asset('public/frontEnd/assets/img/product-details/return.png') }}" alt="" />
                </div>
                <div class="icon__content">
                  <span>Friendly Return Policy</span>
                </div>
              </div>
            </div>
            <div class="col-3 col-lg-3">
              <div class="icon__box">
                <div class="icon__img">
                  <img src="{{ asset('public/frontEnd/assets/img/product-details/secure.png') }}" alt="" />
                </div>
                <div class="icon__content">
                  <span>100% Secure Payment</span>
                </div>
              </div>
            </div>
            <div class="col-3 col-lg-3">
              <div class="icon__box">
                <div class="icon__img">
                  <img src="{{ asset('public/frontEnd/assets/img/product-details/delivery.avif') }}" alt="" />
                </div>
                <div class="icon__content">
                  <span>Free Delivery</span>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- faq accordion  -->
        <div class="product_faq">
          <div class="accordion" id="accordionExample">
            <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne"
                  aria-expanded="true" aria-controls="collapseOne">
                  Feature And Details
                </button>
              </h2>
              <div id="collapseOne" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                  {!! $details->specification !!}
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>
</section>
<!-- product details area  end -->

<!-- product description start  -->
<section class="product__description">
  <div class="container">
    <div class="desc__box">
      <h4>Descriptioin</h4>
      <p>
        {!! $details->description !!}
      </p>
    </div>
  </div>
</section>
<!-- product description end  -->

<!-- product review area start -->
@php
// Calculate average rating & total reviews
$averageRating = $reviews->avg('ratting') ?? 0;
$totalReviews = $reviews->count();

// Count how many reviews per star rating
$ratingsCount = [
5 => $reviews->where('ratting', 5)->count(),
4 => $reviews->where('ratting', 4)->count(),
3 => $reviews->where('ratting', 3)->count(),
2 => $reviews->where('ratting', 2)->count(),
1 => $reviews->where('ratting', 1)->count(),
];
@endphp

<section class="product__review">
  <div class="container">
    <div class="review__card">
      <!-- review card top  -->
      <div class="card__top">
        <h3 class="text-center">Customer Review</h3>
        <div class="row align-items-center">
          <div class="col-lg-4 text-center">
            <div class="review__star">
              <div class="d-flex align-items-center justify-content-center">
                <ul class="list-unstyled d-flex align-items-center justify-content-center mb-0">
                  @for ($i = 1; $i <= 5; $i++) @if ($i <=floor($averageRating)) <li><i class="fa-solid fa-star"></i>
                    </li>
                    @elseif ($i == ceil($averageRating) && $averageRating - floor($averageRating) >= 0.5)
                    <li><i class="fa-solid fa-star-half-stroke"></i></li>
                    @else
                    <li><i class="fa-regular fa-star"></i></li>
                    @endif
                    @endfor
                </ul>
                <span>{{ number_format($averageRating, 2) }} out of 5</span>
              </div>
              {{-- <p>Based on {{ $totalReviews }} review{{ $totalReviews != 1 ? 's' : '' }}</p> --}}
              <p>
                Based on
                @if ($totalReviews >= 1000)
                {{ number_format($totalReviews / 1000, 1) }}k
                @else
                {{ $totalReviews }}
                @endif
                review{{ $totalReviews != 1 ? 's' : '' }}
              </p>

            </div>
          </div>

          <div class="col-lg-4 text-center">
            <div class="review__count">
              @foreach ($ratingsCount as $stars => $count)
              @php
              $percent = $totalReviews ? ($count / $totalReviews) * 100 : 0;
              @endphp
              <div class="count__item d-flex align-items-center mb-2">
                <div class="count__star me-3" style="width: 120px;">
                  <ul class="list-unstyled d-flex mb-0">
                    @for ($i = 1; $i <= 5; $i++) @if ($i <=$stars) <li><i class="fa-solid fa-star "></i></li>
                      @else
                      <li><i class="fa-regular fa-star "></i></li>
                      @endif
                      @endfor
                  </ul>
                </div>
                <div class="count__bar flex-grow-1 me-3"
                  style="background: #e0e0e0; height: 12px; border-radius: 6px; overflow: hidden;">
                  <div class="bar__inner" style="width: {{ $percent }}%; background: #f0ad4e; height: 100%;">
                  </div>
                </div>
                <div class="count__number" style="width: 40px; text-align: right;">
                  <span>
                    @if ($count >= 1000000)
                    {{ number_format($count / 1000000, 1) }}M
                    @elseif($count >= 1000)
                    {{ number_format($count / 1000, 1) }}k
                    @else
                    {{ $count }}
                    @endif
                  </span>
                  {{-- <span>{{ $count }}</span> --}}
                </div>
              </div>
              @endforeach
            </div>
            {{-- <div class="review__count">
                                @foreach ($ratingsCount as $stars => $count)
                                    @if ($count > 0)
                                    @php
                                        $percent = $totalReviews ? ($count / $totalReviews) * 100 : 0;
                                    @endphp
                                    <div class="count__item">
                                        <div class="count__star">
                                        <ul class="list-unstyled d-flex">
                                            @for ($i = 1; $i <= 5; $i++)
                                            @if ($i <= $stars)
                                                <li><i class="fa-solid fa-star"></i></li>
                                            @else
                                                <li><i class="fa-regular fa-star"></i></li>
                                            @endif
                                            @endfor
                                        </ul>
                                        </div>
                                        <div class="count__bar">
                                        <div class="bar__inner" style="width:33%;"></div>
                                        </div>
                                        <div class="count__number">
                                        <span>{{ $count }}</span>
          </div>
        </div>
        @endif
        @endforeach
      </div> --}}
    </div>

    <div class="col-lg-4 text-center">
      <div class="review__btn">
        <button>Write a Review</button>
      </div>
    </div>
  </div>
  </div>

  <!-- review card bottom -->
  <div class="review__form text-center">
    <div class="row">
      <div class="col-md-8 mx-auto">
        <div>
          <div class="d-flex flex-column">
            <h3>Write a review</h3>

            <div class="review">
              @if (Auth::guard('customer')->user())
              <form action="{{ route('customer.review') }}" method="POST">
                @csrf
                <input type="hidden" name="product_id" value="{{ $details->id }}">
                <div class="ratting">
                  <p>Rating</p>
                  <div class="rating">
                    <label title="Excelent">
                      ☆
                      <input required type="radio" name="ratting" value="5" />
                    </label>
                    <label title="Best">
                      ☆
                      <input required type="radio" name="ratting" value="4" />
                    </label>
                    <label title="Better">
                      ☆
                      <input required type="radio" name="ratting" value="3" />
                    </label>
                    <label title="Very Good">
                      ☆
                      <input required type="radio" name="ratting" value="2" />
                    </label>
                    <label title="Good">
                      ☆
                      <input required type="radio" name="ratting" value="1" />
                    </label>
                  </div>
                  <div id="review"></div>
                </div>
                <div class="w-full d-flex flex-column mb-2">
                  <label for="reviewtext">Review </label>
                  <textarea name="review" id="reviewtext"></textarea>
                </div>
                <p>
                  How we use your data: We’ll only contact you about the
                  review you left, and only if necessary. By submitting
                  your review, you agree to Judge.me’s terms, privacy and
                  content policies.
                </p>

                <div class="form__btn">
                  <button id="cancel" class="theme-btn cancel">
                    Cancel Review
                  </button>
                  <button class="theme-btn submit">Submit Review</button>
                </div>
              </form>
              @else
              <a href="{{ route('customer.login') }}" class="text-danger">You must be
                logged in to write a review.</a>
              @endif
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  </div>
  </div>
</section>
<!-- product review area end -->

<!-- review List start  -->

<section class="review__list">
  <div class="container">
    <div class="row">
      <div>
        <h3>Reviews ({{ $reviews->count() }})</h3>
      </div>
      @if($reviews->count() > 0)
      @foreach ($reviews as $key=>$review)
      <div class="col-md-6 col-lg-4">
        <div class="review__card">
          <div class="review_star">
            <ul>
              <li>{!! str_repeat('<i class="fa-solid fa-star"></i>', $review->ratting) !!}</li>
            </ul>
          </div>

          <div class="review_author">
            <div class="author_img">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                class="feather feather-message-square">
                <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path>
              </svg>
            </div>
            <div class="author_info">
              <h4>{{$review->name}}</h4>
            </div>
          </div>
          <div class="review_date">
            <p>{{ $review->created_at->diffForHumans() }} ({{ $review->created_at->format('d-m-Y') }})</p>
          </div>
          <div class="review_text">
            <p>{{ $review->review }}</p>
          </div>
        </div>
      </div>
      @endforeach
      @else
      <div class="col-md-6 col-lg-4 mx-auto">
        <div class="review__card">
          <div class="review_text text-center">
            <h4>This product has no reviews yet. Be the first one to write a review.</h4>
          </div>
        </div>
      </div>
      @endif
    </div>
  </div>
</section>
<!-- review List end -->

<!-- Related   area start  -->
<section class="products__area mb-4">
  <div class="container">
    <div class="product__title">
      <h3>Related Products</h3>
    </div>
    <div class="glass">
      @foreach ($products as $key => $value)
      <div class="product__item">
        <div class="product__img">
          <a href="{{ route('product', $value->slug) }}">
            <img src="{{ asset($value->image ? $value->image->image : '') }}" alt="{{ $value->name }}" />
          </a>
        </div>
        <div class="product__content">
          <h4><a href="{{ route('product', $value->slug) }}">{{ Str::limit($value->name, 80) }}</a>
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
              @if ($value->old__price)
              <span class="old-price">৳ {{ $value->old_price }}</span>
              @endif
              <span class="curr-price">৳ {{ $value->new_price }}</span>
            </div>
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
</section>
<!-- Recently Viewed  area end -->

<!-- icon section start  -->
<section class="icon__area">
  <div class="container">
    <div class="row">
      <div class="col-lg-3">
        <div class="icon-box">
          <div class="icon__img">
            <i class="fa-solid fa-car"></i>
          </div>
          <div class="icon__text">
            <h4>Next Day Dispatch</h4>
            <p>Fast shipping all over india</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3">
        <div class="icon-box">
          <div class="icon__img">
            <i class="fa-solid fa-steering-wheel"></i>
          </div>
          <div class="icon__text">
            <h4>Unique Designs</h4>
            <p>World class Quality and Design experience</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3">
        <div class="icon-box">
          <div class="icon__img">
            <i class="fa-solid fa-arrow-rotate-right"></i>
          </div>
          <div class="icon__text">
            <h4>Friendly Return Policy</h4>
            <p>Customer get quick return and refund</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3">
        <div class="icon-box">
          <div class="icon__img">
            <i class="fa-solid fa-dollar-sign"></i>
          </div>
          <div class="icon__text">
            <h4>100% Secure Payment</h4>
            <p>Trusted & Secure Payment</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- icon section end -->
@endsection
@push('scripts')
<script type="text/javascript">
$(document).ready(function() {
  $('#add_to_cart').click(function() {
    gtag("event", "add_to_cart", {
      currency: "BDT",
      value: "1.5",
      items: [
        @foreach(Cart::instance('shopping') -> content() as $cartInfo) {
          item_id: "{{ $details->id }}",
          item_name: "{{ $details->name }}",
          price: "{{ $details->new_price }}",
          currency: "BDT",
          quantity: {
            {
              $cartInfo -> qty ?? 0
            }
          }
        },
        @endforeach
      ]
    });
  });
});
</script>
<script type="text/javascript">
$(document).ready(function() {
  $('#order_now').click(function() {
    gtag("event", "add_to_cart", {
      currency: "BDT",
      value: "1.5",
      items: [
        @foreach(Cart::instance('shopping') -> content() as $cartInfo) {
          item_id: "{{ $details->id }}",
          item_name: "{{ $details->name }}",
          price: "{{ $details->new_price }}",
          currency: "BDT",
          quantity: {
            {
              $cartInfo -> qty ?? 0
            }
          }
        },
        @endforeach
      ]
    });
  });
});
</script>
<script>
function sendSuccess() {
  // size validation
  size = document.forms["formName"]["product_size"].value;
  if (size != "") {
    // access
  } else {
    toastr.warning("Please select any size");
    return false;
  }
  color = document.forms["formName"]["product_color"].value;
  if (color != "") {
    // access
  } else {
    toastr.error("Please select any color");
    return false;
  }
}



document.addEventListener('DOMContentLoaded', function () {
  // Size Selector Handling
  const sizeRadios = document.querySelectorAll('.selector-item_radio[name="product_size"]');
  const sizeAttributeName = document.querySelector('.attibute-name');

  sizeRadios.forEach(radio => {
    radio.addEventListener('change', function () {
      if (this.checked) {
        sizeAttributeName.textContent = this.value || 'None';
      }

      document.querySelectorAll('.pro-size .selector-item_label').forEach(label => {
        label.classList.remove('active');
      });

      const label = this.nextElementSibling;
      if (label) {
        label.classList.add('active');
      }
    });
  });

  // Color Selector Handling
  const colorRadios = document.querySelectorAll('.selector-item_radio[name="product_color"]');
  const colorAttributeName = document.querySelector('.attribute-color-name');

  colorRadios.forEach(radio => {
    radio.addEventListener('change', function () {
      if (this.checked) {
        colorAttributeName.textContent = this.value || 'None';
      }

      document.querySelectorAll('.pro-color .selector-item_label').forEach(label => {
        label.classList.remove('active');
      });

      const label = this.nextElementSibling;
      if (label) {
        label.classList.add('active');
      }
    });
  });
});
</script>



@endpush