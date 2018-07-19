function calculate() {

	  var amount = document.getElementById("amount");
	  var tenure = document.getElementById("tenure");
	  var tenureValue = document.getElementById("tenureValue");
	  var roi = document.getElementById("roi");
	  var emi = document.getElementById("emi");
	  var emiValue = document.getElementById("emiValue");
	  var interest = document.getElementById("interest");
	  var total = document.getElementById("total");
	  var totalAmountValue = document.getElementById("totalAmountValue");
	 document.getElementById("value1").innerHTML=parseInt(amount.value);	 	
	 document.getElementById("value2").innerHTML=parseInt(tenure.value);
	var principal = parseFloat(amount.value);
	
	var interestmonth = parseFloat(roi.value) / 100 / 12;
	var time = parseInt(tenure.value);
	tenureValue.value=time;
	var x = Math.pow(1 + interestmonth, time); 
	var bottom=x-1;
	var sp= x/bottom;
	var monthly = ((principal*interestmonth)*sp);
	var amt = (monthly*time)-principal;
	
	if (isFinite(monthly)){
		
		
		emi.innerHTML = (monthly).toFixed(2);
		emiValue.value = (monthly).toFixed(2);
		total.innerHTML =(monthly*time).toFixed(2);
		totalAmountValue.value=(monthly*time).toFixed(2);
		interest.innerHTML =(amt).toFixed(2);
		
	}

	 else {
	 // Erase the content of these elements
	 emi.innerHTML = ""
	total.innerHTML = ""
		interest.innerHTML = ""
	 chart(); // With no arguments, clears the chart
	 
	 }

}
function calculateFour() {

	  var amount = document.getElementById("amount");
	  var tenure = document.getElementById("tenure");
	  var tenureValue = document.getElementById("tenureValue");
	  var roi = document.getElementById("roi");
	  var emi = document.getElementById("emi");
	  var emiValue = document.getElementById("emiValue");
	  var interest = document.getElementById("interest");
	  var total = document.getElementById("total");
	  var totalAmountValue = document.getElementById("totalAmountValue");
	 document.getElementById("value1").innerHTML=parseInt(amount.value);	 	
	 document.getElementById("value2").innerHTML=parseInt(tenure.value);
	var principal = parseFloat(amount.value);
	
	var interestmonth = parseFloat(roi.value) / 100 / 12;
	var time = parseInt(tenure.value);
	tenureValue.value=time;
	var x = Math.pow(1 + interestmonth, time); 
	var bottom=x-1;
	var sp= x/bottom;
	var monthly = ((principal*interestmonth)*sp);
	var amt = (monthly*time)-principal;
	
	if (isFinite(monthly)){
		
		
		emi.innerHTML = (monthly).toFixed(2);
		emiValue.value = (monthly).toFixed(2);
		total.innerHTML =(monthly*time).toFixed(2);
		totalAmountValue.value=(monthly*time).toFixed(2);
		interest.innerHTML =(amt).toFixed(2);
		
	}

	 else {
	 // Erase the content of these elements
	 emi.innerHTML = ""
	total.innerHTML = ""
		interest.innerHTML = ""
	 chart(); // With no arguments, clears the chart
	 
	 }

}
//allowing only CAPS and digit
$('#pan').bind('keypress', function (event) {
    var regex = new RegExp("^[A-Z0-9\r\n]+$");
    var key = String.fromCharCode(!event.charCode ? event.which : event.charCode);
    if (!regex.test(key)) {
       event.preventDefault();
       window.prompt("small not allowed");
       return false;
    }
});
//restricting paste
$(document).ready(function() {
    $("#pan").keydown(function (e) {
             // Disallow: Ctrl/cmd+V
            if(e.keyCode == 86 && (e.ctrlKey === true || e.metaKey === true))
         {
            e.preventDefault();
                
        }
    });
});




// disabling space bar

 $(document).ready(function(){ $("#pass").keydown(function(event) { if
  (event.keyCode == 32) { event.preventDefault(); } }); });
 

 // allowing only numbers as a input in input textbox
$(document).ready(function() {
    $("#aadhar").keydown(function (e) {
        // Allow: backspace, delete, tab,enter
        if ($.inArray(e.keyCode, [8,46,9,13]) !== -1 ||   // to allow dot add
															// 196,27 for escape
             // Allow: Ctrl/cmd+A
            (e.keyCode == 65 && (e.ctrlKey === true || e.metaKey === true)) || // metakey
																				// returns
																				// only
																				// boolean
																				// value
             // Allow: Ctrl/cmd+C
            (e.keyCode == 67 && (e.ctrlKey === true || e.metaKey === true)) ||
             // Allow: Ctrl/cmd+X
            (e.keyCode == 88 && (e.ctrlKey === true || e.metaKey === true)) ||
             // Allow: home, end, left, right
            (e.keyCode >= 35 && e.keyCode <= 39)) {
                 // let it happen, don't do anything
       
                 return ;
        }
        // Ensure that it is a number and stop the keypress
        if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
            e.preventDefault();
        }
    });
});



var myInput = document.getElementById("pass");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");

// When the user clicks on the password field, show the message box
myInput.onfocus = function() {
  document.getElementById("message").style.display = "block";
}

// When the user clicks outside of the password field, hide the message box
myInput.onblur = function() {
  document.getElementById("message").style.display = "none";
}

// When the user starts to type something inside the password field
myInput.onkeyup = function() {
  // Validate lowercase letters
  var lowerCaseLetters = /[a-z]/g;
  if(myInput.value.match(lowerCaseLetters)) { 
    letter.classList.remove("invalid");
    letter.classList.add("valid");
  } else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
}

  // Validate capital letters
  var upperCaseLetters = /[A-Z]/g;
  if(myInput.value.match(upperCaseLetters)) { 
    capital.classList.remove("invalid");
    capital.classList.add("valid");
  } else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
  }

  // Validate numbers
  var numbers = /[0-9]/g;
  if(myInput.value.match(numbers)) { 
    number.classList.remove("invalid");
    number.classList.add("valid");
  } else {
    number.classList.remove("valid");
    number.classList.add("invalid");
  }

  // Validate length
  if(myInput.value.length >= 6) {
    length.classList.remove("invalid");
    length.classList.add("valid");
  } else {
    length.classList.remove("valid");
    length.classList.add("invalid");
  }
  
/*  if((myInput.value.length >= 6) &&(myInput.value.match(numbers) &&(myInput.value.match(upperCaseLetters) &&(myInput.value.match(lowerCaseLetters))
	{
	$(#message).hide();
	  
		  }
*/  
/*  $('input[type=password]').blur(function() {
	    // blur code here
	}).blur(function() {
		$('#message').hide();
	});
  */


}


