@extends('frontend.layouts.app')
@section('main')
<div id="carouselExampleIndicators" class="carousel slide">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5"></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="{{url('frontend/images/toilet_row3.jpeg')}}"> class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="{{url('frontend/images/toilet_row.jpeg')}}" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="{{url('frontend/images/toilet_row2.jpeg')}}" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="{{url('frontend/images/Media (16).jpg')}}" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="{{url('frontend/images/Media (1).jpg')}}" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="{{url('frontend/images/Media (2).jpg')}}" class="d-block w-100" alt="...">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden"></span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden"></span>
    </button>
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">

            </div>
        </div>
    </div>
</div>
<!-- <div class="section-hero">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                
                </div>
            </div>
        </div>
    </div>
    <!-- <header class="hero" id="carouselExampleIndicators">
        <div class="hero-content">
            <h1 class="hero-title">Grey <span>Monkey</span> </h1>
            <p class="hero-subtitle">Portable Toilets</p>
        </div>
    </header> -->
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
        z-index: 1000;
        /* Ensure it's above other elements */
        overflow: hidden;
        /* Prevent scrolling */
    }

    .modal-content {
        background-color: #19a454db;
        /* Change background color to green */
        padding: 10px;
        color: white;
        /* Text color */
        border-radius: 10px;
    }

    .modal-content p {
        font-size: 25px;
        margin-bottom: 0px;
        color: white;
        /* Text color */
    }

    .close {
        color: white;
        /* Close button color */
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
<div class="container" id="special">
    <div class="section-heading">
        <h2>What we specialise in</h2>
        <p><span class="brand-name">Grey Monkey</span> Specialises in low-cost Portable Loo hire across the midlands. Our portable toilet rental is second to none – With unbeatable Portable Loo hire prices and delivery costs, you won't need to look anywhere else once you have worked with us.</p>
    </div>
    <div class="row">
        <div class="col-md-6 col-lg-3">
            <a href="{{route('quotes')}}">
                <div class="image-container">
                    <img src="{{url('frontend/images/construct.jpeg')}}">
                    <div class="image-overlay"></div>
                    <div class="image-text">Hire & Service</div>
                    <div class="image-text-secondary"></div>
                </div>
            </a>
        </div>
        <div class="col-md-6 col-lg-3">
            <a href="{{route('quotes')}}">
                <div class="image-container">
                    <img src="{{url('frontend/images/toilet_row2.jpeg')}}">
                    <div class="image-overlay"></div>
                    <div class="image-text">Events </div>
                    <div class="image-text-secondary"></div>
                </div>
            </a>
        </div>
        <div class="col-md-6 col-lg-3">
            <a href="{{route('quotes')}}">
                <div class="image-container">
                    <img src="{{url('frontend/images/sents_thrd.jpg')}}">
                    <div class="image-overlay"></div>
                    <div class="image-text">Event Trailer Hire </div>
                    <div class="image-text-secondary"></div>
                </div>
            </a>
        </div>
        <div class="col-md-6 col-lg-3">
            <a href="{{route('quotes')}}">
                <div class="image-container">
                    <img src="{{url('frontend/images/toilet_row3.jpeg')}}">
                    <img src="images/img4.jpg" alt="Image 4">
                    <div class="image-overlay"></div>
                    <div class="image-text">Cross Hire </div>
                    <div class="image-text-secondary"></div>
                </div>
            </a>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6 col-lg-3">
            <a href="{{route('quotes')}}">
                <div class="image-container">
                    <img src="{{url('frontend/images/Media (3).jpg')}}">
                    <div class="image-overlay"></div>
                    <div class="image-text">Hire & Service</div>
                    <div class="image-text-secondary"></div>
                </div>
            </a>
        </div>
        <div class="col-md-6 col-lg-3">
            <a href="{{route('quotes')}}">
                <div class="image-container">
                    <img src="{{url('frontend/images/Media (4).jpg')}}">
                    <div class="image-overlay"></div>
                    <div class="image-text">Events </div>
                    <div class="image-text-secondary"></div>
                </div>
            </a>
        </div>
        <div class="col-md-6 col-lg-3">
            <a href="{{route('quotes')}}">
                <div class="image-container">
                    <img src="{{url('frontend/images/Media (5).jpg')}}">
                    <div class="image-overlay"></div>
                    <div class="image-text">Event Trailer Hire </div>
                    <div class="image-text-secondary"></div>
                </div>
            </a>
        </div>
        <div class="col-md-6 col-lg-3">
            <a href="{{route('quotes')}}">
                <div class="image-container">
                    <img src="{{url('frontend/images/Media (6).jpg')}}">
                    <img src="images/img4.jpg" alt="Image 4">
                    <div class="image-overlay"></div>
                    <div class="image-text">Cross Hire </div>
                    <div class="image-text-secondary"></div>
                </div>
            </a>
        </div>
    </div>
</div>

<!-- <div class="section special-sec section-padding" id="special">
        <div class="container">
            <div class="rwo">
                <div class="col-lg-12">
                    <div class="special-head text-center">
                        <p>Grey Monkey Specialises in low-cost Portable Loo hire across the midlands.     Our portable toilet rental is second to none – With unbeatable Portable Loo hire prices and delivery costs, you wont need to look anywhere else once you have worked with us. </p>
                        <h2>We Specialise In</h2>
                    </div>
                </div>
            </div>
            <div class="row ">
                <div class="col-lg-3 mb-5">
                    <a href=""><img src="{{url('frontend/images/construct.jpeg')}}" alt=""></a>
                    <h4 class="text-center">CONSTRUCTION WELFARE NEEDS</h4>
                </div>
                  
                <div class="col-lg-3 mb-5">
                    <a href=""><img src="{{url('frontend/images/Event.jpeg')}}" alt=""></a>
                    <h4 class="text-center">Event Hire</h4>
                </div>
                <div class="col-lg-3 mb-5">
                    <a href=""><img src="{{url('frontend/images/wedding-trailer.jpeg')}}" alt=""></a>
                    <h4 class="text-center">TRAILER HIRE</h4>
                </div>
                <div class="col-lg-3 mb-5">
                    <a href=""><img src="{{url('frontend/images/Event.jpeg')}}" alt=""></a>
                    <h4 class="text-center">CROSSHIRE</h4>
                </div>
            </div>
            <div class="row">
                
            </div>
        </div>
    </div> -->
<section class="work-process-area pt-100 pb-70" id="Constructions">
    <div class="container">
        <div class="section-title text-center">
            <h2 style="max-width: 100%;">Reliable, Clean, Convenient: Your Portable Toilet Solution</h2>
        </div>
        <div class="row pt-45">
            <div class="col-lg-6 col-sm-6">
                <div class="work-process-card">
                    <i class="fa-solid fa-person-digging"></i>
                    <h3>CONSTRUCTION WELFARE NEEDS</h3>
                    <p>Meeting construction toilet welfare needs is not only a legal requirement but also essential for creating a positive working environment and promoting the well-being of construction workers. It helps ensure that workers have access to clean and safe facilities, which in turn contributes to their productivity, morale, and overall job satisfaction.
                    </p>
                </div>
            </div>
            <div class="col-lg-6 col-sm-6">
                <div class="work-process-card">
                    <i class="fa-solid fa-calendar-days"></i>
                    <h3>EVENT HIRE</h3>
                    <p>Toilet event hire refers to the rental of portable toilets for various events or gatherings, such as outdoor parties, festivals, weddings, concerts and sporting events. It involves providing temporary toilet facilities to meet the sanitation needs of attendees or participants.
                    </p>
                </div>
            </div>
        </div>
        <div class="row pt-45">
            <div class="col-lg-6 col-sm-6">
                <div class="work-process-card">
                    <i class="fa-solid fa-trailer"></i>
                    <h3>TRAILER HIRE</h3>
                    <p>Wedding trailer toilet facilities hire refers to the rental of luxury portable toilets or restroom trailers specifically designed for weddings. These facilities offer a more upscale and comfortable experience for guests compared to standard portable toilets. They are often used to meet the sanitation needs of wedding venues that may not have permanent restroom facilities or require additional facilities to accommodate a larger guest count.
                    </p>
                </div>
            </div>
            <div class="col-lg-6 col-sm-6">
                <div class="work-process-card">
                    <i class="fa-solid fa-crosshairs"></i>
                    <h3>CROSSHIRE</h3>
                    <p>Crosshire toilet hire provides a convenient solution for companies that require portable toilets but do not have their own inventory. It allows them to rent toilets from an established toilet hire company through a crosshiring arrangement. However, it's important for the crosshiring company to work with reputable and reliable toilet hire providers to ensure the quality and availability of the units for their clients.
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="container">
    <div class="row">
        <div class="col-md-6 col-lg-3">
            <a href="{{route('quotes')}}">
                <div class="image-container">
                    <img src="{{url('frontend/images/Media (15).jpg')}}">
                    <div class="image-overlay"></div>
                    <div class="image-text">Hire & Service</div>
                    <div class="image-text-secondary"></div>
                </div>
            </a>
        </div>
        <div class="col-md-6 col-lg-3">
            <a href="{{route('quotes')}}">
                <div class="image-container">
                    <img src="{{url('frontend/images/Media (14).jpg')}}">
                    <div class="image-overlay"></div>
                    <div class="image-text">Events </div>
                    <div class="image-text-secondary"></div>
                </div>
            </a>
        </div>
        <div class="col-md-6 col-lg-3">
            <a href="{{route('quotes')}}">
                <div class="image-container">
                    <img src="{{url('frontend/images/Media (13).jpg')}}">
                    <div class="image-overlay"></div>
                    <div class="image-text">Event Trailer Hire </div>
                    <div class="image-text-secondary"></div>
                </div>
            </a>
        </div>
        <div class="col-md-6 col-lg-3">
            <a href="{{route('quotes')}}">
                <div class="image-container">
                    <img src="{{url('frontend/images/Media (12).jpg')}}">
                    <img src="images/img4.jpg" alt="Image 4">
                    <div class="image-overlay"></div>
                    <div class="image-text">Cross Hire </div>
                    <div class="image-text-secondary"></div>
                </div>
            </a>
        </div>
    </div>
</div>

<div class="section thrd-sect section-padding" id="construct">
    <div class="container">
        <div class="row name-sec">
            <div class="col-lg-6">
                <div class="thrd-txt">
                    <h2>Portable Toilet Hire that Won’t Let You Down</h2>
                    <p>Our portable toilets are top quality, sleek & modern – and our professional, reliable service is unparalleled in the industry. That’s why site managers and event organisers call Grey Monkey Ltd when they need portable toilets for worksites, parties, events.</p> <br>

                    <p>Whether you need one portable toilet for a construction or building site, or 50+ portable toilets for an event or party, we can offer you a clean, modern toilet in less than no time with our fast delivery service. With competitive Portable Loo hire prices, we’re able to accommodate all size sites and hire periods
                    </p>
                </div>
            </div>
            <div class="col-lg-6 set-sec">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="{{url('frontend/images/toilet_row.jpeg')}}" class="d-block w-100" alt="Slide 1">
                        </div>
                        <div class="carousel-item">
                            <img src="{{url('frontend/images/toilet_row2.jpeg')}}" class="d-block w-100" alt="Slide 2">
                        </div>
                        <div class="carousel-item">
                            <img src="{{url('frontend/images/toilet_row3.jpeg')}}" class="d-block w-100" alt="Slide 3">
                        </div>
                        <div class="carousel-item">
                            <img src="{{url('frontend/images/Media (7).jpg')}}" class="d-block w-100" alt="Slide 4">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only"></span>
                    </a>
                    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only"></span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container some_padd">
    <div id="carouselExampleIndicators" class="carousel slide slate" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="row">
                    <div class="col-6">
                        <img src="{{url('frontend/images/sents_frst.jpg')}}" class="d-block w-100" alt="Image 1">
                    </div>
                    <div class="col-6">
                        <img src="{{url('frontend/images/sents_scnd.jpg')}}" class="d-block w-100" alt="Image 2">
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="row">
                    <div class="col-6">
                        <img src="{{url('frontend/images/Media (8).jpg')}}" class="d-block w-100" alt="Image 3">
                    </div>
                    <div class="col-6">
                        <!-- Add your fourth image here -->
                        <img src="{{url('frontend/images/Media (9).jpg')}}" class="d-block w-100" alt="Image 4">
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="row">
                    <div class="col-6">
                        <img src="{{url('frontend/images/Media (10).jpg')}}" class="d-block w-100" alt="Image 3">
                    </div>
                    <div class="col-6">
                        <!-- Add your fourth image here -->
                        <img src="{{url('frontend/images/Media (11).jpg')}}" class="d-block w-100" alt="Image 4">
                    </div>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</div>

<script>
    // JavaScript to fix the navigation buttons
    var myCarousel = document.querySelector('#carouselExampleIndicators');
    var carousel = new bootstrap.Carousel(myCarousel, {
        interval: 2000, // Adjust as needed
        wrap: true // Allow wrapping
    });
</script>





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
        <div class="col-md-6 ">
            <div class="form-section">
                <div class="image-container">
                    <img src="{{url('frontend/images/poster.jpg')}}">
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
<script>
    const panels = document.querySelectorAll('.panel')

    panels.forEach(panel => {
        panel.addEventListener('mouseover', () => {
            removeActiveClasses()
            panel.classList.add('active')
        })
    })

    function removeActiveClasses() {
        panels.forEach(panel => {
            panel.classList.remove('active')
        })
    }
</script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        var successModal = document.getElementById('successModal');
        var successMessage = document.getElementById('successMessage');
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