<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\adminmodel\CategoryModal;
use App\adminmodel\ProductModal;

class ProductController extends Controller
{
    public function products_category(Request $req)
    {
         
            $foreachData = CategoryModal::wherenull('deleted_at')->latest()->get();
            $title =  "Category";
            $show =  1;
            return view('admin/category.index', compact('foreachData', 'title', 'show'));
         
    }
    public function index(Request $req, $category_id)
    {
         
            $id = base64_decode($category_id);
            $parentData = CategoryModal::where('id', $id)->first();
            $foreachData = ProductModal::where('category_id', $id)->latest()->get();
            $title =  "Products";
            return view('admin/product.index', compact('foreachData', 'title','parentData'));
         
    }
    public function create(Request $req, $category_id)
    {
         
            $category_id = base64_decode($category_id);
            $data = new ProductModal();
            $title =  "Add Products";
            return view('admin/product.create', compact('data', 'title', 'category_id'));
         
    }
    public function store(Request $req)
    {
         
            $this->validate($req, [
                'category_id' => $req->id === null ? 'required' : 'required',
                'name' => $req->id === null ? 'required' : 'required',
                'sku' => $req->id === null ? '' : '',
                'description' => $req->id === null ? 'required' : 'required',
                'mrp' => $req->id === null ? 'required' : 'required',
                'selling_price' => $req->id === null ? 'required' : 'required',
                'gst_percentage' => $req->id === null ? 'required' : 'required',
                'gst' => $req->id === null ? 'required' : 'required',
                'price' => $req->id === null ? 'required' : 'required',
                'is_top' => $req->id === null ? '' : '',
            ]);
            if ($req->id === null) {
                $uploadData = new ProductModal();
            } else {
                $uploadData = ProductModal::where('id', $req->id)->first();
            }
            //---------- image 1 ---------
            if (!empty($req->image)) {
                $allowedFormats = ['jpeg', 'jpg', 'webp'];
                $extension = strtolower($req->image->getClientOriginalExtension());
                if (in_array($extension, $allowedFormats)) {
                    $file = time() . '_' . uniqid() . '.' . $req->image->extension();
                    $req->image->move(public_path('uploads/image/products/'), $file);
                    $image = 'uploads/image/products/' . $file;
                } else {
                    // Handle invalid file format (not allowed)
                    return redirect()->back()->with('error', 'Invalid file format. Only jpeg, jpg, and webp files are allowed.');
                }
            } else {
                $image = $uploadData->image;
            }
            //---------- image 2 ---------
            if (!empty($req->image2)) {
                $allowedFormats = ['jpeg', 'jpg', 'webp'];
                $extension = strtolower($req->image2->getClientOriginalExtension());
                if (in_array($extension, $allowedFormats)) {
                    $file = time() . '_' . uniqid() . '.' . $req->image2->extension();
                    $req->image2->move(public_path('uploads/image/products/'), $file);
                    $image2 = 'uploads/image/products/' . $file;
                } else {
                    // Handle invalid file format (not allowed)
                    return redirect()->back()->with('error', 'Invalid file format. Only jpeg, jpg, and webp files are allowed.');
                }
            } else {
                $image2 = $uploadData->image2;
            }
            //---------- image 3 ---------
            if (!empty($req->image3)) {
                $allowedFormats = ['jpeg', 'jpg', 'webp'];
                $extension = strtolower($req->image->getClientOriginalExtension());
                if (in_array($extension, $allowedFormats)) {
                    $file = time() . '_' . uniqid() . '.' . $req->image3->extension();
                    $req->image3->move(public_path('uploads/image/products/'), $file);
                    $image3 = 'uploads/image/products/' . $file;
                } else {
                    // Handle invalid file format (not allowed)
                    return redirect()->back()->with('error', 'Invalid file format. Only jpeg, jpg, and webp files are allowed.');
                }
            } else {
                $image3 = $uploadData->image3;
            }
            //---------- image 4 ---------
            if (!empty($req->image4)) {
                $allowedFormats = ['jpeg', 'jpg', 'webp'];
                $extension = strtolower($req->image->getClientOriginalExtension());
                if (in_array($extension, $allowedFormats)) {
                    $file = time() . '_' . uniqid() . '.' . $req->image4->extension();
                    $req->image4->move(public_path('uploads/image/products/'), $file);
                    $image4 = 'uploads/image/products/' . $file;
                } else {
                    // Handle invalid file format (not allowed)
                    return redirect()->back()->with('error', 'Invalid file format. Only jpeg, jpg, and webp files are allowed.');
                }
            } else {
                $image4 = $uploadData->image4;
            }
            $userId = $req->session()->get('admin_id');
            $uploadData->category_id = $req->category_id;
            $uploadData->name = ucwords($req->name);
            $uploadData->sku = $req->sku;
            $uploadData->description = $req->description;
            $uploadData->mrp = $req->mrp;
            $uploadData->selling_price = $req->selling_price;
            $uploadData->gst_percentage = $req->gst_percentage;
            $uploadData->price = $req->price;
            $uploadData->gst = $req->gst;
            $uploadData->is_top = $req->is_top;
            $uploadData->image = $image;
            $uploadData->image2 = $image2;
            $uploadData->image3 = $image3;
            $uploadData->image4 = $image4;
            $uploadData->ip = $req->ip();
            $uploadData->added_by = $userId;
            $uploadData->save();
            if ($uploadData) {
                if ($req->id === null) {
                    return redirect()->route('products.index', base64_encode($req->category_id))->with('success', 'Product Added Successfully!');
                } else {
                    return redirect()->route('products.index', base64_encode($req->category_id))->with('success', 'Product Updated Successfully');
                }
            } else {
                return redirect()->back()->with('error', 'Something Went Wrong');
            }
         
    }
    public function edit(Request $req, $idd)
    {
         
            $id = base64_decode($idd);
            $data = ProductModal::where('id', $id)->first();
            $title =  "Products";
            return view('admin/product.create', compact('data', 'title'));
         
    }

    public function destroy(Request $req, $idd)
    {
         
            if ($req->session()->get('position') == "Super Admin") {
                $id = base64_decode($idd);
                $products = ProductModal::findOrFail($id);
                $products->delete();
                return redirect()->route('products.index', base64_encode($products->category_id))->with('success', 'Product deleted Successfully!');
            } else {
                return redirect()->back()->with('error', 'Sorry you dont have Permission to delete admin, Only Super admin can change status');
            }
         
    }
    public function show(Request $req, $idd)
    {
         
            if ($req->session()->get('position') == "Super Admin") {
                $id = base64_decode($idd);
                $products = ProductModal::findOrFail($id);
                $products->is_active = !$products->is_active;
                $products->save();
                return redirect()->back()->with('success', 'Status updated Successfully!');
            } else {
                return redirect()->back()->with('error', 'Sorry you dont have Permission to delete admin, Only Super admin can change status');
            }
         
    }
}
