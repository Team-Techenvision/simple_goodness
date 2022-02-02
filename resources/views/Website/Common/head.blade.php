
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <!-- Owl Stylesheets -->
    <link rel="stylesheet" href="{{ URL::asset('Website/css/style.css')}}">
    <link rel="stylesheet" href="{{ URL::asset('Website/css/owl.carousel.min.css')}}">
    <link rel="stylesheet" href="{{ URL::asset('Website/css/owl.theme.default.min.css')}}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.1.1/css/all.min.css" integrity="sha512-ioRJH7yXnyX+7fXTQEKPULWkMn3CqMcapK0NNtCN8q//sW7ZeVFcbMJ9RvX99TwDg6P8rAH2IqUSt2TLab4Xmw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link    rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@200;300;400;600;700&display=swap" rel="stylesheet">
    <title>Simple Goodness</title>
    @toastr_css
    @toastr_js
    @toastr_render
  </head>
  <body>
      <section  class="top-navbar">
          <div class="container-fluid">
              <div class="row">
                  <div class="col-md-12 text-right display-inline">
                      <span class="font-11 font-weight-bold">
                        Customer Care 1800 108 4488
                      </span>
                      <span><img class="svg-img" src="{{asset('images/svg/facebook.svg')}}" alt=""></span>
                      <span><img class="svg-img" src="{{asset('images/svg/twitter.svg')}}" alt=""></span>
                      <span><img class="svg-img" src="{{asset('images/svg/instagram.svg')}}" alt=""></span>                
                  </div>
              </div>
          </div>
      </section>
    <section class="navbar-top">
        <nav class="navbar navbar-expand-lg navbar-light bg-white mx-auto">
            <a class="navbar-brand" href="{{url('/')}}"><img src="{{asset('Website/images/logo.png')}}" class="nav-logo" alt=""></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav ml-auto">               
                <li class="nav-item active">
                    <a class="nav-link font-weight-bol" href="{{url('/')}}">Home</a>
                 </li>
                  <li class="nav-item dropdown ">
                    <a class="nav-link dropdown-toggle font-weight-bol" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Herbs & Spices
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <a class="dropdown-item" href="#">Products</a>
                      <a class="dropdown-item" href="#">Other Masala</a>
                    </div>
                  </li>
                
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle font-weight-bol" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Pulses
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <a class="dropdown-item" href="#">Products</a>
                    </div>
                  </li>    
                <li class="nav-item">
                    <a class="nav-link font-weight-bol" href="#">Oils</a>
                </li>      
                <li class="nav-item">
                    <a class="nav-link font-weight-bol" href="#">Cereals</a>
                </li>       
                <li class="nav-item">
                  <a class="nav-link font-weight-bol" href="#">Sweetners</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link font-weight-bol" href="#">Legumes</a>
                  </li>
                <li class="nav-item">
                    <a class="nav-link font-weight-bol" href="{{url('/about')}}">About</a>
                 </li>
                <li class="nav-item">
                    <a class="nav-link font-weight-bol" href="{{url('/contacts')}}">Contact</a>
                </li>
                @auth
                      <li class="nav-item notification1">
                        <a class="nav-link font-weight-bol" href="{{url('/my-cart')}}" title="My Cart"><i class="fas fa-shopping-cart"></i> <span>3</span></a>
                      </li>
                      <li class="nav-item notification2">
                        <a class="nav-link font-weight-bol" href="{{url('/wishlist')}}" title="Wishlist"><i class="fas fa-heart"></i> <span>2</span></a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link font-weight-bol" href="{{url('/logout')}}" title="Logout"><i class="fas fa-sign-out-alt"></i></a>
                    </li>
                @endauth
                @guest 
                    <li class="nav-item notification3">
                      <a class="nav-link font-weight-bol" href="{{url('/my-cart')}}" title="My Cart"><i class="fas fa-shopping-cart"></i> <span>3</span></a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link font-weight-bol" href="{{url('/Web-login')}}" title="login"><i class="fas fa-sign-in-alt"></i></a>
                  </li>
                @endguest
              </ul>
            </div>
          </nav>
    </section>