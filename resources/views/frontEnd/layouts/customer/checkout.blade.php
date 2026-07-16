@extends('frontEnd.layouts.master')
@section('title', 'Customer Checkout')
@section('content')
@php
$subtotal = Cart::instance('shopping')->subtotal();
$subtotal = str_replace(',', '', $subtotal);
$subtotal = str_replace('.00', '', $subtotal);
$shipping = Session::get('shipping') ? Session::get('shipping') : 0;
@endphp
<!-- breadcrumb area start  -->
<section class="breadcrumb">
  <div class="container">
    <h4>Checkout</h4>
    <ul>
      <li><a href="{{ url('/') }}">Home</a></li>
      <li>Checkout</li>
    </ul>
  </div>
</section>
<!-- breadcrumb area end  -->

<section class="checkout-page">
  <div class="container">
    <div class="row">
      <div class="col-lg-6 mb-4">
        <div class="card p-4">
          <h4 class="mb-2 text-center">Delivery Information</h4>
          <p>To confirm your order, please fill in the details and click the "Place Order" button. Or to order by phone,
            click this number: <a class="text-danger font-weight-bold"
              href="tel:88{{$contact->hotline}}">{{$contact->hotline}}</a> </p>
          <form action="{{ route('customer.ordersave') }}" method="POST">
            @csrf
            <div class="form-group">
              <label for="name">Name</label>
              <input type="text" name="name" id="name" class="form-control" value="{{old('name')}}" required />
              @error('name')
              <span class="invalid-feedback" role="alert">
                <strong>{{ $message }}</strong>
              </span>
              @enderror
            </div>
            <div class="form-group mt-4">
              <label for="phone">Enter your phone number:</label>
              <input type="text" minlength="11" maxlength="11" pattern="0[0-9]+"
                title="Please enter a number starting with 0" name="phone" class="form-control"
                value="{{ old('phone') }}" required />
              @error('phone')
              <span class="invalid-feedback" role="alert">
                <strong>{{ $message }}</strong>
              </span>
              @enderror
            </div>
            <div class="form-group mt-4">
              <label for="name">Your Address * (District, Subdistrict, Thana, Municipality) </label>
              <input type="text" class="form-control" name="address" id="address" value="{{ old('address') }}"
                required />
              @error('address')
              <span class="invalid-feedback" role="alert">
                <strong>{{ $message }}</strong>
              </span>
              @enderror
            </div>
            <div class="form-group mt-4">
              <label for="delivary-option">Select Delivary Area <sup>*</sup></label>
              <select name="area" id="area" class="form-control">
                @foreach ($shippingcharge as $key => $value)
                <option value="{{ $value->id }}">{{ $value->name }}</option>
                @endforeach
              </select>
              @error('area')
              <span class="invalid-feedback" role="alert">
                <strong class="text-danger">{{ $message }}</strong>
              </span>
              @enderror
            </div>
            <!-- Payment Method -->
            <div class="payment-methods mt-4">
              <label>Payment Method</label>
              <div class="form-check p_cash">
                <input
                  class="form-check-input"
                  type="radio" name="payment_method" id="inlineRadio1" value="Cash On Delivery" checked required />
                <label class="form-check-label" for="inlineRadio1">
                  Cash On Delivery
                </label>
              </div>

              {{-- Future Payment Gateways --}}
                {{-- <div class="form-check p_bkash">
                                                <input class="form-check-input" type="radio" name="payment_method"
                                                    id="inlineRadio2" value="bkash" required/>
                                                <label class="form-check-label" for="inlineRadio2">Bkash</label>
                                            </div>
                                            <div class="form-check p_shurjo">
                                                <input class="form-check-input" type="radio" name="payment_method"
                                                    id="inlineRadio3" value="shurjopay" required/>
                                                <label class="form-check-label" for="inlineRadio3">Shurjopay</label>
                                            </div> --}}

              </div>
            <div class="d-flex justify-content-end mt-4">
              <button class="theme-btn product_btn checkout-confirm-btn">Confirm Order</button>
            </div>
          </form>
        </div>
      </div>
      <div class="col-lg-6 mb-4">
        <div class="card p-4 order-summary-card">
          <div class="card-header">
            <h5 class="mb-2">Order Summary</h5>
          </div>
          <div class="card-body cartlist">
            <table class="cart_table table table-bordered table-striped text-center mb-0">
              <thead>
                <tr>
                  <th style="width: 20%;">Delete</th>
                  <th style="width: 40%;">Product</th>
                  <th style="width: 20%;">Qty</th>
                  <th style="width: 20%;">Price</th>
                </tr>
              </thead>
              <tbody>
                @foreach (Cart::instance('shopping')->content() as $value)
                <tr>
                  <td data-label="Delete">
                    <a onclick="removeItem(this)" class="cart_remove" data-id="{{ $value->rowId }}">
                      <i class="fas fa-trash text-danger"></i>
                    </a>
                  </td>
                  <td class="text-left" data-label="Product">
                    <a href="{{ route('product',  $value->options->slug) }}">
                      <img width="50px" src="{{ asset($value->options->image) }}" />
                      <span class="cart-product-name">{{ Str::limit($value->name, 20) }}</span>
                    </a>
                    @if ($value->options->product_size)
                    <p>Size: {{ $value->options->product_size }}</p>
                    @endif
                    @if ($value->options->product_color)
                    <p>Color: {{ $value->options->product_color }}</p>
                    @endif
                  </td>
                  <td class="cart_qty" data-label="Qty">
                    <div class="qty-cart vcart-qty">
                      <div class="quantity">
                        <button class="minus cart_decrement" data-id="{{ $value->rowId }}"><i class="fa-solid fa-minus"></i></button>
                        <input type="text" value="{{ $value->qty }}" readonly id="qty" name="qty" />
                        <button class="plus cart_increment" data-id="{{ $value->rowId }}"><i class="fa-solid fa-plus"></i></button>
                      </div>
                    </div>
                  </td>
                  <td data-label="Price">
                    <span class="currency">৳  </span><strong>{{ $value->price }}</strong>
                  </td>
                </tr>
                @endforeach
              </tbody>
              <tfoot>
                <tr>
                  <th colspan="3" class="text-end px-4">Subtotal</th>
                  <td class="px-4">
                    <span id="net_total"><span class="currency">৳  </span><strong>{{ $subtotal }}</strong></span>
                  </td>
                </tr>
                <tr>
                  <th colspan="3" class="text-end px-4">Shipping Charge</th>
                  <td class="px-4">
                    <span id="cart_shipping_cost"><span class="currency">৳ 
                      </span><strong>{{ $shipping }}</strong></span>
                  </td>
                </tr>
                <tr>
                  <th colspan="3" class="text-end px-4">Total</th>
                  <td class="px-4">
                    <span id="grand_total"><span class="currency">৳ 
                      </span><strong>{{ $subtotal + $shipping }}</strong></span>
                  </td>
                </tr>
              </tfoot>
            </table>
          </div>

        </div>
      </div>
    </div>
  </div>
