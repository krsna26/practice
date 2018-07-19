<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="errorPage.jsp"%>
<!DOCTYPE html >
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

<!--===============================================================================================-->
</head>
<body>
<%@ include file="banner.jsp" %>
	<f:form action="inputEmailPass.loan" modelAttribute="register" method="post">
			<div class="limiter">
			<div class="container-login100" style="background-image: url(img/Loan3.jpg); height: 100%; background-position: center; background-repeat: no-repeat; background-size: cover;">
				<div class="wrap-login100">
					<div class="login100-form-title"
						style="background-image: url(img/Loan3.jpg);">
						<span class="login100-form-title-1"> Your Bank Details
						</span>
					</div>
					<label for="pan" class="col-sm-4 col-form-label text-info"><b>Pan Number:</b></label> 
					<input type="text" id="pan" class="form-control" value="${customer.panNo}" readonly><br> 
					<label for="bname" class="col-sm-4 col-form-label text-info"><b>Bank Name:</b></label> 
					<input type="text" class="form-control" id="bname" value="${customer.bankName}" readonly><br>
					<label for="acct" class="col-sm-4 col-form-label text-info"><b>Account Number</b></label> 
					<input class="form-control" id="acct"  value="${customer.bankAccountNo}" readonly><br>
					<label for="ifsc" class="col-sm-4 col-form-label text-info"><b>IFSC code</b></label> 
					<input type="text" id="ifsc"  class="form-control" value="${customer.bankIfsc}" readonly><br>
					<div class="flex-sb-m w-full p-b-30">
						<div class="contact100-form-checkbox">
							<input id="ckb1" type="checkbox" required> 
									I Agree to share my bank details </label>
							</div>
						</div>
						<div class="container-login100-form-btn">
							<button class="btn btn-success">Next</button>
							<a href="inputPan.loan" class="btn btn-info" role="button">Back</a>
						</div>
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