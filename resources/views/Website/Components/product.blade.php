

<section class="container-fluid common-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="page-title">
                    <h3 class="text-center py-3">Product Details</h3>
                </div>
            </div>           
        </div>
    </div>
</section>


<section class="container-fluid  page-middle-section ">
    <div class="container">
        <div class="row">
           <div class="col-md-6">
                <div class="product-image-big">
                    <img src="{{asset($Products->product_image)}}" alt="">
                </div>
           </div> 
           <div class="col-md-6">
                <div class="product-single-content">
                    <h3>{{$Products->product_name}}</h3>
                    <span class="text-primary">In Stock</span>
                    <h5 class="my-2 font-roboto"> <i class="fas fa-rupee-sign"></i> <span class="font-weight-bold">{{$Products->price}}</span>  </h5>
                    <p>{{$Products->short_description}}</p>
                    <div class="border-bottom mb-2"></div>
                    <p class="mt-5 font-weight-bold">Quantity:</p>
                    <div class="quantity buttons_added">
                        <input type="button" value="-" class="minus"><input type="number" step="1" min="1" max="" name="quantity" value="1" title="Qty" class="input-text qty text" size="4" pattern="" inputmode=""><input type="button" value="+" class="plus">
                    </div>
                    <div class="col-12">
                        <button type="button" class="btn btn-dark mt-5">Cart</button>
                    </div>                    
                </div>
            </div>          
        </div>
    </div>
</section>


<section class="container-fluid  page-middle-section border-bottom">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ul class="nav nav-tabs product-nav" id="myTab" role="tablist">
                    <li class="nav-item">
                      <a class="nav-link active a-class" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Description</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link a-class" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Reviews</a>
                    </li>                    
                  </ul>
                  <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                       <p>{!!$Products->long_description!!}</p>
                    </div>
                    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                        <div class="review-card">
                            <div class="row">
                                <div class="col-md-3 text-center mobile-left">
                                    <img src="{{asset('images/users/avatar-2.jpg')}}" alt="">
                                </div>
                                <div class="col-md-7 mp-0">
                                    <div class="review-content">
                                        <div class="row">
                                            <div class="col-12">
                                            <h4>GERALD BARNES</h4>
                                            <p class="d-block">27 JUN, 2019 AT 2:30PM</p>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer accumsan egestas elese ifend. Phasellus a felis at estei to bibendum feugiat ut eget eni Praesent et messages in con sectetur posuere dolor non.</p>
                                            <span class="mr-3"><i class="fas fa-star text-danger"></i> </span> <span class="mr-3"><i class="fas fa-star text-danger"></i></span> <span class="mr-3"><i class="fas fa-star text-danger"></i></span> <span class="mr-3"><i class="fas fa-star text-danger"></i></span> <span><i class="far fa-star"></i></span>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    
                  </div>    
            </div> 
        </div>
    </div>
</section>

