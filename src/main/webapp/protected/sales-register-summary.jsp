
<!doctype html>
<html lang="en-GB">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="user-scalable=yes, width=device-width, initial-scale=1">
<title>Application Requirements | BestNest Real Estate Services</title>
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

	function submitBackButton() {
		document.getElementById('salesRegSummaryForm').action = "saveCommission.htm";
		document.getElementById('salesRegSummaryForm').submit();
	}
	
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
				<a href="index.php">Santander - Online Banking</a>	
			</div>
			<div id="loginfo">
				<span class="username">Katie Walker</span>
				<span class="successful">Last successful log on: <strong>21/11/2013 13:24</strong></span>
			   	<span class="unsuccessful">Last unsuccessful log on: <strong>21/11/2013 13:24</strong></span>			   	
			</div>
			<div id="logoff">
				<a href="#">Log off</a>
			</div>
		</div>
	</header>
	<div id="main" class="rightColumn">	
		
<div id="content" class="applicationRequirements">

	<form class="validator" method="post" id="salesRegSummaryForm"
		data-req-msg="Required default" data-format-msg="Format default">
		
<ul class="actions">
	<li><button type="submit" name="event" value="back" class="secondary" formnovalidate>Back to My Accounts</button></li>
	</ul>		<h1>Credit Card application</h1>
		<div class="form">
			<h2>Applying for your credit card</h2>
			<div class="formbody idented">
				<ul>
					<li>
						<ul>
							<li class="saveTime"><strong>Shorter application</strong> for existing customers</li>
							<li class="success">Get a <strong>quick decision</strong> in minutes</li>
							<li class="secure">Your application is <strong>safe and secure</strong></li>
						</ul>
					</li>
					<li>
						<h3>What you'll need:</h3>
						<ul class="simple">
							<li>address history for the last three years</li>
							<li>your income details and monthly outgoings</li>
							<li>please have your registered mobile phone to hand in case you make changes</li>
						</ul>
					</li>
					<li>
						<h3>To be eligible, you:</h3>
						<ul class="simple">
							<li>are aged 18 or over</li>
							<li>have no county court judgements or bankruptcy history</li>
							<li>have an income of at least £7,500 a year</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		
		<ul class="actions">
			<li><button type="submit" name="event" value="back" class="secondary" onclick="submitBackButton()" formnovalidate>&lt; Back</button></li>
		</ul>
		
	</form>
</div>		<div id="extraInfo">
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