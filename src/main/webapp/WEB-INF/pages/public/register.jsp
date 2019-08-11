<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Register</title>


<script type="text/javascript" language="javascript"
	src="https://code.jquery.com/jquery-3.3.1.js"></script>

<!-- Custom fonts for this template-->
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="resources/assets/css/sb-admin-2.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

	<script type="text/javascript">
	


$(document).ready(function() {
	  $('form').submit(function (e) {
	    var form = this;
	    e.preventDefault();
	    setTimeout(function () {
	        form.submit();
	    }, 3000); // in milliseconds

	    /*  $('.preloader').appendTo('body');  */
	    $('.wait').html('<p>Load...</p>')
	}); 
	 
	
	});
</script>


	<div class="container">

		<div class="card o-hidden border-0 shadow-lg my-5">
			<div class="card-body p-0">
				<!-- Nested Row within Card Body -->
				<div class="row">
					<div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
					<div class="col-lg-7">
						<div class="p-5">
							<div class="text-center">
								<h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
							</div>
							<form action="registered" method="post" class="user">

								<div class="form-group">
									<input type="text" class="form-control form-control-user"
										name="FieldName" placeholder="Full Name" required>
								</div>

								<div class="form-group">
									<input type="email" class="form-control form-control-user"
										name="FieldEmail" placeholder="Email Address" required>
								</div>
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<input type="password" class="form-control form-control-user"
											name="FieldPassword" placeholder="Password" required>
									</div>

									<div class="col-sm-6">
										<input type="password" class="form-control form-control-user"
											class="FieldRepeatPassword" placeholder="Repeat Password">
									</div>
									<div class="col-sm-6 mb-3 mb-sm-0">
										<span>${Msg }</span> <span class="wait"></span>
									</div>
								</div>
								<button class="btn btn-primary btn-user btn-block">
									Register Account</button>
								<hr>
								<button class="btn btn-google btn-user btn-block">
									<i class="fab fa-google fa-fw"></i> Register with Google
								</button>
								<a href="index.html" class="btn btn-facebook btn-user btn-block">
									<i class="fab fa-facebook-f fa-fw"></i> Register with Facebook
								</a>
							</form>
							<hr>
							<div class="text-center">
								<a class="small" href="forgot-password.html">Forgot
									Password?</a>
							</div>
							<div class="text-center">
								<a class="small" href="login">Already have an account?
									Login!</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- Bootstrap core JavaScript-->



</body>

</html>
