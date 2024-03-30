<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\adminmodel\CategoryModal;
use App\adminmodel\ProductModal;

class CategoryController extends Controller
{
    public function index(Request $req)
    {
            $foreachData = CategoryModal::wherenull('deleted_at')->latest()->get();
            $title =  "Category";
            return view('admin/category.index', compact('foreachData', 'title'));
    }
    public function create(Request $req)
    {
            $data = new CategoryModal();
            $title =  "Add Category";
            return view('admin/category.create', compact('data', 'title'));
    }
    public function store(Request $req)
    {
            $this->validate($req, [
                'name' => $req->id === null ? 'required' : 'required',
            ]);
            if ($req->id === null) {
                $uploadData = new CategoryModal();
            } else {
                $uploadData = CategoryModal::where('id', $req->id)->first();
            }
            if (!empty($req->image)) {
                $allowedFormats = ['jpeg', 'jpg', 'webp'];
                $extension = strtolower($req->image->getClientOriginalExtension());
                if (in_array($extension, $allowedFormats)) {
                    $file = time() . '.' . $req->image->extension();
                    $req->image->move(public_path('uploads/image/category/'), $file);
                    $image = 'uploads/image/category/' . $file;
                } else {
                    // Handle invalid file format (not allowed)
                    return redirect()->back()->with('error', 'Invalid file format. Only jpeg, jpg, and webp files are allowed.');
                }
            } else {
                $image = $uploadData->image;
            }
            $userId = $req->session()->get('admin_id');
            $uploadData->name = ucwords($req->name);
            $uploadData->image = $image;
            $uploadData->ip = $req->ip();
            $uploadData->added_by = $userId;
            $uploadData->save();
            if ($uploadData) {
                if ($req->id === null) {
                    return redirect()->route('category.index')->with('success', 'Category Added Successfully!');
                } else {
                    return redirect()->route('category.index')->with('success', 'Category Updated Successfully');
                }
            } else {
                return redirect()->back()->with('error', 'Something Went Wrong');
            }
    }
    public function edit(Request $req, $idd)
    {
            $id = base64_decode($idd);
            $data = CategoryModal::where('id', $id)->first();
            $title =  "Category";
            return view('admin/category.create', compact('data', 'title'));
    }

    public function destroy(Request $req, $idd)
    {
            if ($req->session()->get('position') == "Super Admin") {
                $id = base64_decode($idd);
                $categorys = CategoryModal::findOrFail($id);
                $categorys->delete();
                //-------- delete products ---
                ProductModal::where('category_id', $id)->delete();
                return redirect()->route('category.index')->with('success', 'Category deleted Successfully!');
            } else {
                return redirect()->back()->with('error', 'Sorry you dont have Permission to delete admin, Only Super admin can change status');
            }
    }
    public function show(Request $req, $idd)
    {
            if ($req->session()->get('position') == "Super Admin") {
                $id = base64_decode($idd);
                $category = CategoryModal::findOrFail($id);
                $category->is_active = !$category->is_active;
                $category->save();
                // Update products status
                ProductModal::where('category_id', $id)
                    ->update(['is_active' => $category->is_active]);
                return redirect()->route('category.index')->with('success', 'Status updated Successfully!');
            } else {
                return redirect()->back()->with('error', 'Sorry you dont have Permission to delete admin, Only Super admin can change status');
            }
    }
}
