<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\adminlogincontroller;
use App\Http\Controllers\Admin\TeamController;
use App\Http\Controllers\Frontend\HomeController;
use App\Http\Controllers\Admin\SliderController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\ContactUsController;
use App\Http\Controllers\Admin\OrderController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/clear-cache', function () {
//     $exitCode = Artisan::call('cache:clear');
//     // $exitCode = Artisan::call('route:clear');
//     // $exitCode = Artisan::call('config:clear');
//     // $exitCode = Artisan::call('view:clear');
//     // return what you want
// });
//=========================================== FRONTEND =====================================================

Route::group(['prefix' => '/'], function () {
    Route::get('/', [HomeController::class, 'index'])->name('/');
    Route::get('/quotes', [HomeController::class, 'quotes'])->name('quotes');
});

//======================================= ADMIN ===================================================
Route::group(['prifix' => 'admin'], function () {
    Route::group(['middleware'=>'admin.guest'],function(){

        Route::get('/login', [adminlogincontroller::class, 'admin_login'])->name('admin_login');
        Route::post('/login_process', [adminlogincontroller::class, 'admin_login_process'])->name('admin_login_process');

    });
Route::group(['middleware'=>'admin.auth'],function(){

 Route::get('/admin_index', [TeamController::class, 'admin_index'])->name('admin_index');
 Route::get('/logout', [adminlogincontroller::class, 'admin_logout'])->name('admin_logout');
 Route::get('/profile', [adminlogincontroller::class, 'admin_profile'])->name('admin_profile');
 Route::get('/view_change_password', [adminlogincontroller::class, 'admin_change_pass_view'])->name('view_change_password');
 Route::post('/admin_change_password', [adminlogincontroller::class, 'admin_change_password'])->name('admin_change_password');

        // Admin Team ------------------------

Route::get('/view_team', [TeamController::class, 'view_team'])->name('view_team');
Route::get('/add_team_view', [TeamController::class, 'add_team_view'])->name('add_team_view');
Route::post('/add_team_process', [TeamController::class, 'add_team_process'])->name('add_team_process');
Route::get('/UpdateTeamStatus/{status}/{id}', [TeamController::class, 'UpdateTeamStatus'])->name('UpdateTeamStatus');
Route::get('/deleteTeam/{id}', [TeamController::class, 'deleteTeam'])->name('deleteTeam');
Route::resource('/sliders', SliderController::class);
//-------- NEW -----------
Route::resource('/sliders', SliderController::class);
Route::resource('/users', UserController::class);
Route::resource('/category', CategoryController::class);
Route::get('/contact_enquiry', [ContactUsController::class, 'index'])->name('contact_enquiry');
//------ products ----------
Route::get('/products_category', [ProductController::class, 'products_category'])->name('products.category');
Route::get('/products/{category_id}', [ProductController::class, 'index'])->name('products.index');
Route::get('/products_create/{category_id}', [ProductController::class, 'create'])->name('products.create');
Route::post('/products_store', [ProductController::class, 'store'])->name('products.store');
Route::get('/products_show/{product_id}', [ProductController::class, 'show'])->name('products.show');
Route::get('/products_edit/{product_id}', [ProductController::class, 'edit'])->name('products.edit');
Route::delete('/products_destroy/{product_id}', [ProductController::class, 'destroy'])->name('products.destroy');

//---------- Orders ---------
Route::get('/new_orders', [OrderController::class, 'new_orders'])->name('new_orders');
Route::get('/accepted_orders', [OrderController::class, 'accepted_orders'])->name('accepted_orders');
Route::get('/dispatched_orders', [OrderController::class, 'dispatched_orders'])->name('dispatched_orders');
Route::get('/delivered_orders', [OrderController::class, 'delivered_orders'])->name('delivered_orders');
Route::get('/rejected_orders', [OrderController::class, 'rejected_orders'])->name('rejected_orders');
Route::get('/all_orders', [OrderController::class, 'all_orders'])->name('all_orders');
Route::get('/updateOrderStatus/{status}/{id}', [OrderController::class, 'updateOrderStatus'])->name('update-order-status');
Route::get('/orderDetails/{id}', [OrderController::class, 'orderDetails'])->name('order-details');
Route::get('/OrderInvoice/{id}', [OrderController::class, 'OrderInvoice'])->name('order-invoice');

    });

});

