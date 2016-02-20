<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>


<!doctype html>
<html lang="en-GB">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="user-scalable=yes, width=device-width, initial-scale=1">
<title>Financial Details | BestNest Real Estate Services</title>
<link rel="shortcut icon" href="Images/favicon.ico" />
<link rel="stylesheet" href="http://resources.bestnest.in/css/isban/secureSiteSales.css">
<!--[if lte IE 9]>
	<link rel="stylesheet" href="Styles/ie9.css">
<![endif]-->
<!--[if lte IE 8]>
	<link rel="stylesheet" href="Styles/ie8.css">
<![endif]-->
<!--[if lte IE 7]>
	<link rel="stylesheet" href="Styles/ie7.css">
<![endif]-->


<script src="http://resources.bestnest.in/js/isban/lib/jquery-1.11.0.min.js"></script>
<script src="http://resources.bestnest.in/js/isban/lib/jquery-ui-1.10.4.custom.min.js"></script>

<script src="Scripts/behaviour.js"></script>
<script src="Scripts/validator.js"></script>
<!--[if lte IE 7]>
	<script src="Scripts/ie7.js"></script>
<![endif]-->
<script>
	
</script>

<!-- BestNest JS Start -->
<script type="text/javascript">

$(document).ready(function(){
	
	$("#dateDay").find("option:contains(${salesRegisterForm.dateDay})").each(function(){
		     if( $(this).text() == ${salesRegisterForm.dateDay} ) {
		        $(this).attr("selected","selected");
		     }
	});


	$("#dateMonth").find("option:contains(${salesRegisterForm.dateMonth})").each(function(){
	     if( $(this).text() == '${salesRegisterForm.dateMonth}' ) {
	        $(this).attr("selected","selected");
	     }
	});

 
	 $("#dateYear").find("option:contains(${salesRegisterForm.dateYear})").each(function(){
		     if( $(this).text() == ${salesRegisterForm.dateYear} ) {
		        $(this).attr("selected","selected");
		     }
	});


	if('${salesRegisterForm.clientInformationForm.gender}' == 'male') {
		$('input:radio[id=additCHGenderMale]:nth(0)').attr('checked',true);
	} else if('${salesRegisterForm.clientInformationForm.gender}' == 'female') {
		$('input:radio[id=additCHGenderFemale]:nth(0)').attr('checked',true);
	}	
		
});


</script>
<!-- BestNest JS End -->

