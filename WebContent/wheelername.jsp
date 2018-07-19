<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="errorPage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Apply for Vehicle Loan</title>
<script type="text/javascript">
	function submitWheelerName() {
		var selected = document.getElementById("wheelername").value;
		if(selected!="Select")
		document.getElementById("nameForm").submit();
	}
</script>
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
	<%@ include file="bannerlogin.jsp"%>
	<form action="WheelerName.loan" id="nameForm">
		
			<div class="limiter">
				<div class="container-login100"
					style="background-image: url(img/Loan34.jpeg); height: 100%; background-position: center; background-repeat: no-repeat; background-size: cover;">
					<div class="wrap-login100">
						<div class="login100-form-title"
							style="background-image: url(img/Loan34.jpeg);">
							<span class="login100-form-title-1"> Vehicle Details </span>
						</div>
						<form class="login100-form validate-form">
							<div class="wrap-input100 validate-input m-b-26">
								<label><b>Vehicle Type:</b></label> 
								<input type="text" class="form-control" value="${Category}" readonly> <br>
								<label><b>Vehicle Brand:</b></label> 
								<input type="text" class="form-control" value="${brand}" readonly><br>
								<label><b>Vehicle Name:</b></label> 
								<select id="wheelername" name="wheelername" onChange="submitWheelerName()">
								<option>Select</option>
								<c:forEach items="${VehicleNames}" var="vehiclenames">
									<option value="${vehiclenames.name}">${vehiclenames.name}</option>
								</c:forEach>
								</select>
							</div>
						</form>
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
	</form>
</body>
</html>