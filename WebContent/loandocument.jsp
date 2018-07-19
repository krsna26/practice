<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
<%@ include file="bannerlogin.jsp" %>
	<form action="loandocumentuploaded.loan" method="post" enctype="multipart/form-data">
		<div class="limiter">
			<div class="container-login100"
				style="background-image: url(img/Loan3.jpg); height: 100%; background-position: center; background-repeat: no-repeat; background-size: cover;">
				<div class="wrap-login100">
					<div class="login100-form-title"
						style="background-image: url(img/Loan3.jpg);">
						<span class="login100-form-title-1"> Upload Documents </span>
					</div>
						<div class="wrap-input100 validate-input m-b-26">
							<label for="aadhar" class="col-sm-4 col-form-label text-info"><b>Aadhar:</b></label>
							<input type="file" name="file" size="50" id="file1" 
								 class="form-control" onchange="return fileValidation()" required/>
						</div>
						<div class="wrap-input100 validate-input m-b-26">
							<label for="pan" class="col-sm-4 col-form-label text-info"><b>PAN
									Card:</b></label> <input type="file" name="file" size="50" id="file2"
								 class="form-control" onchange="return fileValidationPan()" required/><br>
						</div>
							
						<div class="container-login100-form-btn">
							<button class="btn btn-success">Upload File</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		
		<%@ include file="footer.jsp"%>
		
		
		<script>
			function fileValidation() {
				var fileInput = document.getElementById("file1");
				var filePath = fileInput.value;
				var allowedExtensions = /(\.PDF|\.pdf)$/i;
				if (!allowedExtensions.exec(filePath)) {
					alert('Please upload file having extensions .pdf only.');
					fileInput.value = '';

					return false;

				}
			}
			function fileValidationPan() {
				var fileInput = document.getElementById("file2");
				var filePath = fileInput.value;
				var allowedExtensions = /(\.PDF|\.pdf)$/i;
				if (!allowedExtensions.exec(filePath)) {
					alert('Please upload file having extensions .pdf only.');
					fileInput.value = '';

					return false;

				}

			}
		</script>
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
</body>
</html>