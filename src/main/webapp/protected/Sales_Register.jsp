
<!doctype html>
<html lang="en-GB">
<head>
<meta charset="UTF-8">
<meta name="viewport"
content="user-scalable=yes, width=device-width, initial-scale=1">
<title>Financial Details | BestNest Real Estate Services</title>
<link rel="shortcut icon" href="Images/favicon.ico" />
<link rel="stylesheet" href="Styles/secureSiteSales.css">
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
					<a href="index.php">Santander - Online Banking</a>
				</div>
				<div id="loginfo">
					<span class="username">Deo Kishore</span> <span class="successful">Last
						successful log on: <strong>21/11/2013 13:24</strong>
					</span> <span class="unsuccessful">Last unsuccessful log on: <strong>21/11/2013
							13:24</strong></span>
				</div>
				<div id="logoff">
					<a href="#">Log off</a>
				</div>
			</div>
		</header>
		<div id="main" class="rightColumn">
			<div id="content">
				<form method="post" action="SSSCC.php?action=PFSSSCCCtrl"
					class="validator" data-req-msg="Required default"
					data-format-msg="Format default">

					<ul class="actions">
						<li><button type="submit" name="event" value="back"
								class="secondary" formnovalidate>Back to My Accounts</button></li>
					</ul>
					<input type="hidden" name="step" value="FinancialDetails">
					<h1>Sales Register</h1>
					<ol class="breadcrumbs">
						<li class="current">Client Information</li>
						<li>Company Quote</li>
						<li>Bestnest Quote</li>
						<li>Commission</li>
						<li>Tax & TDS</li>
					</ol>

					<div class="form">
						<h2>Client Information</h2>
						<div class="formbody">
							<ul class="fields">

								<li>
									<fieldset class="inputgroup">
										<legend>
											<label class="required" for="incomeInput">Company</label>
										</legend>
										<select name="taxApplied" id="taxAppliedSelect" title="Taxes">
											<option value="0">Choose A Company</option>
											<option value="0">Company A</option>
											<option value="1">Company B</option>
											<option value="1">Company C</option>

										</select>
										<button type="button" id="addAddressBtn"
											class="show hide primary" data-show="#changeAddressForm"
											data-hide="#addAddressBtn">Add a new company</button>
									</fieldset>
								</li>

								<li id="changeAddressForm" class="hidden addressField">
									<div class="formbody secondary">
										<ul class="fields addressFields">
											<li class="addressFinder inputgroup"><label
												for="queryPostCodeInput" class="required">Company
													Name</label>

												<ul class="clean inlineBlockList">
													<li><input type="text" name="queryPostCode"
														id="queryPostCodeInput" class="postcode" required
														pattern="^[a-zA-Z0-9\s]+$"></li>
													<li id="cancelSearch">
														<button type="button" name="event" value="cancel"
															class="hide show"
															data-hide=".addressField, .addressSelection"
															data-show=".currentAddressField, #addAddressBtn">Cancel</button>
													</li>
												</ul></li>
											<li>
												<fieldset class="inputgroup">
													<legend class="required">Title</legend>
													<ul>
														<li><input type="radio" name="title"
															id="titleMrInput" required class="hide titleRadio"
															data-hide="#otherTitle" value="0"> <label
															for="titleMrInput">Mr</label> <input type="radio"
															name="title" id="titleMrsInput" required
															class="hide titleRadio" data-hide="#otherTitle" value="1">
															<label for="titleMrsInput">Mrs</label> <input
															type="radio" name="title" id="titleMissInput" required
															class="hide titleRadio" data-hide="#otherTitle" value="2">
															<label for="titleMissInput">Miss</label> <input
															type="radio" name="title" id="titleMsInput" required
															class="hide titleRadio" data-hide="#otherTitle" value="3">
															<label for="titleMsInput">Ms</label> <input type="radio"
															name="title" id="titleOtherInput" required
															class="show titleRadio" data-show="#otherTitle"
															value="-1"> <label for="titleOtherInput">Other</label>
														</li>
														<li id="otherTitle" class="hidden"><select
															name="otherTitle" title="Select title"
															class="autocomplete">
																<option value="">Please select</option>
																<option value="0">Mstr</option>
																<option value="1">Dr</option>
																<option value="2">Brigadier</option>
																<option value="3">Canon</option>
																<option value="4">Captain</option>
																<option value="5">Commander</option>
																<option value="6">Corporal</option>
																<option value="7">Councillor</option>
																<option value="8">Dame</option>
																<option value="9">Father</option>
																<option value="10">Flight Lt</option>
																<option value="11">Flt Sgt</option>
																<option value="12">Fl Officer</option>
																<option value="13">Grp Capt</option>
																<option value="14">Judge</option>
																<option value="15">Lady</option>
																<option value="16">Lord</option>
																<option value="17">Lieut Col</option>
																<option value="18">Lieut Cdr</option>
																<option value="19">Major</option>
																<option value="20">Professor</option>
																<option value="21">Pty Offcr</option>
																<option value="22">Private</option>
																<option value="23">Rear Admr</option>
																<option value="24">Reverend</option>
																<option value="25">The Rt Hon</option>
																<option value="26">Sergeant</option>
																<option value="27">Sir</option>
																<option value="28">Sister</option>
																<option value="29">Sqn Leader</option>
																<option value="30">The Hon</option>
																<option value="31">Warrnt Off</option>
																<option value="32">Wing Cmdr</option>
														</select></li>
													</ul>
												</fieldset>
											</li>
											<li class="employerField"><label class="required"
												for="employerNameInput">First Name</label> <input
												type="text" name="employerName" id="employerNameInput"
												required value=""></li>
											<li class="employerField"><label class="required"
												for="employerNameInput">Last Name</label> <input type="text"
												name="employerName" id="employerNameInput" required value="">
											</li>
											<li><label for="emailInput" class="required">Email
													address</label> <input type="email" name="email" id="emailInput"
												required></li>

											<li><label for="homePhoneInput">Home phone
													number</label> <input type="tel" name="homePhone"
												id="homePhoneInput" pattern="\+?[0-9]{6,20}"></li>
											<li><label for="mobilePhoneInput">Mobile phone
													number</label> <input type="tel" name="mobilePhone"
												id="mobilePhoneInput" pattern="\+?[0-9]{6,20}"></li>


										</ul>
									</div>
								</li>





							</ul>
						</div>
					</div>



					<ul class="actions">


						<li><button type="submit" name="event" value="cancel"
								class="secondary openLightbox" formnovalidate>Cancel
								application</button></li>
						<li><button type="submit" name="event" value="continue"
								class="primary">Save &amp; continue &gt;</button></li>
						<li><a class="primary" href="Sales_Register_2.htm"> Save
								&amp; continue &gt; </a></li>
					</ul>
				</form>
			</div>
			<script>
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
			</script>
			<div id="extraInfo">
				<!--Extra info blocks-->
			</div>

			<div id="footer">
				<ul>
					<li><a title="This link opens in a new window"
						href="http://www.santander.co.uk/uk/online-mobile-banking-commitment"
						target="_blank">Online Banking Guarantee</a></li>
					<li><a title="This link opens in a new window"
						href="http://www.santander.co.uk/uk/accessibility" target="_blank">Site
							Help &amp; Accessibility</a></li>
					<li><a title="This link opens in a new window"
						href="http://www.santander.co.uk/uk/help-support/security-centre/data-protection"
						target="_blank">Security &amp; Privacy</a></li>
					<li><a title="This link opens in a new window"
						href="http://www.santander.co.uk/uk/help-support/online-banking-terms-conditions"
						target="_blank">Terms &amp; Conditions</a></li>
					<li><a title="This link opens in a new window"
						href="http://www.santander.co.uk/uk/website-legal" target="_blank">Legal</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>

