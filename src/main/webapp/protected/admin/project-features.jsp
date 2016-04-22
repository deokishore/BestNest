<!doctype html>
<html lang="en-GB">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="user-scalable=yes, width=device-width, initial-scale=1">
<title>Project Features | BestNest Real Estate Services </title>
<!--CSS Theme-->
<link rel="stylesheet" type="text/css" href="../css/best-nest.css" />
<!--CSS Theme-->

<!--HTML5 Code-->
<script src="js/css3-mediaqueries.js"></script>
<script src="js/html5.js"></script>
<!--HTML5 Code-->

<!--Banner Code-->
<link rel="stylesheet" type="text/css" href="../css/jquery-ui.css" />
<script src="../js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="../js/jquery-ui.js" type="text/javascript"></script>
<script type="text/javascript" src="js/behaviour.js"></script>
<script type="text/javascript" src="js/validator.js"></script>
<!--Banner Code-->

<!--Developers Logo Slider-->
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/admin-form.css" />
<!--Developers Logo Slider-->
<script>
function goBack() {
    window.history.back();
}
</script>
<script>
     $(function() {
    var availableTags = [
      		"Noida Extension",
      		"Sector 52 Noida",
      		"Sector 150 Noida",
      		"NH-24/Ghaziabad",
			"Sector omicron",
			"Sector 78 Noida",
			"Sector 79 Noida",
			"Knowledge Park Noida Extension",
			"Sector 127 Expressway"
    ];
    $( "#localityTags" ).autocomplete({
      source: availableTags
    });
  });
  </script>
