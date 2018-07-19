<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="errorPage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Apply for Vehicle Loan</title>
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
<script type="text/javascript" src="js/emicalculator.js"></script>
<link href="css/emif.css" rel="stylesheet">
<script src="D:/Dependency/jquery-3.3.1.min.js"></script>

<!--===============================================================================================-->
</head>
<body>
	<%@include file="bannerlogin.jsp"%>
	
	<form action="loanApplied.loan">
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
							<label for="name"><b>Vehicle Brand:</b></label> <input
								type="text" class="form-control" value="${brand}" readonly><br>
							<label for="dob"><b>Vehicle Name:</b></label> <input type="text"
								class="form-control" value="${name}" readonly><br>
							<label><b>Vehicle Price:</b></label> <input type="text"
								class="form-control" value="${price}" readonly><br>
								<img alt="Image Not Available" src="${image}" width="600" height="400">
						</div>
					</form>
					<div style="color: red">${Selected}</div>
					<%
						String category = (String) session.getAttribute("Category");
					%>
					<%
						if (category.equalsIgnoreCase("twowheeler")) {
					%>
					<div class="slidercontainer" style="margin-left: 100px;">
						Amount:<input type="range" min="0" max="${price*0.8}" step="1000" class="slider" id="amount" value="0" onchange="calculate();"><br> 
						Selected Value of amount: Rs.<span class="output" id="value1"></span> <br> 
						Tenure: <input type="range" min="0" max="36" step="12" value="0" class="slider" id="tenure" onchange="calculate();" ><br>
						Selected value of Tenure: <span class="output" id="value2"></span>months<br>
						<input type="hidden" id="tenureValue" name="tenure" value="0"> 
						<b>Rate of Interest:</b> <input type="text" id="roi" value="12.75"	onchange="calculate();" readonly><br> 
						<b>Total Payable Amount: Rs.</b> <span class="output" id="total"></span><br> 
						<input type="hidden" id="totalAmountValue" name="loanAmount" value="0">
						<b>EMI:</b> Rs. <span class="output" id="emi"></span>p.m.<br> 
						<b>Interest:</b> Rs.<span class="output" id="interest"></span><br> 
						<input type="hidden" id="emiValue" name="emi" value="0"> 
					<center><button class="btn btn-success">Next</button></center>
					</div>
					<%
						}
					%>

					<%
						if (category.equalsIgnoreCase("fourwheeler")) {
					%>
					<div class="slidercontainer" style="margin-left: 100px;">
						Amount: <input type="range" min="0" max="${price*0.8}" step="20000" class="slider" id="amount" value="0" required="true" onchange="calculateFour();"><br> 
						Selected Value of amount: Rs. <span class="output" id="value1"></span><br> 
						Tenure: <input type="range" min="36" max="60" step="12" value="0" class="slider" id="tenure" onchange="calculateFour();"><br>
						Selected value of Tenure: <span class="output" id="value2"></span> months<br>
						<input type="hidden" id="tenureValue" name="tenure" value="0"> 
						<b>Rate of Interest:</b><input type="text" id="roi" value="9.25" onchange="calculateFour();" readonly><br> 
						<b>Total Payable Amount:</b> Rs.<span class="output" id="total"></span><br> 
						<input type="hidden" id="totalAmountValue" name="loanAmount" value="0">
						<b>EMI:</b> Rs.<span class="output" id="emi"></span> p.m.<br> 
						<b>Interest:</b> Rs.<span class="output" id="interest"></span><br> 
						<input type="hidden" id="emiValue" name="emi" value="0"> 
						<center><button class="btn btn-success">Submit</button></center>
					</div>
					<%
						}
					%>
				</div>
			</div>
		</div>
	</form>
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
<!-- 	<script src="js/main.js"></script>
 --></body>
</html>