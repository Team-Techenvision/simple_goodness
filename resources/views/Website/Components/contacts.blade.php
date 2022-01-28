
<section class="container-fluid contact-us">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="page-title">
                    <h3 class="text-center py-3">Contact Us</h3>
                </div>
            </div>
           
        </div>
    </div>
</section>

<section class="container contact-us-sub-section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <p class="text-center font-20">
                    We look forward to getting your feedback, and always welcome opportunities to work together. Do get in touch by filling in this short form.
                </p>
            </div>
        </div>
    </div>

</section>

<section class="container-fluid contact-image-section border-bottom">
    <div class="container">
        <div class="row">
            <div class="col-md-5 ">
                <form class="" action="{{url('submit-contact-us')}}" method="POST">
                    @csrf
                    <span class="text-danger">All Fields are mandatory</span>
                    <div class="form-group">
                        <input class="form-control" type="text" name="name" placeholder="Enter Your Name" required>
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="email" name="email" placeholder="Enter Your Email" required>
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="tel" name="mobile" placeholder="Enter Your Mobile No." required>
                    </div>   
                    <textarea class="form-control" name="message" id="message" cols="30" rows="10" placeholder="Enter Your Message here" required></textarea>    
                    <button class="btn btn-outline-success my-3" type="submit">Submit</button>                           
                </form>
            </div>
            <div class="col-md-7 p-0">
                <img class="w-100" src="{{asset('Website/images/contact_us.png')}}" alt="">
            </div>
        </div>
    </div>
</section>