@extends('frontEnd.layouts.master')
@section('title', 'Invoice')
@section('content')
  <section class="invoice__area">
      <div class="container">
        <div class="row mt-4">
            <div class="col-sm-6">
                <a class="btn btn-outline-dark" href="{{route('customer.account')}}"><strong><i class="fa-solid fa-arrow-left"></i> Back To Order</strong></a>
            </div>
        </div>
        <!-- Header -->
        <div class="col-md-6 text-center mx-auto mb-4">
                <button  onclick="printFunction()" class="btn btn-primary text-center no-print invoice_btn"><i class="fa fa-print"></i> Print</button>
            </div>
             <div id="invoiceSection" class="invoice-innter" style="width: 900px;margin: 0 auto;background: #f9f9f9;overflow: hidden;padding: 30px;padding-top: 0;">
        <table
          width="100%"
          border="0"
          cellpadding="0"
          cellspacing="0"
          align="center"
          class="fullTable"
          bgcolor="#e1e1e1"
        >
          <tr>
            <td height="20"></td>
          </tr>
          <tr>
            <td>
              <table
                width="600"
                border="0"
                cellpadding="0"
                cellspacing="0"
                align="center"
                class="fullTable"
                bgcolor="#ffffff"
                style="border-radius: 10px 10px 0 0"
              >
                <tr class="hiddenMobile">
                  <td height="40"></td>
                </tr>
                <tr class="visibleMobile">
                  <td height="30"></td>
                </tr>

                <tr>
                  <td>
                    <table
                      width="480"
                      border="0"
                      cellpadding="0"
                      cellspacing="0"
                      align="center"
                      class="fullPadding"
                    >
                      <tbody>
                        <tr>
                          <td>
                            <table
                              width="220"
                              border="0"
                              cellpadding="0"
                              cellspacing="0"
                              align="left"
                              class="col"
                            >
                              <tbody>
                                <tr>
                                  <td align="left">
                                    <img
                                      src="{{asset($generalsetting->white_logo)}}"
                                      width="32"
                                      height="32"
                                      alt="logo"
                                      border="0"
                                    />
                                  </td>
                                </tr>
                                <tr class="hiddenMobile">
                                  <td height="40"></td>
                                </tr>
                                <tr class="visibleMobile">
                                  <td height="20"></td>
                                </tr>
                                <tr>
                                  <td
                                    style="
                                      font-size: 12px;
                                      color: #5b5b5b;
                                      font-family: 'Open Sans', sans-serif;
                                      line-height: 18px;
                                      vertical-align: top;
                                      text-align: left;
                                    "
                                  >
                                    Hello, {{Auth::guard('customer')->user()->name}}
                                    <br />
                                    Thank you for shopping from our store and
                                    for your order.
                                  </td>
                                </tr>
                              </tbody>
                            </table>
                            <table
                              width="220"
                              border="0"
                              cellpadding="0"
                              cellspacing="0"
                              align="right"
                              class="col"
                            >
                              <tbody>
                                <tr class="visibleMobile">
                                  <td height="20"></td>
                                </tr>
                                <tr>
                                  <td height="5"></td>
                                </tr>
                                <tr>
                                  <td
                                    style="
                                      font-size: 21px;
                                      color: #ff0000;
                                      letter-spacing: -1px;
                                      font-family: 'Open Sans', sans-serif;
                                      line-height: 1;
                                      vertical-align: top;
                                      text-align: right;
                                    "
                                  >
                                    Invoice
                                  </td>
                                </tr>
                                <tr></tr>
                                <tr class="hiddenMobile">
                                  <td height="50"></td>
                                </tr>
                                <tr class="visibleMobile">
                                  <td height="20"></td>
                                </tr>
                                <tr>
                                  <td
                                    style="
                                      font-size: 12px;
                                      color: #5b5b5b;
                                      font-family: 'Open Sans', sans-serif;
                                      line-height: 18px;
                                      vertical-align: top;
                                      text-align: right;
                                    "
                                  >
                                    <small>ORDER</small> #{{$order->invoice_id}}<br />
                                    <small>{{$order->created_at->format('d-m-y')}}</small>
                                  </td>
                                </tr>
                              </tbody>
                            </table>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
        <!-- /Header -->
        <!-- Order Details -->
        <table
          width="100%"
          border="0"
          cellpadding="0"
          cellspacing="0"
          align="center"
          class="fullTable"
          bgcolor="#e1e1e1"
        >
          <tbody>
            <tr>
              <td>
                <table
                  width="600"
                  border="0"
                  cellpadding="0"
                  cellspacing="0"
                  align="center"
                  class="fullTable"
                  bgcolor="#ffffff"
                >
                  <tbody>
                    <tr></tr>
                    <tr class="hiddenMobile">
                      <td height="60"></td>
                    </tr>
                    <tr class="visibleMobile">
                      <td height="40"></td>
                    </tr>
                    <tr>
                      <td>
                        <table
                          width="480"
                          border="0"
                          cellpadding="0"
                          cellspacing="0"
                          align="center"
                          class="fullPadding"
                        >
                          <tbody>
                            <tr>
                              <th
                                style="
                                  font-size: 12px;
                                  font-family: 'Open Sans', sans-serif;
                                  color: #5b5b5b;
                                  font-weight: normal;
                                  line-height: 1;
                                  vertical-align: top;
                                  padding: 0 10px 7px 0;
                                "
                                width="12%"
                                align="left"
                              >
                                SL
                              </th>
                              <th
                                style="
                                  font-size: 12px;
                                  font-family: 'Open Sans', sans-serif;
                                  color: #5b5b5b;
                                  font-weight: normal;
                                  line-height: 1;
                                  vertical-align: top;
                                  padding: 0 0 7px;
                                "
                                align="left"
                              >
                                <small>Product</small>
                              </th>
                              <th
                                style="
                                  font-size: 12px;
                                  font-family: 'Open Sans', sans-serif;
                                  color: #1e2b33;
                                  font-weight: normal;
                                  line-height: 1;
                                  vertical-align: top;
                                  padding: 0 0 7px;
                                "
                                align="right"
                              >
                                Price
                              </th>
                              <th
                                style="
                                  font-size: 12px;
                                  font-family: 'Open Sans', sans-serif;
                                  color: #5b5b5b;
                                  font-weight: normal;
                                  line-height: 1;
                                  vertical-align: top;
                                  padding: 0 0 7px;
                                "
                                align="center"
                              >
                                Quantity
                              </th>
                              
                              <th
                                style="
                                  font-size: 12px;
                                  font-family: 'Open Sans', sans-serif;
                                  color: #1e2b33;
                                  font-weight: normal;
                                  line-height: 1;
                                  vertical-align: top;
                                  padding: 0 0 7px;
                                "
                                align="right"
                              >
                                Total
                              </th>
                            </tr>
                            <tr>
                              <td
                                height="1"
                                style="background: #bebebe"
                                colspan="4"
                              ></td>
                            </tr>
                            <tr>
                              <td height="10" colspan="4"></td>
                            </tr>
                            @foreach ($order->orderDetails as $key => $value)
                            <tr>
                              <td
                                style="
                                  font-size: 12px;
                                  font-family: 'Open Sans', sans-serif;
                                  color: #ff0000;
                                  line-height: 18px;
                                  vertical-align: top;
                                  padding: 10px 0;
                                "
                                class="article"
                              >
                               {{$loop->iteration}}
                              </td>
                              <td
                                style="
                                  font-size: 12px;
                                  font-family: 'Open Sans', sans-serif;
                                  color: #ff0000;
                                  line-height: 18px;
                                  vertical-align: top;
                                  padding: 10px 0;
                                "
                                class="article"
                              >
                               {{$value->product_name}}
                              </td>
                              <td
                                style="
                                  font-size: 12px;
                                  font-family: 'Open Sans', sans-serif;
                                  color: #646a6e;
                                  line-height: 18px;
                                  vertical-align: top;
                                  padding: 10px 0;
                                "
                              >
                                <small>{{$value->sale_price}}</small>
                              </td>
                              <td
                                style="
                                  font-size: 12px;
                                  font-family: 'Open Sans', sans-serif;
                                  color: #646a6e;
                                  line-height: 18px;
                                  vertical-align: top;
                                  padding: 10px 0;
                                "
                                align="center"
                              >
                                1
                              </td>
                              <td
                                style="
                                  font-size: 12px;
                                  font-family: 'Open Sans', sans-serif;
                                  color: #1e2b33;
                                  line-height: 18px;
                                  vertical-align: top;
                                  padding: 10px 0;
                                "
                                align="right"
                              >
                                {{$value->qty}}
                              </td>
                              <td
                                style="
                                  font-size: 12px;
                                  font-family: 'Open Sans', sans-serif;
                                  color: #1e2b33;
                                  line-height: 18px;
                                  vertical-align: top;
                                  padding: 10px 0;
                                "
                                align="right"
                              >
                                ৳{{$value->sale_price*$value->qty}}
                              </td>
                            </tr>
                            @endforeach
                            <tr>
                              <td
                                height="1"
                                colspan="4"
                                style="border-bottom: 1px solid #e4e4e4"
                              ></td>
                            </tr>
                          </tbody>
                        </table>
                      </td>
                    </tr>
                    <tr>
                      <td height="20"></td>
                    </tr>
                  </tbody>
                </table>
              </td>
            </tr>
          </tbody>
        </table>
        <!-- /Order Details -->
        <!-- Total -->
        <table
          width="100%"
          border="0"
          cellpadding="0"
          cellspacing="0"
          align="center"
          class="fullTable"
          bgcolor="#e1e1e1"
        >
          <tbody>
            <tr>
              <td>
                <table
                  width="600"
                  border="0"
                  cellpadding="0"
                  cellspacing="0"
                  align="center"
                  class="fullTable"
                  bgcolor="#ffffff"
                >
                  <tbody>
                    <tr>
                      <td>
                        <!-- Table Total -->
                        <table
                          width="480"
                          border="0"
                          cellpadding="0"
                          cellspacing="0"
                          align="center"
                          class="fullPadding"
                        >
                          <tbody>
                            <tr>
                              <td
                                style="
                                  font-size: 12px;
                                  font-family: 'Open Sans', sans-serif;
                                  color: #646a6e;
                                  line-height: 22px;
                                  vertical-align: top;
                                  text-align: right;
                                "
                              >
                                Subtotal
                              </td>
                              <td
                                style="
                                  font-size: 12px;
                                  font-family: 'Open Sans', sans-serif;
                                  color: #646a6e;
                                  line-height: 22px;
                                  vertical-align: top;
                                  text-align: right;
                                  white-space: nowrap;
                                "
                                width="80"
                              >
                                ৳{{$order->orderdetails->sum('sale_price')}}
                              </td>
                            </tr>
                            <tr>
                              <td
                                style="
                                  font-size: 12px;
                                  font-family: 'Open Sans', sans-serif;
                                  color: #646a6e;
                                  line-height: 22px;
                                  vertical-align: top;
                                  text-align: right;
                                "
                              >
                                Shipping &amp; Handling
                              </td>
                              <td
                                style="
                                  font-size: 12px;
                                  font-family: 'Open Sans', sans-serif;
                                  color: #646a6e;
                                  line-height: 22px;
                                  vertical-align: top;
                                  text-align: right;
                                "
                              >
                                ৳{{$order->shipping_charge}}
                              </td>
                            </tr>
                            <tr>
                              <td
                                style="
                                  font-size: 12px;
                                  font-family: 'Open Sans', sans-serif;
                                  color: #000;
                                  line-height: 22px;
                                  vertical-align: top;
                                  text-align: right;
                                "
                              >
                                <strong>Discount (-)</strong>
                              </td>
                              <td
                                style="
                                  font-size: 12px;
                                  font-family: 'Open Sans', sans-serif;
                                  color: #000;
                                  line-height: 22px;
                                  vertical-align: top;
                                  text-align: right;
                                "
                              >
                                <strong>{{$order->discount}}</strong>
                              </td>
                            </tr>
                            <tr>
                              <td
                                style="
                                  font-size: 12px;
                                  font-family: 'Open Sans', sans-serif;
                                  color: #b0b0b0;
                                  line-height: 22px;
                                  vertical-align: top;
                                  text-align: right;
                                "
                              >
                                <small>Final Total</small>
                              </td>
                              <td
                                style="
                                  font-size: 12px;
                                  font-family: 'Open Sans', sans-serif;
                                  color: #b0b0b0;
                                  line-height: 22px;
                                  vertical-align: top;
                                  text-align: right;
                                "
                              >
                                <small>৳{{$order->amount}}</small>
                              </td>
                            </tr>
                          </tbody>
                        </table>
                        <!-- /Table Total -->
                      </td>
                    </tr>
                  </tbody>
                </table>
              </td>
            </tr>
          </tbody>
        </table>
        <!-- /Total -->
        <!-- Information -->
        <table
          width="100%"
          border="0"
          cellpadding="0"
          cellspacing="0"
          align="center"
          class="fullTable"
          bgcolor="#e1e1e1"
        >
          <tbody>
            <tr>
              <td>
                <table
                  width="600"
                  border="0"
                  cellpadding="0"
                  cellspacing="0"
                  align="center"
                  class="fullTable"
                  bgcolor="#ffffff"
                >
                  <tbody>
                    <tr></tr>
                    <tr class="hiddenMobile">
                      <td height="60"></td>
                    </tr>
                    <tr class="visibleMobile">
                      <td height="40"></td>
                    </tr>
                    <tr>
                      <td>
                        <table
                          width="480"
                          border="0"
                          cellpadding="0"
                          cellspacing="0"
                          align="center"
                          class="fullPadding"
                        >
                          <tbody>
                            <tr>
                              <td>
                                <table
                                  width="220"
                                  border="0"
                                  cellpadding="0"
                                  cellspacing="0"
                                  align="left"
                                  class="col"
                                >
                                  <tbody>
                                    <tr>
                                      <td
                                        style="
                                          font-size: 11px;
                                          font-family: 'Open Sans', sans-serif;
                                          color: #5b5b5b;
                                          line-height: 1;
                                          vertical-align: top;
                                        "
                                      >
                                        <strong>INVOICE FROM:</strong>
                                      </td>
                                    </tr>
                                    <tr>
                                      <td width="100%" height="10"></td>
                                    </tr>
                                    <tr>
                                      <td
                                        style="
                                          font-size: 12px;
                                          font-family: 'Open Sans', sans-serif;
                                          color: #5b5b5b;
                                          line-height: 20px;
                                          vertical-align: top;
                                        "
                                      >
                                        {{$generalsetting->name}}
                                      </td>
                                    </tr>
                                    <tr>
                                        <td
                                        style="
                                          font-size: 12px;
                                          font-family: 'Open Sans', sans-serif;
                                          color: #5b5b5b;
                                          line-height: 20px;
                                          vertical-align: top;
                                        "
                                      >
                                        {{$generalsetting->name}}
                                      </td>
                                    </tr>
                                    <tr>
                                        <td
                                        style="
                                          font-size: 12px;
                                          font-family: 'Open Sans', sans-serif;
                                          color: #5b5b5b;
                                          line-height: 20px;
                                          vertical-align: top;
                                        "
                                      >
                                        {{$contact->phone}}
                                      </td>
                                    <tr>
                                        <td
                                        style="
                                          font-size: 12px;
                                          font-family: 'Open Sans', sans-serif;
                                          color: #5b5b5b;
                                          line-height: 20px;
                                          vertical-align: top;
                                        "
                                      >
                                        {{$contact->email}}
                                      </td>
                                    </tr>
                                    <tr>
                                        <td
                                        style="
                                          font-size: 12px;
                                          font-family: 'Open Sans', sans-serif;
                                          color: #5b5b5b;
                                          line-height: 20px;
                                          vertical-align: top;
                                        "
                                      >
                                        {{$contact->address}}
                                      </td>
                                    </tr>
                                  </tbody>
                                </table>

                                <table
                                  width="220"
                                  border="0"
                                  cellpadding="0"
                                  cellspacing="0"
                                  align="right"
                                  class="col"
                                >
                                  <tbody>
                                    <tr class="visibleMobile">
                                      <td height="20"></td>
                                    </tr>
                                    <tr>
                                      <td
                                        style="
                                          font-size: 11px;
                                          font-family: 'Open Sans', sans-serif;
                                          color: #5b5b5b;
                                          line-height: 1;
                                          vertical-align: top;
                                        "
                                      >
                                        <strong>PAYMENT METHOD</strong>
                                      </td>
                                    </tr>
                                    <tr>
                                      <td width="100%" height="10"></td>
                                    </tr>
                                    <tr>
                                      <td
                                        style="
                                          font-size: 12px;
                                          font-family: 'Open Sans', sans-serif;
                                          color: #5b5b5b;
                                          line-height: 20px;
                                          vertical-align: top;
                                        "
                                      >
                                        {{$order->payment?$order->payment->payment_method:''}}
                                      </td>
                                    </tr>
                                  </tbody>
                                </table>
                              </td>
                            </tr>
                          </tbody>
                        </table>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <table
                          width="480"
                          border="0"
                          cellpadding="0"
                          cellspacing="0"
                          align="center"
                          class="fullPadding"
                        >
                          <tbody>
                            <tr>
                              <td>
                                <table
                                  width="220"
                                  border="0"
                                  cellpadding="0"
                                  cellspacing="0"
                                  align="left"
                                  class="col"
                                >
                                  <tbody>
                                    <tr class="hiddenMobile">
                                      <td height="35"></td>
                                    </tr>
                                    <tr class="visibleMobile">
                                      <td height="20"></td>
                                    </tr>
                                    <tr>
                                      <td
                                        style="
                                          font-size: 11px;
                                          font-family: 'Open Sans', sans-serif;
                                          color: #5b5b5b;
                                          line-height: 1;
                                          vertical-align: top;
                                        "
                                      >
                                        <strong>INVOICE TO:</strong>
                                      </td>
                                    </tr>
                                    <tr>
                                      <td width="100%" height="10"></td>
                                    </tr>
                                    <tr>
                                      <td
                                        style="
                                          font-size: 12px;
                                          font-family: 'Open Sans', sans-serif;
                                          color: #5b5b5b;
                                          line-height: 20px;
                                          vertical-align: top;
                                        "
                                      >
                                        {{$order->shipping?$order->shipping->name:''}}
                                      </td>
                                    </tr>
                                    <tr>
                                      <td
                                        style="
                                          font-size: 12px;
                                          font-family: 'Open Sans', sans-serif;
                                          color: #5b5b5b;
                                          line-height: 20px;
                                          vertical-align: top;
                                        "
                                      >
                                        {{$order->shipping?$order->shipping->phone:''}}
                                      </td>
                                    </tr>
                                    <tr>
                                      <td
                                        style="
                                          font-size: 12px;
                                          font-family: 'Open Sans', sans-serif;
                                          color: #5b5b5b;
                                          line-height: 20px;
                                          vertical-align: top;
                                        "
                                      >
                                        {{$order->shipping?$order->shipping->address:''}}
                                      </td>
                                    </tr>
                                    <tr>
                                      <td
                                        style="
                                          font-size: 12px;
                                          font-family: 'Open Sans', sans-serif;
                                          color: #5b5b5b;
                                          line-height: 20px;
                                          vertical-align: top;
                                        "
                                      >
                                        {{$order->shipping?$order->shipping->area:''}}
                                      </td>
                                    </tr>
                                  </tbody>
                                </table>

                                <table
                                  width="220"
                                  border="0"
                                  cellpadding="0"
                                  cellspacing="0"
                                  align="right"
                                  class="col"
                                >
                                  {{-- <tbody>
                                    <tr class="hiddenMobile">
                                      <td height="35"></td>
                                    </tr>
                                    <tr class="visibleMobile">
                                      <td height="20"></td>
                                    </tr>
                                    <tr>
                                      <td
                                        style="
                                          font-size: 11px;
                                          font-family: 'Open Sans', sans-serif;
                                          color: #5b5b5b;
                                          line-height: 1;
                                          vertical-align: top;
                                        "
                                      >
                                        <strong>SHIPPING METHOD</strong>
                                      </td>
                                    </tr>
                                    <tr>
                                      <td width="100%" height="10"></td>
                                    </tr>
                                    <tr>
                                      <td
                                        style="
                                          font-size: 12px;
                                          font-family: 'Open Sans', sans-serif;
                                          color: #5b5b5b;
                                          line-height: 20px;
                                          vertical-align: top;
                                        "
                                      >
                                        UPS: U.S. Shipping Services
                                      </td>
                                    </tr>
                                  </tbody> --}}
                                </table>
                              </td>
                            </tr>
                          </tbody>
                        </table>
                      </td>
                    </tr>
                    <tr class="hiddenMobile">
                      <td height="60"></td>
                    </tr>
                    <tr class="visibleMobile">
                      <td height="30"></td>
                    </tr>
                  </tbody>
                </table>
              </td>
            </tr>
          </tbody>
        </table>
        <!-- /Information -->
        <table
          width="100%"
          border="0"
          cellpadding="0"
          cellspacing="0"
          align="center"
          class="fullTable"
          bgcolor="#e1e1e1"
        >
          <tr>
            <td>
              <table
                width="600"
                border="0"
                cellpadding="0"
                cellspacing="0"
                align="center"
                class="fullTable"
                bgcolor="#ffffff"
                style="border-radius: 0 0 10px 10px"
              >
                <tr>
                  <td>
                    <table
                      width="480"
                      border="0"
                      cellpadding="0"
                      cellspacing="0"
                      align="center"
                      class="fullPadding"
                    >
                      <tbody>
                        <tr>
                          <td
                            style="
                              font-size: 12px;
                              color: #5b5b5b;
                              font-family: 'Open Sans', sans-serif;
                              line-height: 18px;
                              vertical-align: top;
                              text-align: left;
                            "
                          >
                            Have a nice day.
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </td>
                </tr>
                <tr class="spacer">
                  <td height="50"></td>
                </tr>
              </table>
            </td>
          </tr>
          <tr>
            <td height="20"></td>
          </tr>
        </table>
             </div>
      </div>
    </section>
@endsection
@push('scripts')
    <script>
    function printFunction() {
        // সেকশনের HTML কপি করে
        const printContents = document.getElementById('invoiceSection').innerHTML;
        // প্রধান বডির কন্টেন্ট সেভ করে
        const originalContents = document.body.innerHTML;

        // শুধু ইনভয়েস সেকশন দেখানোর জন্য বডি রিপ্লেস
        document.body.innerHTML = printContents;

        // প্রিন্ট ডায়ালগ
        window.print();

        // প্রিন্ট শেষে ওয়েবসাইটের আসল কন্টেন্ট রিস্টোর
        document.body.innerHTML = originalContents;
    }
</script>
@endpush