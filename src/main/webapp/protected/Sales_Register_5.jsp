
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
<script src="Scripts/lib/jquery-1.11.0.min.js"></script>
<script src="Scripts/lib/jquery-ui-1.10.4.custom.min.js"></script>
<script src="Scripts/behaviour.js"></script>
<script src="Scripts/validator.js"></script>
<!--[if lte IE 7]>
	<script src="Scripts/ie7.js"></script>
<![endif]-->
<script>
	$(function(){
		$("form").attr("novalidate","novalidate");
		$("button.openLightbox").each(function(){
			if($(this).val()=="cancel"){
				$(this).attr("formaction","SSSCC.php?action=PFSSSCCCtrl&cmd=start&step=CancelApplication");
			}
		});
		$("form.validator").validate();
	});

	addCSSRule(0, ".hidden", "display: none;");
</script>
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
	
	<form class="validator" method="post" action="saveTaxAndTDS.htm"  id="salesReg5Form"
		data-req-msg="Required default" data-format-msg="Format default">

<ul class="actions">
	<li><button type="submit" name="event" value="back" class="secondary" formnovalidate>Back to My Accounts</button></li>
	</ul>	<input type="hidden" name="step" value="FinancialDetails">
	<h1>Sales Register</h1>
	<ol class="breadcrumbs">
		<li>Client Information</li>
		<li>Company Quote</li>
		<li>Bestnest Quote</li>
		<li>Commission</li>
		<li>Tax & TDS</li>
		<li class="current">Summary</li>
	</ol>


	<div class="form">
		<h2>Tax & TDS</h2>
		<div class="formbody">
			<ul class="fields">
				<li>
				   <fieldset class="inputgroup">
					<legend>
						<label class="required" for="mMortgageInput">Service Tax on Net Commission (12.36 %)</label>
					</legend>
					<span class="currency">
							<span>Rs.</span> 
								<input type="number" name="transfBalAmount" id="transfBalAmountImput" class="integer" title="Integer" min="00" value="">
									<span>.</span>
								<input type="number" name="transfBalAmountFractional" id="transfBalAmountImputFractional" class="fractional" title="Fractional" min="00" max="99" maxlength="2" value="00">
					</span>	
				   </fieldset>
				</li>


				<li>
				   <fieldset class="inputgroup">
					<legend>
						<label class="required" for="mMortgageInput">TDS On Service Tax (10 %)</label>
					</legend>
					<span class="currency">
							<span>Rs.</span> 
								<input type="number" name="transfBalAmount" id="transfBalAmountImput" class="integer" title="Integer" min="00" value="">
									<span>.</span>
								<input type="number" name="transfBalAmountFractional" id="transfBalAmountImputFractional" class="fractional" title="Fractional" min="00" max="99" maxlength="2" value="00">
					</span>	
				   </fieldset>
				</li>

				<li>
				   <fieldset class="inputgroup">
					<legend>
						<label class="required" for="mMortgageInput">TDS On Commission (10%)</label>
					</legend>
					<span class="currency">
							<span>Rs.</span> 
								<input type="number" name="transfBalAmount" id="transfBalAmountImput" class="integer" title="Integer" min="00" value="">
									<span>.</span>
								<input type="number" name="transfBalAmountFractional" id="transfBalAmountImputFractional" class="fractional" title="Fractional" min="00" max="99" maxlength="2" value="00">
					</span>	
				   </fieldset>
				</li>

				<li>
				   <fieldset class="inputgroup">
					<legend>
						<label class="required" for="mMortgageInput">Net Commission After TDS</label>
					</legend>
					<span class="currency">
							<span>Rs.</span> 
								<input type="number" name="transfBalAmount" id="transfBalAmountImput" class="integer" title="Integer" min="00" value="">
									<span>.</span>
								<input type="number" name="transfBalAmountFractional" id="transfBalAmountImputFractional" class="fractional" title="Fractional" min="00" max="99" maxlength="2" value="00">
					</span>	
				   </fieldset>
				</li>

				<li>
				   <fieldset class="inputgroup">
					<legend>
						<label class="required" for="mMortgageInput">Payment to be Received from the Company</label>
					</legend>
					<span class="currency">
							<span>Rs.</span> 
								<input type="number" name="transfBalAmount" id="transfBalAmountImput" class="integer" title="Integer" min="00" value="">
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
		<li><button type="submit" name="event" value="cancel" class="secondary openLightbox" formnovalidate>Cancel application</button></li>
		<li><button type="submit" name="event" value="continue" class="primary" onclick="location = 'saveTaxAndTDS.htm'">Save &amp; continue &gt;</button></li>
	</ul>
	</form>
</div>
<script>

function submitCancelButton() {
	document.getElementById('salesReg5Form').action = "authenticate.htm";
	document.getElementById('salesReg5Form').submit();
}

function submitBackButton() {
	document.getElementById('salesReg5Form').action = "saveBestnestQuote.htm";
	document.getElementById('salesReg5Form').submit();
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