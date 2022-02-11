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
                                            href="{{ url('user-address-delete') }}/{{ $item->id }}">Delete</a></li>

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
                            <div class="col-6 mp-0 mm-0 m-center">
                                <p>Pure Nature Honey</p>
                            </div>
                            <div class="col-6 mp-0 mm-0 m-center">
                                <p><i class="fas fa-rupee-sign"></i> 139.00</p>
                            </div>
                            <div class="col-6 mp-0 mm-0 m-center">
                                <p>Your Product Name</p>
                            </div>

                            <div class="col-6 mp-0 mm-0 m-center">
                                <p><i class="fas fa-rupee-sign"></i> 450.00</p>
                            </div>
                            <div class="col-6 mp-0 mm-0 m-center">
                                <p>Your Product Name</p>
                            </div>
                            
                            <div class="col-6 mp-0 mm-0 m-center">
                                <p><i class="fas fa-rupee-sign"></i> 450.00</p>
                            </div>
                            <div class="col-12 border-top"></div>

                            <div class="col-6 mp-0 mm-0 m-center">
                                <p>Sub Total</p>
                            </div>

                            <div class="col-6 mp-0 mm-0 m-center">
                                <p><i class="fas fa-rupee-sign"></i> 450.00</p>
                            </div>

                            <div class="col-6 bb-1 mp-0 mm-0 m-center">
                                <p>Discount</p>
                            </div>

                            <div class="col-6 bb-1 mp-0 mm-0 m-center">
                                <p><i class="fas fa-rupee-sign"></i> 00.00</p>
                            </div>


                            <div class="col-6 mp-0 mm-0 m-center">
                                <h5 class="font-weight-bold">Total</h5>
                            </div>
                            <div class="col-6 mp-0 mm-0 m-center">
                                <p class="font-weight-bold"><i class="fas fa-rupee-sign"></i> 450.00</p>
                            </div>
                            <div class="col-12 mp-0 mm-0 m-center text-center">
                                <button type="button" class="btn btn-dark">Place Order</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<section class="container-fluid  page-middle-section border-bottom">
    <div class="container">

    </div>
</section>
