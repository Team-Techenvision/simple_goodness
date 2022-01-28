
<div class="col-12">
    <div class="card">
        <div class="card-body"> 
            <div class="col-12 text-right pb-2"> 
                <a href="{{url('add-product')}}" class="btn btn-info">Add Product</a>
            </div>    
        <table id="datatable-buttons" class="table table-striped table-bordered dt-responsive text-center" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                <thead>
                    <tr>
                        <th>No </th>
                        <th>Product Name</th>
                        <th>Product SKU</th> 
                        <th>Product Category </th>                    
                        <th>Status</th>                            
                        
                        {{-- <th>Add Attribute</th> --}}
                        <th>Add Images</th> 
                        <th>Action</th>                                         
                    </tr>
                </thead>

                <tbody>
                    {{-- <a class="btn btn-warning" href="{{ route('export') }}">Export User Data</a> --}}
                    <?php $i = 1; ?>
                    @foreach($product as $row)
                    @php
                         $category =  DB::table('category')->where('id',$row->category_id)->pluck('category_name')->first();
                    @endphp
                   <tr>
                       <td>{{$i++}}</td>
                       <td>{{$row->product_name}}</td> 
                       <td>{{$row->product_code}}</td>                          
                       <td>{{$category}}</td>                                                    
                       <td>@if($row->status == 1) Active @else De-Active @endif</td>
                       {{-- <td><a href="{{url('edit-college/'.$row->id)}}" class="btn btn-info mr-2">Edit</a><a href="{{url('delete-college/'.$row->id)}}" class="btn btn-danger">Delete</a></td>         
                        --}}
                     
                        {{-- <td> <a href="{{url('view-product-attribute/'.$row->products_id)}}" class="btn btn-info mr-2">Add Attribute</a> </td> --}}
                        <td width="14%"> <a href="{{url('view-product-images/'.$row->products_id)}}" title="add images" class="btn btn-info mr-2"> <i class="mdi mdi-apps h4 text-white" data-name="mdi-apps"></i> </a> </td>
                        <td width="14%"> <a href="{{url('edit-product/'.$row->products_id)}}" title="Edit Product" class="btn btn-info "> <i class="mdi mdi-tooltip-edit h4 text-white" data-name="mdi-tooltip-edit"></i> </a>
                            <a href="{{url('delete-product/'.$row->products_id)}}" title="Delete Product" class="btn btn-danger"> <i class="mdi mdi-close-box h4 text-white" data-name="mdi-close-box"></i> </a>
                         </td>
                    </tr>
                    @endforeach 
                   
                </tbody>
            </table>
        </div>
    </div>
</div>

<style>
    .dt-buttons
    {
        display:none!important;
    }
 </style>   
<!-- end col -->
