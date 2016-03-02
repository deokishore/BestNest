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
		
			<div id="content">
					
				<form class="validator" method='post' id="saleReg1Form"
					action="/sendBulkMailWithInlineImage.htm" enctype="multipart/form-data"
					modelAttribute="salesRegisterForm" data-req-msg="Required default"
					data-format-msg="Format default">
					
					<ul class="actions">
						<li>
							<button type="submit" name="event" value="back"
								onclick="submitCancelButton()" class="secondary"
								formnovalidate>Back to Admin List</button>
						</li>
					</ul>
					
					<div class="form">
						<h2>HTML email with bulk email</h2>
						<div class="formbody">
							<ul class="fields">

								<li class="employerField">
									<fieldset>

										<label for="attachRecipientName">From (EmailText):</label> 
										<input type="text" id="fromEmailText" name="fromEmailText"
											placeholder="From Email Text" required="required" /> <br />
										
										<label for="subject">To (Subject):</label> 
										<input type="text" id="subject" name="subject" placeholder="subject"
											required="required" /> <br /> 
											
										<label for="inlineImage">Inlined image (max 10Mb):</label> 
										<input type="file" id="inlineImage"
											name="image" accept="image/*" required="required" /> <br />
									</fieldset>
								</li>
							</ul>
							
							<ul class="actions">
								<li><button type="submit" name="event" value="continue"
										class="primary">Send Email</button></li>
							</ul>	
													
						</div>
					</div>
				</form>
			</div>
			
			<div id="content">
					
				<form:form class="validator" method='post' id="saleReg1Form" action="/sendBulkMailFromExcelWithInlineImage" enctype="multipart/form-data"
					data-req-msg="Required default"
					data-format-msg="Format default">

					<div class="form">
						<h2>HTML email with bulk email from Excel, </h2>
						<div class="formbody">
							<ul class="fields">

								<li class="employerField">
									<fieldset>

										<label for="attachRecipientName">From (EmailText):</label> 
										<input type="text" id="fromEmailText" name="fromEmailText" placeholder="From Email Text" required="required" /> <br/>
										
										<label for="subject">To (Subject):</label> 
										<input type="text" id="subject" name="subject" placeholder="subject" required="required" /> <br/>
											
										<label for="inlineImage">Inlined image (max 10Mb):</label> 
										<input type="file" id="inlineImage" name="image" accept="image/*" required="required" /> <br/>
										
										<label for="inlineImage">Excel Sheet (max 10Mb):</label>
										<input type="file" id="excelFile" name="excelFile" accept="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" required="required"/> <br />
										
									</fieldset>
								</li>
							</ul>
							
							<ul class="actions">
								<li><button type="submit" name="event" class="primary">Send Email</button></li>
							</ul>	
													
						</div>
					</div>
				</form:form>
			</div>
			
			
			<div id="content">
				<form class="validator" method='post' id="saleReg1Form"
					action="/sendMailSimple.htm" enctype="multipart/form-data"
					modelAttribute="salesRegisterForm" data-req-msg="Required default"
					data-format-msg="Format default">

					
					

					<div class="form">
						<h2>HTML email (simple)</h2>
						<div class="formbody">
							<ul class="fields">

								<li class="employerField">
									<fieldset>

										<label for="attachRecipientName">From (EmailText):</label> 
										<input type="text" id="fromEmailText" name="fromEmailText"
											placeholder="From Email Text" required="required" /> <br />

										<label for="inlineRecipientName">To (name):</label> 
										<input type="text" id="inlineRecipientName" name="recipientName"
											placeholder="John Smith" required="required" /> <br />
											 
										<label for="inlineRecipientEmail">To (email):</label> 
										<input type="email" id="inlineRecipientEmail" name="recipientEmail"
											placeholder="johnsmith@example.com" required="required" /> <br />

										<label for="subject">To (Subject):</label> 
										<input type="text" id="subject" name="subject" placeholder="subject"
											required="required" /> <br /> 
										
									</fieldset>
								</li>
							</ul>
							
							<ul class="actions">
								
								<li><button type="submit" name="event" value="continue"
										class="primary">Send Email</button></li>
							</ul>	
													
						</div>
					</div>
				</form>
			</div>
			
			<div id="content">
				<form class="validator" method='post' id="sendMailWithAttachment"
					action="/sendMailWithAttachment.htm" enctype="multipart/form-data"
					data-req-msg="Required default" data-format-msg="Format default">

					<div class="form">
						<h2>HTML email with attachment</h2>
						<div class="formbody">
							<ul class="fields">

								<li class="employerField">
									<fieldset>

										<label for="attachRecipientName">From (EmailText):</label> 
										<input type="text" id="fromEmailText" name="fromEmailText"
											placeholder="From Email Text" required="required" /> <br />

										<label for="inlineRecipientName">To (name):</label> 
										<input type="text" id="inlineRecipientName" name="recipientName"
											placeholder="John Smith" required="required" /> <br />
											 
										<label for="inlineRecipientEmail">To (email):</label> 
										<input type="email" id="inlineRecipientEmail" name="recipientEmail"
											placeholder="johnsmith@example.com" required="required" /> <br />

										<label for="subject">To (Subject):</label> 
										<input type="text" id="subject" name="subject" placeholder="subject"
											required="required" /> <br /> 
											
										<label for="inlineImage">Inlined image (max 10Mb):</label> 
										<input type="file" id="attachAttachment" name="attachment" accept="image/*" required="required" /> <br />
									</fieldset>
								</li>
							</ul>
							
							<ul class="actions">
								<li><button type="submit" name="event" value="continue"
										class="primary">Send Email</button></li>
							</ul>	
													
						</div>
					</div>
				</form>
			</div>
			
			<div id="content">
				<form class="validator" method='post' id="saleReg1Form"
					action="/sendMailWithInlineImage.htm" enctype="multipart/form-data"
					modelAttribute="salesRegisterForm" data-req-msg="Required default"
					data-format-msg="Format default">

					<div class="form">
						<h2>HTML email with inline image</h2>
						<div class="formbody">
							<ul class="fields">

								<li class="employerField">
									<fieldset>

										<label for="attachRecipientName">From (EmailText):</label> 
										<input type="text" id="fromEmailText" name="fromEmailText"
											placeholder="From Email Text" required="required" /> <br />

										<label for="inlineRecipientName">To (name):</label> 
										<input type="text" id="inlineRecipientName" name="recipientName"
											placeholder="John Smith" required="required" /> <br />
											 
										<label for="inlineRecipientEmail">To (email):</label> 
										<input type="email" id="inlineRecipientEmail" name="recipientEmail"
											placeholder="johnsmith@example.com" required="required" /> <br />

										<label for="subject">To (Subject):</label> 
										<input type="text" id="subject" name="subject" placeholder="subject"
											required="required" /> <br /> 
											
										<label for="inlineImage">Inlined image (max 10Mb):</label> 
										<input type="file" id="inlineImage"
											name="image" accept="image/*" required="required" /> <br />
									</fieldset>
								</li>
							</ul>
							
							<ul class="actions">
								<li><button type="submit" name="event" value="continue"
										class="primary">Send Email</button></li>
							</ul>	
													
						</div>
					</div>
				</form>
			</div>
			
			
			<script>
				function submitCancelButton() {
					document.getElementById('saleReg1Form').action = "authenticate.htm";
					document.getElementById('salesReg2Form').submit();
				}
				
			</script>
			<div id="extraInfo">
				<!--Extra info blocks-->
			</div>

			<div id="footer">
				<ul>
					
				</ul>
			</div>
		</div>
	</div>
</body>
</html>