</section>
@endsection
@push('scripts')
<script>
$("#area").on("change", function() {
  var id = $(this).val();
  $.ajax({
    type: "GET",
    data: {
      id: id
    },
    url: "{{ route('shipping.charge') }}",
    dataType: "html",
    success: function(response) {
      $(".cartlist").html(response);
    },
  });
});
</script>
<script type="text/javascript">
dataLayer.push({
  ecommerce: null
}); // Clear the previous ecommerce object.
dataLayer.push({
  event: "view_cart",
  ecommerce: {
    items: [@foreach(Cart::instance('shopping') -> content() as $cartInfo) {
      item_name: "{{$cartInfo->name}}",
      item_id: "{{$cartInfo->id}}",
      price: "{{$cartInfo->price}}",
      item_brand: "{{$cartInfo->options->brand}}",
      item_category: "{{$cartInfo->options->category}}",
      item_size: "{{$cartInfo->options->size}}",
      item_color: "{{$cartInfo->options->color}}",
      currency: "BDT",
      quantity: {
        {
          $cartInfo -> qty ?? 0
        }
      }
    }, @endforeach]
  }
});
</script>
<script type="text/javascript">
// Clear the previous ecommerce object.
dataLayer.push({
  ecommerce: null
});

// Push the begin_checkout event to dataLayer.
dataLayer.push({
  event: "begin_checkout",
  ecommerce: {
    items: [@foreach(Cart::instance('shopping') -> content() as $cartInfo) {
        item_name: "{{$cartInfo->name}}",
        item_id: "{{$cartInfo->id}}",
        price: "{{$cartInfo->price}}",
        item_brand: "{{$cartInfo->options->brands}}",
        item_category: "{{$cartInfo->options->category}}",
        item_size: "{{$cartInfo->options->size}}",
        item_color: "{{$cartInfo->options->color}}",
        currency: "BDT",
        quantity: {
          {
            $cartInfo -> qty ?? 0
          }
        }
      },
      @endforeach
    ]
  }
});
</script>
@endpush