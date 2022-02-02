

    <section class="carousal">
        <div class="owl-carousel owl-theme owl-one">
            <div class="item">
                <div class="carousal-item-banner  text-center">
                    <img src="{{asset('Website/images/banner/item1.png')}}" class="w-100" alt="">
                   <a href="#" class="animate__animated animate__delay-2s animate__fadeInUp mt-5"><button class="btn btn-success">View Details</button></a>  
                </div>
                <img src="{{asset('Website/images/banner/slider01.jpg')}}" class="w-100" alt="">
            </div>
            <div class="item">
                <div class="carousal-item-banner text-center">
                    <img src="{{asset('Website/images/banner/item2.png')}}" class="w-100" alt="">
                    <a href="#"><button class="btn btn-success">View Details</button></a>  
                </div>
                <img src="{{asset('Website/images/banner/slider02.jpg')}}" class="w-100" alt="">
            </div>
            <div class="item">
                <div class="carousal-item-banner text-center">
                    <img src="{{asset('Website/images/banner/item1.png')}}" class="w-100" alt="">
                    <a href="#"><button class="btn btn-success">View Details</button></a>  
                </div>
                <img src="{{asset('Website/images/banner/slider03.jpg')}}" class="w-100" alt="">
            </div>
        </div>
    </section>
    <section class="goodness-section">
        <div class="mirchi"></div>
        <div class="loung"></div>
        <div class="chana"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <img  class="middle-img" src="{{asset('Website/images/middleimg.png')}}" alt="">
                </div>
            </div>
        </div>
    </section>

    {{-- <section class="product_warper">
        <div class="product-container">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="middle-carousal">
                            <div class="owl-carousel owl-theme owl-two">
                                <div class="item">
                                    <img src="{{asset('Website/images/banner/slider01.jpg')}}" class="w-100" alt="">
                                </div>
                                <div class="item">
                                    <img src="{{asset('Website/images/banner/slider02.jpg')}}" class="w-100" alt="">
                                </div>
                                <div class="item">
                                    <img src="{{asset('Website/images/banner/slider03.jpg')}}" class="w-100" alt="">
                                </div>
                            </div>
                        </div>
                    </div>                    
                </div>
            </div>
        </div>
    </section> --}}

    <section class="container-fluid product-section">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="product_title">
                        <h2 class="text-danger">PRODUCTS</h2>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="owl-carousel owl-theme owl-two">
                        <div class="item">
                            <div class="row">
                                <div class="col-md-6">
                                    <img src="{{asset('Website/images/masala_home_hero.png')}}" class="w-100" alt="">
                                </div>
                                <div class="col-md-6 vertical-center">
                                    <h3 class="text-left"></h3>
                                    <p class="text-justify">Dal Tadka is something that is close to our hearts, and that is why Tata Sampann’s Dal Tadka Masala is the ideal choice in making this delicious and hearty recipe that all of us revere.</p>
                                    <button class="btn btn-warning rounded-pill btn-half">Buy Now</button>
                                </div>
                            </div>
                            
                        </div>
                        <div class="item">
                            <div class="row">
                                <div class="col-md-6">
                                    <img src="{{asset('Website/images/toor_dal_hero_product.png')}}" class="w-100" alt="">
                                </div>
                                <div class="col-md-6 vertical-center">
                                    <h3 class="text-left"></h3>
                                    <p class="text-justify">Dal Tadka is something that is close to our hearts, and that is why Tata Sampann’s Dal Tadka Masala is the ideal choice in making this delicious and hearty recipe that all of us revere.</p>
                                    <button class="btn btn-warning  rounded-pill btn-half">Buy Now</button>
                                </div>
                            </div>
                            
                        </div>
                        <div class="item">
                            <div class="row">
                                <div class="col-md-6">
                                    <img src="{{asset('Website/images/besan_home_hero_product.png')}}" class="w-100" alt="">
                                </div>
                                <div class="col-md-6 vertical-center">
                                    <h3 class="text-left"></h3>
                                    <p class="text-justify">Dal Tadka is something that is close to our hearts, and that is why Tata Sampann’s Dal Tadka Masala is the ideal choice in making this delicious and hearty recipe that all of us revere.</p>
                                    <button class="btn btn-warning rounded-pill btn-half">Buy Now</button>
                                </div>
                            </div>                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="container-fluid testimonial">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="product_title">
                        <h2 class="text-warning">TESTIMONIALS</h2>
                    </div>
                </div>
            </div> 
            <div class="row">
                <div class="col-md-4">
                    <div class="card w-100" >
                        <img class="testimonial-img" src="{{asset('images/profile/testi01.jpg')}}" class="user-image" alt="...">
                        <div class="card-body">
                          <h5 class="card-title">Rujuta Deshpande, Mumbai</h5>
                          <p class="card-text font-14">The dal is very similar to what we used to get in our village. The flavor is so similar to the ones we get in our village farms.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card w-100" >
                        <img class="testimonial-img" src="{{asset('images/profile/testi02.jpg')}}" class="user-image" alt="...">
                        <div class="card-body">
                          <h5 class="card-title">Ms. Bandrawala, Mumbai</h5>
                          <p class="card-text font-14">When you polish the dal, it loses its protein. I am glad that I switched to Tata Sampann Dal as it has so many health benefits. There's no compromise on health in any way. I've always wanted to stick to the TATA brand since it generates trust. We feel like we won't be cheated</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card w-100" >
                        <img class="testimonial-img" src="{{asset('images/profile/testi03.jpg')}}" class="user-image" alt="...">
                        <div class="card-body">
                          <h5 class="card-title">MIthraja Meenakshi, Mumbai</h5>
                          <p class="card-text font-14">You know whether the product is good or not from the aroma you get when the cooker goes off. I've noticed that other dals don't have the same aroma as Tata Sampann's dal.</p>
                        </div>
                    </div>
                </div>
            </div>           
        </div>
    </section>

   