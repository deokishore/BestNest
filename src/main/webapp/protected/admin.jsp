
<!doctype html>
<html lang="en-GB">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="user-scalable=yes, width=device-width, initial-scale=1">
<title>Admin Use Only | Application Requirements | BestNest Real Estate </title>
<meta name="description" content="bestnest Provide admin pannel for Lead management, Client management, Expesnses, and for sales register Updation " />
<meta name="keywords" content="BestNest Provide Services of Handle your Client Online And track it on daily basis Sales Register,Expenses, Lead Management, Client Management, User Management by BestNest, ">
<link rel="shortcut icon" href="http://images.bestnest.in/ico/favicon.ico" />
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
	$(function() {
		$("form").attr("novalidate", "novalidate");
		$("button.openLightbox")
				.each(
						function() {
							if ($(this).val() == "cancel") {
								$(this)
										.attr("formaction",
												"SSSCC.php?action=PFSSSCCCtrl&cmd=start&step=CancelApplication");
							}
						});
		$("form.validator").validate();
	});

	addCSSRule(0, ".hidden", "display: none;");

	function submitForm() {
		document.getElementById('adminForm').action = "getSalesRegister.htm";
        document.getElementById('adminForm').submit();
	}

	function emailPage() {
		document.getElementById('adminForm').action = "email.htm";
        document.getElementById('adminForm').submit();
	}

	function submitForAdmin() {
		document.getElementById('submitForAdmin').action = "admin.htm";
		document.getElementById('submitForAdmin').submit();
	}
	
</script>
<noscript>
	<style>
.nsHide {
	display: none !important;
}
</style>
</noscript>
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
</head>
<body>
	<div id="wrapper">
		<a href="#main" class="auralOnly"
			title="click here to skip to main content">skip to main content</a>


		<header class="secSHeader" role="banner">
			<div id="headerbanner">
				<div id="bankname">
					<a href="homePage.htm">Santander - Online Banking</a>
				</div>
				<div id="loginfo">
					<span class="username">Katie Walker</span> <span class="successful">Last
						successful log on: <strong>21/11/2013 13:24</strong>
					</span> <span class="unsuccessful">Last unsuccessful log on: <strong>21/11/2013
							13:24</strong></span>
				</div>
				
					<div id="logoff">
						<form id="submitForAdmin" method="post">
							<a href="javascript:submitForAdmin()">Log off</a>
						</form>
					</div>
				
			</div>
		</header>
		<div id="main" class="rightColumn">

			<div id="content" class="applicationRequirements">
			
				<form method="post"  id="adminForm">
					
					<h1>Admin Tool</h1>
					<div class="form">
						<h2>Admin Tool</h2>
						<div class="formbody idented">
							<ul>
								<li>
									<ul>
										<li class="success">
											<p>
												<sup></sup><a href="javascript:submitForm()">Sales Register</a>
											</p>
										</li>
										<li class="success">
											<p>
												<sup></sup><a href="#">Expenses</strong></a>
											</p>
										</li>
										<li class="success">
											<p>
												<sup></sup><a href="#">Lead Management </strong></a>
											</p>
										</li>
										<li class="success">
											<p>
												<sup></sup><a href="#">Client Management </strong></a>
											</p>
										</li>
										<li class="success">
											<p>
												<sup></sup><a href="#">User Management </strong></a>
											</p>
										</li>
										<li class="success">
											<p>
												<sup></sup><a href="javascript:emailPage()">Email Management </strong></a>
											</p>
										</li>
									</ul>
								</li>
							</ul>
						</div>
					</div>

				</form>
			</div>
			<div id="extraInfo">
				<!--Extra info blocks-->
			</div>

			<div id="footer">
				<ul>
					<li><a title="This link opens in a new window" href="#" target="_blank"> </a></li>
					<li><a title="This link opens in a new window" href="#" target="_blank"></a></li>
					<li><a title="This link opens in a new window" href="#" target="_blank"></a></li>
					<li><a title="This link opens in a new window" href="#" target="_blank"></a></li>
					<li><a title="This link opens in a new window" href="#" target="_blank"></a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>

