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

<script src="http://resources.bestnest.in/js/isban/behaviour.js"></script>
<script src="http://resources.bestnest.in/js/isban/validator.js"></script>

<!--[if lte IE 7]>
	<script src="Scripts/ie7.js"></script>
<![endif]-->

<!-- BestNest JS Start -->
<script  type="text/javascript">

$(document).ready(
		
		function() {				
			$.ajax({ 
			    url: "/rest/homePageData", 
			    type: 'GET', 
			    dataType: 'json', 
			    contentType: 'application/json',
			    mimeType: 'application/json',
			    success: function(data) {
			    	var companyId = '${salesRegisterForm.companyId}'; 
				    
				    var companyFormList = data.companyFormList;
				   					 
					var htmlDeveloper = '<option value="0">Developer</option>';  
					for ( var i = 0; i < companyFormList.length; i++) {
						if(companyId ==  companyFormList[i].companyId) {
							htmlDeveloper += '<option value="' + companyFormList[i].companyId + '" selected>'
							+ companyFormList[i].companyName + '</option>';
						} else {
							htmlDeveloper += '<option value="' + companyFormList[i].companyId + '">'
							+ companyFormList[i].companyName + '</option>';
						}
						
					}
					htmlDeveloper += '</option>';
					$('#company').html(htmlDeveloper);
										
					if (companyId != ''){
						populateProjects(companyId, false);
						populateProjectDetails('${salesRegisterForm.projectId}', false);
						populatePaymentPlan('${salesRegisterForm.projectDetailsForm.projectDetailsId}', false);
						
						var projectDetailsId = '${salesRegisterForm.projectDetailsForm.projectDetailsId}';
						var paymentPlan = '${salesRegisterForm.paymentPlan}';
					    calculatedFields(paymentPlan, projectDetailsId);
					}
					

						
			    },
			    error:function(data,status,er) { 
			        alert("home page, error: "+data+" status: "+status+" er:"+er);
			    }
			});
		});
		

$(function() {
	
	$("#company").change(function() {
        var companyId = $(this).val();
        populateProjects(companyId, true);
        
        $('#projectDetailsId').empty();
        $('#paymentPlan').empty();

        var htmlDeveloper = '<option value="0">Select Size</option>';
        $('#projectDetailsId').html(htmlDeveloper);
        
        var htmlDeveloper = '<option value="0">Select Payment Plan</option>';
        $('#paymentPlan').html(htmlDeveloper);
	});
});

$(function() {
	
	$("#project").change(function() {
        var projectId = $(this).val();
        
        populateProjectDetails(projectId, true);

        $('#paymentPlan').empty();
        var htmlDeveloper = '<option value="0">Select Payment Plan</option>';
        $('#paymentPlan').html(htmlDeveloper);
        
	});
});

$(function() {
	$("#projectDetailsId").change(function() {
	   var projectDetailsId = $(this).val();
	   populatePaymentPlan(projectDetailsId, true);
	});
});


$(function() {
	$("#paymentPlan").change(function() {
       var paymentPlan = $(this).val();
	   var projectDetailsId = $( "#projectDetailsId" ).val();
       calculatedFields(paymentPlan, projectDetailsId);
	});
});

function populateProjects(companyId, clear) {

	$.ajax({
	    type: "GET",
	    url: "/rest/projectsOfBuilder",
		data: { companyId: companyId },
		dataType: "json"
	}).done(function(reply) {
	    // Clear options
		$("#project").find("option").remove();
		// Clear options
		clearCalculatedFields(clear);
		
		var projectId = '${salesRegisterForm.projectId}';
		var htmlDeveloper = '<option value="0">Select Project</option>';  
		for ( var i = 0; i < reply.length; i++) {
			if(projectId ==  reply[i].projectId) {
				htmlDeveloper += '<option value="' + reply[i].projectId + '"selected>'
				+ reply[i].projectName + '</option>';
			} else {
				htmlDeveloper += '<option value="' + reply[i].projectId + '">'
				+ reply[i].projectName + '</option>';
			}
			
		}
		htmlDeveloper += '</option>';
		$('#project').html(htmlDeveloper);
		
	});
}


