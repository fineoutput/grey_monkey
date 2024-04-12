<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{url('frontend/assets/style.css')}}">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
    <link href="/your-path-to-uicons/css/uicons-[your-style].css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Grey-Monkey</title>
</head>
<body>
    <div class="section header-sec sticky-top" id="main-header">
    <div class="top-head">
        <p class="text-center">Contact us: <a class="hhhedd" style= "text-decoration: none;" href="tel:0800 292 2313 ">0800 292 2313 </a></p>
        </div>
        <div class="container">
            
            <nav class="navbar navbar-expand-lg navbar-dark">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">
                        <img src="{{url('frontend/images/logo-2.png')}}" width="110px" alt="Logo">
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link text-black fw-bold" href="{{route('/')}}">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-black fw-bold" href="{{route('/')}}#special">Events</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-black fw-bold" href="{{route('/')}}#construct">Construction</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-black fw-bold" href="{{route('quotes')}}">Quotes</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-black fw-bold" href="{{route('/')}}#cntct">Contact Id</a>
                            </li>
                            
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <script>
    window.addEventListener('scroll', function() {
        const header = document.getElementById('main-header');
        const scrollPosition = window.scrollY;

        if (scrollPosition > 0) {
            header.classList.add('scrolled');
        } else {
            header.classList.remove('scrolled');
        }
    });
</script>

</body>
</html>
