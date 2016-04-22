<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!doctype html>
<html lang="en-GB">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="user-scalable=yes, width=device-width, initial-scale=1">
<title>Master Register | BestNest Real Estate Services</title>

<link rel="stylesheet" href="http://resources.bestnest.in/css/isban/secureSiteSales.css">

<script src="http://resources.bestnest.in/js/isban/lib/jquery-1.11.0.min.js"></script>
<script src="http://resources.bestnest.in/js/isban/lib/jquery-ui-1.10.4.custom.min.js"></script>


<script  type="text/javascript">

$(document).ready(
		function() {				
			$.ajax({ 
			    url: "/rest/userProfileList", 
			    type: 'GET', 
			    dataType: 'json', 
			    contentType: 'application/json',
			    mimeType: 'application/json',
			    success: function(data) {
				    
			    	var userProfileId = '${salesRegisterForm.userProfileByTcReRpIdForm.userProfileId}'; 
			    	var htmlUserProfile = '<option value="0">Select User</option>';  
					for ( var i = 0; i < data.length; i++) {
						
						if(userProfileId ==  data[i].userProfileId) {
							htmlUserProfile += '<option value="' + data[i].userProfileId + '" selected>'
							+ data[i].firstName + '</option>';
						} else {
							htmlUserProfile += '<option value="' + data[i].userProfileId + '">'
							+ data[i].firstName + ' ' + data[i].lastName +'</option>';
						}
						
					}
					htmlUserProfile += '</option>';	
						
					$('#userProfileByTcReRpIdForm').html(htmlUserProfile);
					$('#userProfileByAssociatesRmIdForm').html(htmlUserProfile);
					$('#userProfileByMentorCreditNoteIdForm').html(htmlUserProfile);
						
			    },
			    error:function(data,status,er) { 
			        alert("Sales Register 3, error: "+data+" status: "+status+" er:"+er);
			    }
			});
		});
		

$(document).ready(function(){
	$('#actualRatePerSqFt').on('input', function() {
		var projectSize = '${salesRegisterForm.projectDetailsForm.size}';
		var actRatPerSqFt = $('#actualRatePerSqFt').val();
		$('#actualBasicPrice').val(projectSize * actRatPerSqFt);
	});
});
	


</script>

<!--Google Analytics Code -->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-59446819-2', 'auto');
  ga('send', 'pageview');

</script>
<!-- End Google Analytics Code -->
<noscript>
	<style>
		.nsHide{display: none!important;}
	</style>
</noscript>
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
	
	<form:form class="validator" method="post" action="saveBestnestQuote.htm"  id="salesReg3Form" modelAttribute="salesRegisterForm"
		data-req-msg="Required default" data-format-msg="Format default">
			
	

