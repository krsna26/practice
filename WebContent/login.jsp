<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="errorPage.jsp"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min1.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">

<!--===============================================================================================-->
</head>
<body>
	<%@ include file="banner.jsp"%>

	<form action="login.loan" method="post">
		<div class="limiter">
			<div class="container-login100" style="background-image: url(img/loan5.jpg); height: 100%; background-position: center; background-repeat: no-repeat; background-size: cover;">
				<div class="wrap-login100">
					<div class="login100-form-title"
						style="background-image: url(img/loan5.jpg);">
						<span class="login100-form-title-1"> Login  </span>
					</div>
					<div style="color: red">${invalidEmail}${invalidPass}</div>
					<div class="wrap-input100 validate-input m-b-26"
						data-validate="Username is required" >
						<label  for="inputEmail" class="col-sm-2 col-form-label text-success"><b>Email Id:</b></label> <input name="email"
							style="width: 100%" placeholder="Enter Email address"
							required maxlength="40" class="form-control" id="inputEmail"> <span
							class="focus-input100" ></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18"
						data-validate="Password is required">
						<label class="col-sm-2 col-form-label text-danger"><b>Password:</b></label> <input name="password"
							type="password"  class="form-control" id="inputPassword" style="width: 100%" placeholder="Enter Password"
							maxlength="12" required> <span class="focus-input100"></span>
					</div>
					
					<!-- For displaying the follwing message -->
<!-- 					<div>
        <small id="passwordHelp" class="text-danger">
          Must be 8-20 characters long.
        </small>      
      </div> -->
					<div>
						<a href="doForget.loan" > Forgot Password? </a>
						<br>
						<a href="inputaadhaar.jsp">Not Yet Registered?<b>Register Now</b></a>
					</div>
					<div class="container-login100-form-btn">
						<button class="btn btn-success">Login</button>
						
						<a href="home.jsp" class="btn btn-danger" role="button">Cancel</a>
					
				</div>
			</div>
		</div>

		<%@ include file="footer.jsp"%>
		<!--===============================================================================================-->
		<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
		<!--===============================================================================================-->
		<script src="vendor/animsition/js/animsition.min.js"></script>
		<!--===============================================================================================-->
		<script src="vendor/bootstrap/js/popper.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.min1.js"></script>
		<!--===============================================================================================-->
		<script src="vendor/select2/select2.min.js"></script>
		<!--===============================================================================================-->
		<script src="vendor/daterangepicker/moment.min.js"></script>
		<script src="vendor/daterangepicker/daterangepicker.js"></script>
		<!--===============================================================================================-->
		<script src="vendor/countdowntime/countdowntime.js"></script>
		<!--===============================================================================================-->
		<script src="js/main.js"></script>

	</form>
</body>
</html>