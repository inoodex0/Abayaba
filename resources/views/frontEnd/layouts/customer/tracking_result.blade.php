@extends('frontEnd.layouts.master')
@section('title', 'Tracking Order')
@section('content')
<section class="auth-section py-5 bg-light">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                @foreach($order as $key => $value)
                    <div class="card mb-4 shadow-sm">
                        <div class="card-header  text-white">
                            <h5 class="mb-0">Order Track Result</h5>
                        </div>
                        <div class="card-body">
                            <ul class="list-unstyled mb-4">
                                <li><strong>Invoice ID:</strong> {{ $value->invoice_id }}</li>
                                <li><strong>Date:</strong> {{ \Carbon\Carbon::parse($value->created_at)->format('d M Y, h:i A') }}</li>
                                <li><strong>Status:</strong> 
                                    <span class="badge badge-info text-dark">
                                        {{ App\Models\Orderstatus::where('id', $value->order_status)->first()->name }}
                                    </span>
                                </li>
                            </ul>
                            <div class="table-responsive">
                                <table class="table table-bordered text-center align-middle tracktable">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>Product Name</th>
                                            <th>Quantity</th>
                                            <th>Price</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @php
                                            $orderdetails = App\Models\OrderDetails::where(['order_id' => $value->id])->get();
                                        @endphp
                                        @foreach($orderdetails as $key => $product)
                                            <tr>
                                                <td>{{ $product->product_name }}</td>
                                                <td>{{ $product->qty }}</td>
                                                <td class="text-right">{{ number_format($product->sale_price * $product->qty, 2) }} TK</td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td colspan="2" class="text-right"><strong>Delivery Charge:</strong></td>
                                            <td class="text-right">{{ number_format($value->shipping_charge, 2) }} TK</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" class="text-right"><strong>Total:</strong></td>
                                            <td class="text-right text-success font-weight-bold">{{ number_format($value->amount, 2) }} TK</td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</section>

@endsection