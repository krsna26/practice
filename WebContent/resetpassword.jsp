<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="errorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reset Password</title>
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
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
<link rel="stylesheet" type="text/css" href="css/pass.css">
<!--===============================================================================================-->
</head>
<body>
	<%@ include file="banner.jsp"%>	
	<f:form action="changePassword.loan" modelAttribute="forgetPassword" method="post">
		<div class="limiter">
			<div class="container-login100"
				style="background-image: url(img/forgot1.jpg); height: 100%; background-position: center; background-repeat: no-repeat; background-size: cover;">
				<div class="wrap-login100">
					<div class="login100-form-title"
						style="background-image: url(img/forgot1.jpg);">
						<span class="login100-form-title-1"> Reset Password </span>
					</div>
					<form class="login100-form validate-form">
				<div class="wrap-input100 validate-input m-b-26">
							<div style="color: red">${serverDown}${passwordNotMatch}</div>
						<label><b>New Password:</b></label>
						<f:input id="pass" path="password" type="password"
							placeholder="Enter password" maxlength="12"
							pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,12}" required="true"
							title="Should contain an uppercase,a lowercase, a number and should be of length atleast 6 and atmost 12" />
						<span class="focus-input100"></span>
	<label><b>Re-Enter Password:</b></label>
						
	<f:input id="pass" path="confirmPassword" type="password"
							placeholder="Re-Enter password" maxlength="12"
							pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,12}" required="true"
							title="Should contain an uppercase,a lowercase, a number and should be of length atleast 6 and atmost 12" />
						<span class="focus-input100"></span>
						<div class="container-login100-form-btn">
							<button class="login100-form-btn">Submit</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div id="message">
			<h6>Password must contain the following:</h6>
			<p id="letter" class="invalid">
				A <b>lowercase</b> letter
			</p>
			<p id="capital" class="invalid">
				A <b>capital (uppercase)</b> letter
			</p>
			<p id="number" class="invalid">
				A <b>number</b>
			</p>
			<p id="length" class="invalid">
				Minimum <b>6 characters</b>
			</p>
		</div>
		
		<%@ include file="footer.jsp"%>
		<!--===============================================================================================-->
		<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
		<!--===============================================================================================-->
		<script src="vendor/animsition/js/animsition.min.js"></script>
		<!--===============================================================================================-->
		<script src="vendor/bootstrap/js/popper.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
		<!--===============================================================================================-->
		<script src="vendor/select2/select2.min.js"></script>
		<!--===============================================================================================-->
		<script src="vendor/daterangepicker/moment.min.js"></script>
		<script src="vendor/daterangepicker/daterangepicker.js"></script>
		<!--===============================================================================================-->
		<script src="vendor/countdowntime/countdowntime.js"></script>
		<!--===============================================================================================-->
		<script src="js/main.js"></script>
	</f:form>
</body>
</html>