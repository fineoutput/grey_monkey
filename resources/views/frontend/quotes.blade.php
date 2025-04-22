@extends('frontend.layouts.app')
@section('main')
<div class="cntct-sect">
  <div class="container">
    <div class="row"></div>
  </div>
</div>
<style>
    /* CSS for success modal */
    #successModal {
        display: none;
        position: fixed;
        top: 40%;
        left: 17%;
        transform: translate(-50%, -50%);
        width: 400px;
        height: 100px;
        text-align: center;
        z-index: 1000; /* Ensure it's above other elements */
        overflow: hidden; /* Prevent scrolling */
    }

    .modal-content {
        background-color: #19a454db; /* Change background color to green */
        padding: 10px;
        color: white; /* Text color */
        border-radius: 10px;
    }
    .modal-content p{
        font-size: 25px;
        margin-bottom: 0px;
        color: white; /* Text color */
    }

    .close {
        color: white; /* Close button color */
        position: absolute;
        top: 5px;
        right: 5px;
        font-size: 20px;
        font-weight: bold;
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
                    <form id="quoteForm" action="{{ route('store_quote') }}" method="POST">
                        @csrf
                        <input type="text" name="name" placeholder="Full Name" required>
                        <div id="nameError" style="color: red;"></div>

                        <input type="email" name="email" placeholder="Email" required>
                        <div id="emailError" style="color: red;"></div>

                        <input type="tel" name="phone" placeholder="Phone" required>
                        <div id="phoneError" style="color: red;"></div>

                        <input type="text" name="postcode" placeholder="Postcode" required>
                        <input type="text" name="hireperiod" placeholder="Hire Period" required>
                        <input type="number" name="toilet" placeholder="How Many Toilets Required ">
                        <textarea name="message" placeholder="How can we assist?" rows="5" required></textarea>
                        <div id="messageError" style="color: red;"></div>

                        <div class="g-recaptcha" data-sitekey="{{ config('constants.RECAPTCHA_SITE_KEY') }}" style="margin-bottom: 20px;"></div>
                        @if ($errors->has('recaptcha'))
                        <div class="alert alert-danger">
                            {{ $errors->first('recaptcha') }}
                        </div>
                        @endif
                        @if ($errors->has('g-recaptcha-response'))
                        <div class="alert alert-danger">
                            {{ $errors->first('g-recaptcha-response') }}
                        </div>
                        @endif

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
                <img src="{{url('frontend/images/sdsdd.png')}}">
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
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
<script>
    document.getElementById('quoteForm').onsubmit = function(event) {
        // Prevent form submission
        event.preventDefault();

        // Validate form fields
        if (!validateForm()) {
            return false; // Cancel form submission
        }

        // If form validation passes, submit the form
        this.submit();
    };

    function validateForm() {
        var isValid = true;

        // Perform validation on form fields
        var name = document.forms['quoteForm']['name'].value.trim();
        var email = document.forms['quoteForm']['email'].value.trim();
        var phone = document.forms['quoteForm']['phone'].value.trim();
        var postcode = document.forms['quoteForm']['postcode'].value.trim();
        var hireperiod = document.forms['quoteForm']['hireperiod'].value.trim();
        var message = document.forms['quoteForm']['message'].value.trim();

        // Check if any required fields are empty
        if (name === '') {
            document.getElementById('nameError').innerText = 'Please enter your name.';
            isValid = false;
        } else {
            document.getElementById('nameError').innerText = '';
        }

        // Validate name format (only letters)
        var nameRegex = /^[A-Za-z\s]+$/;
        if (!nameRegex.test(name)) {
            document.getElementById('nameError').innerText = 'Name can only contain letters and spaces.';
            isValid = false;
        }

        if (email === '') {
            document.getElementById('emailError').innerText = 'Please enter your email address.';
            isValid = false;
        } else {
            document.getElementById('emailError').innerText = '';
        }

        // Validate email format
        var emailRegex = /^\S+@\S+\.\S+$/;
        if (!emailRegex.test(email)) {
            document.getElementById('emailError').innerText = 'Please enter a valid email address.';
            isValid = false;
        }

        if (phone === '') {
            document.getElementById('phoneError').innerText = 'Please enter your phone number.';
            isValid = false;
        } else {
            document.getElementById('phoneError').innerText = '';
        }

        // Validate phone format (only numbers)
        var phoneRegex = /^\d+$/;
        if (!phoneRegex.test(phone)) {
            document.getElementById('phoneError').innerText = 'Phone number can only contain numbers.';
            isValid = false;
        }

        // Additional validation logic for other fields

        return isValid; // Form is valid
    }
</script>

@endsection