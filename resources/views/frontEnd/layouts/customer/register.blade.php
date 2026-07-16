@extends('frontEnd.layouts.customer.layouts.master')
@section('title', 'Customer Register')
@section('content')
<section class="login__page">
  <div class="form-box">
    <div class="form-value">
      <h2>Customer Registration</h2>
      <form action="{{route('customer.store')}}" method="POST" autocomplete="off">
        @csrf
        <div class="inputbox"> 
          <input type="text" name="name" autocomplete="off" placeholder="Name" />
       
          @error('name')
          <span class="text-danger" role="alert">
            <strong>{{ $message }}</strong>
          </span>
          @enderror
              </div>
              <div class="inputbox">
               
                <input type="text" placeholder="Phone"  name="phone" value="{{ old('phone') }}"/>
               
                @error('phone')
                    <span class="text-danger" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
              </div>
              <div class="inputbox">
              
                <input type="password"  name="password"  placeholder="Password"/>
             
                @error('password')
                    <span class="text-danger" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
              </div>
              <div class="forget">
                {{-- <label><input type="checkbox" />Remember Me</label> --}}
                <a href="{{route('customer.forgot.password')}}">Forgot password?</a>
              </div>
              <button>Register</button>
              <div class="register">
                <p>Already have an account <a href="{{route('customer.login')}}">Login</a></p>
              </div>
            </form>
          </div>
        </div>
      </form>
    </div>
  </div>
</section>
@endsection