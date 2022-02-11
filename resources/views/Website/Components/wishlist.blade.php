
<section class="container-fluid common-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="page-title">
                    <h3 class="text-center py-3">Wishlist</h3>
                </div>
            </div>           
        </div>
    </div>
</section>


<section class="container-fluid  page-middle-section border-bottom">
    <div class="container">
        <div class="row">          
          @if($result->count() > 0)  
            <div class="col-md-12">
                <table class="table text-center">
                    <thead class="thead-dark">
                      <tr>
                        <th scope="col">Image</th>
                        <th scope="col">Product</th>
                        <th scope="col">Price</th>
                        <th scope="col">Remove</th>
                      </tr>
                    </thead>
                    <tbody>
                      @foreach($result as  $wishlists)
                      <tr>
                        <td><img src="{{asset($wishlists->product_image)}}" alt="product image" class="cart-img"></td>
                        <td class="align-middle">{{$wishlists->product_name}}</td>
                        <td class="align-middle"> <i class="fas fa-rupee-sign"></i> {{$wishlists->price}}</td>                        
                        <td class="align-middle"> <a href="{{url('remove-wishlist/'.$wishlists->products_id)}}"><i class="far fa-window-close"></i></a></td>
                      </tr>
                      @endforeach
                    </tbody>
                  </table>                      
            </div>
            @else
              <div class="col-md-12">
                <p class="text-center"> <a href="{{url('/')}}" class="btn btn-dark">Add Items To Wishlist</a> </p>
              </div>
            @endif
        </div>
    </div>
</section>


