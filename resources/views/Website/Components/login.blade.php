
<section class="container-fluid contact-us">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="page-title">
                    <h3 class="text-center py-3">Login</h3>
                </div>
            </div>           
        </div>
    </div>
</section>

<section class="container-fluid contact-image-section border-bottom">
    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3 ">
                <form class="" action="{{url('Login-submit')}}" method="POST">
                    @csrf                                       
                    <div class="card p-5">
                        <div class="form-group">
                            <input class="form-control" type="email" name="email" placeholder="Enter Your Email" required>
                        </div>                   
                        <div class="form-group">
                            <input class="form-control" name="password" type="password" placeholder="Enter Password">
                        </div> 
                        <div class="form-group">
                            <input type="checkbox" name="remember_me" placeholder="Remember Me"> <span class="ml-2">Remember Me</span> 
                        </div>                   
                    <button class="btn btn-outline-success my-3" type="submit">Login</button> 
                    
                  <span>No account ? <a class="a-class" href="{{url('/Web-register')}}">Register now</a> </span>  
                </div>                        
                </form>
            </div>
           
        </div>
    </div>
</section>