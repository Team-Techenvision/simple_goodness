

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
                        @include('Website.Components.profile_sidebar')  
                    </div> 
                    <div class="col-md-9">
                        <div class="card p-5 mp-1">
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




