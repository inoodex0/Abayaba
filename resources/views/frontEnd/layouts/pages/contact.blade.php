@extends('frontEnd.layouts.master')
@section('title','Contact Us')
@section('content')
   <!-- contact page start  -->
      <section class="contact__page">
        <div class="container">
          <div class="row g-5">
            <div class="">
              <div class="page__title">
                <h3>Contact Us</h3>
                <p>
                  Have a question or comment?Use the form below to send us a
                  message or contact us by mail at:
                </p>
              </div>
              <div class="contact__form">
                <form action="{{route('home')}}" method="post">
                  <div class="row">
                    <div class="col-sm-6 mb-4">
                      <input type="text" name="name" placeholder="Name" />
                       @error('name')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="col-sm-6 mb-4">
                      <input type="text" name="email" placeholder="Email" />
                       @error('email')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="col-sm-12 mb-4">
                      <input
                        type="number"
                        name="phone"
                        placeholder="Phone Number"
                      />
                       @error('phone')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="col-sm-12 mb-4">
                      <input type="text" name="subject" placeholder="Subject" id="subject">
                       @error('subject')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="col-sm-12">
                      <textarea
                        name="message"
                        placeholder="Your message"
                        id="message"
                      ></textarea>
                       @error('message')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="col-sm-12">
                      <input type="checkbox" value="" id="defaultCheck1" />
                      <label for="defaultCheck1"
                        >Save my name, email, and website in this browser for
                        the next time I comment.</label
                      >
                    </div>
                  </div>
                  <button class="form-btn">SUBMIT NOW</button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- contact page end -->
@endsection