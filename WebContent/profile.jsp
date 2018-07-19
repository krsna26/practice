<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="errorPage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile Page</title>
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
	<jsp:include page="bannerlogincheck.jsp" />
	<f:form modelAttribute="loanstatus" method="post">


		<div class="limiter">
			<div class="container-login100"
				style="background-image: url(img/loan5.jpg); height: 100%; background-position: center; background-repeat: no-repeat; background-size: cover;">
				<div class="wrap-login100">
					<div class="login100-form-title"
						style="background-image: url(img/loan5.jpg);">
						<span class="login100-form-title-1"> Profile </span>
					</div>

					<form class="login100-form validate-form">
						<div class="wrap-input100 validate-input m-b-26">
							<div style="color: red">${LoanNotApproved}${SystemError}</div>
							<div style="color: green">${LoanApproved}</div>
							<label><b>Aadhaar Number:</b></label> <input type="text"
								class="form-control" value="${UserDetail.aadhaarNo}" readonly>
							<br> <label><b>Name:</b></label> <input type="text"
								class="form-control" value="${UserDetail.name}" readonly><br>
							<label><b>Date of Birth:</b></label> <input type="date"
								class="form-control" value="${UserDetail.dob}" readonly><br>
							<label><b>Phone Number:</b></label> <input type="text"
								class="form-control" value="${UserDetail.phoneNo}" readonly><br>
							<label><b>Address:</b></label> <input type="text"
								class="form-control" value="${UserDetail.address}" readonly><br>

							<label><b>Pan Number:</b></label> <input type="text"
								class="form-control" value="${UserDetail.panNo}" readonly>
							<br> <label><b>Bank Name:</b></label> <input type="text"
								class="form-control" value="${UserDetail.bankName}" readonly><br>
							<label><b>Bank Account Number:</b></label> <input
								class="form-control" value="${UserDetail.bankAccountNo}"
								readonly><br> <label><b>Bank IFSC:</b></label> <input
								type="text" class="form-control" value="${UserDetail.bankIfsc}"
								name="phoneno" readonly><br>
							<%-- <div class="container-login100-form-btn">
								<a href="loanStatus.loan?pan=${UserDetail.panNo}"
									class="btn btn-info" role="button">Check Loan Status</a>
							</div> --%>
					</form>
				</div>
			</div>
		</div>
		<%-- <table border="2">
			<tr>
				<th colspan="2">Your Aadhaar Details</th>
			</tr>
			<tr>
				<td>Aadhaar Number</td>
				<td>${UserDetail.aadhaarNo}</td>
			</tr>
			<tr>
				<td>Name</td>
				<td>${UserDetail.name}</td>
			</tr>
			<tr>
				<td>Date of Birth</td>
				<td>${UserDetail.dob}</td>
			</tr>
			<tr>
				<td>Address</td>
				<td>${UserDetail.address}</td>
			</tr>
			<tr>
				<td>Phone Number</td>
				<td>${UserDetail.phoneNo}</td>
			</tr>
			<tr>
				<th colspan="2">Your PAN Details</th>
			</tr>
			<tr>
				<td>PAN Number</td>
				<td>${UserDetail.panNo}</td>
			</tr>
			<tr>
				<td>Bank Name</td>
				<td>${UserDetail.bankName}</td>
			</tr>
			<tr>
				<td>Account Number</td>
				<td>${UserDetail.bankAccountNo}</td>
			</tr>
			<tr>
				<td>IFSC code</td>
				<td>${UserDetail.bankIfsc}</td>
			</tr>
			<tr>
				<td><a href="loanStatus.loan?pan=${UserDetail.panNo}"> Loan
						Status</a></td>
			</tr>
		</table> --%>
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