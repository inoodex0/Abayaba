 <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">
     <form action="{{route('customer.password_update')}}" method="POST">
        @csrf
         <div class="form-group mb-2">
             <label for="">Old Password</label>
             <input type="password" class="form-control" name="old_password" id="old_password" placeholder="Old Password" />
                @error('old_password')
                    <span class="text-danger" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
         </div>
         <div class="form-group mb-2">
             <label for="">New Password</label>
             <input type="password" name="new_password" id="new_password" class="form-control" placeholder="New Password" />
             @error('new_password')
                    <span class="text-danger" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
         </div>
         <div class="form-group mb-2">
             <label for="">Confirm New Password</label>
             <input type="password" class="form-control" id="confirm_password" name="confirm_password" placeholder="Confirm New Password" />
             @error('confirm_password')
                    <span class="text-danger" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
         </div>
         <div class="form-group mb-2">
             <button class="btn btn-dark">Update Password</button>
         </div>
     </form>
 </div>