function populateProjectDetails(projectId, clear) {
	
	$.ajax({
	    type: "GET",
	    url: "/rest/projectDetailsOfProject",
		data: { projectId: projectId },
		dataType: "json"
	}).done(function(reply) {
		
	    // Clear options
		clearCalculatedFields(clear);
		
		// Loop through JSON response
		var projectDetailsId = '${salesRegisterForm.projectDetailsForm.projectDetailsId}';
		var htmlDeveloper = '<option value="0">Select Size</option>';
		  
		for ( var i = 0; i < reply.length; i++) {
			if(projectDetailsId ==  reply[i].projectDetailsId) {
				htmlDeveloper += '<option value="' + reply[i].projectDetailsId + '" selected>' + reply[i].size + '</option>';
			} else {
				htmlDeveloper += '<option value="' + reply[i].projectDetailsId + '">'
				+ reply[i].size + '</option>';
			}
		}
		$('#projectDetailsId').html(htmlDeveloper);

		var projectDetailSize =  $("#projectDetailsId" ).text().replace("Select Size","");
		var varCompRatePerSqFtAfterDisc =  $("#compRatePerSqFtAfterDisc").val();
		var varCompBaicPriceAftDisc = projectDetailSize * varCompRatePerSqFtAfterDisc;
		$("#companyBaicPriceAftDiscount").val(varCompBaicPriceAftDisc);
	});
}

function populatePaymentPlan(projectDetailsId, clear) {
	 $.ajax({
		    type: "GET",
		    url: "/rest/projectPlansOfAProjectDetail",
			data: { projectDetailsId: projectDetailsId },
			dataType: "json"
		}).done(function(reply) {
			$("#paymentPlan").find("option").remove();
			clearCalculatedFields(clear);
			
			var paymentPlan = '${salesRegisterForm.paymentPlan}';
			var htmlDeveloper = '<option value="0">Select Payment Plan</option>';  
			for ( var i = 0; i < reply.length; i++) {
				if(paymentPlan ==  reply[i]) {
					htmlDeveloper += '<option value="' + reply[i] + '" selected>' + reply[i] + '</option>';
				} else {
					htmlDeveloper += '<option value="' + reply[i] + '">' + reply[i] + '</option>';
				}
			}
			
			$('#paymentPlan').html(htmlDeveloper);
		   
		});
}


function calculatedFields(paymentPlan, projectDetailsId) {
	
	$.ajax({
	    type: "GET",
	    url: "/rest/projectPriceOfAProjectDetail",
	    async:   false,
		data: { paymentPlan: paymentPlan,  projectDetailsId: projectDetailsId},
		dataType: "json"
	}).done(function(reply) {
	   $("#compRatePerSqFt").val(reply.companyRate);
	   $("#companyDiscount").val(reply.companyDiscount);
	   $("#companyOtherBenifit").val(reply.companyOtherBenifit);
	   
	   var varCompRatePerSqFtAfterDisc = reply.companyRate - reply.companyDiscount;
	   $("#compRatePerSqFtAfterDisc").val(varCompRatePerSqFtAfterDisc);
	   
	   var projectDetailSize =  $("#projectDetailsId" ).text().replace("Select Size","");
	   var varCompBaicPriceAftDisc = projectDetailSize * varCompRatePerSqFtAfterDisc;
	   $("#companyBaicPriceAftDiscount").val(varCompBaicPriceAftDisc);
	  
	});

}

function clearCalculatedFields(clear){
	
	if(clear == true) {
		$("#compRatePerSqFt").val("");
		$("#companyDiscount").val("");
		$("#companyOtherBenifit").val("");
		$("#compRatePerSqFtAfterDisc").val("");
		$("#companyBaicPriceAftDiscount").val("");
	}
}

function formatNumber (num) {
    return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,")
}


</script>

<!-- BestNest JS End -->
<!--Google Analytics Code -->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-59446819-1', 'auto');
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
			
	<form:form class="validator" method="post" action="saveCompanyQuote.htm"  id="salesReg2Form" modelAttribute="salesRegisterForm"
		data-req-msg="Required default" data-format-msg="Format default">

