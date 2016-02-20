<!doctype html>
<html lang="en-GB">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="user-scalable=yes, width=device-width, initial-scale=1">
<title>User Registration | BestNest Real Estate Services </title>
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
		<li><a href="user-login.html" class="active">Login</a></li>
        <!-- <li class="postProLi"><a class="sellrent" href="../sell/seller-login.html">Post Property<small> Free</small></a></li> -->
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
                	<h1>User Registration Form</h1>
                    <!--Page Breadcrumbs-->
                    	<ol class="breadcrumbs">
                            <li class="current">Personal Information</li>
                            <li>Address Details</li>
                    	</ol>
                    <!--Page Breadcrumbs-->
        				<form name="userRegistration" method="post" action="user-address-info.html" class="validator" data-req-msg="Required default" data-format-msg="Required default">
                        	<div id="personal-info">
                        		<section class="nopadding">
                					<div class="form">
                   						<h2>Personal Information</h2>
                            			<div class="formbody">
                                			<ul class="fields">
                                                <li>
                                                    <fieldset class="inputgroup">
                                                        <legend class="required">Title</legend>
                                                        <ul>
                                                            <li>
                                        <input type="radio" name="title" id="titleMrInput" required class="hide titleRadio" data-hide="#otherTitle" value="0"> 
                                        <label for="titleMrInput">Mr</label>
                                        <input type="radio" name="title" id="titleMrsInput" required class="hide titleRadio" data-hide="#otherTitle" value="1"> 
                                        <label for="titleMrsInput">Mrs</label>
                                        <input type="radio" name="title" id="titleMissInput" required class="hide titleRadio" data-hide="#otherTitle" value="2"> 
                                        <label for="titleMissInput">Miss</label>
                                        <input type="radio" name="title" id="titleMsInput" required class="hide titleRadio" data-hide="#otherTitle" value="3"> 
                                        <label for="titleMsInput">Ms</label>
                                        <input type="radio" name="title" id="titleOtherInput" required class="show titleRadio" data-show="#otherTitle" value="-1"> 
                                        <label for="titleOtherInput">Other</label>
                                    </li>
                                                            <li id="otherTitle" class="hidden">
                                        <select name="otherTitle" title="Select title" class="autocomplete">
                                            <option value="">Please select</option>
                                            <option value="0">Mstr</option><option value="1">Dr</option><option value="2">Brigadier</option><option value="3">Canon</option><option value="4">Captain</option><option value="5">Commander</option><option value="6">Corporal</option><option value="7">Councillor</option><option value="8">Dame</option><option value="9">Father</option><option value="10">Flight Lt</option><option value="11">Flt Sgt</option><option value="12">Fl Officer</option><option value="13">Grp Capt</option><option value="14">Judge</option><option value="15">Lady</option><option value="16">Lord</option><option value="17">Lieut Col</option><option value="18">Lieut Cdr</option><option value="19">Major</option><option value="20">Professor</option><option value="21">Pty Offcr</option><option value="22">Private</option><option value="23">Rear Admr</option><option value="24">Reverend</option><option value="25">The Rt Hon</option><option value="26">Sergeant</option><option value="27">Sir</option><option value="28">Sister</option><option value="29">Sqn Leader</option><option value="30">The Hon</option><option value="31">Warrnt Off</option><option value="32">Wing Cmdr</option></select>
                                    </li>
                                                        </ul>
                                                    </fieldset>
                                                </li>
                                                <li>
                                                    <label for="firstName" class="required">First Name</label>
                                                    <input type="text" name="firstName" id="firstName" required>									                                    </li>
                                                <li>
                                                    <label for="lastName" class="required">Last Name</label>
                                                    <input type="text" name="lastName" id="lastName" required>		                                    </li>
                                                <li>
                                                    <label for="userId" class="required">Userid</label>
                                                    <input type="text" name="userId" id="userId" required>		                                    </li>
                                                <li>
                                                    <label for="userPassword" class="required">Password</label>
                                                    <input type="password" name="userPassword" id="userPassword" required>
                                                </li>  
                                                <li>
                                                    <fieldset class="inputgroup">
                                                        <legend class="required">Gender</legend>
                                                        <input type="radio" name="additGender" id="additGenderMale" 
                                                        required value="male">			
                                                        <label for="additGenderMale">Male</label>
                                                        <input type="radio" name="additGender" 
                                                        id="additGenderFemale" required value="female">															                                        	<label for="additGenderFemale">Female</label>
                                                    </fieldset>
                                                </li>
                                                <li>
                                                    <label for="userEmail" class="required">Email</label>
                                                    <input type="text" name="userEmail" id="userEmail" required>		                                    </li>
                                                <li>
                                                    <label for="userDesignation" class="required">Designation</label>
                                                    <input type="text" name="userDesignation" id="userDesignation" required>		
                                                </li>
                                                <li>
                                                    <label for="userMobile" class="">Mobile Number</label>
                                                    <input type="tel" name="userMobile" id="userMobile" 
                                                    pattern="\+?[0-9]{6,20}">	
                                                </li>
                                                <li>
                                                    <label for="userLandlineNo">Landline Number</label>
                                                    <input type="tel" name="userLandlineNo" id="userLandlineNo" 
                                                    pattern="\+?[0-9]{6,20}">	
                                                </li>
                                                <li>
                                                    <label for="isInquire">Is Active</label>
                                                    <select required id="isInquire" name="isInquire" disabled>
                                                    <option value="">Please select</option>
                                                    <option value="Y">Yes</option>
                                                    <option selected="" value="N">No</option>
                                                   </select>		                   
                                                </li>
                                                <li>
                                                    <label for="userDescription">Description</label>
                                                    <textarea name="userDescription" id="userDescription" style="resize:both; min-width:300px; max-width:450px; min-height:150px;"></textarea>
                                                </li>
                                            </ul>
                               	 			<script>
									$(function(){
										var $fields = $('.titleRadio'),
											$male 	=$('#additGenderMale'),
											$female =$('#additGenderFemale');
										$fields.on("click", function(){
											var val = $(this).val();
											switch(val) {
												case "0":
													$male.trigger("click");
													break;
												case "1":
												case "2":
												case "3":
													$female.trigger("click");
													break;
											}
										});
									});
                                </script>
                      					</div>
                    				</div>
                                    <ul class="actions right">
                                                <li>
                                                    <button type="reset" name="event" value="reset" 
                                                    class="secondary">Reset</button>
                                                </li>
                                                <li>
                                                    <button type="submit" name="event" value="continue" class="primary">Save &amp; continue &gt;</button>
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