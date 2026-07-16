@php
    $subtotal = Cart::instance('shopping')->subtotal();
    $subtotal = str_replace(',', '', $subtotal);
    $subtotal = str_replace('.00', '', $subtotal);
    view()->share('subtotal', $subtotal);
@endphp
<div class="offcanvas-header">
    <h5 class="offcanvas-title" id="offcanvasRightLabel">
        <i class="fa-regular fa-cart-shopping"></i>
        Your cart · <span id="cart-count">{{ Cart::instance('shopping')->count() }} items</span>
    </h5>
    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close">
    </button>
</div>
<div class="cart__sidebar">
    @foreach (Cart::instance('shopping')->content() as $item)
        <div class="cart__product">
            <div class="row">
                <div class="col-3">
                    <div class="cart__img">
                        <img src="{{ asset($item->options->image) }}" alt="{{ $item->name }}" />
                    </div>
                </div>
                <div class="col-9">
                    <div class="cart__sidebar__content">
                        <div class="content__top d-flex justify-content-between align-items-center">
                            <h5><a href="#">{{ Str::limit($item->name, 30) }}</a></h5>
                            <button type="button" onclick="removeItem(this)" class="remove-cart cart_remove"
                                data-id="{{ $item->rowId }}">
                                <i class="fa-regular fa-trash-can"></i>
                            </button>
                        </div>
                        <div class="content__bottom d-flex justify-content-between align-items-center">
                            <div class="cart__quantity">Qty: {{ $item->qty }}</div>
                            <div class="cart__price">&#2547;{{ $item->price }}</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endforeach
</div>

<div class="offcanvas-footer">
    <div class="total__price">&#2547;{{ $subtotal }}</div>
    <button type="button"><a href="{{ route('customer.checkout') }}">Checkout</a></button>
</div>
