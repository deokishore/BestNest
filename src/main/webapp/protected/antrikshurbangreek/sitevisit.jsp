<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<title>Site Visit- Antriksh Urban Greek</title>
<meta name="keywords" content="Site Visit Antriskh, L Zone Site Visit, Free Site Visit DDA L Zone Antriksh" />
<meta name="description" content="Get Free Site Visit for Antriksh Urban Greek, and get More Exciting Offers"/>
<!-- Fav Icon -->
<link rel="shortcut icon" type="image/ico" href="http://images.bestnest.in/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="http://images.bestnest.in/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="http://images.bestnest.in/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="http://images.bestnest.in/ico/apple-touch-icon-72-precomposed.png">
<!-- End Fav Icon -->
<link href="http://resources.bestnest.in/css/popup_inner.css" rel="stylesheet" type="text/css" />
<script src="http://resources.bestnest.in/js/jquery.js" type="text/javascript"></script>
<script src="http://resources.bestnest.in/js/registration.js" type="text/javascript"></script>
<script>
	function validate(form) {
		var firstName = form.firstName.value;
		var lastName = form.lastName.value;
		var email = form.email.value;
		var mobilePhoneNumber = form.mobilePhoneNumber.value;
		var message = form.message.value;

		var errors = [];

		if (!checkLength(firstName)) {
			errors[errors.length] = "You must enter your first name.";
		}

		if (!checkLength(mobilePhoneNumber)) {
			errors[errors.length] = "You must enter your mobile number.";
		}

		if (!checkLength(message)) {
			errors[errors.length] = "You must type some message.";
		}

		/*
		Write code that
		1. checks that a country is selected
		2. checks that the country and state selection are in sync
		3. checks that the terms have been accepted
		 */
		if (errors.length > 0) {
			reportErrors(errors);
			return false;
		}

		else {
			alert("Thank you for contacting us!! One of our sales manager will contact you soon.");
			parent.jQuery.fn.colorbox.close();
		}
		return true;

		function reportErrors(errors) {
			var msg = "There were some problems...\n";
			var numError;
			for ( var i = 0; i < errors.length; i++) {
				numError = i + 1;
				msg += "\n" + numError + ". " + errors[i];
			}
			alert(msg);
		}

	}
</script>
<!--Starting Analytics code for urban greek -->  
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-59446819-1', 'auto');
  ga('send', 'pageview');

</script>
<!--Ending Analytics code for urban greek -->
</head>
<body>
	<h2 align="center">Request For Site Visit</h2>
	
	<p align="center" style="padding-bottom: 10px;">Enter your details to get a call from us.</p>
	
	<form:form name="validform" method="post" action="${pageContext.request.contextPath}/contactUsSaveForSiteVisit"
		modelAttribute="clientInformationForm" onsubmit="return validate(this);" style="margin:0px;">
	
		<input id="sourceSite" name="sourceSite" type="hidden" value="www.bestnest.in/antrikshurbangreek">
		<label>First Name *</label>
		<input type="text" name="firstName" id="firstName" />
		<label>Last Name *</label>
		<input type="text" name="lastName" id="lastName"/>
		<label>E-mail *</label>
		<input type="text" name="email" id="email" />
		<label>Mobile No. *</label>
		<input type="text" name="mobilePhoneNumber" id="mobilePhoneNumber" />
		<label>Messages *</label>
		<textarea name="message" id="message" rows="3"></textarea>
		<div class="clrbth"></div>
		<div class="formbutton">
			<input name="Submit" class="btnGreen" type="submit" value="Submit" />
			<input name="Reset" class="btnGrey" type="reset" value="Reset" />
		</div>
	</form:form>
</body>
</html>
