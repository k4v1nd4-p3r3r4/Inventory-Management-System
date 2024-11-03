<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\Invoice\StoreInvoiceRequest;
use App\Models\Customer;
use Gloudemans\Shoppingcart\Facades\Cart;

class InvoiceController extends Controller
{
    public function create(StoreInvoiceRequest $request, Customer $customer)
    {
        $customer = collect(DB::select("SELECT * FROM customers WHERE id = ? LIMIT 1", [$request->get('customer_id')]));


        return view('invoices.index', [
            'customer' => $customer,
            'carts' => Cart::instance('order')->content(),
        ]);
    }
}
