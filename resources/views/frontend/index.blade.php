@extends('frontend.layouts.app')
@section('main')
    <div id="carouselExampleIndicators" class="carousel slide">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="{{url('frontend/images/bathroom.jpeg')}}" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="{{url('frontend/images/WhatsApp Image 2024-03-26 at 7.57.24 PM (1).jpeg')}}" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="{{url('frontend/images/WhatsApp Image 2024-03-26 at 7.57.22 PM (1).jpeg')}}" class="d-block w-100" alt="...">
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
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                    
                </div>
            </div>
        </div>
    </div>

    <div class="section special-sec section-padding" id="special">
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
    </div>
    
    <div class="section thrd-sect section-padding" id="construct">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="thrd-txt">
                        <h2>Portable Toilet Hire that Won’t Let You Down</h2>
                        <h4>Our portable toilets are top quality, sleek & modern – and our professional, reliable service is unparalleled in the industry. That’s why site managers and event organisers call Grey Monkey LTD when they need portable toilets for worksites, parties, events.</h4> <br>

                        <h4>Whether you need one portable toilet for a construction or building site, or 50+ portable toilets for an event or party, we can offer you a clean, modern toilet in less than no time with our fast delivery service. With competitive Portable Loo hire prices, we’re able to accommodate all size sites and hire periods
                            </h4>
                    </div>
                </div>
                <div class="col-lg-6">
                    <!-- <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="images/WhatsApp Image 2024-03-26 at 7.57.17 PM.jpeg" class="d-block w-100" alt="Slide 1">
                            </div>
                            <div class="carousel-item">
                                <img src="images/WhatsApp Image 2024-03-26 at 7.57.18 PM.jpeg" class="d-block w-100" alt="Slide 2">
                            </div>
                            <div class="carousel-item">
                                <img src="images/WhatsApp Image 2024-03-26 at 7.57.19 PM (1).jpeg" class="d-block w-100" alt="Slide 3">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div> -->
                    <div id="myCarousel" class="carousel slide" data-ride="carousel" >
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="{{url('frontend/images/WhatsApp Image 2024-03-26 at 7.57.22 PM (1).jpeg')}}" class="d-block w-100" alt="Slide 1">
                            </div>
                            <div class="carousel-item">
                                <img src="{{url('frontend/images/WhatsApp Image 2024-03-26 at 7.57.18 PM.jpeg')}}" class="d-block w-100" alt="Slide 2">
                            </div>
                            <div class="carousel-item">
                                <img src="{{url('frontend/images/WhatsApp Image 2024-03-26 at 7.57.18 PM.jpeg')}}" class="d-block w-100" alt="Slide 3">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>

    <div class="section form-sect section-padding" id="cntct">
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