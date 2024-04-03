@extends('frontend.layouts.app')
@section('main')
<div class="cntct-sect">
  <div class="container">
    <div class="row"></div>
  </div>
</div>

<div class="container section-padding" id="cntct">
    <div class="row">
        <div class="col-md-6">
            <div class="form-section">
                <div class="form-container">
                    <h2>Call us today on 0800 292 2313 or leave your message for a FREE quote!</h2>
                    <form action="#" method="POST">
                        <input type="text" name="fullname" placeholder="Full Name" required>
                        <input type="email" name="email" placeholder="Email" required>
                        <input type="tel" name="phone" placeholder="Phone" required>
                        <input type="text" name="postcode" placeholder="Postcode" required>
                        <input type="text" name="hireperiod" placeholder="Hire Period" required>
                        <textarea name="message" placeholder="How can we assist?" rows="5" required></textarea>
                        <button type="submit">Submit</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-section">
                <div class="image-container">
                <img src="{{url('frontend/images/poster.jpg')}}">
                </div>
            </div>
        </div>
    </div>
</div>
<footer class="footer section-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <p>Copyright © 2024 Grey Monkey All Rights Reserved.</p>
                </div>
                <div class="col-md-6">
                  <div class="logo-sect">
                  <a style="text-decoration: none;" href="https://www.fineoutput.com/">
                    <p>Developed by Fineoutput Technology</p>
                  </a>
                  </div>
                </div>
            </div>
        </div>
    </footer>
@endsection