</head>
<body>
<div id="wrapper">
<a href="#main" class="auralOnly" title="click here to skip to main content" >skip to main content</a>
	<header class="secSHeader" role="banner">
		<div id="headerbanner">
			<div id="bankname">
				<a href="homePage.htm">Santander - Online Banking</a>
			</div>
			<div id="loginfo">
				<span class="username">Deo Kishore</span>
				<span class="successful">Last successful log on: <strong>21/11/2013 13:24</strong></span>
			   	<span class="unsuccessful">Last unsuccessful log on: <strong>21/11/2013 13:24</strong></span>
			</div>
			<div id="logoff">
				<a href="#">Log off</a>
			</div>
		</div>
	</header>
	<div id="main" class="rightColumn">
		<div id="content">
	<form:form class="validator" method='post' id="saleReg1Form" action="saveClientInformation.htm" modelAttribute="salesRegisterForm"
		data-req-msg="Required default" data-format-msg="Format default">

	<ul class="actions">
		<li>
			<button type="submit" name="event" value="back" onclick="location = 'admin.htm'" class="secondary" formnovalidate>Back to Admin List</button>
		</li>
	</ul>	
	<input type="hidden" name="step" value="FinancialDetails">
	
	<h1>Sales Register</h1>
	<ol class="breadcrumbs">
		<li class="current">Client Information</li>
		<li>Company Quote</li>
		<li>Bestnest Quote</li>
		<li>Commission</li>
		<li>Tax & TDS</li>
		<li>Summary</li>
	</ol>

	<div class="form">
		<h2>Client Information</h2>
		<div class="formbody">
			<ul class="fields">
				<li>
					<fieldset class="inputgroup">
					<legend class="required">Booking Date	</legend>
					<select name="dateDay" id="dateDay" class="day" title="day" required>
						<option value="" disabled>Day</option>
						<option value="1">01</option>
						<option value="2">02</option>
						<option value="3">03</option>
						<option value="4">04</option>
						<option value="5">05</option>
						<option value="6">06</option>
						<option value="7">07</option>
						<option value="8">08</option>
						<option value="9">09</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
						<option value="13">13</option>
						<option value="14">14</option>
						<option value="15">15</option>
						<option value="16">16</option>
						<option value="17">17</option>
						<option value="18">18</option>
						<option value="19">19</option>
						<option value="20">20</option>
						<option value="21">21</option>
						<option value="22">22</option>
						<option value="23">23</option>
						<option value="24">24</option>
						<option value="25">25</option>
						<option value="26">26</option>
						<option value="27">27</option>
						<option value="28">28</option>
						<option value="29">29</option>
						<option value="30">30</option>
						<option value="31">31</option>			
					</select>
					<select name="dateMonth" id="dateMonth" class="month" title="month" required>
						<option value="" disabled>Month</option>
						<option value="Jan">Jan</option>
						<option value="Feb">Feb</option>
						<option value="Mar">Mar</option>
						<option value="Apr">Apr</option>
						<option value="May">May</option>
						<option value="Jun">Jun</option>
						<option value="Jul">Jul</option>
						<option value="Aug">Aug</option>
						<option value="Sept">Sep</option>
						<option value="Oct">Oct</option>
						<option value="Nov">Nov</option>
						<option value="Dec">Dec</option>			
					</select>
					
					<select name="dateYear" id="dateYear" class="year" title="year" required>
						<option value="" disabled>Year</option>
						<option value="2014">2014</option>
						<option value="2013">2013</option>
					</select>
					
			<span class="fieldInfo">For added security, please enter your date of birth in order to continue.</span>
		</fieldset>
	</li>
	
	
			
				<li class="employerField">
					<label class="required" for="employerNameInput">First Name</label>
					<input type="text" name="clientInformationForm.firstName" id="clientInformationForm.firstName" required value="${salesRegisterForm.clientInformationForm.firstName}">
      			</li>
				<li class="employerField">
					<label class="required" for="employerNameInput">Last Name</label>
					<input type="text" name="clientInformationForm.lastName" id="clientInformationForm.lastName" required value="${salesRegisterForm.clientInformationForm.lastName}">
      			</li>
      			<li>
					<fieldset class="inputgroup">
						<legend class="required">Gender</legend>
						<input type="radio" name="clientInformationForm.gender" id="additCHGenderMale" required value="male">			
							<label for="additCHGenderMale">Male</label>
						<input type="radio" name="clientInformationForm.gender" id="additCHGenderFemale" required value="female">			
							<label for="additCHGenderFemale">Female</label>
					</fieldset>
				</li>
				<li>
					<label for="emailInput" class="required">Email address</label>
					<input type="email" name="clientInformationForm.email" id="clientInformationForm.email" value="${salesRegisterForm.clientInformationForm.email}" required>
				</li>

				<li>
					<label for="homePhoneInput">Home phone number</label>
					<input type="tel" name="clientInformationForm.homePhoneNumber" id="clientInformationForm.homePhoneNumber" value="${salesRegisterForm.clientInformationForm.homePhoneNumber}"  pattern="\+?[0-9]{6,20}">
				</li>
				<li>
					<label for="mobilePhoneInput">Mobile phone number</label>
					<input type="tel" name="clientInformationForm.mobilePhoneNumber" id="clientInformationForm.mobilePhoneNumber" value="${salesRegisterForm.clientInformationForm.mobilePhoneNumber}" pattern="\+?[0-9]{6,20}">
				</li>
				
			</ul>
		</div>
	</div>

	<ul class="actions">
		<li><button type="submit" name="event" value="cancel" class="secondary openLightbox" onclick="submitCancelButton()" formnovalidate>Cancel application</button></li>
		<li><button type="submit" name="event" value="continue" class="primary">Save &amp; continue &gt;</button></li>
	</ul>
	</form:form>
</div>
<script>

	function submitCancelButton() {
		document.getElementById('saleReg1Form').action = "authenticate.htm";
		document.getElementById('salesReg2Form').submit();
	}

</script>		<div id="extraInfo">
			<!--Extra info blocks-->
		</div>

		<div id="footer">
			<ul>
				<li><a title="This link opens in a new window" href="http://www.santander.co.uk/uk/online-mobile-banking-commitment" target="_blank">Online Banking Guarantee</a></li>
				<li><a title="This link opens in a new window" href="http://www.santander.co.uk/uk/accessibility" target="_blank">Site Help &amp; Accessibility</a></li>
				<li><a title="This link opens in a new window" href="http://www.santander.co.uk/uk/help-support/security-centre/data-protection" target="_blank">Security &amp; Privacy</a></li>
				<li><a title="This link opens in a new window" href="http://www.santander.co.uk/uk/help-support/online-banking-terms-conditions" target="_blank">Terms &amp; Conditions</a></li>
				<li><a title="This link opens in a new window" href="http://www.santander.co.uk/uk/website-legal" target="_blank">Legal</a></li>
			</ul>
		</div>
	</div>
</div>
</body>
</html>