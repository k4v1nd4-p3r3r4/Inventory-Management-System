<?php

namespace App\Http\Controllers\Dashboards;

use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;


class DashboardController extends Controller
{
    public function index()
    {

        $orders = DB::select("SELECT * FROM order_count_view")[0]->count;
        $completedOrders = DB::select("SELECT * FROM completed_orders_count")[0]->count;
        $products = DB::select("SELECT * FROM products_count")[0]->count;
        $purchases = DB::select("SELECT * FROM purchases_count")[0]->count;
        $todayPurchases = DB::select("SELECT * FROM today_purchases_count")[0]->count;
        $categories = DB::select("SELECT * FROM categories_count")[0]->count;
        $quotations = DB::select("SELECT * FROM quotations_count")[0]->count;
        $todayQuotations = DB::select("SELECT * FROM today_quotations_count")[0]->count;

        $monthlyOrders = collect(DB::select("
            SELECT
            COUNT(*) as count,
            SUM(total) as total,
            DATE_FORMAT(order_date, '%M %Y') as month
            FROM orders
            GROUP BY month
            ORDER BY MIN(order_date)
            LIMIT 12;

    "));

        $monthlyPurchases = collect(DB::select("
            SELECT
            COUNT(*) as count,
            SUM(total_amount) as total,
            DATE_FORMAT(date, '%M %Y') as month
            FROM purchases
            GROUP BY month
            ORDER BY MIN(date)
            LIMIT 12;

    "));


        return view('dashboard', [
            'products' => $products,
            'orders' => $orders,
            'completedOrders' => $completedOrders,
            'purchases' => $purchases,
            'todayPurchases' => $todayPurchases,
            'categories' => $categories,
            'quotations' => $quotations,
            'todayQuotations' => $todayQuotations,
            'monthlyOrders' => $monthlyOrders,
            'monthlyPurchases' => $monthlyPurchases,
        ]);
    }
}
