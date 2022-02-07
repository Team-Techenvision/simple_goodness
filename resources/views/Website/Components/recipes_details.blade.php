
<section class="container-fluid common-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="page-title">
                    <h3 class="text-center py-3">Recipes Details</h3>
                </div>
            </div>           
        </div>
    </div>
</section>


<section class="container-fluid  page-middle-section  border-bottom">
    <div class="container">
        <div class="row">   
           
            <div class="col-md-12"> 
                <div class="card recipes-card">
                    <img class="card-img-top" src="{{asset($recipes->recipe_image)}}" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title text-center">{{$recipes->title}}</h5>
                      <p class="card-text text-justify">{!! $recipes->content !!}</p>
                    </div>
                  </div>
            </div>
            
        </div>
    </div>
</section>
