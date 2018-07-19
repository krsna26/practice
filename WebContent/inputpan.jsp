<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="errorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New User Registrationer</title>
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

<!--===============================================================================================-->
</head>
<body>
<%@ include file="banner.jsp" %> 
	<f:form action="showPan.loan" modelAttribute="register" method="post">
	<div class="limiter">
			<div class="container-login100" style="background-image: url(img/Loan3.jpg); height: 100%; background-position: center; background-repeat: no-repeat; background-size: cover;">
				<div class="wrap-login100">
					<div class="login100-form-title"
						style="background-image: url(img/Loan3.jpg);">
						<span class="login100-form-title-1"> Pan Details </span>
					</div>
					<form class="login100-form validate-form">
						<div class="wrap-input100 validate-input m-b-26">
							<div style="color: red">${invalidPan}</div>
							<label for="pan" class="col-sm-4 col-form-label text-info"><b>PAN Number:</b></label>
							<f:input path="panNo" type="text" id="pan" class="form-control" required="true" placeholder="Enter PAN Number" pattern="[A-Z]{5}[0-9]{4}[A-Z]{1}" maxlength="10" title="Should be in given format ABCDE1234F"/>
						</div>

						<div class="container-login100-form-btn">
							<button class="btn btn-success">Next</button>
							<a href="showaadhaar.jsp" class="btn btn-info" role="button">Back</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	<%@ include file ="footer.jsp" %>

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