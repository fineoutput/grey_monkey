@extends('frontend.layouts.app')
@section('main')
   <div class="section quotes-ig">
    <div class="container">
        <div class="row">
            <div></div>
        </div>
    </div>
   </div>

    <div class="section form-sect section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="mb-4">Call us today on 0800 292 2313 or leave your message for a FREE quote!</h3>
  <form action="submit.php" method="post">
    <div class="mb-3">
      <label for="full_name" class="form-label">Full Name</label>
      <input type="text" class="form-control" id="full_name" name="full_name" required>
    </div>
    <div class="mb-3">
      <label for="email" class="form-label">Email</label>
      <input type="email" class="form-control" id="email" name="email" required>
    </div>
    <div class="mb-3">
      <label for="phone" class="form-label">Phone</label>
      <input type="tel" class="form-control" id="phone" name="phone" required>
    </div>
    <div class="mb-3">
      <label for="postcode" class="form-label">Postcode</label>
      <input type="text" class="form-control" id="postcode" name="postcode" required>
    </div>
    <div class="mb-3">
      <label for="hire_period" class="form-label">Hire Period</label>
      <input type="text" class="form-control" id="hire_period" name="hire_period">
    </div>
    <div class="mb-3">
      <label for="how_can_we_assist" class="form-label">How Can We Assist?</label>
      <textarea class="form-control" id="how_can_we_assist" name="how_can_we_assist" rows="3" required></textarea>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
                      
                </div>
            </div>
        </div>
    </div>
@endsection