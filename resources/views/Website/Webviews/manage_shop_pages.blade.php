@include('Website.Common/head')

<body class="loaded">


    <!-- BEGIN BODY -->

    <div class="main-wrapper">

        <!-- BEGIN CONTENT -->

        <main class="content">
            @if($flag == 1)
                @include('Website.Components/productList') 
            @elseif($flag == 2) 
                @include('Website.Components/productList')
            @endif
        </main>

        <!-- CONTENT EOF   -->


    

    @include('Website.Common/footer')