
<section class="container-fluid contact-us">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="page-title">
                    <h3 class="text-center py-3">Register Now</h3>
                </div>
            </div>           
        </div>
    </div>
</section>

<section class="container-fluid contact-image-section border-bottom">
    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3 ">
                <form class="" action="{{url('Register-submit')}}" method="POST">
                    @csrf                                       
                    <div class="card p-5">
                        <div class="form-group">
                            <input class="form-control" type="text" name="name" title="First Name" placeholder="Enter Your First Name" required>
                        </div>                          
                        <div class="form-group">
                            <input class="form-control" type="text" name="last_name" title="Last Name" placeholder="Enter Your Last Name" required>
                        </div>  
                        <div class="form-group">
                            <input class="form-control" type="number" name="phone" title="Phone No." placeholder="Enter Your Phone" required>
                        </div>  
                        <div class="form-group">
                            <input class="form-control" type="email" name="email" title="Email" placeholder="Enter Your Email" required>
                        </div>                          
                        <div class="form-group">
                            <input class="form-control" name="password" type="password" title="Password" placeholder="Enter Password">
                        </div> 
                        <div class="form-group">
                            <input class="form-control" name="cpassword" type="password" placeholder="Confirm password">
                        </div>                                         
                    <button class="btn btn-outline-success my-3" type="submit">Register</button>                     
                  <span>Already have an account ?  <a class="a-class" href="{{url('/Web-login')}}">Log in</a> </span>  
                </div>                        
                </form>
            </div>           
        </div>
    </div>
</section>