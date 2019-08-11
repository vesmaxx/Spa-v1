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

<!-- Custom fonts for this template-->
<script type="text/javascript" language="javascript"
	src="https://code.jquery.com/jquery-3.3.1.js"></script>
<link href="resources/assets/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="resources/assets/css/sb-admin-2.css" rel="stylesheet">
<style type="text/css">
.hide {
	display: none;
}
</style>
</head>

<body class="bg-gradient-primary">
	<script type="text/javascript">
		$(document).ready(function() {
			timer = setTimeout(function() {
				$('#Msg').addClass('hide');
			}, 5000);
			/*   
			  $window.location.reload();
			  sessionStorage.clear(); */
		});
	</script>

	<div class="container">

		<!-- Outer Row -->
		<div class="row justify-content-center">

			<div class="col-xl-10 col-lg-12 col-md-9">

				<div class="card o-hidden border-0 shadow-lg my-5">
					<div class="card-body p-0">
						<!-- Nested Row within Card Body -->
						<div class="row">
							<div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
							<div class="col-lg-6">
								<div class="p-5">
									<div class="text-center">
										<h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
									</div>
									<form class="user" method="post" action="login-processing">
										<div class="form-group">
											<input type="email" class="form-control form-control-user"
												name="FieldEmail" id="exampleInputEmail"
												aria-describedby="emailHelp"
												placeholder="Enter Email Address..." required>
										</div>
										<div class="form-group">
											<input type="password" class="form-control form-control-user"
												name="FieldPassword" id="exampleInputPassword"
												placeholder="Password" required>
										</div>

										<div id="Msg" class="form-group">
											<div class="custom-control custom-checkbox ">
												<span style="color: red;">${Msg}</span>
											</div>
										</div>

										<button class="btn btn-primary btn-user btn-block">
											Login</button>
										<hr>
										<button class="btn btn-google btn-user btn-block">
											<i class="fab fa-google fa-fw"></i> Login with Google
										</button>
										<a href="index.html"
											class="btn btn-facebook btn-user btn-block"> <i
											class="fab fa-facebook-f fa-fw"></i> Login with Facebook
										</a>
									</form>
									<hr>
									<div class="text-center">
										<a class="small" href="forgot-password.html">Forgot
											Password?</a>
									</div>
									<div class="text-center">
										<a class="small" href="register">Create an Account!</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>

	</div>



</body>

</html>
