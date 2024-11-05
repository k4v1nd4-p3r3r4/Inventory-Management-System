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

        // $orders = DB::select("SELECT fn_OrdersCount()");
        // $completedOrders = DB::select("SELECT fn_OrdersCount()");
        // $products = DB::select("SELECT fn_ProductCount()");
        // $purchases = DB::select("SELECT fn_PurchsesCount()");
        // $todayPurchases = DB::select("SELECT fn_TodayPurchsesCount()");
        // $categories = DB::select("SELECT fn_CategoriesCount()");
        // $quotations = DB::select("SELECT fn_QuotationsCount()");
        // $todayQuotations = DB::select("SELECT fn_TodayQuotationsCount()");

        $monthlyOrders = collect(DB::select("SELECT * FROM vw_MonthlyOrders;"));

        $monthlyPurchases = collect(DB::select("SELECT * FROM vw_MonthlyPurchases;"));


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
