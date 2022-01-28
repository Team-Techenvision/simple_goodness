<footer>
    <div class="row">
        <div class="col-md-4"> 
            <p>2022	© Simple Goodness</p>
        </div>
        <div class="col-md-4">
            {{-- <img class="footer-img" src="{{asset('Website/images/all_footer.jpg')}}" class="w-100" alt=""> --}}
        </div>
        <div class="col-md-4"> 
           <ul class="list-inline">
               <li class="list-inline-item"><a class="a-class" href="{{url('/contacts')}}">contact us</a> </li>
               <li class="list-inline-item"> <a class="a-class" href="{{url('/about')}}">About Simple goodness</a> </li>
               <li class="list-inline-item"> <a class="a-class" href="{{url('/privacy-policy')}}">privacy Policy</a> </li>
           </ul>
        </div>

            <!-- Back to top button -->
            <button title="Back To Top" type="button" class="btn btn-outline-success btn-floating btn-lg" id="btn-back-to-top">
                <i class="fas fa-arrow-up"></i>
            </button>
    </div>
</footer>



<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<script src="{{ URL::asset('Website/js/owl.carousel.js')}}"></script>
<script>
    $('.owl-one').owlCarousel({
loop:true,
margin:0,
padding:0,
autoplay:true,
autoplayHoverPause: true,
nav:true,
responsive:{
    0:{
        items:1
    },
    600:{
        items:1
    },
    1000:{
        items:1
    }
}
})
</script>
<script>
    $('.owl-two').owlCarousel({
loop:true,
margin:0,
padding:0,
autoplay:true,
nav:true,
responsive:{
    0:{
        items:1
    },
    600:{
        items:1
    },
    1000:{
        items:1
    }
}
})
</script>

<script>
            let mybutton = document.getElementById("btn-back-to-top");

    // When the user scrolls down 20px from the top of the document, show the button
    window.onscroll = function () {
    scrollFunction();
    };

    function scrollFunction() {
    if (
        document.body.scrollTop > 20 ||
        document.documentElement.scrollTop > 20
    ) {
        mybutton.style.display = "block";
    } else {
        mybutton.style.display = "none";
    }
    }
    // When the user clicks on the button, scroll to the top of the document
    mybutton.addEventListener("click", backToTop);

    function backToTop() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
    }
</script>
</body>
</html>