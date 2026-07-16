<div
                    class="tab-pane fade"
                    id="v-pills-profile"
                    role="tabpanel"
                    aria-labelledby="v-pills-profile-tab">
                    <div class="user__order">
                      <table class="table table-borderd">
                        <thead>
                          <tr>
                            <th>Sl</th>
                            <th>Date</th>
                            <th>Amount</th>
                            <th>Discount</th>
                            <th>Status</th>
                            <th>Action</th>
                          </tr>
                        </thead>
                        <tbody>
                           @foreach($orders as $key=>$value)
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>{{$value->created_at->format('d-m-y')}}</td>
                                    <td>${{$value->amount}}</td>
                                    <td>${{$value->discount}}</td>
                                    <td>{{$value->status?$value->status->name:''}}</td>
                                    <td><a href="{{route('customer.invoice',['id'=>$value->id])}}" class="invoice_btn"><i class="fa-solid fa-eye"></i></a>
                                    @if($value->admin_note)
                                    <a href="{{route('customer.order_note',['id'=>$value->id])}}" class="invoice_btn bg-primary"><i class="fa-solid fa-pencil"></i></a>
                                    </td>
                                    @endif
                                </tr>
                                @endforeach
                        </tbody>
                      </table>
                    </div>
                  </div>