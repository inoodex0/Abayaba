@extends('frontEnd.layouts.master')
@section('title','Customer Account')
@push('css')
 <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
@endpush
@section('content')
  <!-- breadcrumb area start  -->
      <section class="breadcrumb">
        <div class="container">
          <h3>My Profile</h3>
          <ul>
            <li><a href="{{route('home')}}">Home</a></li>
            <li>My Profile</li>
          </ul>
        </div>
      </section>

      <!-- breadcrumb area end  -->

      <!-- profile tabs start  -->
      <section class="profile__area">
        <div class="container">
            @php
                $customer = \App\Models\Customer::with('cust_area')->find(Auth::guard('customer')->user()->id);
            @endphp
          <div class="row">
            <div class="col-xl-10 mx-auto">
              <div class="d-flex flex-column flex-lg-row align-items-start">
                <!-- sidebar -->
                @include('frontEnd.layouts.customer.sidebar')
                <div class="tab-content" id="v-pills-tabContent">
                  <div
                    class="tab-pane fade show active"
                    id="v-pills-home"
                    role="tabpanel"
                    aria-labelledby="v-pills-home-tab"
                  >
                    <div class="profile__img">
                      <img src="{{asset($customer->image)}}" alt="" />
                    </div>
                    <h3>Hello <span>{{ $customer->name }}</span></h3>
                   <p><strong>Email : {{$customer->email }}</strong></p>
                    <p><strong>phone : {{$customer->phone}}</strong></p>
                    <p>
                      From your account dashboard. you can easily check & view
                      your recent orders, manage your shipping and billing
                      addresses and edit your password and account details.
                    </p>
                  </div>
                  <!-- my orders -->
                  @include('frontEnd.layouts.customer.customer_orders')
                  <div
                    class="tab-pane fade"
                    id="v-pills-messages"
                    role="tabpanel"
                    aria-labelledby="v-pills-messages-tab"
                  >
                    <!-- profile details -->
                    @include('frontEnd.layouts.customer.profile_edit')
                  </div>
                  <!-- change password -->
                  @include('frontEnd.layouts.customer.change_password')
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- profile tabs end  -->
@endsection
 @push('scripts')
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<script>
    $(document).ready(function() {
        $('.country-select').select2();
    });
</script>

<script>
    $('.district').on('change',function(){
    var id = $(this).val();
        $.ajax({
           type:"GET",
           data:{'id':id},
           url:"{{route('districts')}}",
           success:function(res){               
            if(res){
                $(".area").empty();
                $(".area").append('<option value="">Select..</option>');
                $.each(res,function(key,value){
                    $(".area").append('<option value="'+key+'" >'+value+'</option>');
                });
           
            }else{
               $(".area").empty();
            }
           }
        });  
   });
</script>
{{-- acitve the sidbar --}}
<script>
  document.addEventListener('DOMContentLoaded', function () {
    const tabButtons = document.querySelectorAll('#v-pills-tab button');

    tabButtons.forEach(btn => {
      btn.addEventListener('shown.bs.tab', function (event) {
        localStorage.setItem('activeProfileTab', event.target.id);
      });
    });

    const activeTabId = localStorage.getItem('activeProfileTab');

    if (activeTabId) {
      const triggerEl = document.getElementById(activeTabId);
      if (triggerEl) {
        const tab = new bootstrap.Tab(triggerEl);
        tab.show();
      }
    }
  });
</script>
@endpush