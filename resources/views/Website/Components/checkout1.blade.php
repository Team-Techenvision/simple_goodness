<section class="container-fluid common-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="page-title">
                    <h3 class="text-center py-3">Checkout</h3>
                </div>
            </div>
        </div>
    </div>
</section>


<section class="container-fluid  page-middle-section ">
    <div class="container">
        <form action="{{url('checkout-submit')}}" method="POST">
            @csrf
        <div class="row">
            <div class="col-md-6">
                <div class="row">
                    @foreach ($useraddress as $item)
                        <div class="col-md-6">
                            <div class="exsting_address">
                                <input type="radio" checked="checked" name="address_id" value="{{ $item->id }}">
                                <span class="checkmark"></span>
                                <label class="radio-box"> {{ $item->name }}
                                </label>
                                <ul style="line-height: 1.5;">

                                    {{-- <li>{{$item->address_type}}</li> --}}
                                    {{-- <li>{{$item->name}}</li> --}}
                                    <li>{{ $item->address }}</li>
                                    <li>{{ $item->city }},</li>
                                    <li>{{ $item->state }},{{ $item->country }},{{ $item->pin_code }}</li>
                                    <li><a href="{{ url('user-address-edit') }}/{{ $item->id }}">Edit</a>&nbsp; <a
                                            href="{{ url('user-address-delete') }}/{{ $item->id }}">Delete</a>
                                    </li>

                                </ul>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
            <div class="col-md-6 mp-0 ">
                <div class="card">
                    <div class="card-body mp-1">
                        <div class="row">
                            <div class="col-12">
                                <h4>Your Order</h4>
                            </div>

                            @php
                                $total = 0;
                                $total_amount = 0;
                                $shipping_charges = 0;
                                $copoun_amount = 0;
                            @endphp
                            @foreach ($result as $item)
                                @php
                                    if ($item->special_price != null) {
                                        $total += $item->special_price * $item->quantity;
                                    } else {
                                        $total += $item->price * $item->quantity;
                                    }
                                    // $total += $item->price * $item->quantity;

                                    if ($item->special_price != null) {
                                        $subtotal = $item->special_price * $item->quantity;
                                    } else {
                                        $subtotal = $item->price * $item->quantity;
                                    }

                                    // $subtotal = $item->price * $item->quantity;
                                    
                                    $shipping = DB::table('shipping_charges')
                                        ->where('min', '<=', $total)
                                        ->where('max', '>=', $total)
                                        ->pluck('ship_charges')
                                        ->first();
                                    $final_total = $total + $shipping;
                                @endphp





                                <div class="col-7 mp-0 mm-0 m-center">
                                    <p class="font-13">{{ $item->product_name }} <span
                                            class="ml-2 btn btn-primary btn-sm font-13"> <i class='fas fa-times'></i>
                                            {{ $item->quantity }}</span></p>
                                </div>
                                <div class="col-5 mp-0 mm-0 m-center">
                                    <p><i class="fas fa-rupee-sign"></i> @if ($item->special_price != null) {{ $item->special_price * $item->quantity }} @else {{ $item->price * $item->quantity }} @endif </p>
                                </div>
                            @endforeach

                            <div class="col-12 border-top"></div>

                            <div class="col-7 mp-0 mm-0 m-center">
                                <p>Sub Total</p>
                            </div>

                            <div class="col-5 mp-0 mm-0 m-center">
                                <p><i class="fas fa-rupee-sign"></i> {{ $total }}</p>
                            </div>

                            <div class="col-7 bb-1 mp-0 mm-0 m-center">
                                <p>Shipping Chages</p>
                            </div>

                            <div class="col-5 bb-1 mp-0 mm-0 m-center">
                                <p><i class="fas fa-rupee-sign"></i> {{ $shipping }}</p>
                            </div>


                            <div class="col-7 mp-0 mm-0 m-center">
                                <h5 class="font-weight-bold">Total</h5>
                            </div>
                            <div class="col-5 mp-0 mm-0 m-center">
                                <p class="font-weight-bold"><i class="fas fa-rupee-sign"></i> {{ $final_total }}</p>
                            </div>

                            <input type="hidden" name="total_amount" value="{{$final_total}}">
                            <input type="hidden" name="payment_mode" value="1">

                            <div class="col-12 mp-0 mm-0 m-center text-center">
                                <button type="submit" class="btn btn-dark">Place Order</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       </form>
    </div>
</section>


<section class="container-fluid  page-middle-section border-bottom">
    <div class="container">

    </div>
</section>
