<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="keywords"
	content="Hantus, Responsive, SPA Template, Bootstrap 4,">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="resources/assets/img/favicon.png"
	type="image/x-icon" />
<title>Hantus - Spa and Beauty HTML template</title>

<script type="text/javascript" language="javascript"
	src="https://code.jquery.com/jquery-3.3.1.js"></script>

<!-- Custom CSS -->
<link rel="stylesheet" href="resources/assets/css/style.css">
<link rel="stylesheet" href="resources/assets/css/responsive.css">


<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<script type="text/javascript">
		$(document).ready(function() {
			var email = $('#Email').val()
			localStorage.setItem("Email", email);
			$('#clear').click(function() {
				localStorage.removeItem('Email')
			});
			
			
			var check = localStorage.getItem('Email')
			if(check==null||check==''||check=='anonymousUser'){
				$('#login').show();
				$('#logout').hide()
				$('#profile').hide()
			}else {
				$('#login').hide()
				$('#profile').show();
			}
			

		});
	</script>
	<input id="Email" type="hidden" value="${Email }"></input>
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
				<p>
					<i class="fas fa-clock"></i>Opening Hours - 10 Am to 6 PM
				</p>
				<ul class="header-social d-inline-block">
					<li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
					<li><a href="#"><i class="fab fa-twitter"></i></a></li>
					<li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
					<li><a href="#"><i class="fab fa-instagram"></i></a></li>
					<li><a href="#"><i class="fab fa-dribbble"></i></a></li>
					<li><a href="#"><i class="fab fa-google-plus-g"></i></a></li>
				</ul>

			</div>

			<div id="login"
				class="col-lg-6 col-md-6 text-center text-md-right header-top-right">
				<ul>
					<li><a href="register"><i class="fas fa-registered"></i>Register</a></li>
					<li><a href="login"><i class="fas fa-user"></i>Login</a></li>
				</ul>
			</div>

			<div id="logout"
				class="col-lg-6 col-md-6 text-center text-md-right header-top-right">
				<ul>
					<li><a id="clear"
						href="${pageContext.request.contextPath }/SignOut"> <i
							class="fas fa-sign-out-alt"></i>&nbsp;SignOut
					</a></li>
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
			<h6>
				Sub Total <span>$150.75</span>
			</h6>
		</div>

		<div class="cart-buttons">
			<a href="#" class="boxed-btn">View Cart</a> <a href="#"
				class="boxed-btn fl">Check Out</a>
		</div>
	</div>
	<span class="cart-overlay"></span>

	<!-- End: Sidenav
    ============================= -->
    
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div style="top: 25%;" class="modal-dialog">
			<div style="border-radius: 10px" class="modal-content">

				<div
					style="padding: 10px 40px 10px 20px; background-color: #EC5598; border-top-left-radius: 10px; border-top-right-radius: 10px;"
					class="modal-header">

					<h2
						style="font-size: 28px; color: #fff; margin-left: 30%; text-align: center;"
						class="modal-title" id="myModalLabel">Profile-Detail</h2>
				</div>
				
				<div class="modal-body">
 						<input type="text" class="form-control form-control-user" name="FieldName" placeholder="Enter your name">
				</div>

				<div class="modal-footer">
					<button type="reset" class="btn btn-basic" data-dismiss="modal">Cancel</button>
					<a style="margin-right: 40%" class="btn btn-primary btn-ok">Save</a>
				</div>
			</div>
		</div>
	</div>
    
    
    
    

	<!-- Start: Navigation
    ============================= -->
