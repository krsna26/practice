<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="errorPage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Main Banner</title>


</head>
<body id="page-top">
	<%@ include file="emical.jsp"%>
	<%@ include file="apply.jsp"%>
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
	<div class="container">
		<!-- <a class="navbar-brand js-scroll-trigger" href="#page-top">Lening
			Services</a> -->
			<img src="img/logo4.png" width="200" height="100">
		<!-- Button for mobile or small screen application -->
		<button class="navbar-toggler navbar-toggler-right" type="button"
			data-toggle="collapse" data-target="#navbarResponsive"
			aria-controls="navbarResponsive" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="" data-toggle="modal" data-target="#EmicalModal">EMI
						Calculator</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="login.jsp">Login </a></li>

				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="" data-toggle="modal" data-target="#ApplyModal">Apply for loan</a>
			</ul>
		</div>
	</div>
	</nav>

</html>