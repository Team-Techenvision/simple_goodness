

<section class="container-fluid common-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="page-title">
                    <h3 class="text-center py-3">My Address</h3>
                </div>
            </div>           
        </div>
    </div>
</section>


<section class="container-fluid  page-middle-section border-bottom">
    <div class="container">
        <div class="row">
                    <div class="col-md-3">
                        <ul>
                            <li> <a href="{{url('My-Profile')}}" class="a-class"> My Profile</a>  </li>
                            <li> <a href="{{url('My-Address')}}" class="a-class"> My Address</a>  </li>
                            <li> <a href="#" class="a-class"> My Order</a>  </li>
                        </ul>    
                    </div> 
                    <div class="col-md-9">
                        <div class="card p-5">
                                <form class="address-form" action="{{url('user-address-submit')}}" method="post" name="add_profile" enctype="multipart/form-data">
                                    @csrf  
                                    <input type="hidden" name="address_id" value="{{$useraddress->id}}"> 
                                    <div class="form-group">
                                        <label for="name"> Name : </label>
                                        <input class="form-control" type="text" id="name" name="name" value="{{$useraddress->name}}" placeholder="Enter Your Name">
                                    </div>                                     

                                    <div class="form-group">
                                        <label for="email">Email : </label>
                                        <input class="form-control" type="email" name="email" value="{{$useraddress->email}}"  placeholder="Enter Your Email" required>
                                    </div>   
                                    
                                    <div class="form-group">
                                        <label for="phone">Phone : </label>
                                        <input class="form-control" type="tel" id="phone" name="phone" value="{{$useraddress->phone}}" placeholder="Enter Your Phone no." required>
                                    </div> 

                                    <div class="form-group">
                                        <label for="address">Address : </label>
                                        <textarea class="form-control" name="address" id="address" cols="30" rows="3" placeholder="Enter Your Address">{{$useraddress->address}}</textarea>
                                    </div>

                                  <div class="form-group">
                                    <select class="form-control" name="state">    
                                        <option value="">Select State</option>                                                
                                        @foreach($state_list as $r)                                                                                                      
                                            <option value="{{$r->state}}" @if($r->state == $useraddress->state)selected @endif>{{$r->state}}</option>                                                                                                      
                                        @endforeach                                                          
                                    </select>  
                                  </div>
                 
                                  <div class="form-group">
                                    <label for="country"> Country : </label>
                                    <input class="form-control" type="text" id="country" name="country"  value="{{$useraddress->country}}" placeholder="Enter Country">
                                </div>  

                                <div class="form-group">
                                    <label for="city"> City : </label>
                                    <input class="form-control" type="text" id="city" name="city" value="{{$useraddress->city}}" placeholder="Enter City">
                                </div>  

                                <div class="form-group">
                                    <label for="pincode"> Pincode : </label>
                                    <input class="form-control" type="text" id="pincode" name="pin_code" value="{{$useraddress->pin_code}}" placeholder="Enter pincode">
                                </div>  

                                <button class="btn btn-outline-success my-3" type="submit">Submit</button> 

                            </form>
                        </div>
                    </div>

                    
        </div>        
    </div>
</section>




