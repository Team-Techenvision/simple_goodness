

<section class="container-fluid common-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="page-title">
                    <h3 class="text-center py-3">My Profile</h3>
                </div>
            </div>           
        </div>
    </div>
</section>


<section class="container-fluid  page-middle-section ">
    <div class="container">
        <div class="row">
                    <div class="col-md-3">
                        @if($user->profile_pic)
                        <div class="profile-pic text-center">
                            <img src="{{asset($user->profile_pic)}}" alt="">
                        </div>
                        @else
                        <div class="profile-pic text-center">
                            <img src="{{asset('images/users/avatar-2.jpg')}}" alt="">
                        </div>
                        @endif

                        <h4 class="text-center mt-3">{{$user->name}}</h4>
                        <ul>
                            <li> <a href="{{url('My-Profile')}}" class="a-class"> My Profile</a>  </li>
                            <li> <a href="{{url('My-Address')}}" class="a-class"> My Address</a>  </li>
                            <li> <a href="{{url('My-Order')}}" class="a-class"> My Order</a>  </li>
                        </ul>    
                    </div> 
                    <div class="col-md-9">
                        <div class="card p-5">
                                <form class="address-form" action="{{url('user-profile-submit')}}" method="post" name="add_profile" enctype="multipart/form-data">
                                    @csrf   

                                    <div class="form-group">
                                        <label for="name"> Name : </label>
                                        <input class="form-control" type="text" id="name" name="name" placeholder="Enter Your Name" value="{{$user->name}}" required>
                                    </div>                                     

                                    <div class="form-group">
                                        <label for="email">Email : </label>
                                        <input class="form-control" type="email" name="email" value="{{$user->email}}" placeholder="Enter Your Email" required>
                                    </div>   
                                    
                                    <div class="form-group">
                                        <label for="phone">Phone : </label>
                                        <input class="form-control" type="tel" id="phone" name="phone" value="{{$user->phone}}" placeholder="Enter Your Phone no." required>
                                    </div> 

                                    <div class="form-group">
                                        <label for="profile">Profile Picture : </label>
                                        <input class="form-control" type="file" id="" name="profile_pic">
                                    </div> 
                 
                                <button class="btn btn-outline-success my-3" type="submit">Submit</button> 

                            </form>
                        </div>
                    </div>
        </div>
    </div>
</section>