<ul class="actions">
	<li><button type="submit" name="event" value="back" class="secondary" formnovalidate>Back to My Accounts</button></li>
	</ul>	<input type="hidden" name="step" value="FinancialDetails">
	<h1>Sales Register</h1>
	<ol class="breadcrumbs">
		<li>Client Information</li>
		<li class="current">Company Quote</li>
		<li>Bestnest Quote</li>
		<li>Commission</li>
		<li>Tax & TDS</li>
		<li>Summary</li>
	</ol>

	<div class="form">
		<h2>Company Quote</h2>
		<div class="formbody">
			<ul class="fields">
				<li>
					<fieldset class="inputgroup">
						<legend>
							<label class="required" for="incomeInput">Builder</label>
						</legend>
						<select id="company" name="companyId" ></select>
					</fieldset>
				</li>
				<li>
					<fieldset class="inputgroup">
						<legend>
							<label class="required" for="incomeInput">Project</label>
						</legend>
						<select id="project" name="projectId"></select>
					</fieldset>
				</li>

				<li>
					<fieldset class="inputgroup">
						<legend>
							<label class="required" for="incomeInput">Size</label>
						</legend>
						<select id="projectDetailsId" name="projectDetailsForm.projectDetailsId"></select>					
					</fieldset>
				</li>
				
				<li>
					<fieldset class="inputgroup">
						<legend>
							<label class="required" for="incomeInput">Payment Plan</label>
						</legend>
						<select id="paymentPlan" name="paymentPlan"></select>
					</fieldset>
				</li>
				
				<li class="employerField">
					<label class="required" for="employerNameInput">Unit Type/ Unit No./ Tower</label>
					<input type="text" name="unitTypeNoTower" id="unitTypeNoTower" required value="${salesRegisterForm.unitTypeNoTower}">
      			</li>
				
				<li>
					<fieldset class="inputgroup">
						<legend>
							<label class="required" for="mMortgageInput">Company Rate/Sq. Ft.</label>
						</legend>
						<span class="currency">
							<span>Rs.</span> 
								<input type="number" name="compRatePerSqFt" id="compRatePerSqFt" class="integer" title="Integer" required min="00" readonly>
									<span>.</span>
								<input type="number" name="compRatePerSqFtDecm" id="compRatePerSqFtDecm" class="fractional" title="Fractional" min="00" max="99" maxlength="2" readonly>
						</span>
						</fieldset>
				</li>
				
				
				<li>
					<fieldset class="inputgroup">
						<legend>
							<label class="required" for="mMortgageInput">Company Discount</label>
						</legend>
						<span class="currency">
							<span>Rs.</span> 
								<input type="number" name="companyDiscount" id="companyDiscount" class="integer" title="Integer" required min="00" readonly>
									<span>.</span>
								<input type="number" name="companyDiscountDecm" id="companyDiscountDecm" class="fractional" title="Fractional" min="00" max="99" maxlength="2" readonly>
						</span>	
						</fieldset>
				</li>
				
				
				<li>
					<fieldset class="inputgroup">
						<legend>
							<label class="required" for="mMortgageInput">Company Other Benifit</label>
						</legend>
						<span class="currency">
							<span>Rs.</span> 
								<input type="number" name="companyOtherBenifit" id="companyOtherBenifit" class="integer" title="Integer" required min="00" readonly>
									<span>.</span>
								<input type="number" name="companyOtherBenifitDecm" id="companyOtherBenifitDecm" class="fractional" title="Fractional" min="00" max="99" maxlength="2" readonly>
						</span>
						</fieldset>
				</li>
			
				

				<li>
					<fieldset class="inputgroup">
						<legend>
							<label class="required" for="mMortgageInput">Company Rate/Sq Ft After Discount</label>
						</legend>
						<span class="currency">
							<span>Rs.</span> 
								<input type="number" name="compRatePerSqFtAfterDisc" id="compRatePerSqFtAfterDisc" class="integer" title="Integer" required min="00" readonly>
									<span>.</span>
								<input type="number" name="compRatePerSqFtAfterDiscDecm" id="compRatePerSqFtAfterDiscDecm" class="fractional" title="Fractional" min="00" max="99" maxlength="2" readonly>
						</span>
						</fieldset>
				</li>

				<li>
					<fieldset class="inputgroup">
						<legend>
							<label class="required" for="mMortgageInput">Company Basic Price After Discount</label>
						</legend>
						<span class="currency">
							<span>Rs.</span> 
								<input type="number" name="companyBaicPriceAftDiscount" id="companyBaicPriceAftDiscount" class="integer" title="Integer"  required min="00" readonly value="${salesRegisterForm.companyBaicPriceAftDiscount}">
									<span>.</span>
								<input type="number" name="compBaicPriceAftDiscDecm" id="compBaicPriceAftDiscDecm" class="fractional" title="Fractional" min="00" max="99" maxlength="2" readonly>
						</span>
						</fieldset>
				</li>


			</ul>
		</div>
	</div>


	<ul class="actions">
		<li><button type="submit" name="event" value="back" class="secondary" onclick="submitBackButton()"  formnovalidate>&lt; Back</button></li>
		<li><button type="submit" name="event" value="cancel" class="secondary openLightbox" onclick="submitCancelButton()" formnovalidate>Cancel application</button></li>
		<li><button type="submit" name="event" value="continue" class="primary">Save &amp; continue &gt;</button></li>
	</ul>
	</form:form>
</div>
<script>

	function submitCancelButton() {
		document.getElementById('salesReg2Form').action = "authenticate.htm";
		document.getElementById('salesReg2Form').submit();
	}

	function submitBackButton() {
		document.getElementById('salesReg2Form').action = "getSalesRegister.htm";
		document.getElementById('salesReg2Form').submit();
	}
	
	$(function() {
		$("#employmentStatusInput")
				.on(
						"change",
						function() {
							var val = $(this).val(), $empFields = $(".employerField"), $selfFields = $(".selfEmployedField");

							switch (val) {
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
		$("input[type=number],input[type=text]").click(function() {
			this.select();
		});
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