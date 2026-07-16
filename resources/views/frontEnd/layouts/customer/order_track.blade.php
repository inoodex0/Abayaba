@extends('frontEnd.layouts.master')
@section('title','Order Track')
@section('content')
<section class="auth-section py-5 bg-light">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-sm-10 col-md-6 col-lg-5">
                <div class="card shadow-sm border-0">
                    <div class="card-header   text-white text-center">
                        <h5 class="mb-0">Order Track</h5>
                    </div>
                    <div class="card-body">
                        <form action="{{ route('customer.order_track_result') }}" method="GET" data-parsley-validate>
                            <div class="form-group">
                                <label for="phone">Phone Number</label>
                                <input type="number" 
                                       id="phone" 
                                       name="phone" 
                                       class="form-control @error('phone') is-invalid @enderror" 
                                       placeholder="Enter Phone Number" 
                                       value="{{ old('phone') }}" 
                                       required>
                                @error('phone')
                                    <span class="text-danger" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label for="invoice_id">Invoice ID</label>
                                <input type="number" 
                                       id="invoice_id" 
                                       name="invoice_id" 
                                       class="form-control @error('invoice_id') is-invalid @enderror" 
                                       placeholder="Enter Your Invoice ID" 
                                       value="{{ old('invoice_id') }}">
                                @error('invoice_id')
                                    <span class="text-danger" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="form-group text-center mt-4">
                                <button type="submit" class="btn product_btn btn-block">Submit</button>
                            </div>
                        </form>
                    </div> 
                </div> 
            </div> 
        </div> 
    </div> 
</section>

@endsection