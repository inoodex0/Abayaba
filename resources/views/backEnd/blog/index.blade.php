@extends('backEnd.layouts.master')
@section('title','Blog')
@section('css')
<link href="{{asset('/public/backEnd/')}}/assets/libs/datatables.net-bs5/css/dataTables.bootstrap5.min.css" rel="stylesheet" type="text/css" />
<link href="{{asset('/public/backEnd/')}}/assets/libs/datatables.net-responsive-bs5/css/responsive.bootstrap5.min.css" rel="stylesheet" type="text/css" />
<link href="{{asset('/public/backEnd/')}}/assets/libs/datatables.net-buttons-bs5/css/buttons.bootstrap5.min.css" rel="stylesheet" type="text/css" />
<link href="{{asset('/public/backEnd/')}}/assets/libs/datatables.net-select-bs5/css/select.bootstrap5.min.css" rel="stylesheet" type="text/css" />
@endsection
@section('content')
<div class="container-fluid">
    
    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box">
                <div class="page-title-right">
                    <a href="{{route('blog.create')}}" class="btn btn-primary rounded-pill">Create</a>
                </div>
                <h4 class="page-title">Blogs</h4>
            </div>
        </div>
    </div>       
    <!-- end page title --> 
   <div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body">
                <table id="datatable-buttons" class="table table-striped dt-responsive nowrap w-100">
                    <thead>
                        <tr>
                            <th>SL</th>
                            <th>Image</th>
                            <th>Title</th>
                            <th>Status</th>
                            <th>Category</th>
                            <th>Publish Date</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                
                
                    <tbody>
                        @foreach ($blogs as $blog)    
                        <tr>
                            <td>{{$blog->id}}</td>
                            <td><img src="{{asset($blog->image)}}" alt="" width="80px"></td>
                            <td>{{Str::limit($blog->title, 20)}}</td>
                            <td> <label class="switch ">
                                <input type="checkbox" class="change-status" data-id="{{$blog->id}}" name="status" {{ $blog->status == 1 ? 'checked' : '' }}>
                                <span class="slider round check"></span>
                            </label></td>
                            <td>{{$blog->category->name}}</td>
                            <td>{{ $blog->created_at->format('d M, Y') }}</td>
                            
                            <td><a href="{{route('blog.edit', $blog->id)}}" class="btn btn-xs btn-primary waves-effect waves-light"><i class="fe-edit-1"></i></a>
                           <form action="{{route('blog.destroy', $blog->id)}}" method="POST" class="d-inline" onsubmit="return confirm('Are you sure?')}}">
                            @csrf
                            @method('DELETE')
                             <button type="submit" class="btn btn-xs btn-danger waves-effect waves-light delete-confirm"><i class="mdi mdi-close"></i></button>
                           </form></td>
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
            $(document).ready(function(){
                $('body').on('click', '.change-status', function(){
                    let isChecked=$(this).is(':checked');
                    let id = $(this).data('id');
                    $.ajax({
                        url: "{{route('blog.change_status')}}",
                        method:'put',
                        data: {
                            id: id,
                            status: isChecked
                        },
                        success: function(data){
                            // if(data.success){
                            //     toastr.success(data.message)
                            // }
                            toastr.success(data.success);
                        },
                        error: function(xhr, status,error){
                            console.log(error);
                        }
                    })
                })
            })
        </script>
<!-- third party js -->
<script src="{{asset('/public/backEnd/')}}/assets/libs/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="{{asset('/public/backEnd/')}}/assets/libs/datatables.net-bs5/js/dataTables.bootstrap5.min.js"></script>
<script src="{{asset('/public/backEnd/')}}/assets/libs/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="{{asset('/public/backEnd/')}}/assets/libs/datatables.net-responsive-bs5/js/responsive.bootstrap5.min.js"></script>
<script src="{{asset('/public/backEnd/')}}/assets/libs/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="{{asset('/public/backEnd/')}}/assets/libs/datatables.net-buttons-bs5/js/buttons.bootstrap5.min.js"></script>
<script src="{{asset('/public/backEnd/')}}/assets/libs/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="{{asset('/public/backEnd/')}}/assets/libs/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script src="{{asset('/public/backEnd/')}}/assets/libs/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="{{asset('/public/backEnd/')}}/assets/libs/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
<script src="{{asset('/public/backEnd/')}}/assets/libs/datatables.net-select/js/dataTables.select.min.js"></script>
<script src="{{asset('/public/backEnd/')}}/assets/libs/pdfmake/build/pdfmake.min.js"></script>
<script src="{{asset('/public/backEnd/')}}/assets/libs/pdfmake/build/vfs_fonts.js"></script>
<script src="{{asset('/public/backEnd/')}}/assets/js/pages/datatables.init.js"></script>
<!-- third party js ends -->
@endsection