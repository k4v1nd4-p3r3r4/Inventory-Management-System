<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Gloudemans\Shoppingcart\Facades\Cart;

class CartController extends Controller
{
    public function add(Request $request)
    {
        Cart::add('', '', '', '', '',[

        ]);
    }

    public function update()
    {

    }

    public function delete()
    {

    }
}
