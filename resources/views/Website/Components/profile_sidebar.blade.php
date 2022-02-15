@if($user->profile_pic)
<div class="profile-pic text-center">
    <img src="{{asset($user->profile_pic)}}" alt="">
</div>
@else
<div class="profile-pic text-center">
    <img src="{{asset('images/users/avatar-2.jpg')}}" alt="">
</div>
@endif

<h4 class="text-center mt-3">{{$user->name}}</h4>
<ul class="profile-ul">
    <li> <a href="{{url('My-Profile')}}" class="a-class"> My Profile</a>  </li>
    <li> <a href="{{url('My-Address')}}" class="a-class"> My Address</a>  </li>
    <li> <a href="{{url('My-Order')}}" class="a-class"> My Order</a>  </li>
</ul>  