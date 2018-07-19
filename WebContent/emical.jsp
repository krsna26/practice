<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EMI Calculator</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/emi.css">
<script type="text/javascript" src="js/main.js"></script>
<link href="css/emif.css" rel="stylesheet">
<script type="text/javascript" src="js/main.js"></script>
<script src="jquery.js"></script>
</head>
<body>
	<div class="modal fade" id="EmicalModal" tabindex="-1" role="dialog"
		aria-labelledby="helpModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h2>Enter Loan Details</h2>
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">
							Close</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="slidercontainer" style="margin-left: 100px;">
							Amount: <input type="range" min="0" max="10000000"
								step="1000" class="slider" id="amount" onchange="calculate();"><br>
							Selected Value of amount: Rs. <span class="output" id="value1"></span>
							<br> Tenure: <input type="range" min="0" max="120" step="12"
								class="slider" id="tenure" onchange="calculate();"><br>
							Selected value of Tenure: <span class="output" id="value2"></span> months<br>
							Rate of Interest: <input type="range" min="9" max="13"
								step="0.25" class="slider" id="roi" onchange="calculate();"><br>
							Selected value of Rate Of Interest: <span class="output" id="value3"></span> %<br>
							<b>Total Payable Amount: Rs.</b> <span class="output" id="total"></span><br>
							<b>EMI: Rs.</b> <span class="output" id="emi"></span> p.m.<br> <b>Interest: Rs.</b><span
								class="output" id="interest"></span><br>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>