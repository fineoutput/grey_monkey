<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\adminmodel\ContactUsModal;

class ContactUsController extends Controller
{
    public function index(Request $req)
    {
            $foreachData = ContactUsModal::wherenull('deleted_at')->latest()->get();
            $title =  "Contact Enquiries";
            return view('admin/contact_us.index', compact('foreachData', 'title'));
    }
    
}
