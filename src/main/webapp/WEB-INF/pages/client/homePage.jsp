<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="keywords" content="Hantus, Responsive, SPA Template, Bootstrap 4,">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="resources/assets/img/favicon.png" type="image/x-icon" />
    <title>Hantus - Spa and Beauty HTML template</title>

    <!-- Custom CSS -->
    <link rel="stylesheet" href="resources/assets/css/style.css">
    <link rel="stylesheet" href="resources/assets/css/responsive.css">


    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Start: Preloader
    ============================= -->

    <div class="preloader">        
        <div class="wrapper">
            <div class="circle circle-1"></div>
            <div class="circle circle-1a"></div>
            <div class="circle circle-2"></div>
            <div class="circle circle-3"></div>
        </div>
        <h1>Loading&hellip;</h1>
    </div>

    <!-- End: Preloader
    ============================= -->

    <!-- Start: Header Top
    ============================= -->
    <section id="header-top">
        <div class="container">
            
            <div class="row">
                <div class="col-lg-6 col-md-6 text-center text-md-left">
                    <p><i class="fas fa-clock"></i>Opening Hours - 10 Am to 6 PM</p>
                    <ul class="header-social d-inline-block">
                        <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                        <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                        <li><a href="#"><i class="fab fa-dribbble"></i></a></li>
                        <li><a href="#"><i class="fab fa-google-plus-g"></i></a></li>
                    </ul>
                    
                </div>
                <div class="col-lg-6 col-md-6 text-center text-md-right header-top-right">
                    <ul>
                        <li><a href="register"><i class="fas fa-registered"></i>Register</a></li>
                        <li><a href="login"><i class="fas fa-user"></i>Login</a></li>
                    </ul>       
                </div>
            </div>
        </div>
    </section>
    <!-- End: Header Top
    ============================= -->
    
    <!-- Start: Sidenav
    ============================= -->

    <div class="sidenav cart ">
        <div class="sidenav-header">
            <h3>Your cart</h3>
            <span class="fas fa-times close-sidenav"></span>
        </div>
        <div class="cart-item">
            <img src="http://placehold.it/80" alt="" class="cart-item-thumb">
            <div class="cart-item-description">
                <h4 class="cart-item-name">Lorem Pellentesque Ipsum</h4>
                <p>$35.95</p>
            </div>
            <span class="cart-remove"><i class="fas fa-times"></i></span>
        </div>
        <div class="cart-item">
            <img src="http://placehold.it/80" alt="" class="cart-item-thumb">
            <div class="cart-item-description">
                <h4 class="cart-item-name">Lorem Pellentesque Ipsum</h4>
                <p>$35.95</p>
            </div>
            <span class="cart-remove"><i class="fas fa-times"></i></span>
        </div>
        <div class="cart-item">
            <img src="http://placehold.it/80" alt="" class="cart-item-thumb">
            <div class="cart-item-description">
                <h4 class="cart-item-name">Lorem Pellentesque Ipsum</h4>
                <p>$35.95</p>
            </div>
            <span class="cart-remove"><i class="fas fa-times"></i></span>
        </div>
        <div class="cart-item">
            <img src="http://placehold.it/80" alt="" class="cart-item-thumb">
            <div class="cart-item-description">
                <h4 class="cart-item-name">Lorem Pellentesque Ipsum</h4>
                <p>$35.95</p>
            </div>
            <span class="cart-remove"><i class="fas fa-times"></i></span>
        </div>

        <div class="sub-total">
            <h6>Sub Total <span>$150.75</span></h6>
        </div>

        <div class="cart-buttons">
            <a href="#" class="boxed-btn">View Cart</a>
            <a href="#" class="boxed-btn fl">Check Out</a>
        </div>
    </div>
    <span class="cart-overlay"></span>

    <!-- End: Sidenav
    ============================= -->

    <!-- Start: Navigation
    ============================= -->
    <section class="navbar-wrapper">
        <div class="navbar-area sticky-nav">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2 col-6">
                        <div class="logo main">
                            <a href="index.html"><img class="responsive" src="resources/assets/img/logo.png" alt="Startkit"></a>
                        </div>
                    </div>
                    <div class="col-lg-10 col-md-10 d-none d-lg-block text-right">
                        <nav class="main-menu">
                            <ul>
                                <li class="active">
                                    <a href="index.html">Home</a>
                                </li>
                                <li>
                                    <a href="services.html">Services</a>
                                </li>
                                <li class="c-dropdowns">
                                    <a href="">Portfolio</a>
                                    <ul class="cr-dropdown-menu">
                                        <li>
                                            <a href="portfolio-2-column.html">Portfolio 2 Column</a>
                                        </li>
                                        <li>
                                            <a href="portfolio-3-column.html">Portfolio 3 Column</a>
                                        </li>
                                        <li>
                                            <a href="portfolio-4-column.html">Portfolio 4 Column</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="c-dropdowns">
                                    <a href="">Pages</a>
                                    <ul class="cr-dropdown-menu">
                                        <li>
                                            <a href="about-us.html">About</a>
                                        </li>
                                        <li>
                                            <a href="pricing.html">Pricing</a>
                                        </li>
                                        <li>
                                            <a href="">Other Pages</a>
                                            <ul class="cr-sub-dropdown-menu">
                                                <li>
                                                    <a href="404.html">404 Page</a>
                                                </li>
                                                <li>
                                                    <a href="coming-soon.html">Coming Soon</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li class="c-dropdowns">
                                    <a href="">Blog</a>
                                    <ul class="cr-dropdown-menu">
                                        <li>
                                            <a href="blog-left-sidebar.html">Blog Left Sidebar</a>
                                        </li>
                                        <li>
                                            <a href="blog-right-sidebar.html">Blog Right Sidebar</a>
                                        </li>
                                        <li>
                                            <a href="blog-full-width.html">Blog Full Width</a>
                                        </li>
                                        <li>
                                            <a href="blog-single.html">Blog Details</a>
                                        </li>
                                    </ul>
                                </li>

                                <li><a href="gallery.html">Gallery</a></li>
                                <li><a href="contact-us.html">Contact</a></li>
                                <li class="search-button">
                                    <div id="sb-search" class="sb-search " >
                                        <form>
                                            <input class="sb-search-input " onkeyup="buttonUp();" placeholder="Search"  type="search" value="" name="search" id="search">
                                            <input class="sb-search-submit" type="submit"  value="">
                                            <span class="sb-icon-search"><i class="ei ei-search"></i></span>
                                        </form>
                                    </div>
                                </li>
                                <li class="cart-icon">
                                    <div id="cd-cart-trigge" class="cart-icon-wrapper cart--open">
                                        <i class="ei ei-icon_bag_alt"></i>
                                        <span class="cart-count">2</span>
                                    </div>
                                </li>
                            </ul>
                        </nav>
                    </div>

                    <div class="col-6 text-right">
                        <ul class="mbl d-lg-none">
                            <li class="search-button">
                                <div class="sb-search">
                                    <form>
                                        <input class="sb-search-input" onkeyup="buttonUp();" placeholder="Search"  type="search" value="" name="search">
                                        <input class="sb-search-submit" type="submit"  value="">
                                        <span class="sb-icon-search"><i class="ei ei-search"></i></span>
                                    </form>
                                </div>
                            </li>
                            <li class="cart-icon">
                                <div class="cart-icon-wrapper cart--open">
                                    <i class="ei ei-icon_bag_alt"></i>
                                    <span class="cart-count">2</span>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- Start Mobile Menu -->
            <div class="mobile-menu-area d-lg-none">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="mobile-menu">
                                <nav class="mobile-menu-active">
                                    <ul>
                                        <li class="active">
                                            <a href="index.html">Home</a>
                                        </li>
                                        <li>
                                            <a href="services.html">Services</a>
                                        </li>
                                        <li class="c-dropdowns">
                                            <a href="">Portfolio</a>
                                            <ul class="cr-dropdown-menu">
                                                <li>
                                                    <a href="portfolio-2-column.html">Portfolio 2 Column</a>
                                                </li>
                                                <li>
                                                    <a href="portfolio-3-column.html">Portfolio 3 Column</a>
                                                </li>
                                                <li>
                                                    <a href="portfolio-4-column.html">Portfolio 4 Column</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="c-dropdowns">
                                            <a href="">Pages</a>
                                            <ul class="cr-dropdown-menu">
                                                <li>
                                                    <a href="about-us.html">About</a>
                                                </li>
                                                <li>
                                                    <a href="pricing.html">Pricing</a>
                                                </li>
                                                <li>
                                                    <a href="">Other Pages</a>
                                                    <ul class="cr-sub-dropdown-menu">
                                                        <li>
                                                            <a href="404.html">404 Page</a>
                                                        </li>
                                                        <li>
                                                            <a href="coming-soon.html">Coming Soon</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="c-dropdowns">
                                            <a href="">Blog</a>
                                            <ul class="cr-dropdown-menu">
                                                <li>
                                                    <a href="blog-left-sidebar.html">Blog Left Sidebar</a>
                                                </li>
                                                <li>
                                                    <a href="blog-right-sidebar.html">Blog Right Sidebar</a>
                                                </li>
                                                <li>
                                                    <a href="blog-full-width.html">Blog Full Width</a>
                                                </li>
                                                <li>
                                                    <a href="blog-single.html">Blog Details</a>
                                                </li>
                                            </ul>
                                        </li>

                                        <li><a href="gallery.html">Gallery</a></li>
                                        <li><a href="contact-us.html">Contact</a></li>
                                    </ul>
                                </nav>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Mobile Menu -->
        </div>        
    </section>
    <!-- End: Navigation
    ============================= -->


    <!-- Start: Header Slider
    ============================= -->
    <header>
        <div class="row">
            <div class="col-md-12">
                <div class="header-slider">
                    <div class="header-single-slider">
                        <figure>
                            <img src="resources/assets/img/sliders/slider01.jpg" alt="">
                            <figcaption>
                                <div class="content">
                                    <div class="container inner-content text-left">
                                        <h3>Welcome To Hantus Spa</h3>
                                        <h1>Beauty & Spa Wellness</h1>
                                        <p>The Spa at Sun Valley is a serene oasis amid all the exciting  activities our iconic valley has delivered for decades.</p>
                                        <a href="#" class="boxed-btn">Make an Appoinment</a>
                                    </div>
                                </div>
                            </figcaption>
                        </figure>
                    </div>
                    <div class="header-single-slider">
                        <figure>
                            <img src="resources/assets/img/sliders/slider02.jpg" alt="">
                            <figcaption>
                                <div class="content">
                                    <div class="container inner-content text-center">
                                        <h3>Welcome To Hantus Spa</h3>
                                        <h1>Beauty & Spa Wellness</h1>
                                        <p>The Spa at Sun Valley is a serene oasis amid all the exciting  activities our iconic valley has delivered for decades.</p>
                                        <a href="#" class="boxed-btn">Make an Appoinment</a>
                                    </div>
                                </div>
                            </figcaption>
                        </figure>
                    </div>
                    <div class="header-single-slider">
                        <figure>
                            <img src="resources/assets/img/sliders/slider03.jpg" alt="">
                            <figcaption>
                                <div class="content">
                                    <div class="container inner-content text-right">
                                        <h3>Welcome To Hantus Spa</h3>
                                        <h1>Beauty & Spa Wellness</h1>
                                        <p>The Spa at Sun Valley is a serene oasis amid all the exciting  activities our iconic valley has delivered for decades.</p>
                                        <a href="#" class="boxed-btn">Make an Appoinment</a>
                                    </div>
                                </div>
                            </figcaption>
                        </figure>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- End: Header Slider
    ============================= -->

    <!-- Start: Contact
    ============================= -->

    <section id="contact">
        <div class="container contact-wrapper text-center text-xl-left">
            <div class="row">
                <div class="col-xl-4 col-md-6 col-sm-6 single-contact">
                    <img src="resources/assets/img/icons/icon01.png" alt="">
                    <h4>Opening Time</h4>
                    <p>Mon - Sat: 10h00 - 18h00</p>
                </div>
                <div class="col-xl-4 col-md-6 col-sm-6 single-contact">
                    <img src="resources/assets/img/icons/icon02.png" alt="">
                    <h4>Address</h4>
                    <p>40 Baria Sreet, NY USAm</p>
                </div>
                <div class="col-xl-4 offset-xl-0 col-md-6 col-sm-6 offset-sm-3 single-contact">
                    <img src="resources/assets/img/icons/icon03.png" alt="">
                    <h4>Telephone</h4>
                    <p>+12 345 678 9101</p>
                </div>
            </div>
        </div>
    </section>

    <!-- End: Contact
    ============================= -->


    <!-- Start: Our Service
    ============================= -->
    <section id="services" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3 col-12 text-center">
                    <div class="section-title">
                        <h2>Our Services</h2>
                        <hr>
                        <p>These are the services we provide, these makes us stand apart.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6 mb-5 mb-lg-0">                    
                    <div class="service-box text-center">                        
                        <figure>
                            <img src="resources/assets/img/service/service01.png" alt="">
                            <figcaption>
                                <div class="inner-text">
                                    <a href="#" class="boxed-btn">Book now</a>
                                </div>
                            </figcaption>
                        </figure>
                        <h4>Oil Massage</h4>
                        <p>Lorem Ipsum is simply dummy text of  the printing and typesetting.</p>
                        <p class="price">$57.99</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 mb-5 mb-lg-0">                    
                    <div class="service-box text-center">                        
                        <figure>
                            <img src="resources/assets/img/service/service02.png" alt="">
                            <figcaption>
                                <div class="inner-text">
                                    <a href="#" class="boxed-btn">Book now</a>
                                </div>
                            </figcaption>
                        </figure>
                        <h4>Skin Care</h4>
                        <p>Lorem Ipsum is simply dummy text of  the printing and typesetting.</p>
                        <p class="price">$57.99</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 mb-5 mb-sm-0">                    
                    <div class="service-box text-center">                        
                        <figure>
                            <img src="resources/assets/img/service/service03.png" alt="">
                            <figcaption>
                                <div class="inner-text">
                                    <a href="#" class="boxed-btn">Book now</a>
                                </div>
                            </figcaption>
                        </figure>
                        <h4>Natural Relaxation</h4>
                        <p>Lorem Ipsum is simply dummy text of  the printing and typesetting.</p>
                        <p class="price">$57.99</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">                    
                    <div class="service-box text-center">                        
                        <figure>
                            <img src="resources/assets/img/service/service04.png" alt="">
                            <figcaption>
                                <div class="inner-text">
                                    <a href="#" class="boxed-btn">Book now</a>
                                </div>
                            </figcaption>
                        </figure>
                        <h4>Nails Design</h4>
                        <p>Lorem Ipsum is simply dummy text of  the printing and typesetting.</p>
                        <p class="price">$57.99</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- End:  Our Service
    ============================= -->



    <!-- Start: Portfolio
    ============================= -->
    
    <section id="portfolio" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3 col-12 text-center">
                    <div class="section-title">
                        <h2>Portfolio</h2>
                        <hr>
                        <p>You can judge my work by the portfolio we have done</p>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="portfolio-tabs">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#hair">Hair</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#makeup">Make Up</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#massage">Massage</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#nail">Nail</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#waxing">Waxing</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#facial">Facial</a>
                            </li>
                        </ul>
                    </div>
                    <div class="tab-content">
                        <div id="hair" class="tab-pane">
                            <ul>
                                <li>
                                    <img src="resources/assets/img/portfolio/portfolio01.png" alt="">
                                    <a href="#"><h4>Massage <span class="price">$24.95</span></h4></a>
                                    <p>Oil, candle, stone, water,...</p>
                                </li>
                                <li>
                                    <img src="resources/assets/img/portfolio/portfolio02.png" alt="">
                                    <a href="#"><h4>Massage Lavender <span class="price">$24.95</span></h4></a>
                                    <p>Oil, candle, stone, water,...</p>
                                </li>
                            </ul>
                        </div>
                        <div id="makeup" class="tab-pane">
                            <ul>
                                <li>
                                    <img src="resources/assets/img/portfolio/portfolio01.png" alt="">
                                    <a href="#"><h4>Massage Stone<span class="price">$24.95</span></h4></a>
                                    <p>Oil, candle, stone, water,...</p>
                                </li>
                                <li>
                                    <img src="resources/assets/img/portfolio/portfolio05.png" alt="">
                                    <a href="#"><h4>Massage Relax<span class="price">$24.95</span></h4></a>
                                    <p>Oil, candle, stone, water,...</p>
                                </li>
                                <li>
                                    <img src="resources/assets/img/portfolio/portfolio04.png" alt="">
                                    <a href="#"><h4>Massage Water<span class="price">$24.95</span></h4></a>
                                    <p>Oil, candle, stone, water,...</p>
                                </li>
                            </ul>
                        </div>
                        <div id="massage" class="tab-pane fade-in active">
                            <ul>
                                <li>
                                    <img src="resources/assets/img/portfolio/portfolio01.png" alt="">
                                    <a href="#"><h4>Massage <span class="price">$24.95</span></h4></a>
                                    <p>Oil, candle, stone, water,...</p>
                                </li>
                                <li>
                                    <img src="resources/assets/img/portfolio/portfolio05.png" alt="">
                                     <a href="#"><h4>Massage Stone <span class="price">$28.95</span></h4></a>
                                    <p>Oil, candle, stone, water,...</p>
                                </li>
                                <li>
                                    <img src="resources/assets/img/portfolio/portfolio02.png" alt="">
                                     <a href="#"><h4>Massage Stone & Steam <span class="price">$24.95</span></h4></a>
                                    <p>Oil, candle, stone, water,...</p>
                                </li>
                                <li>
                                    <img src="resources/assets/img/portfolio/portfolio06.png" alt="">
                                     <a href="#"><h4>Massage relax <span class="price">$34.95</span></h4></a>
                                    <p>Oil, candle, stone, water,...</p>
                                </li>
                                <li>
                                    <img src="resources/assets/img/portfolio/portfolio03.png" alt="">
                                     <a href="#"><h4>Massage Lavender <span class="price">$35.95</span></h4></a>
                                    <p>Oil, candle, stone, water,...</p>
                                </li>
                                <li>
                                    <img src="resources/assets/img/portfolio/portfolio07.png" alt="">
                                     <a href="#"><h4>Massage & Hot water <span class="price">$8.95</span></h4></a>
                                    <p>Oil, candle, stone, water,...</p>
                                </li>
                                <li>
                                    <img src="resources/assets/img/portfolio/portfolio04.png" alt="">
                                     <a href="#"><h4>Massage Full Body <span class="price">$40.95</span></h4></a>
                                    <p>Oil, candle, stone, water,...</p>
                                </li>
                                <li>
                                    <img src="resources/assets/img/portfolio/portfolio08.png" alt="">
                                     <a href="#"><h4>Massage Full Combo <span class="price">$102.95</span></h4></a>
                                    <p>Oil, candle, stone, water,...</p>
                                </li>
                            </ul>
                        </div>
                        <div id="nail" class="tab-pane">
                            <ul>
                                <li>
                                    <img src="resources/assets/img/portfolio/portfolio07.png" alt="">
                                     <a href="#"><h4>Massage Oil<span class="price">$24.95</span></h4></a>
                                    <p>Oil, candle, stone, water,...</p>
                                </li>
                                <li>
                                    <img src="resources/assets/img/portfolio/portfolio01.png" alt="">
                                     <a href="#"><h4>Massage <span class="price">$24.95</span></h4></a>
                                    <p>Oil, candle, stone, water,...</p>
                                </li>
                            </ul>
                        </div>
                        <div id="waxing" class="tab-pane">
                            <ul>
                                <li>
                                    <img src="resources/assets/img/portfolio/portfolio08.png" alt="">
                                     <a href="#"><h4>Massage Candle<span class="price">$24.95</span></h4></a>
                                    <p>Oil, candle, stone, water,...</p>
                                </li>
                                <li>
                                    <img src="resources/assets/img/portfolio/portfolio04.png" alt="">
                                     <a href="#"><h4>Massage Pani<span class="price">$24.95</span></h4></a>
                                    <p>Oil, candle, stone, water,...</p>
                                </li>
                            </ul>
                        </div>
                        <div id="facial" class="tab-pane">
                            <ul>
                                <li>
                                    <img src="resources/assets/img/portfolio/portfolio02.png" alt="">
                                     <a href="#"><h4>Massage Stone<span class="price">$24.95</span></h4></a>
                                    <p>Oil, candle, stone, water,...</p>
                                </li>
                                <li>
                                    <img src="resources/assets/img/portfolio/portfolio03.png" alt="">
                                     <a href="#"><h4>Massage Water<span class="price">$24.95</span></h4></a>
                                    <p>Oil, candle, stone, water,...</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            
        </div>
    </section>

    <!-- End: Portfolio
    ============================= -->

    <!-- Start: Feature
    ============================= -->
    <section id="feature" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3 col-12 text-center">
                    <div class="section-title">
                        <h2>Feature</h2>
                        <hr>
                        <p>How to Have a Healthier and More Productive Home Office</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6 mb-5 mb-lg-0">                    
                    <div class="feature-box text-center">                        
                        <div class="feature-icon">
                            <img src="resources/assets/img/feature-icon/feature-icon01.png" alt="">
                        </div>
                        <h4>Hair Expert</h4>
                        <p>Lorem Ipsum is simply dummy text  the printing and typesetting.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 mb-5 mb-lg-0">                    
                    <div class="feature-box text-center">                        
                        <div class="feature-icon">
                            <img src="resources/assets/img/feature-icon/feature-icon02.png" alt="">
                        </div>
                        <h4>Stone Massage</h4>
                        <p>Lorem Ipsum is simply dummy text  the printing and typesetting.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 mb-5 mb-sm-0">                    
                    <div class="feature-box text-center">                        
                        <div class="feature-icon">
                            <img src="resources/assets/img/feature-icon/feature-icon03.png" alt="">
                        </div>
                        <h4>Nail Care</h4>
                        <p>Lorem Ipsum is simply dummy text  the printing and typesetting.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">                    
                    <div class="feature-box text-center">                        
                        <div class="feature-icon">
                            <img src="resources/assets/img/feature-icon/feature-icon04.png" alt="">
                        </div>
                        <h4>Aromatherapy Nature</h4>
                        <p>Lorem Ipsum is simply dummy text  the printing and typesetting.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- End:  Our Feature
    ============================= -->


    <!-- Start: Pricing
    ============================= -->
    
    <section id="pricing" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3 col-12 text-center">
                    <div class="section-title">
                        <h2>Pricing</h2>
                        <hr>
                        <p>You can select a package from the list below to save more</p>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
                    <div class="pricing-box text-center" style="background: url(resources/assets/img/pricing/pricing01.jpg) no-repeat center / cover;">
                        <h3>Silver Pack</h3>
                        <hr>
                        <div class="price"><sup>$</sup> <span>55</span>/month</div>
                        <ul class="pricing-content">
                            <li>Nail Cutting & Styling</li>
                            <li>Hot Hair Coloring</li>
                            <li>Hot Oil Massage</li>
                            <li>Body Wraps</li>
                        </ul>
                        <a href="#" class="boxed-btn">Select Plan</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
                    <div class="pricing-box recomended text-center" style="background: url(resources/assets/img/pricing/pricing02.jpg) no-repeat center / cover;">
                        <div class="recomended-text"><span>Recommended</span></div>
                        <h3>Gold Pack</h3>
                        <hr>
                        <div class="price"><sup>$</sup> <span>65</span>/month</div>
                        <ul class="pricing-content">
                            <li>Nail Cutting & Styling</li>
                            <li>Hot Hair Coloring</li>
                            <li>Hot Oil Massage</li>
                            <li>Body Wraps</li>
                            <li>Manicure</li>
                        </ul>
                        <a href="#" class="boxed-btn">Select Plan</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 offset-lg-0 offset-md-3">
                    <div class="pricing-box text-center" style="background: url(resources/assets/img/pricing/pricing03.jpg) no-repeat center / cover;">
                        <h3>Platinum Pack</h3>
                        <hr>
                        <div class="price"><sup>$</sup> <span>105</span>/month</div>
                        <ul class="pricing-content">
                            <li>Nail Cutting & Styling</li>
                            <li>Hot Hair Coloring</li>
                            <li>Hot Oil Massage</li>
                            <li>Body Wraps</li>
                            <li>Manicure</li>
                            <li>Spa Therapy</li>
                        </ul>
                        <a href="#" class="boxed-btn">Select Plan</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- End: Pricing
    ============================= -->

    <!-- Start: Fun Fact
    ============================= -->

    <section id="counter" class="text-center">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6 col-12 single-box mb-5 mb-lg-0">
                    <img src="resources/assets/img/counter/counter-icon01.png" alt="">
                    <h3><span class="counter">870</span></h3>
                    <p>Win Awards</p>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-12 single-box mb-5 mb-lg-0">
                    <img src="resources/assets/img/counter/counter-icon02.png" alt="">
                    <h3><span class="counter">1523</span></h3>
                    <p>Happy Clients</p>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-12 single-box mb-5 mb-sm-0">
                    <img src="resources/assets/img/counter/counter-icon03.png" alt="">
                    <h3><span class="counter">100</span></h3>
                    <p>Treatments</p>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-12 single-box">
                    <img src="resources/assets/img/counter/counter-icon04.png" alt="">
                    <h3><span class="counter">50</span></h3>
                    <p>Therapists</p>
                </div>
            </div>
        </div>
    </section>

    <!-- End:  Fun Fact
    ============================= -->


    <!-- Start: Our Product
    ============================= -->
    
    <section id="product" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3 col-12 text-center">
                    <div class="section-title">
                        <h2>Our Product</h2>
                        <hr>
                        <p>We are using only the high quality original product</p>
                    </div>
                </div>                
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="product-carousel">
                        <div class="single-product text-center">
                            <span class="sale">Sale!</span>
                            <div class="product-img">
                                <img src="resources/assets/img/product/product01.png" alt="">
                            </div>
                            <ul class="rate">
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="far fa-star"></i></li>
                            </ul>
                            <h5>Innisfree Tapping Lip</h5>
                            <div class="price">$29.99</div>

                            <div class="overlay">
                                <ul class="icons">
                                    <li><a href="#"><i class="ei ei-icon_bag_alt"></i></a></li>
                                    <li><a href="resources/assets/img/product/product01.png" class="mfp-popup"><i class="fas fa-eye"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="single-product text-center">
                            <div class="product-img">
                                <img src="resources/assets/img/product/product02.png" alt="">
                            </div>
                            <ul class="rate">
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                            </ul>
                            <h5>Innisfree Tapping Lip</h5>
                            <div class="price">$29.99</div>

                            <div class="overlay">
                                <ul class="icons">
                                    <li><a href="#"><i class="ei ei-icon_bag_alt"></i></a></li>
                                    <li><a href="resources/assets/img/product/product02.png" class="mfp-popup"><i class="fas fa-eye"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="single-product text-center">
                            <span class="sale">Sale!</span>
                            <div class="product-img">
                                <img src="resources/assets/img/product/product03.png" alt="">
                            </div>
                            <ul class="rate">
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                            </ul>
                            <h5>Innisfree Tapping Lip</h5>
                            <div class="price">$29.99</div>

                            <div class="overlay">
                                <ul class="icons">
                                    <li><a href="#"><i class="ei ei-icon_bag_alt"></i></a></li>
                                    <li><a href="resources/assets/img/product/product03.png" class="mfp-popup"><i class="fas fa-eye"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="single-product text-center">
                            <div class="product-img">
                                <img src="resources/assets/img/product/product04.png" alt="">
                            </div>
                            <ul class="rate">
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                            </ul>
                            <h5>Innisfree Tapping Lip</h5>
                            <div class="price">$29.99</div>

                            <div class="overlay">
                                <ul class="icons">
                                    <li><a href="#"><i class="ei ei-icon_bag_alt"></i></a></li>
                                    <li><a href="resources/assets/img/product/product04.png" class="mfp-popup"><i class="fas fa-eye"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- End: Our Product
    ============================= -->


    <!-- Start: Testimonial
    ============================= -->
    
    <section id="testimonial" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="testimonial-carousel text-center">
                        <div class="single-testimonial">
                            <p>“I am very impressed by the efficiency of your service and your excellent returns policy. It is so pleasant to deal with such a customer focussed website.”</p>
                            <h5>Eric Matision</h5>
                            <p class="title">Forest Hills. NY</p>
                        </div>
                        <div class="single-testimonial">
                            <p>“I am very impressed by the efficiency of your service and your excellent returns policy. It is so pleasant to deal with such a customer focussed website.”</p>
                            <h5>Jennifer Lopez</h5>
                            <p class="title">Forest Hills. NY</p>
                        </div>
                        <div class="single-testimonial">
                            <p>“I am very impressed by the efficiency of your service and your excellent returns policy. It is so pleasant to deal with such a customer focussed website.”</p>
                            <h5>Betty Ross</h5>
                            <p class="title">Developer</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- End: Testimonial
    ============================= -->

    <!-- Start: Expert Beauticians
    ============================= -->
    
    <section id="beauticians" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3 col-12 text-center">
                    <div class="section-title">
                        <h2>Expert Beauticians</h2>
                        <hr>
                        <p>These are the people behind our success and failures. These guys never lose a heart.</p>
                    </div>
                </div>                
            </div>

            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6 mb-4 mb-lg-0">
                    <div class="single-beauticians">
                        <div class="img-wrapper">
                            <img src="resources/assets/img/beauticians/beauticians01.jpg" alt="">
                            <div class="beautician-footer-text">
                                <h5>Eric Matision</h5>
                                <p>Founder</p>
                            </div>
                        </div>
                        <div class="beautician-content">
                            <div class="inner-content">
                                <h5>Eric Matision</h5>
                                <p class="title">Founder</p>
                                <p>It is a long established fact that a reader will be distracted by the readable.</p>
                                <ul class="social">
                                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 mb-4 mb-lg-0">
                    <div class="single-beauticians">
                        <div class="img-wrapper">
                            <img src="resources/assets/img/beauticians/beauticians02.jpg" alt="">
                            <div class="beautician-footer-text">
                                <h5>Emille Jenifer</h5>
                                <p>C.E.O</p>
                            </div>
                        </div>
                        <div class="beautician-content">
                            <div class="inner-content">
                                <h5>Emille Jenifer</h5>
                                <p class="title">C.E.O</p>
                                <p>It is a long established fact that a reader will be distracted by the readable.</p>
                                <ul class="social">
                                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 mb-4 mb-sm-0">
                    <div class="single-beauticians">
                        <div class="img-wrapper">
                            <img src="resources/assets/img/beauticians/beauticians03.jpg" alt="">
                            <div class="beautician-footer-text">
                                <h5>Eric Matision</h5>
                                <p>Skin Expert</p>
                            </div>
                        </div>
                        <div class="beautician-content">
                            <div class="inner-content">
                                <h5>Eric Matision</h5>
                                <p class="title">Skin Expert</p>
                                <p>It is a long established fact that a reader will be distracted by the readable.</p>
                                <ul class="social">
                                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="single-beauticians">
                        <div class="img-wrapper">
                            <img src="resources/assets/img/beauticians/beauticians04.jpg" alt="">
                            <div class="beautician-footer-text">
                                <h5>Betty Ross</h5>
                                <p>Massagist</p>
                            </div>
                        </div>
                        <div class="beautician-content">
                            <div class="inner-content">
                                <h5>Betty Ross</h5>
                                <p class="title">Massagist</p>
                                <p>It is a long established fact that a reader will be distracted by the readable.</p>
                                <ul class="social">
                                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- End: Expert Beauticians
    ============================= -->

    <!-- Start: Appoinment
    ============================= -->
    
    <section id="appoinment" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="opening-hours">
                        <h3>Opening Hours</h3>
                        <p>A collection of textile samples lay spread out on the table Samsa was a travelling salesman.</p>
                        <ul>
                            <li>Monday :    8:00am - 21:00pm</li>
                            <li>Monday :    8:00am - 21:00pm</li>
                            <li>Monday :    8:00am - 21:00pm</li>
                            <li>Monday :    8:00am - 21:00pm</li>
                            <li>Sunday:     Close</li>
                        </ul>
                    </div>
                    <div class="appoinment-wrapper">
                        <form action="#">
                            <select id="options">
                                <option value="">Massage Oil Full Body </option>
                                <option value="">Massage Oil Full Body </option>
                                <option value="">Massage Oil Full Body </option>
                                <option value="">Massage Oil Full Body </option>
                            </select>
                            <div class="dtb">
                                <input type="date">
                                <input type="time">
                                <select id="person">
                                    <option value="">5 person</option>
                                    <option value="">5 person</option>
                                    <option value="">5 person</option>
                                </select>
                            </div>


                            <span class="input input--hantus">
                                <input class="input__field input__field--hantus" type="text" id="input-08" />
                                <label class="input__label input__label--hantus" for="input-08">
                                    <svg class="graphic graphic--hantus" width="100%" height="100%" viewBox="0 0 404 77" preserveAspectRatio="none">
                                    <path d="m0,0l404,0l0,77l-404,0l0,-77z"/>
                                    </svg>
                                    <span class="input__label-content input__label-content--hantus">Name</span>
                                </label>
                            </span>


                            <span class="input input--hantus">
                                <input class="input__field input__field--hantus" type="text" id="input-09" />
                                <label class="input__label input__label--hantus" for="input-09">
                                    <svg class="graphic graphic--hantus" width="100%" height="100%" viewBox="0 0 404 77" preserveAspectRatio="none">
                                    <path d="m0,0l404,0l0,77l-404,0l0,-77z"/>
                                    </svg>
                                    <span class="input__label-content input__label-content--hantus">Phone</span>
                                </label>
                            </span>
        
                            <span class="input input--hantus textarea">
                                <textarea class="input__field input__field--hantus" rows="5" id="input-10"></textarea>
                                <label class="input__label input__label--hantus" for="input-10">
                                    <svg class="graphic graphic--hantus" width="100%" height="100%" viewBox="0 0 404 77" preserveAspectRatio="none">
                                    <path d="m0,0l404,0l0,77l-404,0l0,-77z"/>
                                    </svg>
                                    <span class="input__label-content input__label-content--hantus">Message</span>
                                </label>
                            </span>

                            <button type="submit" class="boxed-btn">Submit Now</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- End: Appoinment
    ============================= -->


    <!-- Start: Our partner
    ============================= -->

    <section id="partner" class="">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="partner-carousel">
                        <div class="single-partner">
                            <div class="inner-partner">
                                <img src="resources/assets/img/partners/partner-1.png" alt="">
                            </div>
                        </div>
                        <div class="single-partner">
                            <div class="inner-partner">
                                <img src="resources/assets/img/partners/partner-2.png" alt="">
                            </div>
                        </div>
                        <div class="single-partner">
                            <div class="inner-partner">
                                <img src="resources/assets/img/partners/partner-3.png" alt="">
                            </div>
                        </div>
                        <div class="single-partner">
                            <div class="inner-partner">
                                <img src="resources/assets/img/partners/partner-4.png" alt="">
                            </div>
                        </div>
                        <div class="single-partner">
                            <div class="inner-partner">
                                <img src="resources/assets/img/partners/partner-5.png" alt="">
                            </div>
                        </div>
                        <div class="single-partner">
                            <div class="inner-partner">
                                <img src="resources/assets/img/partners/partner-6.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
    <!-- End: Our Partner
    ============================= -->


    <!-- Start: Subscribe
    ============================= -->
    <section id="subscribe">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 col-md-12 text-lg-left text-center mb-lg-0 mb-3">
                    <i class="ei ei-icon_mail"></i>
                    <h3>SIGN UP FOR NEWS AND OFFRERS</h3>
                    <p>Subcribe to lastest smartphones news & great deals we offer</p>
                </div>
                <div class="col-lg-5 col-md-12 text-center">
                    <form id="subscribe-form" action="#" method="POST">
                        <input type="email" name="email" id="subscribe-mail" placeholder="Email" required>
                        <button>Subscribe</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- End: Subscribe
    ============================= -->


    <!-- Start: Footer Sidebar
    ============================= -->
    <footer id="footer-widgets">
        <div class="container">

            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6 mb-lg-0 mb-4">
                    <aside class="widget widget_about">
                        <div class="footer-logo"><img src="resources/assets/img/logo.png" alt=""></div>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been.</p>
                        <ul class="widget-info">
                            <li><i class="fas fa-map-marker"></i>198 Collins St, Melbourne, NY</li>
                            <li><i class="fas fa-phone"></i>12) 345 678 910</li>
                            <li><i class="fas fa-envelope"></i>email@companyname.com</li>
                        </ul>
                    </aside>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 mb-lg-0 mb-md-0 mb-4">
                    <aside class="widget widget_recent">
                        <h4 class="widget-title"><img src="resources/assets/img/section-icon.png" alt="">Latest News</h4>
                        <ul>
                            <li class="latest-news">
                                <a href="#">
                                    <h6>F&O cues: Nifty 11100 Put adds 4.6 lakh shares in</h6>
                                    <p>Thurday, 25th January 2018</p>
                                </a>
                            </li>
                            <li class="latest-news">
                                <a href="#">
                                    <h6>Bharat Bijlee touched 52-week high on strong Q3</h6>
                                    <p>Thurday, 25th January 2018</p>
                                </a>
                            </li>
                        </ul>
                    </aside>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 mb-lg-0 mb-4">
                    <aside class="widget widget_links">
                        <h4 class="widget-title"><img src="resources/assets/img/section-icon.png" alt="">Quick Link</h4>
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Service</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Project</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">Nail Care</a></li>
                            <li><a href="#">Massage</a></li>
                            <li><a href="#">Hair Cut</a></li>
                            <li><a href="#">Waxing</a></li>
                            <li><a href="#">Make Up</a></li>
                        </ul>
                    </aside>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <aside class="widget widdget-instagram">
                        <h4 class="widget-title"><img src="resources/assets/img/section-icon.png" alt="">Instagram</h4>
                        <ul class="instagram-photos">                                
                            <li>
                                <img src="resources/assets/img/instagram/instagram01.jpg" alt="">
                                <div class="instagram-overlay">
                                    <a href="#">+</a>
                                </div>
                            </li>                                
                            <li>
                                <img src="resources/assets/img/instagram/instagram02.jpg" alt="">
                                <div class="instagram-overlay">
                                    <a href="#">+</a>
                                </div>
                                
                            </li>                                
                            <li>
                                <img src="resources/assets/img/instagram/instagram03.jpg" alt="">
                                <div class="instagram-overlay">
                                    <a href="#">+</a>
                                </div>
                            </li>                               
                            <li>
                                <img src="resources/assets/img/instagram/instagram04.jpg" alt="">
                                <div class="instagram-overlay">
                                    <a href="#">+</a>
                                </div>
                            </li>                                
                            <li>
                                <img src="resources/assets/img/instagram/instagram05.jpg" alt="">
                                <div class="instagram-overlay">
                                    <a href="#">+</a>
                                </div>
                                
                            </li>                                
                            <li>
                                <img src="resources/assets/img/instagram/instagram06.jpg" alt="">
                                <div class="instagram-overlay">
                                    <a href="#">+</a>
                                </div>
                            </li>
                        </ul>
                    </aside>
                </div>
            </div>

        </div>
    </footer>
    <!-- End: Footer Sidebar
    ============================= -->

    <!-- Start: Footer Copyright
    ============================= -->

    <section id="footer-copyright">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-12 text-lg-left text-center mb-lg-0 mb-3 copyright-text">
                    <ul>
                        <li><a href="#">&copy; 2018 Nayra Themes </a></li>
                        <li><a href="#">Terms & Conditions</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
                <div class="col-lg-6 col-12">
                    <ul class="text-lg-right text-center payment-method">
                        <li><a href="#"><img src="resources/assets/img/payment-icon/mastercard.png" alt=""></a></li>
                        <li><a href="#"><img src="resources/assets/img/payment-icon/shopify.png" alt=""></a></li>
                        <li><a href="#"><i class="fab fa-paypal"></i></a></li>
                        <li><a href="#"><i class="fab fa-cc-visa"></i></a></li>
                    </ul>
                    <a href="#" class="scrollup"><i class="fas fa-arrow-up"></i></a>
                </div>
            </div>
        </div>
    </section>

    <!-- End: Footer Copyright
    ============================= -->


    
    <!-- Scripts -->
    <script src="resources/assets/js/jquery-3.2.1.min.js"></script>
    <script src="resources/assets/js/popper.min.js"></script>
    <script src="resources/assets/js/bootstrap.min.js"></script>
    <script src="resources/assets/js/jquery.sticky.js"></script>
    <script src="resources/assets/js/owl.carousel.min.js"></script>
    <script src="resources/assets/js/jquery.shuffle.min.js"></script>
    <script src="resources/assets/js/jquery.counterup.min.js"></script>
    <script src="resources/assets/js/wow.min.js"></script>
    <script src="resources/assets/js/jquery.meanmenu.min.js"></script>
    <script src="resources/assets/js/jquery.magnific-popup.min.js"></script>
    
    <!-- Custom Script -->
    <script src="resources/assets/js/custom.js"></script>
    
</body>

</html>