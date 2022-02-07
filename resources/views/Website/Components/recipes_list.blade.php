
<section class="container-fluid common-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="page-title">
                    <h3 class="text-center py-3">Recipes</h3>
                </div>
            </div>           
        </div>
    </div>
</section>


<section class="container-fluid  page-middle-section  border-bottom">
    <div class="container">
        <div class="row">   
            @foreach($recipes_list as $item)      
            <div class="col-md-4"> 
                <div class="card recipes-card">
                    <img class="card-img-top" src="{{asset($item->recipe_image)}}" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title text-center">{{$item->title}}</h5>
                      {{-- <p class="card-text text-justify">{!! \Illuminate\Support\Str::limit($item->content, $limit = 150, $end = '...') !!}</p> --}}
                      <div class="button-div text-center"><a href="{{url('recipes/'.$item->id)}}" class="btn btn-dark">View more</a></div>
                    </div>
                  </div>
            </div>
            @endforeach
        </div>
    </div>
</section>