<script>
	$(function(){
		$("form").attr("novalidate","novalidate");
		$("button.openLightbox").each(function(){
			if($(this).val()=="cancel"){
				$(this).attr("formaction","index.html");
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
        .nsHide{display: none!important;}
    </style>
</noscript>
<script>
function confirmPost()
{
var agree=confirm("Are you sure you want to save the details?");
if (agree)
return true ;
else
return false ;
}
</script>
</head>
<body>
<!--Header Section-->
<header>
  <div class="head">
    <div class="logo"> <a href="../index.html"><img src="http://images.bestnest.in/best-nest.png" alt="BestNest Real Estate Services Pvt Ltd." /></a>
      <div class="clear"></div>
    </div>
        <a class="toggleMenu" href="#"><img src="http://images.bestnest.in/nav-icon.png" alt="Menu Items" border="0" /></a>
	
	  <ul class="nav">
        <li><a href="../nri-services.html" class="deactive">NRI Services</a></li>
	    <li><a href="../aboutUs.html" class="deactive">About Us</a></li>
		<li><a href="../contactUs.html" class="deactive">Contact Us</a></li>
		<li><a href="user-login.html" class="active">Logout</a></li>
        <!-- <li class="postProLi"><a class="sellrent" href="../sell/seller-login.html">Post Property<small> Free</small></a>  -->
        </li>
       </ul>
    <div class="clear"></div>
  </div>
  <div class="clear"></div>
</header>
<!--Header Section-->
<!--Content Section-->
<section>
    <div class="wrapper">
    	<div id="main" class="rightColumn">	
        	<div id="content">
				<h1>Project Listing</h1>
                <!--Page Breadcrumbs-->
                <ol class="breadcrumbs">
                    <li>Company Details</li>
                    <li>Project Details</li>
                    <li class="current">Project Features</li>
                </ol>
                <!--Page Breadcrumbs-->
				<form name="projectDetails" method="post" action="../project-detail.html" class="validator" 
                data-req-msg="Required default" data-format-msg="Format default" onSubmit="return confirmPost();">
                	<div id="project-imageinfo">
                   		<section class="nopadding">
            				<div class="form">
                				<h2>Project Features</h2>
                				<div class="formbody">
                   		 			<ul class="fields">
                                    	<li>
                                      		<ul class="fields">
                                            	<li>
                                                <fieldset class="inputgroup">
                                                <legend>
                                                    <label>Home Loan Offered</label>
                                                </legend>
                                                <div style="width:25%" class="fl">
                                                <input type="checkbox" id="hLoan1" name="homeLoan" value="Axis Bank">															                    						<label for="hLoan1">Axis Bank</label>
                                                </div>
                                                <div style="width:25%" class="fl">
                                                <input type="checkbox" id="hLoan2" name="homeloan" value="Andhra Bank">															                    						<label for="hLoan2">Andhra Bank</label>
                                                </div>
                                                <div style="width:25%" class="fl">
                                                <input type="checkbox" id="hLoan3" name="homeloan" value="Allahabad Bank">															                    						<label for="hLoan3">Allahabad Bank</label>
                                                </div>
                                                <div style="width:25%" class="fl">
                                                <input type="checkbox" id="hLoan4" name="homeloan" value="Bank of Baroda">															                    						<label for="hLoan4">Bank of Baroda</label>
                                                </div>
                                                </fieldset>
                                            </li>
                                            	<li>
                                                <fieldset class="inputgroup">
                                                <div style="width:25%" class="fl">
                                            	<input type="checkbox" id="hLoan5" name="homeloan" value="Bajaj Finance">															                    							<label for="hLoan5">Bajaj Finance</label>
                                            	</div> 
                                                <div style="width:25%" class="fl">
                                                <input type="checkbox" id="hLoan6" name="homeloan" 
                                                value="Bank of India">															
                                                <label for="hLoan6">Bank of India</label>
                                                </div>
                                                <div style="width:25%" class="fl">
                                                <input type="checkbox" id="hLoan7" name="homeloan" 
                                                value="Bank of Maharashtara">															
                                                <label for="hLoan7">Bank of Maharashtara</label>
                                                </div>
                                                <div style="width:25%" class="fl">
                                                <input type="checkbox" id="hLoan8" name="homeloan" 
                                                value="Bank of Mysore">															
                                                <label for="hLoan8">Bank of Mysore</label>
                                                </div>
                                            </fieldset>
                                            </li>
                                            	<li>  
                                                <fieldset class="inputgroup">
                                                    <div style="width:25%" class="fl">
                                                    <input type="checkbox" id="hLoan9" name="homeloan" 
                                                    value="Canara Bank">															
                                                    <label for="hLoan9">Canara Bank</label>
                                                    </div>
                                                    <div style="width:25%" class="fl">
                                                    <input type="checkbox" id="hLoan10" name="homeloan" 
                                                    value="Central Bank of India">															
                                                    <label for="hLoan10">Central Bank of India</label> 
                                                    </div>
                                                    <div style="width:25%" class="fl">
                                                    <input type="checkbox" id="hLoan11" name="homeloan" 
                                                    value="Citi Finance">															
                                                    <label for="hLoan11">Citi Finance</label>
                                                    </div>
                                                    <div style="width:25%" class="fl">    
                                                    <input type="checkbox" id="hLoan12" name="homeloan" 
                                                    value="Corporation Bank">															
                                                    <label for="hLoan12">Corporation Bank</label>
                                                    </div>
                                                    
                                                </fieldset>
                                            </li>
                                            	<li>
                                            	<fieldset class="inputgroup">
                                                <div style="width:25%" class="fl">
                                                    <input type="checkbox" id="hLoan13" name="homeloan" 
                                                    value="Dena Bank">															
                                                    <label for="hLoan13">Dena Bank</label>
                                                </div>
                                                <div style="width:25%" class="fl">
                                                    <input type="checkbox" id="hLoan14" name="homeloan" 
                                                    value="Dhanalakshmi Bank">															
                                                    <label for="hLoan14">Dhanalakshmi Bank</label>
                                                </div>
                                                <div style="width:25%" class="fl">
                                                    <input type="checkbox" id="hLoan15" name="homeloan" 
                                                    value="DHFL Home Loan">															
                                                    <label for="hLoan15">DHFL Home Loan</label>
                                                </div>
                                                <div style="width:25%" class="fl">
                                                    <input type="checkbox" id="hLoan16" name="homeloan" 
                                                    value="Federal Bank">															
                                                    <label for="hLoan16">Federal Bank</label>
                                                </div>
                                                </fieldset>
                                            </li>
                                            	<li>
                                            	<fieldset class="inputgroup">
                                                <div style="width:25%" class="fl">
                                                    <input type="checkbox" id="hLoan17" name="homeloan" 
                                                    value="HDFC Bank">															
                                                    <label for="hLoan17">HDFC Bank</label>
                                                </div>
                                                <div style="width:25%" class="fl">
                                                    <input type="checkbox" id="hLoan18" name="homeloan" 
                                                    value="HSBC Bank">															
                                                    <label for="hLoan18">HSBC Bank</label>
                                                </div>
                                                <div style="width:25%" class="fl">
                                                    <input type="checkbox" id="hLoan19" name="homeloan" 
                                                    value="ICICI Bank">															
                                                    <label for="hLoan19">ICICI Bank</label>
                                                </div>
                                                <div style="width:25%" class="fl">
                                                    <input type="checkbox" id="hLoan20" name="homeloan" 
                                                    value="IDBI Bank">															
                                                    <label for="hLoan20">IDBI Bank</label>
                                                </div>
                                                </fieldset>
                                            </li>
                                                <li>
                                                    <fieldset class="inputgroup">
                                                     <div style="width:25%" class="fl">
                                                        <input type="checkbox" id="hLoan21" name="homeloan" 
                                                        value="ING Vysya Bank">															
                                                        <label for="hLoan21">ING Vysya Bank</label>
                                                    </div>
                                                     <div style="width:25%" class="fl">
                                                        <input type="checkbox" id="hLoan22" name="homeloan" 
                                                        value="Indian Bank">															
                                                        <label for="hLoan22">Indian Bank</label>
                                                    </div>
                                                     <div style="width:25%" class="fl">
                                                        <input type="checkbox" id="hLoan23" name="homeloan" 
                                                        value="IndusInd Bank">															
                                                        <label for="hLoan23">IndusInd Bank</label>
                                                    </div>
                                                     <div style="width:25%" class="fl">
                                                        <input type="checkbox" id="hLoan24" name="homeloan" 
                                                        value="Indian Overseas Bank">															
                                                        <label for="hLoan24">Indian Overseas Bank</label>
                                                    </div>
                                                    </fieldset>
                                                </li>
                                                <li>
                                                    <fieldset class="inputgroup">
                                                    <div style="width:25%" class="fl">
                                                        <input type="checkbox" id="hLoan25" name="homeloan" 
                                                        value="Jammu Kashmir Bank">															
                                                        <label for="hLoan25">Jammu Kashmir Bank</label>
                                                    </div>
                                                    <div style="width:25%" class="fl">
                                                        <input type="checkbox" id="hLoan26" name="homeloan" 
                                                        value="Kotak Mahindra Bank">															
                                                        <label for="hLoan26">Kotak Mahindra Bank</label>
                                                    </div>
                                                    <div style="width:25%" class="fl">
                                                        <input type="checkbox" id="hLoan27" name="homeloan" 
                                                        value="LIC Housing Finance">															
                                                        <label for="hLoan27">LIC Housing Finance</label>
                                                    </div>
                                                    <div style="width:25%" class="fl">
                                                        <input type="checkbox" id="hLoan28" name="homeloan" 
                                                        value="PNB Housing Finance">															
                                                        <label for="hLoan28">PNB Housing Finance</label>
                                                    </div>
                                                    </fieldset>
                                                </li>
                                                <li>
                                                    <fieldset class="inputgroup">
                                                        <div style="width:25%" class="fl">
                                                        <input type="checkbox" id="hLoan29" name="homeloan" 
                                                        value="SBI Home Loan">															
                                                        <label for="hLoan29">SBI Home Loan</label>
                                                        </div>
                                                        <div style="width:25%" class="fl">
                                                        <input type="checkbox" id="hLoan30" name="homeloan" 
                                                        value="SBI Home Loan">															
                                                        <label for="hLoan30">Standard Chartered Bank</label>
                                                        </div>
                                                        <div style="width:25%" class="fl">
                                                        <input type="checkbox" id="hLoan31" name="homeloan" 
                                                        value="SBI Home Loan">															
                                                        <label for="hLoan31">Syndicate Bank</label>
                                                        </div>
                                                        <div style="width:25%" class="fl">
                                                        <input type="checkbox" id="hLoan32" name="homeloan" 
                                                        value="SBI Home Loan">															
                                                        <label for="hLoan32">Union Bank of India</label>
                                                        </div>
                                                    </fieldset>
                                                </li>
                                                <li>
                                                    <fieldset class="inputgroup">
                                                        <div style="width:25%" class="fl">
                                                        <input type="checkbox" id="hLoan33" name="homeloan" 
                                                        value="SBI Home Loan">															
                                                        <label for="hLoan33">United Bank of India</label>
                                                        </div>
                                                    </fieldset>
                                                </li>
                                        	</ul>
                                     	</li>
                                        <li>
                                        	<ul class="fields">
                                            	<li>
                                        			<fieldset class="inputgroup">
                                            	<legend>
                                                    <label>Property Feature</label>
                                                </legend>
                                                <div style="width:25%" class="fl">
                                                <input type="checkbox" id="Pamenities1" name="amenities" 
                                                value="Power Back-up">															                    							<label for="Pamenities1">Power Back-up</label>
                                                </div>
                                                <div style="width:25%" class="fl">
                                                <input type="checkbox" id="Pamenities2" name="amenities" 
                                                value="Security-Fire Alarm">															                    							<label for="Pamenities2">Security / Fire Alarm</label>
                                                </div>
                                                <div style="width:25%" class="fl">
                                                <input type="checkbox" id="Pamenities3" name="amenities" 
                                                value="Centrally Air Conditioned">															                    							<label for="Pamenities3">Centrally Air Conditioned</label>
                                                </div>
                                                <div style="width:25%" class="fl">
                                                <input type="checkbox" id="Pamenities4" name="amenities" 
                                                value="Private Garden-Terrace">															                    							<label for="Pamenities4">Private Garden / Terrace</label>
                                                </div>
                                            </fieldset>
                                            	</li>
                                            	<li>
                                        		<fieldset class="inputgroup">
                                                <div style="width:25%" class="fl">
                                                <input type="checkbox" id="Pamenities5" name="amenities" 
                                                value="Vaastu Compliant">															                    							<label for="Pamenities5">Vaastu Compliant</label>
                                                </div>
                                                <div style="width:25%" class="fl">
                                                <input type="checkbox" id="Pamenities6" name="amenities" 
                                                value="Intercom Facility">															                    							<label for="Pamenities6">Intercom Facility</label>
                                                </div>
                                                <div style="width:25%" class="fl">
                                                <input type="checkbox" id="Pamenities7" name="amenities" 
                                                value="Water Storage">															                    							<label for="Pamenities7">Water Storage</label>
                                                </div>
                                                <div style="width:25%" class="fl">
                                                <input type="checkbox" id="Pamenities8" name="amenities" 
                                                value="Piped Gas">															                    							<label for="Pamenities8">Piped Gas</label>
                                                </div>
                                            </fieldset>
                                            </li>
                                            	<li>
                                            	<fieldset class="inputgroup">
                                               	<div style="width:25%" class="fl">
                                                <input type="checkbox" id="Pamenities9" name="amenities" 
                                                value="Internet Connectivity">															                    							<label for="Pamenities9">Internet Connectivity</label>
                                                </div>
                                                <div style="width:25%" class="fl">
                                                <input type="checkbox" id="Pamenities10" name="amenities" 
                                                value="Piped Gas">															                    							<label for="Pamenities10">Water Purifier</label>
                                                </div>
                                                </fieldset>
                                            	</li>
                                            	<li>
                                            	<fieldset class="inputgroup">
                                                <legend>
                                                    <label>Society/Building Feature</label>
                                                </legend>
                                               	<div style="width:25%" class="fl">
                                                <input type="checkbox" id="Pamenities11" name="amenities" 
                                                value="Visitor Parking">															                    							<label for="Pamenities11">Visitor Parking</label>
                                                </div>
                                                <div style="width:25%" class="fl">
                                                <input type="checkbox" id="Pamenities12" name="amenities" 
                                                value="Swimming Pool">															                    							<label for="Pamenities12">Swimming Pool</label>
                                                </div>
                                                <div style="width:25%" class="fl">
                                                <input type="checkbox" id="Pamenities13" name="amenities" 
                                                value="Lifts">															                    							<label for="Pamenities13">Lift(s)</label>
                                                </div>
                                                <div style="width:25%" class="fl">
                                                <input type="checkbox" id="Pamenities14" name="amenities" 
                                                value="Park">															                    							<label for="Pamenities14">Park</label>
                                                </div>
                                                </fieldset>
                                            </li>
                                            	<li>
                                            	<fieldset class="inputgroup">
                                                <div style="width:25%" class="fl">
                                                <input type="checkbox" id="Pamenities15" name="amenities" 
                                                value="fitnesscentre-gym">															                    							<label for="Pamenities15">Fitness Centre / Gym</label>
                                                </div>
                                                <div style="width:25%" class="fl">
                                                <input type="checkbox" id="Pamenities16" name="amenities" 
                                                value="Club House">															                    							<label for="Pamenities16">Club House</label>
                                                </div>
                                                <div style="width:25%" class="fl">
                                                <input type="checkbox" id="Pamenities17" name="amenities" 
                                                value="Security Personnel">															                    							<label for="Pamenities17">Security Personnel</label>
                                                </div>
                                                <div style="width:25%" class="fl">
                                                <input type="checkbox" id="Pamenities18" name="amenities" 
                                                value="Shopping Centre">															                    							<label for="Pamenities18">Shopping Centre</label>
                                                </div>
                                                </fieldset>
                                            </li>
                                            	<li>
                                                	<fieldset class="inputgroup">
                                                    <legend>
                                                        <label>Other Features</label>
                                                    </legend>
                                                    <div style="width:25%" class="fl">
                                                    <input type="checkbox" id="Pamenities19" name="amenities" 
                                                    value="Waste Disposal">															                    								<label for="Pamenities19">Waste Disposal</label>
                                                    </div>
                                                    <div style="width:25%" class="fl">
                                                    <input type="checkbox" id="Pamenities20" name="amenities" 
                                                    value="Rain Water Harvesting">															                    								<label for="Pamenities20">Rain Water Harvesting</label>
                                                    </div>
                                                    <div style="width:25%" class="fl">
                                                    <input type="checkbox" id="Pamenities21" name="amenities" 
                                                    value="Bank Attached Property">															                    								<label for="Pamenities21">Bank Attached Property</label>
                                                    </div>
                                                    </fieldset>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <label for="projectoverview">Project Overview</label>
                                            <textarea name="projectoverview" id="projectoverview" style="resize:both; min-width:450px; max-width:600px; min-height:150px;" required></textarea>
                                        </li>				
                    				</ul>
                				</div>
            				</div>
                            <ul class="actions">
                            	<li>
                                    <button type="button" name="event" value="back" class="secondary" 
                                    onclick="goBack();">&lt; Back</button>
                                </li>
                                <li>
                                    <button type="reset" name="event" value="reset" class="secondary">
                                    Reset</button>
                                </li>
                                <li>
                                    <button type="submit" name="event" value="continue" class="primary" id="btsubmit">
                                    Save &amp; continue &gt;</button>
                                </li>
                            </ul>
            			</section>
                    </div>
				</form>
			</div>
		</div>
	</div>
</section>
<!--Footer Section-->
<footer>
	<div class="copyright">
	<div class="main-text">
		<div class="rights">
&copy; 2014 Best Nest. All Rights Reserved
<div class="clear"></div>
</div>
		<div class="clear"></div>
	</div>
	<div class="clear"></div>
</div>
  	<div class="clear"></div>
</footer>
<!--Footer Section-->
<!--Responsive Navigation-->
<link rel="stylesheet" type="text/css" href="../css/menu-style.css">      
<script type="text/javascript" src="../js/script.js"></script>
<!--Responsive Navigation-->
</body>
</html>