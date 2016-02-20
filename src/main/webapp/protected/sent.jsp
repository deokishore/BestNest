<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>


<!doctype html>
<html lang="en-GB">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="user-scalable=yes, width=device-width, initial-scale=1">
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

function submitForAdmin() {
	document.getElementById('submitForAdmin').action = "admin.htm";
	document.getElementById('submitForAdmin').submit();
}
</script>

<!-- BestNest JS Start -->
<script type="text/javascript">
	
</script>
<!-- BestNest JS End -->

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
					<form id="submitForAdmin" method="post">
							<a href="javascript:submitForAdmin()">Log off</a>
					</form>
				</div>
			</div>
		</header>
		<div id="main" class="rightColumn">
			<div id="extraInfo">
				<h2>Success!</h2>
				<p>The e-mail has been sent</p>
				<p>
					<a href="/email.htm">Back to email page</a>
				</p>
			</div>

			<div id="footer">
				<ul>

				</ul>
			</div>
		</div>
	</div>
</body>
</html>