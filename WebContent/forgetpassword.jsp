<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="errorPage.jsp"%>
<!DOCTYPE html >
<html>
<head>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forget Password Page</title>
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

	<f:form action="confirmDetails.loan" modelAttribute="forgetPassword" method="post">
<div class="limiter">
			<div class="container-login100" style="background-image: url(img/forgot1.jpg); height: 100%; background-position: center; background-repeat: no-repeat; background-size: cover;">
				<div class="wrap-login100">
					<div class="login100-form-title"
						style="background-image: url(img/forgot1.jpg);">
						<span class="login100-form-title-1"> Confirm Your Details </span>
					</div>
					<form class="login100-form validate-form">
						<div class="wrap-input100 validate-input m-b-26">
							<div style="color:red">${emailNotExist}  ${incorrectAadhaar} </div>
							<label><b>Email Id:</b></label>
							<f:input path="email" type="email" required="true" maxlength="40"
								placeholder="Enter email address" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" title="Please match the format for email. eg:abc@xyz.com or .in"/>
						</div>
						<div class="wrap-input100 validate-input m-b-26">
						<label><b>AADHAR Number:</b></label>
							<f:input path="aadhaarNo" type="text" id="aadhar" required="true"
								placeholder="Enter AADHAR Number" pattern="[2-9]{1}[0-9]{11}" maxlength="12" title="Please enter 12 digit aadhaar number where first two digits should not be 0 or 1"/>
						</div>

						<div class="container-login100-form-btn">
							<button class="login100-form-btn">Next</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<%@ include file="footer.jsp"%>

		<input type="submit" value="Submit" />
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