@extends('backEnd.layouts.master')
@section('title', 'Landing Page Manage')

@section('css')
    <link href="{{ asset('/public/backEnd/') }}/assets/libs/datatables.net-bs5/css/dataTables.bootstrap5.min.css"
        rel="stylesheet" type="text/css" />
    <link href="{{ asset('/public/backEnd/') }}/assets/libs/datatables.net-responsive-bs5/css/responsive.bootstrap5.min.css"
        rel="stylesheet" type="text/css" />
    <link href="{{ asset('/public/backEnd/') }}/assets/libs/datatables.net-buttons-bs5/css/buttons.bootstrap5.min.css"
        rel="stylesheet" type="text/css" />
    <link href="{{ asset('/public/backEnd/') }}/assets/libs/datatables.net-select-bs5/css/select.bootstrap5.min.css"
        rel="stylesheet" type="text/css" />
    <link href="{{ asset('public/backEnd') }}/assets/libs/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
@endsection

@section('content')
    <div class="container-fluid">

        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box">
                    {{-- <div class="page-title-right">
                    <a href="{{route('new-campaign.create')}}" class="btn btn-primary rounded-pill">Create</a>
                </div> --}}
                    <div class="page-title-right">
                        <a href="{{ route('new-campaign.index') }}" class="btn btn-primary rounded-pill">Back</a>
                    </div>
                    <h4 class="page-title">Campaigns Product List</h4>
                </div>
            </div>
        </div>
        <!-- end page title -->
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4>{{ $campaign->title }}</h4>
                    </div>
                    <form action="{{route('new-campaign.add-product', $campaign->id)}}" method="post">
                        @csrf
                        <div class="card-body p-4 ">
                            <div class="row g-3">
                                <div class="col-sm-6">
                                    <label for="product_id" class="form-label">Products</label>
                                    <select class="form-control select2" name="product_id" id="product_id">
                                        <option value="">Select..</option>
                                        @foreach ($products as $product)
                                            <option value="{{$product->id }}">{{ $product->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="old_price" class="form-label">Old Price</label>
                                        <input type="text" class="form-control" id="old_price" readonly>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="new_price" class="form-label">New Price</label>
                                        <input type="text" class="form-control" id="new_price" readonly>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="campaign_price" class="form-label">Campaign Price <code>(as
                                                percentage)</code></label>
                                        <input type="number" name="campaign_price" id="campaign_price" step="0.01" class="form-control"
                                            value="{{ old('campaign_price') }}" id="campaign_price" required="">
                                        @error('campaign_price')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="campaign_stock" class="form-label">Campaign Stock</label>
                                        <input type="text" class="form-control" name="campaign_stock"
                                            value="{{ old('campaign_stock') }}" id="campaign_stock">
                                        @error('campaign_stock')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-sm-6 mb-3">
                                <div class="form-group">
                                    <label for="show_at_home" class="d-block">Show at Home</label>
                                    <label class="switch">
                                        <input type="checkbox" value="1" name="show_at_home" checked>
                                        <span class="slider round"></span>
                                    </label>
                                    @error('show_at_home')
                                        <span class="text-danger" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            </div>
                            <div class="col-sm-2 mt-4">
                                <button type="submit" class="btn btn-primary">Add</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <table id="datatable-buttons" class="table table-striped dt-responsive nowrap w-100">
                            <thead>
                                <tr>
                                    <th>SL</th>
                                    <th>Image</th>
                                    <th>Product Name</th>
                                    <th>Campaign Price</th>
                                    <th>Product Price</th>
                                    <th>New Price</th>
                                    <th>Show at Home</th>
                                    <th>Campaign Stock</th>
                                    <th>Action</th>
                                </tr>
                            </thead>


                            <tbody>
                                @foreach ($campaign->products as $product)
                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        <td><img src="{{ asset($product->image->image) }}" width="50px" alt=""></td>
                                        <td><a href="{{ route('products.edit', $product->id)}}">{{ Str::limit($product->name, 30) }}></a></td>
                                        <td>{{ $product->pivot->campaign_price }}%</td>
                                        <td>{{ $product->old_price ?? $product->new_price }}</td>

                                        <td>{{ $product->discounted_campaign_price ? number_format($product->discounted_campaign_price, 2) : 'N/A' }}</td>
                                        <td>
                                            <label class="switch ">
                                                <input type="checkbox" class="change_status" data-product_id="{{ $product->id }}" data-campaign_id="{{ $campaign->id }}" name="show_at_home" {{ $product->pivot->show_at_home == 1 ? 'checked' : '' }}>
                                                <span class="slider round check"></span>
                                            </label>
                                        </td>
                                        <td>{{ $product->pivot->campaign_stock }}</td>
                                        {{-- <td>{{ $product->pivot->show_at_show == 1 ? 'Yes' : 'No' }}</td> --}}
                                        <td>
                                            <form action="{{ route('new-campaign.remove-product', [$campaign->id, $product->id]) }}" method="POST">
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" class="btn btn-xs btn-danger waves-effect waves-light" onclick="return confirm('Are you sure you want to remove this product?')">Remove</button>
                                            </form>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>

                    </div> <!-- end card body-->
                </div> <!-- end card -->
            </div><!-- end col-->
        </div>
    </div>
@endsection


@section('script')
<script>
        $(document).ready(function() {
        $('.checkall').on('change', function() {
            alert('hello');
        });

        $('.change_status').on('click', function() {
            // alert('hello');
            let show_at_home = $(this).is(':checked') == true ? 1 : 0;
            // console.log(shot_at_home);
            
            let product_id = $(this).data('product_id');
            // console.log(product_id);
            let campaign_id = $(this).data('campaign_id');
            
            $.ajax({
                type: "put",
                dataType: "json",
                url: "{{route('new_campaign.change_status')}}",
                data: {
                    'show_at_home': show_at_home,
                    'product_id': product_id,
                    'campaign_id': campaign_id
                },
                success: function(data) {
                    toastr.success(data.success);
                },
                error: function(xhr, status, error) {
                    // console.error('AJAX Error:', error);
                    toastr.error('Failed to update status.');
                }
            });
        })
    });
</script>
<script>
    //get product price 
    $(document).ready(function () {
        $('#product_id').select2();
        $('#product_id').on('change', function () {
            let productId = $(this).val(); 

            if (productId) {
                $.ajax({
                    url: "{{ route('new-campaign.get-prices', ':id') }}".replace(':id', productId),
                    type: 'GET',
                    dataType: 'json',
                    success: function (data) {
                        $('#old_price').val(data.old_price || 'N/A');
                        $('#new_price').val(data.new_price || 'N/A');
                    },
                    error: function () {
                        $('#old_price').val('Error');
                        $('#new_price').val('Error');
                    }
                });
            } else {
                $('#old_price').val('');
                $('#new_price').val('');
            }
        });
    });
</script>
    <!-- third party js -->
    <script src="{{ asset('/public/backEnd/') }}/assets/libs/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="{{ asset('/public/backEnd/') }}/assets/libs/datatables.net-bs5/js/dataTables.bootstrap5.min.js"></script>
    <script src="{{ asset('/public/backEnd/') }}/assets/libs/datatables.net-responsive/js/dataTables.responsive.min.js">
    </script>
    <script
        src="{{ asset('/public/backEnd/') }}/assets/libs/datatables.net-responsive-bs5/js/responsive.bootstrap5.min.js">
    </script>
    <script src="{{ asset('/public/backEnd/') }}/assets/libs/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="{{ asset('/public/backEnd/') }}/assets/libs/datatables.net-buttons-bs5/js/buttons.bootstrap5.min.js">
    </script>
    <script src="{{ asset('/public/backEnd/') }}/assets/libs/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="{{ asset('/public/backEnd/') }}/assets/libs/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="{{ asset('/public/backEnd/') }}/assets/libs/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="{{ asset('/public/backEnd/') }}/assets/libs/datatables.net-keytable/js/dataTables.keyTable.min.js">
    </script>
    <script src="{{ asset('/public/backEnd/') }}/assets/libs/datatables.net-select/js/dataTables.select.min.js"></script>
    <script src="{{ asset('/public/backEnd/') }}/assets/libs/pdfmake/build/pdfmake.min.js"></script>
    <script src="{{ asset('/public/backEnd/') }}/assets/libs/pdfmake/build/vfs_fonts.js"></script>
    <script src="{{ asset('/public/backEnd/') }}/assets/js/pages/datatables.init.js"></script>
    <script src="{{ asset('public/backEnd/') }}/assets/libs/select2/js/select2.min.js"></script>
    <!-- third party js ends -->
@endsection
