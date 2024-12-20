<?php

namespace App\Http\Controllers\Order;
use Illuminate\Support\Facades\DB;
use App\Enums\OrderStatus;
use App\Models\Order;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class OrderPendingController extends Controller
{
    public function __invoke(Request $request)
    {
        $orders = collect(DB::select("
        SELECT orders.*, customers.name AS customer_name
    FROM orders
    JOIN customers ON orders.customer_id = customers.id
    WHERE orders.order_status = 'PENDING'
    ORDER BY orders.created_at DESC
    "));


        return view('orders.pending-orders', [
            'orders' => $orders
        ]);
    }
}
