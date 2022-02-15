

<section class="container-fluid common-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="page-title">
                    <h3 class="text-center py-3">Order Details</h3>
                </div>
            </div>           
        </div>
    </div>
</section>


<section class="container-fluid  page-middle-section border-bottom">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                @include('Website.Components.profile_sidebar')  
            </div> 
            <div class="col-md-9">
                <table id="example" class="table table-striped table-bordered table-responsive" style="width:100%">
                    <thead>
                        <tr>
                            <th>ORDER ID</th>
                            <th>PRODUCT</th>
                            {{-- <th>DETAILS</th> --}}
                            <th>PRICE</th>
                            <th>QUANTITY</th>
                            <th>ORDER STATUS</th>                                            
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($order as $item)

                        @php
                        $product = DB::table('products')->where('products_id' , $item->prod_id)->first();
                        $price = DB::table('products')->where('products_id' , $item->prod_id)->pluck('price')->first();
                        $special_price = DB::table('products')->where('products_id' , $item->prod_id)->pluck('special_price')->first();

                        // dd($special_price);
                    @endphp
                        <tr>
                            <td>{{$item->order_id}}</td>
                            <td>{{$product->product_name}}</td>
                            {{-- <td>{{$product->long_description}}</td> --}}
                            <td> @if($special_price != null){{$special_price}}@else{{$price}}@endif</td>
                            <td>{{$item->quantity}}</td>
                            <td>
                            @php
                                echo"In Process";
                            @endphp  
                            </td>                                            
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>




