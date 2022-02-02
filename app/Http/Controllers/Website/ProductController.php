<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Banner;
use App\Blogs;
use App\Categories;
use App\Product_Attribute;
use App\Product_Images;
use App\Product;
use App\Review;
use App\Plans;
use App\User;
use App\TempCart;
use App\Cart;
use App\UserAddress;
use App\State;
use App\OrderItem;
use App\Order;
use App\UserSubcription;
use DB;
use Carbon\carbon;
use Session;
use Auth;
use Mail;

class ProductController extends Controller
{
    public function shop()
    {
        $data['flag'] = 1;
        $data['categories_contain'] = Categories::where('status',1)->get();
        return view('Website/Webviews/manage_shop_pages',$data);
    }
}
