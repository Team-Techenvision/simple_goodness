<section class="container-fluid common-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="page-title">
                    <h3 class="text-center py-3">Shopping Cart</h3>
                </div>
            </div>
        </div>
    </div>
</section>


<section class="container-fluid  page-middle-section ">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <table class="table text-center  w-100">
                    <thead class="thead-dark ">
                        <tr>
                            <th scope="col">Image</th>
                            <th scope="col">Product</th>
                            <th scope="col">Price</th>
                            <th scope="col">Quantity</th>
                            <th scope="col">Total</th>
                            <th scope="col">Remove</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            @php
                                $total = 0;
                            @endphp

                            @foreach ($result as $item)
                                @php
                                    if ($item->special_price != null) {
                                        $total += $item->special_price * $item->quantity;
                                    } else {
                                        $total += $item->price * $item->quantity;
                                    }
                                    $subtotal = $item->price * $item->quantity;
                                    
                                    $product_image = DB::table('product_images')
                                        ->where('products_id', $item->products_id)
                                        ->where('type', 2)
                                        ->pluck('product_image')
                                        ->first();
                                @endphp
                                <td><img src="{{ asset($product_image) }}" alt="product image" class="cart-img">
                                </td>
                                <td class="align-middle">{{ $item->product_name }}</td>
                                <td class="align-middle"> <i class="fas fa-rupee-sign"></i> {{ $item->price }}</td>
                                <td class="align-middle">
                                    <div class="quantity buttons_added">
                                        <input type="button" value="-" class="minus"><input type="number"
                                            step="1" min="1" max="" name="quantity" value="1" title="Qty"
                                            class="input-text qty text" size="4" pattern="" inputmode=""><input
                                            type="button" value="+" class="plus">
                                    </div>
                                </td>
                                <td class="align-middle"><i class="fas fa-rupee-sign"></i>
                                    @if ($item->special_price != null)
                                        {{ $item->special_price }}
                                    @else
                                        {{ $item->price }}
                                    @endif
                                </td>
                                <td class="align-middle"> <a href="#" {{-- href="{{url('remove-card/'.$item->products_id)}}" --}}> <i
                                            class="far fa-window-close"></i> </a></td>
                        </tr>
                        @endforeach
                        {{-- <tr>
                        <td><img src="{{asset('Website/images/masala_home_hero.png')}}" alt="product image" class="cart-img"></td>
                        <td class="align-middle">Garam Masala</td>
                        <td class="align-middle"> <i class="fas fa-rupee-sign"></i> 450.00</td>
                        <td class="align-middle"><div class="quantity buttons_added">
                            <input type="button" value="-" class="minus"><input type="number" step="1" min="1" max="" name="quantity" value="1" title="Qty" class="input-text qty text" size="4" pattern="" inputmode=""><input type="button" value="+" class="plus">
                            </div>
                        </td>
                        <td class="align-middle"><i class="fas fa-rupee-sign"></i> 450.00</td>
                        <td class="align-middle"><i class="far fa-window-close"></i></td>
                      </tr>
                      <tr>
                        <td><img src="{{asset('Website/images/masala_home_hero.png')}}" alt="product image" class="cart-img"></td>
                        <td class="align-middle">Garam Masala</td>
                        <td class="align-middle"> <i class="fas fa-rupee-sign"></i> 450.00</td>
                        <td class="align-middle"><div class="quantity buttons_added">
                            <input type="button" value="-" class="minus"><input type="number" step="1" min="1" max="" name="quantity" value="1" title="Qty" class="input-text qty text" size="4" pattern="" inputmode=""><input type="button" value="+" class="plus">
                            </div>
                        </td>
                        <td class="align-middle"><i class="fas fa-rupee-sign"></i> 450.00</td>
                        <td class="align-middle"><i class="far fa-window-close"></i></td>
                      </tr> --}}
                    </tbody>
                </table>


            </div>
        </div>
    </div>
</section>


<section class="container-fluid  page-middle-section border-bottom">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="card p-4">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12">
                                <h4>Card Total</h4>
                            </div>
                            <div class="col-6">
                                <p>Sub Total</p>
                            </div>

                            <div class="col-6">
                                <p><i class="fas fa-rupee-sign"></i> {{ $total }}</p>
                            </div>

                            {{-- <div class="col-6 bb-1">
                                            <p>Discount</p> 
                                        </div>

                                        <div class="col-6 bb-1">
                                            <p><i class="fas fa-rupee-sign"></i> 00.00</p>
                                        </div> --}}


                            <div class="col-6">
                                <h5>Total</h5>
                            </div>
                            <div class="col-6">
                                <p><i class="fas fa-rupee-sign"></i> {{ $total }}</p>
                            </div>
                            <div class="col-12 text-center">
                                <button type="button" class="btn btn-dark">Proceed to Checkout</button>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