<ul class="actions">
	<li><button type="submit" name="event" value="back" class="secondary" formnovalidate>Back to My Accounts</button></li>
	</ul>	<input type="hidden" name="step" value="FinancialDetails">
	<h1>Sales Register</h1>
	<ol class="breadcrumbs">
		<li>Client Information</li>
		<li>Company Quote</li>
		<li class="current">Bestnest Quote</li>
		<li>Commission</li>
		<li>Tax & TDS</li>
		<li>Summary</li>
	</ol>



	<div class="form">
		<h2>Bestnest Quote</h2>
		<div class="formbody">
			<ul class="fields">
				
				<li>
						<fieldset class="inputgroup">
						<legend>
							<label class="required" for="mMortgageInput">Discount Given From Other Benefit</label>
						</legend>

						<span class="currency">
							<span>Rs.</span> 
								<input type="number" name="discGivenFrmOthBenifit" id="discGivenFrmOthBenifit" class="integer" title="Integer" min="00" required value="${salesRegisterForm.actualRatePerSqFt}">
									<span>.</span>
								<input type="number" name="discGivenFrmOthBenifitDec" id="discGivenFrmOthBenifitDec" class="fractional" title="Fractional" min="00" max="99" maxlength="2" value="">
						</span>
							
						</fieldset>
				</li>					
				
				<li>
						<fieldset class="inputgroup">
						<legend>
							<label class="required" for="mMortgageInput">Login Rate/Sq Ft</label>
						</legend>

						<span class="currency">
							<span>Rs.</span> 
								<input type="number" name="actualRatePerSqFt" id="actualRatePerSqFt" class="integer" title="Integer" min="00" required value="${salesRegisterForm.actualRatePerSqFt}">
									<span>.</span>
								<input type="number" name="transfBalAmountFractional" id="transfBalAmountImputFractional" class="fractional" title="Fractional" min="00" max="99" maxlength="2" value="">
						</span>
							
						</fieldset>
				</li>

				<li>
					<fieldset class="inputgroup">
						<legend>
							<label class="required" for="mMortgageInput">Login  Basic Price</label>
						</legend>

						<span class="currency">
							<span>Rs.</span> 
								<input type="number" name="actualBasicPrice" id="actualBasicPrice" class="integer" title="Integer" min="00" required value="${salesRegisterForm.actualBasicPrice}" readonly>
									<span>.</span>
								<input type="number" name="actualBasicPriceDecm" id="actualBasicPriceDecm" class="fractional" title="Fractional" min="00" max="99" maxlength="2" value="">
						</span>	
						</fieldset>
				</li>
				
				<li>
					<fieldset class="inputgroup">
						<legend>
							<label class="required" for="incomeInput">Through Channel Partner</label>
						</legend>
						<select name="channelPartner" id="channelPartner" title="Taxes">
							<option value="0" selected>Direct</option>
							<option value="1">Sang Real Estate Consodium</option>
						</select>
					</fieldset>
				</li>
				<li class="employerField">
					<fieldset class="inputgroup">
					<legend>
						<label class="required" for="employerNameInput">TC/RE/RP</label>
					</legend>

					<select id="userProfileByTcReRpIdForm" name="userProfileByTcReRpIdForm.userProfileId"></select>
					<span class="currency">
							<span>Rs.</span> 
								<input type="number" name="tcReRpFee" id="tcReRpFee" class="integer" title="Integer" min="00" value="${salesRegisterForm.tcReRpFee}">
									<span>.</span>
								<input type="number" name="transfBalAmountFractional" id="transfBalAmountImputFractional" class="fractional" title="Fractional" min="00" max="99" maxlength="2" value="00">
					</span>	
					</fieldset>

      			</li>
				<li class="employerField">
					<fieldset class="inputgroup">
					<legend>
						<label class="required" for="employerNameInput">Associates/RM</label>
					</legend>

					<select id="userProfileByAssociatesRmIdForm" name="userProfileByAssociatesRmIdForm.userProfileId"></select>
					<span class="currency">
							<span>Rs.</span> 
								<input type="number" name="associatesRmFee" id="associatesRmFee" class="integer" title="Integer" min="00" value="${salesRegisterForm.associatesRmFee}">
									<span>.</span>
								<input type="number" name="transfBalAmountFractional" id="transfBalAmountImputFractional" class="fractional" title="Fractional" min="00" max="99" maxlength="2" value="00">
					</span>	
					</fieldset>
				</li>
				<li class="employerField">
					<fieldset class="inputgroup">
					<legend>
						<label class="required" for="employerNameInput">Mentor/ Credit Note</label>
					</legend>
					<select id="userProfileByMentorCreditNoteIdForm" name="userProfileByMentorCreditNoteIdForm.userProfileId"></select>
					<span class="currency">
							<span>Rs.</span> 
								<input type="number" name="mentorCreditNoteFee" id="mentorCreditNoteFee" class="integer" title="Integer" min="00" value="${salesRegisterForm.mentorCreditNoteFee}">
									<span>.</span>
								<input type="number" name="transfBalAmountFractional" id="transfBalAmountImputFractional" class="fractional" title="Fractional" min="00" max="99" maxlength="2" value="00">
					</span>	
					</fieldset>
				</li>

			</ul>
		</div>
	</div>

		<ul class="actions">
				<li><button type="submit" name="event" value="back" class="secondary" onclick="submitBackButton()" formnovalidate>&lt; Back</button></li>
				<li><button type="submit" name="event" value="cancel" class="secondary openLightbox" onclick="submitCancelButton()" formnovalidate>Cancel application</button></li>
				<li><button type="submit" name="event" value="continue" class="primary">Save &amp; continue &gt;</button></li>
		</ul>
		
	</form:form>
</div>
<script>

function submitCancelButton() {
	document.getElementById('salesReg3Form').action = "authenticate.htm";
	document.getElementById('salesReg3Form').submit();
}

function submitBackButton() {
	document.getElementById('salesReg3Form').action = "saveClientInformation.htm";
	document.getElementById('salesReg3Form').submit();
}

$(function(){
	$("#employmentStatusInput").on("change", function(){
		var val = $(this).val(),
			$empFields = $(".employerField"),
			$selfFields = $(".selfEmployedField");

			switch(val) {
		    case "0":
		    	$empFields.fieldShow();
		    	$selfFields.fieldHide();
		    	break;
		    case "5":
		    case "6":
		    case "7":
		    	$empFields.fieldHide();
		    	$selfFields.fieldShow();
		    	break;
		    default:
		        $empFields.fieldHide();
		    	$selfFields.fieldHide();
		}
	}).triggerHandler("change");
	$("input[type=number],input[type=text]").click(function(){this.select();});
});
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