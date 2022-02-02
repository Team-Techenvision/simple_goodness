

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


<section class="container-fluid  page-middle-section ">
    <div class="container">
        <div class="row">
                    <div class="col-md-3">
                        <ul>
                            <li> <a href="{{url('My-Profile')}}" class="a-class"> My Profile</a>  </li>
                            <li> <a href="{{url('My-Address')}}" class="a-class"> My Address</a>  </li>
                            <li> <a href="{{url('My-Order')}}" class="a-class"> My Order</a>  </li>
                        </ul>    
                    </div> 
                    <div class="col-md-9">
                        <div class="card p-5">
                                <form class="address-form" action="{{url('user-address-submit')}}" method="post" name="add_profile" enctype="multipart/form-data">
                                    @csrf   
                                    <div class="form-group">
                                        <label for="name"> Name : </label>
                                        <input class="form-control" type="text" id="name" name="name" placeholder="Enter Your Name">
                                    </div>                                     

                                    <div class="form-group">
                                        <label for="email">Email : </label>
                                        <input class="form-control" type="email" name="email"  placeholder="Enter Your Email" required>
                                    </div>   
                                    
                                    <div class="form-group">
                                        <label for="phone">Phone : </label>
                                        <input class="form-control" type="tel" id="phone" name="phone" placeholder="Enter Your Phone no." required>
                                    </div> 

                                    <div class="form-group">
                                        <label for="address">Address : </label>
                                        <textarea class="form-control" name="address" id="address" cols="30" rows="3" placeholder="Enter Your Address"></textarea>
                                    </div>

                                  <div class="form-group">
                                    <select class="form-control" name="state">    
                                        <option value="">Select State</option>                                                
                                        @foreach($state_list as $r)                                                                                                      
                                            <option value="{{$r->state}}">{{$r->state}}</option>                                                                                                      
                                        @endforeach                                                          
                                    </select>  
                                  </div>
                 
                                  <div class="form-group">
                                    <label for="country"> Country : </label>
                                    <input class="form-control" type="text" id="country" name="country" placeholder="Enter Country">
                                </div>  

                                <div class="form-group">
                                    <label for="city"> City : </label>
                                    <input class="form-control" type="text" id="city" name="city" placeholder="Enter City">
                                </div>  

                                <div class="form-group">
                                    <label for="pincode"> Pincode : </label>
                                    <input class="form-control" type="text" id="pincode" name="pin_code" placeholder="Enter pincode">
                                </div>  

                                <button class="btn btn-outline-success my-3" type="submit">Submit</button> 

                            </form>
                        </div>
                    </div>

                    
        </div>
        <div class="row my-5">
            <div class="col-md-12 title text-center"> <h3>Saved Address</h3> </div>
            @foreach ($useraddress as $item)
            <div class="col-md-6">               
                <div class="box-field"> 
                    <div class="exsting_address">
                        <ul style="line-height: 1.5;">
                           
                            {{-- <li>{{$item->address_type}}</li> --}}
                            <li>{{$item->name}}</li>
                            <li>{{$item->address}}</li>
                            <li>{{$item->city}},</li>
                            <li>{{$item->state}},{{$item->country}},{{$item->pin_code}}</li>
                            <li><a href="{{url('user-address-edit')}}/{{$item->id}}">Edit</a>&nbsp; <a href="{{url('user-address-delete')}}/{{$item->id}}">Delete</a></li>
                           
                        </ul>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>




