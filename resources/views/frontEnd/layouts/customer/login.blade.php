@extends('frontEnd.layouts.customer.layouts.master')
@section('title', 'Customer Loing')
@section('content')
    <section class="login__page">
        <div class="form-box">
          <div class="form-value">
            <form action="{{route('customer.signin')}}" method="post" utocomplete="off">
                @csrf
              <h2> Customer Login</h2>
              <div class="inputbox"> 
            
                <input type="number" placeholder="Mobile Number" name="phone" required autocomplete="off"/>
                @error('phone')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
              </div>
              <div class="inputbox">
              
                <input type="password" placeholder="Password"  name="password" required autocomplete="off"/>
                @error('password')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
              </div>
              <div class="forget">
                {{-- <label><input type="checkbox" />Remember Me</label> --}}
                <a href="{{route('customer.forgot.password')}}">Forgot password?</a>
              </div>
              <button>Log in</button>
              <div class="register">
                <p>
                  Don't have an account <a href="{{route('customer.register')}}">Register</a>
                </p>
              </div>
            </form>
          </div>

        </div>
      </form>
    </div>
  </div>
</section>
@endsection