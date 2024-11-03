<?php

namespace App\Http\Controllers\Dashboards;
use Illuminate\Support\Facades\DB;
use App\Enums\OrderStatus;
use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Order;
use App\Models\Product;
use App\Models\Purchase;
use App\Models\Quotation;

class DashboardController extends Controller
{
    public function index()
    {
        $orders = DB::select("SELECT COUNT(*) as count FROM orders")[0]->count;
        $completedOrders = DB::select("SELECT COUNT(*) as count FROM orders WHERE order_status = 'COMPLETE'")[0]->count;
        
        $products = DB::select("SELECT COUNT(*) as count FROM products")[0]->count;
        
        $purchases = DB::select("SELECT COUNT(*) as count FROM purchases")[0]->count;
        $todayPurchases = DB::select("SELECT COUNT(*) as count FROM purchases WHERE date = CURDATE()")[0]->count;
        
        $categories = DB::select("SELECT COUNT(*) as count FROM categories")[0]->count;
        
        $quotations = DB::select("SELECT COUNT(*) as count FROM quotations")[0]->count;
        $todayQuotations = DB::select("SELECT COUNT(*) as count FROM quotations WHERE date = CURDATE()")[0]->count;
        
        return view('dashboard', [
            'products' => $products,
            'orders' => $orders,
            'completedOrders' => $completedOrders,
            'purchases' => $purchases,
            'todayPurchases' => $todayPurchases,
            'categories' => $categories,
            'quotations' => $quotations,
            'todayQuotations' => $todayQuotations,
        ]);
    }
}
