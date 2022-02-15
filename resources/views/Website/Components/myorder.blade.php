

<section class="container-fluid common-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="page-title">
                    <h3 class="text-center py-3">My Orders</h3>
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
            <div class="col-md-9 mp-0">
                <table id="example" class="table table-striped table-bordered table-responsive" style="width:100%">
                    <thead>
                        <tr>
                            <th>ORDER ID</th>
                            <th>AMOUNT</th>
                            <th>PAYMENT STATUS</th>
                            <th>SHIPPING</th>
                            <th>ACTION</th>                                            
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($order as $item)
                        <tr>
                            <td>{{$item->order_id}}</td>
                            <td>{{$item->amount}}</td>
                            <td>@if($item->order_status == 1) online @else Cash on delivery @endif </td>
                            <td>{{$item->shipping_charge}}</td>
                            <td>
                                {{-- <a href="{{url('download-user-invoice/'.$item->order_id)}}" data-toggle="tooltip" title="download-invoice"><i class="fa fa-download pr-3" aria-hidden="true"></i></a> --}}
                                <a href="{{url('user-order-detail/'.$item->order_id)}}" data-toggle="tooltip" title="View Order Details "><i class="fa fa-eye" aria-hidden="true"></i></a>    
                            </td>                                            
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>




