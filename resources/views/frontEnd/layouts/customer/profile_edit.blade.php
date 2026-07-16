<div class="account__details">
  <form action="{{route('customer.profile_update')}}" method="POST" enctype="multipart/form-data">
    @csrf
    <div class="row">
      <div class="col-sm-6">
        <div class="form-group mb-3">
          <label for="">Full Name <span class="text-danger">*</span></label>
          <input type="text" class="form-control" name="name" value="{{$profile_edit->name}}" placeholder="First Name"
            required />
        </div>
        @error('name')
        <span class="invalid-feedback" role="alert">
          <strong>{{ $message }}</strong>
        </span>
        @enderror
      </div>
      <div class="col-sm-6">
        <div class="form-group mb-3">
          <label for="">Phone Number <span class="text-danger">*</span></label>
          <input type="number" class="form-control" placeholder="First Name" value="{{$profile_edit->phone}}"
            name="phone" required />
        </div>
        @error('phone')
        <span class="invalid-feedback" role="alert">
          <strong>{{ $message }}</strong>
        </span>
        @enderror
      </div>
      <div class="col-sm-6">
        <div class="form-group mb-3">
          <label for="">Email Address <span class="text-danger">*</span></label>
          <input type="email" name="email" value="{{$profile_edit->email}}" class="form-control" placeholder="Email"
            required />
        </div>
        @error('email')
        <span class="invalid-feedback" role="alert">
          <strong>{{ $message }}</strong>
        </span>
        @enderror
      </div>
      <div class="col-sm-6">
        <div class="form-group mb-3">
          <label for="">Address <span class="text-danger">*</span></label>
          <input type="text" name="address" value="{{$profile_edit->address}}" class="form-control" placeholder="Email"
            required />
        </div>
        @error('address')
        <span class="invalid-feedback" role="alert">
          <strong>{{ $message }}</strong>
        </span>
        @enderror
      </div>
      <div class="col-md-12">
        <div class="row">
          <div class="col-sm-6">
            <label for="">District <span class="text-danger">*</span></label>
            <div class="form-group mb-3">
              <select name="district" id="district" value="{{old('district')}}"
                class=" district country-select">
                <option value="">Select--</option>
                @foreach($districts as $key=>$district)
                <option value="{{$district->district}}" @if($profile_edit->district==$district->district) selected
                  @endif>{{$district->district}}</option>
                @endforeach
              </select>
            </div>
            @error('district')
            <span class="invalid-feedback" role="alert">
              <strong>{{ $message }}</strong>
            </span>
            @enderror
          </div>
          {{-- <div class="col-sm-6">
                <label for="">Area <span class="text-danger">*</span></label>
                <div class="form-group mb-3">
                    <select   name="area" id="area" class="area country-select" required>
                         <option value="">Select</option>
                            @foreach($areas as $key=>$area)
                            <option value="{{$area->id}}" @if($profile_edit->area == $area->id) selected
          @endif>{{$area->area_name}}</option>
          @endforeach
          </select>
        </div>
        @error('area')
        <span class="invalid-feedback" role="alert">
          <strong>{{ $message }}</strong>
        </span>
        @enderror
      </div> --}}
      <div class="col-sm-3">
        <label for="area">Area *</label>
        <div class="form-group mb-3">
          <select id="area" class="form-control area country-select @error('area') is-invalid @enderror" name="area"
            value="{{ old('area') }}" required>
            <option value="">Select...</option>
            @foreach($areas as $key=>$area)
            <option value="{{$area->id}}" @if($profile_edit->area == $area->id) selected @endif>{{$area->area_name}}
            </option>
            @endforeach

          </select>
          @error('area')
          <span class="invalid-feedback" role="alert">
            <strong>{{ $message }}</strong>
          </span>
          @enderror
        </div>
      </div>
    </div>
</div>

<div class="col-sm-6">
  <div class="form-group mb-3">
    <label for="">Profile Photo</label>
    <input type="file" name="image" id="image" class="form-control" />
    @error('image')
    <span class="invalid-feedback" role="alert">
      <strong>{{ $message }}</strong>
    </span>
    @enderror
  </div>
</div>
<div class="col-sm-6 my-auto">
  <div class="form-group mb-3 text-center justify-content-center">
    <img src="{{asset($profile_edit->image)}}" class="rounded-circle m-1" width="50px" alt="">
  </div>
</div>
<div class="col-sm-12">
  <button class="btn btn-dark">Submit</button>
</div>
</div>
</form>
</div>