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
          <img src="{{url('frontend/images/toilet_row3.jpeg')}}"> class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="{{url('frontend/images/toilet_row.jpeg')}}" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="{{url('frontend/images/toilet_row2.jpeg')}}" class="d-block w-100" alt="...">
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
    </div> -->
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

    <div class="container" id="special">
    <div class="section-heading">
        <h2>What we specialise in</h2>
        <p><span class="brand-name">Grey Monkey</span> Specialises in low-cost Portable Loo hire across the midlands. Our portable toilet rental is second to none – With unbeatable Portable Loo hire prices and delivery costs, you won't need to look anywhere else once you have worked with us.</p>
    </div>
    <div class="row">
        <div class="col-md-6 col-lg-3">
            <a href="{{route('quotes')}}"><div class="image-container">
                <img src="{{url('frontend/images/construct.jpeg')}}">
                <div class="image-overlay"></div>
                <div class="image-text">Initial Text 1</div>
                <div class="image-text-secondary">Secondary Text 1</div>
            </div></a>
        </div>
        <div class="col-md-6 col-lg-3">
        <a href="{{route('quotes')}}"><div class="image-container">
            <img src="{{url('frontend/images/toilet_row2.jpeg')}}">
                <div class="image-overlay"></div>
                <div class="image-text">Initial Text 2</div>
                <div class="image-text-secondary">Secondary Text 2</div>
            </div></a>
        </div>
        <div class="col-md-6 col-lg-3">
        <a href="{{route('quotes')}}"><div class="image-container">
                <img src="{{url('frontend/images/Event.jpeg')}}">
                <div class="image-overlay"></div>
                <div class="image-text">Initial Text 3</div>
                <div class="image-text-secondary">Secondary Text 3</div>
            </div></a>
        </div>
        <div class="col-md-6 col-lg-3">
        <a href="{{route('quotes')}}"><div class="image-container">
            <img src="{{url('frontend/images/toilet_row3.jpeg')}}">
                <img src="images/img4.jpg" alt="Image 4">
                <div class="image-overlay"></div>
                <div class="image-text">Initial Text 4</div>
                <div class="image-text-secondary">Secondary Text 4</div>
            </div></a>
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
            <span class="sp-color2">Lorem ipsum dolor sit amet..</span>
            <h2 style="max-width: 100%;">Reliable, Clean, Convenient: Your Portable Toilet Solution</h2>
        </div>
        <div class="row pt-45">
            <div class="col-lg-6 col-sm-6">
                <div class="work-process-card">
                <i class="fa-solid fa-person-digging"></i>
                    <h3>CONSTRUCTION WELFARE NEEDS</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maxime ipsa cum qui natus quaerat, consectetur sequi temporibus ex accusamus tempore provident iste. Nam cum eaque fugiat quos, molestias ex blanditiis. Minima!
                    </p>
                </div>
            </div>
            <div class="col-lg-6 col-sm-6">
                <div class="work-process-card">
                <i class="fa-solid fa-calendar-days"></i>
                    <h3>EVENT HIRE</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magni quo quisquam dolorem, architecto voluptate veniam perferendis quasi assumenda a corrupti optio amet libero nemo! Cupiditate distinctio numquam fugit repellat fugiat similique?
                    </p>
                </div>
            </div>
        </div>
        <div class="row pt-45">
            <div class="col-lg-6 col-sm-6">
                <div class="work-process-card">
                <i class="fa-solid fa-trailer"></i>
                    <h3>TRAILER HIRE</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magni quo quisquam dolorem, architecto voluptate veniam perferendis quasi assumenda a corrupti optio amet libero nemo! Cupiditate distinctio numquam fugit repellat fugiat similique?
                    </p>
                </div>
            </div>
            <div class="col-lg-6 col-sm-6">
                <div class="work-process-card">
                <i class="fa-solid fa-crosshairs"></i>
                    <h3>CROSSHIRE</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magni quo quisquam dolorem, architecto voluptate veniam perferendis quasi assumenda a corrupti optio amet libero nemo! Cupiditate distinctio numquam fugit repellat fugiat similique?
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>
    
    
    <div class="section thrd-sect section-padding" id="construct">
        <div class="container">
            <div class="row name-sec">
                <div class="col-lg-6">
                    <div class="thrd-txt">
                        <h2>Portable Toilet Hire that Won’t Let You Down</h2>
                        <p>Our portable toilets are top quality, sleek & modern – and our professional, reliable service is unparalleled in the industry. That’s why site managers and event organisers call Grey Monkey LTD when they need portable toilets for worksites, parties, events.</p> <br>

                        <p>Whether you need one portable toilet for a construction or building site, or 50+ portable toilets for an event or party, we can offer you a clean, modern toilet in less than no time with our fast delivery service. With competitive Portable Loo hire prices, we’re able to accommodate all size sites and hire periods
                            </p>
                    </div>
                </div>
                <div class="col-lg-6 set-sec">
                    <div id="myCarousel" class="carousel slide" data-ride="carousel" >
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


        
   

    <!-- <div class="section form-sect section-padding" id="cntct">
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
    </div> -->

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
        <div class="col-md-6 ">
            <div class="form-section">
                <div class="image-container">
                <img src="{{url('frontend/images/contact.jpg')}}">
                </div>
            </div>
        </div>
    </div>
</div>
    <!-- <div class="form-main " id="cntct">
      <div class="main-wrapper">
        <h2 class="form-head">Call us today on 0800 292 2313 or leave your message for a FREE quote!</h2>
        <form class="form-wrapper">
          <div class="form-card">
            <input
              class="form-input"
              type="text"
              name="full_name"
              required="required"
            />
            <label class="form-label" for="full_name">Full Name</label>
          </div>

          <div class="form-card">
            <input
              class="form-input"
              type="email"
              name="email"
              required="required"
            />
            <label class="form-label" for="email">Email</label>
          </div>

          <div class="form-card">
            <input
              class="form-input"
              type="number"
              name="phone_number"
              required="required"
            />
            <label class="form-label" for="phone_number">Phone number</label>
          </div>
          <div class="form-card">
            <input
              class="form-input"
              type="number"
              name="post_code"
              required="required"
            />
            <label class="form-label" for="post_code">POSTCODE </label>
          </div>
          <div class="form-card">
            <input
              class="form-input"
              type="number"
              name="hire_period"
              required="required"
            />
            <label class="form-label" for="hire_period">HIRE PERIOD</label>
          </div>
          <div class="form-card">
            <textarea
              class="form-textarea"
              maxlength="420"
              rows="3"
              name="phone_number"
              required="required"
            ></textarea>
            <label class="form-textarea-label" for="phone_number"
              >HOW CAN WE ASSIST?</label
            >
          </div>
          <div class="btn-wrap">
            <button> Submit </button>
          </div>
        </form>
      </div>
    </div> -->


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


@endsection