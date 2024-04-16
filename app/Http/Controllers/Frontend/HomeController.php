<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Redirect;
use Laravel\Sanctum\PersonalAccessToken;
use DateTime;
use Illuminate\Support\Facades\Validator;
use App\Models\quote;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Mail;


class HomeController extends Controller
{
    // ============================= START INDEX ============================ 
    public function index(Request $req)
    {
     
        return view('frontend.index');
    }
    public function quotes(Request $req)
    {
     
        return view('frontend.quotes');
    }

    public function store_quote(Request $request){
        
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required',
            'phone' => 'required',
            'postcode' => 'required',
            'hireperiod' => 'required',
        ]);
    if(!$validator->fails()){

        $subject = "Quotes";
        
      if(empty($request->toilet)){

        $subject = "Contact Us";
      }
      
       
    
        $quote = new quote();
        $quote->name = $request->name;
        $quote->email = $request->email;
        $quote->phone = $request->phone;
        $quote->postcode = $request->postcode;
        $quote->hireperiod = $request->hireperiod;
        $quote->toilets_qty = $request->toilet;
        $quote->message = $request->message;
        $quote->ip = $request->ip();
        $quote->is_active = 1;
        $quote->save();
        
        $html  = '<p>Dear Team,</p><p>We have a new '.$subject. 'on greymonkey.com. Below are the provided details:</p>
                    <p><b>Name:</b> ' . $request->name . ' </p>
                    <p><b>Email:</b> ' . $request->email . ' </p>
                    <p><b>phone:</b> ' . $request->phone . ' </p>
                    <p><b>postcode:</b> ' . $request->postcode . ' </p>
                    <p><b>hire period:</b> ' . $request->hireperiod . ' </p>
                    <p><b>toilets_qty:</b> ' . $request->toilet . ' </p>
                    <p><b>Message:</b> ' . $request->message . ' </p>
                    <p>Please initiate the verification process and ensure to provide them with the necessary training and onboarding support. </p>';
                        $response = Mail::send([], [], function ($message) use ($html, $subject) {
                            $message->to(config('constants.CONSTANT_EMAIL'))
                                ->subject($subject.'Query')
                                ->setBody($html, 'text/html');
                        });
        session()->flash('success', 'form submit success');
        return redirect()->back();
   // return response()->json(['message' => 'success']);
     }
    else {
        
        return redirect()->back()
                ->withErrors($validator)
                ->withInput();
    }

    }

    
}
