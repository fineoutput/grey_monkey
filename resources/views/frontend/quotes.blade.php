@extends('frontend.layouts.app')
@section('main')
<div class="cntct-sect">
  <div class="container">
    <div class="row"></div>
  </div>
</div>
<style>
.modal {
  display: none;
  position: fixed;
  z-index: 1;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
  background-color: green;
}

.modal-content {
  background-color: #fefefe;
  margin: 15% auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
}

.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
</style>

<div id="successModal" class="modal">
    <div class="modal-content">
        <span class="close">&times;</span>
        <p id="successMessage"></p>
    </div>
</div>
<div class="container section-padding" id="cntct">
    <div class="row">
        <div class="col-md-6">
            <div class="form-section">
                <div class="form-container">
                    <h2>Call us today on 0800 292 2313 or leave your message for a FREE quote!</h2>
                    <form action="{{ route('store_quote') }}" method="POST">
                        @csrf
                        <input type="text" name="name" placeholder="Full Name" required>
                        <input type="email" name="email" placeholder="Email" required>
                        <input type="tel" name="phone" placeholder="Phone" required>
                        <input type="text" name="postcode" placeholder="Postcode" required>
                        <input type="text" name="hireperiod" placeholder="Hire Period" required>
                        <input type="number" name="toilet" placeholder="How Many Toilets Required ">
                        <textarea name="message" placeholder="How can we assist?" rows="5" required></textarea>
                        <button type="submit">Submit</button>
                    </form>
                </div>
                @if (session('success'))
                <input type="hidden" id="sessionMessage" value="{{ session('success') }}">
                @endif
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        var successModal = document.getElementById('successModal');
        var successMessage = document.getElementById('successMessage');

        // Check if there's a success message in the session
        var sessionMessage = $('#sessionMessage').val();

        if (sessionMessage) {
           // alert(sessionMessage);
            successMessage.innerHTML = sessionMessage; // Corrected variable name
            successModal.style.display = 'block';

            // Optional: Close the modal after 3 seconds
            setTimeout(function() {
                successModal.style.display = 'none';
            }, 5000);
        }

        // Add event listener to close button
        var closeButton = document.querySelector('.close');
        closeButton.addEventListener('click', function() {
            successModal.style.display = 'none';
        });
    });
</script>

@endsection