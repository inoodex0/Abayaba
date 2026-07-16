@extends('backEnd.layouts.master')
@section('title', 'Blog')
@section('css')
    <link href="{{ asset('public/backEnd') }}/assets/libs/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
    <link href="{{ asset('public/backEnd') }}/assets/css/switchery.min.css" rel="stylesheet" type="text/css" />
@endsection
@section('content')
    <div class="container-fluid">

        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box">
                    <div class="page-title-right">
                        <a href="{{ route('blog.index') }}" class="btn btn-primary rounded-pill">back</a>
                    </div>
                    <h4 class="page-title">Blog Update</h4>
                </div>
            </div>
        </div>
        <!-- end page title -->
        <div class="row justify-content-center">
            <div class="col-lg-10">
                <div class="card">
                    <div class="card-body">
                        <form action="{{ route('blog.update', $blog->id) }}" method="POST" class=row data-parsley-validate=""
                            enctype="multipart/form-data">
                            @csrf
                            @method('put')
                            <div class="col-sm-12">
                                <div class="form-group mb-3">
                                    <label for="title" class="form-label">Title</label>
                                    <input type="title" class="form-control @error('title') is-invalid @enderror"
                                        name="title" value="{{$blog->title }}" id="title" required="">
                                    @error('title')
                                        <span class="text-danger" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group mb-3">
                                    <label for="description" class="form-label">Description*</label>
                                    <textarea type="text" class="summernote form-control @error('description') is-invalid @enderror" name="description"
                                        rows="6" value="" id="description" required="">{!! $blog->description !!}</textarea>
                                    @error('description')
                                        <span class="text-danger" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group mb-3">
                                    <label for="status" class="form-label">Select Category</label>
                                    <select class="form-control" name="category">
                                        <option value="">select option</option>
                                        @foreach ($blog_categories as $category)
                                            <option {{$blog->category_id == $category->id ? 'selected' : ''}} value="{{ $category->id}}">{{ $category->name }}</option>
                                        @endforeach
                                    </select>
                                    @error('status')
                                        <span class="text-danger" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group mb-3">
                                    <label for="status" class="form-label">Status</label>
                                    <select class="form-control" name="status">
                                        <option {{$blog->status==1 ? 'selected' : ''}} value="1">Active</option>
                                        <option {{$blog->status==0 ? 'selected' : ''}} value="0">Inactive</option>
                                    </select>
                                    @error('status')
                                        <span class="text-danger" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-sm-6 mb-3">
                                <div class="form-group">
                                    <label for="image" class="form-label">Image</label>
                                    <input type="file" class="form-control @error('image') is-invalid @enderror "
                                        name="image" value="{{ old('image') }}" id="image" >
                                    @error('image')
                                        <span class="text-danger" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-sm-6 mb-3">
                                <div class="form-group">
                                    <label for="image" class="form-label">Image preview</label>
                                    <div>
                                        <img width="50%" src="{{asset($blog->image)}}" alt="" class="">
                                    </div>
                                </div>
                            </div>
                    </div>

                    <div>
                        <input type="submit" class="btn btn-success" value="Update">
                    </div>

                    </form>
                </div> <!-- end card-body-->
            </div> <!-- end card-->
        </div> <!-- end col-->
    </div>
    </div>
@endsection


@section('script')
    <script src="{{ asset('public/backEnd/') }}/assets/libs/parsleyjs/parsley.min.js"></script>
    <script src="{{ asset('public/backEnd/') }}/assets/js/pages/form-validation.init.js"></script>
    <script src="{{ asset('public/backEnd/') }}/assets/libs/select2/js/select2.min.js"></script>
    <script src="{{ asset('public/backEnd/') }}/assets/js/pages/form-advanced.init.js"></script>
    <script src="{{ asset('public/backEnd/') }}/assets/js/switchery.min.js"></script>
    <script>
        $(document).ready(function() {
            var elem = document.querySelector('.js-switch');
            var init = new Switchery(elem);
        });
    </script>
@endsection
