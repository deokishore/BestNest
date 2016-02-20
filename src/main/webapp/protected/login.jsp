<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!doctype html>
<html lang="en-GB">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="user-scalable=yes, width=device-width, initial-scale=1">
<title>Login To BestNest Real Estate Services </title>
<meta name="keywords" content="Login to BestNest, BestNest Admin Login,Login as a admin to BestNest" />
<meta name="description" content="you can see property rate and access admin pannel if you will first Login from here" />
<link rel="shortcut icon" href="http://images.bestnest.in/favicon.ico" />
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

	function submitForAdmin() {
		document.getElementById('loginForm').action = "admin.htm";
		document.getElementById('loginForm').submit();
	}
	
	function submitForHomePage() {
		document.getElementById('loginForm').action = "/";
		document.getElementById('loginForm').submit();
	}
	
</script>
	
</script>
<noscript>
	<style>
.nsHide {
	display: none !important;
}
</style>
</noscript>
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
					<span class="username">Deo Kishore</span> <span class="successful">Last
						successful log on: <strong>21/11/2013 13:24</strong>
					</span> <span class="unsuccessful">Last unsuccessful log on: <strong>21/11/2013
							13:24</strong></span>
				</div>
				<div id="logoff">
					<a href="javascript:submitForAdmin()">Log in</a>
				</div>
			</div>
		</header>
		<div id="main" class="rightColumn">
			<div id="content">
				<form:form id="loginForm" method="post" action="authenticate.htm" class="validator"
					data-req-msg="Required default" modelAttribute="loginForm">

					<ul class="actions trailing">
						<li class="leading">
							<button type="submit" name="event" value="back" class="secondary" onclick="submitForHomePage()" formnovalidate>
								BestNest Home Page</button>
						</li>
					</ul>
					
					<h1>Login To BestNest</h1>

					<div class="informationMessage">
						<p>
							This login is only valid to <strong>BestNest employee</strong>
						</p>
					</div>
					<div class="form">
						<h2>Login</h2>
						<div class="formbody">
							<ul class="fields">
								<li><span></span>
									<div class="OTPStep">
										<ul class="fields">
											<li>
												<label for="phoneNumberInput">User Id (Your	Bestnest email )</label> 
												<input type="tel" name="userId" id="userId">
											</li>
											
											<li>
												<label for="phoneConfirmNumberInput">Password</label>
												<input type="password" name="password" id="password"></li>
										</ul>
									</div></li>
							</ul>
						</div>
					</div>
					<ul class="actions">
						<li><button type="submit" name="event" value="cancel"
								class="secondary openLightbox" formnovalidate>Cancel</button></li>
						<li><button type="submit" name="event" value="continue"
								class="primary">Login</button></li>
					</ul>
				</form:form>
			</div>
			<div id="extraInfo">
				<!--Extra info blocks-->
			</div>

			<div id="footer">
				<ul>
					<li><a title="This link opens in a new window" href="#" target="_blank">Site Help &amp; Accessibility</a></li>
					<li><a title="This link opens in a new window" href="#" target="_blank">Security &amp; Privacy</a></li>
					<li><a title="This link opens in a new window" href="#" target="_blank">Terms &amp; Conditions</a></li>
					<li><a title="This link opens in a new window" href="#" target="_blank">Legal</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>
