

<section class="container-fluid common-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="page-title">
                    <h3 class="text-center py-3">Product page</h3>
                </div>
            </div>           
        </div>
    </div>
</section>


<section class="container-fluid  page-middle-section ">
    <div class="container">
        <div class="row">
           
            <div class="col-md-3">
                <div class="card">
                    <ul class="py-5 no-ul">
                        <li>
                            Masala
                        </li>
                        <li>
                            Spices
                        </li>
                        <li>
                            Oils
                        </li>
                        <li>
                            Pulses
                        </li>
                    </ul>
                </div>
                
            </div>
            <div class="col-md-9">
                <div class="row">
                    @foreach ($Products as $item)
                    <div class="col-md-4 col-sm-2 col-12">
                        <form action="{{url('/add-to-cart')}}" method="post" class="num-block">
                            @csrf
                            <input type="hidden" name="products_id" id="product_id_detail_page" value="{{$item->products_id}}">
                            <input type="hidden" name="quantity" class="counter-input"  value="1">
                        <div class="card w-100 product-card">
                            <a href="{{url('/ProductDetail')}}/{{$item->products_id}}"> <img class="card-img-top" src="{{asset($item->product_image)}}" alt="Product image"> </a>
                            <div class="card-body">
                              <h5 class="card-title">{{$item->product_name}}</h5>
                              {{-- <p class="card-text">ome quick example text to build on the card title and make up the bulk of the card's content.</p> --}}
                                    <div class="d-flex " style="justify-content: space-evenly;">
                                            <button type="submit" class="btn btn-dark" title="Add To Card"> <i class="fas fa-cart-plus"></i> </button>
                                            @auth
                                                @php $user_id =Auth::user()->id; @endphp
                                                <a href="{{url('add-wishlist/'.$item->products_id.'/'.$user_id)}}" class="btn btn-dark" title="Add To Card"><i class="fas fa-heart"></i></a>
                                            @endauth
                                        </div> 
                            </div>
                        </div>
                    </form>
                    </div>
                    @endforeach

                    {{-- <div class="col-md-4 col-sm-2 col-12">
                        <div class="card w-100" >
                            <img class="card-img-top" src="{{asset('Website/images/masala_home_hero.png')}}" alt="Card image cap">
                            <div class="card-body">
                              <h5 class="card-title">Card title</h5>
                              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                              <a href="{{url('/ProductDetail')}}/3" class="btn btn-primary">Buy Now</a>
                            </div>
                          </div>
                    </div>

                    <div class="col-md-4 col-sm-2 col-12">
                        <div class="card w-100" >
                            <img class="card-img-top" src="{{asset('Website/images/masala_home_hero.png')}}" alt="Card image cap">
                            <div class="card-body text-center">
                              <h5 class="card-title">Card title</h5>
                              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                              <a href="{{url('/ProductDetail')}}/3" class="btn btn-primary">Buy Now</a>
                            </div>
                          </div>
                    </div> --}}

                </div>
            </div>
        </div>
    </div>
</section>