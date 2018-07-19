<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="errorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New User Registration</title>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
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
	<f:form action="acceptEmailPass.loan" modelAttribute="register"
		method="post">
		<div class="limiter">
			<div class="container-login100"
				style="background-image: url(img/Loan3.jpg); height: 100%; background-position: center; background-repeat: no-repeat; background-size: cover;">
				<div class="wrap-login100">
					<div class="login100-form-title">
						<span class="login100-form-title-1"> Enter email and
							password </span>
					</div>


					<div class="wrap-input100 validate-input m-b-26">
						<label for="email" class="col-sm-4 col-form-label text-info"><b>Email:</b></label>
						<f:input path="email" type="text" placeholder="Enter email"
							maxlength="40" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"
							required="true" id="email" class="form-control" title="Should be in given format abc@xyz.com all in small cases"/>
						<span class="focus-input100"></span>
					</div>
					<div style="color: red">${emailExists}</div>
					<div class="wrap-input100 validate-input m-b-18">
						<label for="pass" class="col-sm-4 col-form-label text-info"><b>Password:</b></label>
						<f:input id="pass" path="password" type="password"
							placeholder="Enter password" maxlength="12"
							pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,12}" class="form-control"  required="true"
							title="Should contain an uppercase,a lowercase, a number and should be of length atleast 6 and atmost 12" />
						<span class="focus-input100"></span><br><br>

						<div class="container-login100-form-btn">
							<button class="btn btn-success" style="margin-left:10px" >Finish Registration</button>
							<!-- <a href="success.jsp" class="btn btn-success" role="button">Finish Registration</a> -->
							<a href="showpan.jsp" class="btn btn-info" style="margin-left:10px" role="button">Back</a>

						</div>

					</div>
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
		<script src="https://code.jquery.com/jquery-1.7.min.js"></script>

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