<section class="navbar-wrapper">
	<div class="navbar-area sticky-nav">
		<div class="container">
			<div class="row">
				<div class="col-lg-2 col-6">
					<div class="logo main">
						<a href="index.html"><img class="responsive"
							src="resources/assets/img/logo.png" alt="Startkit"></a>
					</div>
				</div>
				<div class="col-lg-10 col-md-10 d-none d-lg-block text-right">
					<nav class="main-menu">
					<ul>
						<li class="active"><a href="#">Home</a></li>
						<li><a href="services.html">Service</a></li>
						
						<li class="c-dropdowns"><a href="">Portfolio</a>
							<ul class="cr-dropdown-menu">
								<li><a href="portfolio-2-column.html">Portfolio 2
										Column</a></li>
								<li><a href="portfolio-3-column.html">Portfolio 3
										Column</a></li>
								<li><a href="portfolio-4-column.html">Portfolio 4
										Column</a></li>
							</ul></li>
						<li class="c-dropdowns"><a href="">Pages</a>
							<ul class="cr-dropdown-menu">
								<li><a href="about-us.html">About</a></li>
								<li><a href="pricing.html">Pricing</a></li>
								<li><a href="">Other Pages</a>
									<ul class="cr-sub-dropdown-menu">
										<li><a href="404.html">404 Page</a></li>
										<li><a href="coming-soon.html">Coming Soon</a></li>
									</ul></li>
							</ul></li>
						<li class="c-dropdowns"><a href="">Blog</a>
							<ul class="cr-dropdown-menu">
								<li><a href="blog-left-sidebar.html">Blog Left Sidebar</a>
								</li>
								<li><a href="blog-right-sidebar.html">Blog Right
										Sidebar</a></li>
								<li><a href="blog-full-width.html">Blog Full Width</a></li>
								<li><a href="blog-single.html">Blog Details</a></li>
							</ul></li>

						<li><a href="gallery.html">Gallery</a></li>
						<li><a href="contact-us.html">Contact</a></li>
						<li><a href="profile" id="profile" >Profile</a></li>
						<li class="cart-icon">
							<div id="cd-cart-trigge" class="cart-icon-wrapper cart--open">
								<i class="ei ei-icon_bag_alt"></i> <span class="cart-count">2</span>
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
									<input class="sb-search-input" onkeyup="buttonUp();"
										placeholder="Search" type="search" value="" name="search">
									<input class="sb-search-submit" type="submit" value="">
									<span class="sb-icon-search"><i class="ei ei-search"></i></span>
								</form>
							</div>
						</li>
						<li class="cart-icon">
							<div class="cart-icon-wrapper cart--open">
								<i class="ei ei-icon_bag_alt"></i> <span class="cart-count">2</span>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>


		<div class="mobile-menu-area d-lg-none">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="mobile-menu">
							<nav class="mobile-menu-active">
							<ul>
								<li class="active"><a href="#">Home</a></li>
								<li><a href="#">Profile</a></li>
								<li class="c-dropdowns"><a href="">Portfolio</a>
									<ul class="cr-dropdown-menu">
										<li><a href="portfolio-2-column.html">Portfolio 2
												Column</a></li>
										<li><a href="portfolio-3-column.html">Portfolio 3
												Column</a></li>
										<li><a href="portfolio-4-column.html">Portfolio 4
												Column</a></li>
									</ul></li>
								<li class="c-dropdowns"><a href="">Pages</a>
									<ul class="cr-dropdown-menu">
										<li><a href="about-us.html">About</a></li>
										<li><a href="pricing.html">Pricing</a></li>
										<li><a href="">Other Pages</a>
											<ul class="cr-sub-dropdown-menu">
												<li><a href="404.html">404 Page</a></li>
												<li><a href="coming-soon.html">Coming Soon</a></li>
											</ul></li>
									</ul></li>
								<li class="c-dropdowns"><a href="">Blog</a>
									<ul class="cr-dropdown-menu">
										<li><a href="blog-left-sidebar.html">Blog Left
												Sidebar</a></li>
										<li><a href="blog-right-sidebar.html">Blog Right
												Sidebar</a></li>
										<li><a href="blog-full-width.html">Blog Full Width</a></li>
										<li><a href="blog-single.html">Blog Details</a></li>
									</ul></li>

								<li><a href="gallery.html">Gallery</a></li>
								<li><a href="contact-us.html">Contact</a></li>
							</ul>
							</nav>

						</div>
					</div>
				</div>
			</div>
		</div>
	
	</div>
	</section>
	<!-- End: Navigation
    ============================= -->