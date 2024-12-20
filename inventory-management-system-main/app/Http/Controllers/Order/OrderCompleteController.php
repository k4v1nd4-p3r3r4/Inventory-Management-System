<?php

namespace App\Http\Controllers\Order;
use Illuminate\Support\Facades\DB;
use App\Enums\OrderStatus;
use App\Models\Order;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class OrderCompleteController extends Controller
{
    public function __invoke(Request $request)
    {
        $orders =collect( DB::select("
        SELECT orders.id, orders.invoice_no, orders.order_date, orders.payment_type, orders.total,
                   customers.name AS customer_name
            FROM orders
            JOIN customers ON orders.customer_id = customers.id
            WHERE orders.order_status = 'COMPLETE'
            ORDER BY orders.created_at DESC
    "));


        return view('orders.complete-orders', [
            'orders' => $orders
        ]);
    }
}
