<!doctype html>
<html lang="en-GB">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="user-scalable=yes, width=device-width, initial-scale=1">
<title>Project Details | BestNest Real Estate Services </title>
<!--CSS Theme-->
<link rel="stylesheet" type="text/css" href="../css/best-nest.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<!--CSS Theme-->

<!--HTML5 Code-->
<script src="js/css3-mediaqueries.js"></script>
<script src="js/html5.js"></script>
<!--HTML5 Code-->

<!--Banner Code-->

<link rel="stylesheet" type="text/css" href="../css/jquery-ui.css" />
<script src="../js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="../js/jquery-ui.js" type="text/javascript"></script>
<script type="text/javascript" src="../js/projectsection.js"></script>
<script type="text/javascript" src="js/behaviour.js"></script>
<script type="text/javascript" src="js/validator.js"></script>

<!--Banner Code-->

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

  ga('create', 'UA-59446819-1', 'auto');
  ga('send', 'pageview');

</script>
<!-- End Google Analytics Code -->
<noscript>
	<style>
        .nsHide{display: none!important;}
    </style>
</noscript>
  <script>
  $(function() {
    $( "#tabs" ).tabs();
  });
  </script>
 <script>
  	$(document).ready(function(){
   $("#addContactBtn").click(function(e){
     e.preventDefault();
	 
     $("#additCPerson").attr('disabled','disabled');
	 
	 $(".hide").click(function() {
			$("#additCPerson").attr("disabled", false);
			//$("#discountselection").hide();//To hide the dropdown
		});
   });
});
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
        <!-- <li class="postProLi"><a class="sellrent" href="../sell/seller-login.html">Post Property<small> Free</small></a> -->
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
                    <li class="current">Project Details</li>
                    <li>Project Features</li>
                </ol>
                <!--Page Breadcrumbs-->
                 <form name="propertyDetails" method="post" action="project-features.html" class="validator" data-req-msg="Required default" data-format-msg="Format default">
                        <div id="project-detailinfo">
                            <section class="nopadding">
                                <div class="form">
                					<h2>Project Details</h2>
                					<div class="formbody marginB15">
                    					<ul class="fields">
                                            <li>
                                            <fieldset class="inputgroup">
                                                <legend>
                                                    <label for="projName">Project Name</label>
                                                </legend>
                                                <input id="projName" name="projName" type="text" value="Gaur City 1st Avenue" disabled>
                                             </fieldset>
                                            </li>
                                            <li>
                                                <fieldset class="inputgroup">
                                                    <legend>
                                                        <label for="projSize" class="required">Size</label>
                                                    </legend>
                                                <input id="projSize" name="projSize" type="text" value="" pattern="\+?[0-9]{1,20}" style="width:120px;" required>
                                                <select id="sizepersqt" name="sizepersqt" style="width:125px;" required>
                                                        <option value="">Select Unit</option>
                                                        <option value="1">Sq.Ft. </option>
                                                        <option value="2">Sq. Yards </option>
                                                        <option value="3">Sq. Meter </option>
                                                        <option value="12">Acres </option>
                                                        <option value="16">Marla </option>
                                                        <option value="19">Cents </option>
                                                        <option value="13">Bigha </option>
                                                        <option value="14">Kottah </option>
                                                        <option value="17">Kanal </option>
                                                        <option value="4">Grounds </option>
                                                        <option value="10">Ares </option>
                                                        <option value="11">Biswa </option>
                                                        <option value="9">Guntha </option>
                                                        <option value="5">Aankadam </option>
                                                        <option value="15">Hectares </option>
                                                        <option value="6">Rood </option>
                                                        <option value="7">Chataks </option>
                                                        <option value="8">Perch </option>
                                                </select>
                                                </fieldset>
                                            </li>
                                            <li>
                                                <fieldset class="inputgroup">
                                                    <legend>
                                                        <label for="projPrice" class="required">Price</label>
                                                    </legend>
                                                    <input id="projPrice" name="projPrice" type="text" value="" pattern="\+?[0-9]{1,30}"                        required>
                                                </fieldset>
                                            </li>
                                            <li>
                                                <fieldset class="inputgroup">
                                                    <legend>
                                                        <label for="projBedroom" class="required">Bedroom</label>
                                                    </legend>
                                                    <select id="projBedroom" name="projBedroom" style="width:150px;" required>
                                                        <option value="">Select </option>
                                                        <option value="1">1 </option>
                                                        <option value="2">2 </option>
                                                        <option value="3">3 </option>
                                                        <option value="4">4 </option>
                                                        <option value="5">5 </option>
                                                        <option value="6">6 </option>
                                                        <option value="7">7 </option>
                                                        <option value="8">8 </option>
                                                        <option value="9">9 </option>
                                                        <option value="10">9+ </option>
                                                    </select>
                                               </fieldset>
                                            </li>
                                            <li>
                                                <fieldset class="inputgroup">
                                                    <legend>
                                                        <label for="projBathroom" class="required">Bathroom</label>
                                                    </legend>
                                                    <select id="projBathroom" name="projBathroom" style="width:150px;" required>
                                                        <option value="" selected="selected">Select </option>
                                                        <option value="1">1 </option>
                                                        <option value="2">2 </option>
                                                        <option value="3">3 </option>
                                                        <option value="4">4 </option>
                                                        <option value="5">5 </option>
                                                        <option value="6">6 </option>
                                                        <option value="7">7 </option>
                                                        <option value="8">8 </option>
                                                        <option value="9">9 </option>
                                                        <option value="10">9+ </option>
                                                    </select>
                                                 </fieldset>
                                            </li>
                                            <li>
                                                <fieldset class="inputgroup">
                                                    <legend>
                                                        <label>Additional Room</label>
                                                    </legend>
                                                    <input type="checkbox" id="additPRoom" name="additionalRoom" value="Pooja">															                    	<label for="additPRoom">Pooja Room</label>
                                                    <input type="checkbox" id="additSRoom" name="additionalRoom" value="Study">															                    	<label for="additSRoom">Study Room</label>
                                                    <input type="checkbox" id="additSeRoom" name="additionalRoom" value="Servant">															                    	<label for="additSeRoom">Servant Room</label>
                                                    <input type="checkbox" id="additOther" name="additionalRoom" value="Other">															                    	<label for="additOther">Others Room</label>
                                                </fieldset>
                                            </li>
                                            <li>
                                                <fieldset class="inputgroup">
                                                    <legend>
                                                        <label for="addFlrNumber" class="required">Floor Number</label>
                                                    </legend>
                                                    <select id="addFlrNumber" name="addFlrNumber" style="width:150px;" required>
                                                        <option value="">Select</option>
                                                        <option value="B">Basement</option>
                                                        <option value="L">Lower Ground</option>
                                                        <option value="G">Ground</option>
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5</option>
                                                        <option value="6">6</option>
                                                        <option value="7">7</option>
                                                        <option value="8">8</option>
                                                        <option value="9">9</option>
                                                        <option value="10">10</option>
                                                        <option value="11">11</option>
                                                        <option value="12">12</option>
                                                        <option value="13">13</option>
                                                        <option value="14">14</option>
                                                        <option value="15">15</option>
                                                        <option value="16">16</option>
                                                        <option value="17">17</option>
                                                        <option value="18">18</option>
                                                        <option value="19">19</option>
                                                        <option value="20">20</option>
                                                        <option value="21">21</option>
                                                        <option value="22">22</option>
                                                        <option value="23">23</option>
                                                        <option value="24">24</option>
                                                        <option value="25">25</option>
                                                        <option value="26">26</option>
                                                        <option value="27">27</option>
                                                        <option value="28">28</option>
                                                        <option value="29">29</option>
                                                        <option value="30">30</option>
                                                        <option value="31">31</option>
                                                        <option value="32">32</option>
                                                        <option value="33">33</option>
                                                        <option value="34">34</option>
                                                        <option value="35">35</option>
                                                        <option value="36">36</option>
                                                        <option value="37">37</option>
                                                        <option value="38">38</option>
                                                        <option value="39">39</option>
                                                        <option value="40">40</option>
                                                        <option value="41">40+</option>
                                                        <option value="MS">Multi-Storied</option>
                                                    </select>
                                                 </fieldset>
                                            </li>	
                                            <li>
                                                <fieldset class="inputgroup">
                                                    <legend>
                                                        <label for="addTotalFlr" class="required">Total Floors</label>
                                                    </legend>
                                                    <select id="addTotalFlr" name="addTotalFlr" style="width:150px;" required>
                                                        <option value="">Select</option>
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5</option>
                                                        <option value="6">6</option>
                                                        <option value="7">7</option>
                                                        <option value="8">8</option>
                                                        <option value="9">9</option>
                                                        <option value="10">10</option>
                                                        <option value="11">11</option>
                                                        <option value="12">12</option>
                                                        <option value="13">13</option>
                                                        <option value="14">14</option>
                                                        <option value="15">15</option>
                                                        <option value="16">16</option>
                                                        <option value="17">17</option>
                                                        <option value="18">18</option>
                                                        <option value="19">19</option>
                                                        <option value="20">20</option>
                                                        <option value="21">21</option>
                                                        <option value="22">22</option>
                                                        <option value="23">23</option>
                                                        <option value="24">24</option>
                                                        <option value="25">25</option>
                                                        <option value="26">26</option>
                                                        <option value="27">27</option>
                                                        <option value="28">28</option>
                                                        <option value="29">29</option>
                                                        <option value="30">30</option>
                                                        <option value="31">31</option>
                                                        <option value="32">32</option>
                                                        <option value="33">33</option>
                                                        <option value="34">34</option>
                                                        <option value="35">35</option>
                                                        <option value="36">36</option>
                                                        <option value="37">37</option>
                                                        <option value="38">38</option>
                                                        <option value="39">39</option>
                                                        <option value="40">40</option>
                                                        <option value="41">40+</option>
                                                    </select>
                                                 </fieldset>
                                            </li>
                                            <li>
                                                <fieldset class="inputgroup">
                                                    <legend>
                                                        <label for="additFacing" class="required">Facing</label>
                                                    </legend>
                                                    <select id="additFacing" name="additFacing" style="width:150px;" required>
                                                        <option value="">Select</option>
                                                        <option value="1">East</option>
                                                        <option value="2">West</option>
                                                        <option value="3">North</option>
                                                        <option value="4">South</option>
                                                        <option value="5">North-East</option>
                                                        <option value="6">North-West</option>
                                                        <option value="7">South-East</option>
                                                        <option value="8">South-West</option>
                                                    </select>
                                                 </fieldset>
                                            </li>
                                            <li>
                                                <fieldset class="inputgroup">
                                                    <legend>
                                                        <label for="additOverlook">Overlooking</label>
                                                    </legend>
                                                    <input id="additOverlook" name="additOverlook" type="text" placeholder="Eg. Park facing, Road facing">
                                                 </fieldset>
                                            </li>	
                                            <li>
                                                <fieldset class="inputgroup">
                                                    <legend>
                                                        <label for="additConstruction" class="required">Age of Construction</label>
                                                    </legend>
                                                    <select id="additConstruction" name="additConstruction" style="width:150px;" required>
                                                        <option value="">Select</option>
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5</option>
                                                        <option value="6">6</option>
                                                        <option value="7">7</option>
                                                        <option value="8">8</option>
                                                        <option value="9">9</option>
                                                        <option value="10">10</option>
                                                    </select>
                                                 </fieldset>
                                            </li>
                                            <li>
                                               <fieldset class="inputgroup">
                                                    <legend>
                                                        <label>Transaction Type</label>
                                                    </legend>
                                                    <input type="radio" name="transactionType" id="additBooking" value="new" checked="checked">															                    	<label for="additBooking">New Booking</label>
                                                    <input type="radio" name="transactionType" id="additResale" value="resale">			
                                                    <label for="additResale">Resale</label>
                                                </fieldset>        
                                            </li>
                                            <li>
                                               <fieldset class="inputgroup">
                                                    <legend>
                                                        <label>Ownership Type</label>
                                                    </legend>
                                                   <input type="radio" name="ownershipType" id="additLease" value="leasehold" checked="checked">															
                                                    <label for="additLease">Leasehold</label>
                                                    <input type="radio" name="ownershipType" id="additFreeHold" value="freehold">			
                                                    <label for="additFreeHold">Freehold</label>
                                                    <input type="radio" name="ownershipType" id="additCSociety" value="cooperative">														
                                                    <label for="additCSociety">Co-operative Society</label>
                                                    <input type="radio" name="ownershipType" id="additPower" value="attorney">			
                                                    <label for="additPower">Power of Attorney</label>
                                                </fieldset>              
                                            </li>
                                            <li>
                                               <fieldset class="inputgroup">
                                                    <legend>
                                                        <label>Possession Status</label>
                                                    </legend>
                                                    <input type="radio" name="possessionStatus" id="underConst" value="underconstruction"                        checked="checked">															
                                                    <label for="underConst">Under Construction</label>
                                                    <input type="radio" name="possessionStatus" id="readyToMove" value="Readytomove">			
                                                    <label for="readyToMove">Ready To Move</label>
                                                </fieldset>        
                                            </li>	
                                            <li>
                                               <fieldset class="inputgroup">
                                                    <legend>
                                                        <label>Furnished</label>
                                                    </legend>
                                                    <input type="radio" name="proFurnished" id="furnishedNo" value="Y">			
                                                    <label for="furnishedNo">Yes</label>
                                                    <input type="radio" name="proFurnished" id="furnishedYes" value="N" checked="checked">															                    	<label for="furnishedYes">No</label>
                                                </fieldset>              
                                            </li>
                                            <li>
                                               <fieldset class="inputgroup">
                                                    <legend>
                                                        <label class="required">Best Deal</label>
                                                    </legend>
                                                    <select id="additBstdeal" name="additBstdeal" style="width:125px;" required>
                                                        <option value="">Select</option>
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                </fieldset>              
                                            </li>
                                            <li>
                                                <fieldset class="inputgroup">
                                                    <legend>
                                                        <label class="required">Add Contact Person</label>
                                                    </legend>
                                                    <select id="additCPerson" name="additCPerson" style="width:125px;" required>
                                                        <option value="">Select</option>
                                                        <option value="1">Ankit Prajapati</option>
                                                        <option value="2">Akshay Singh</option>
                                                        <option value="3">Ghanshyam Ray</option>
                                                        <option value="4">Manjeet Singh</option>
                                                        <option value="5">Mithlesh Kumar</option>
                                                    </select>
                                                    <button type="button" id="addContactBtn" class="show hide primary" data-show="#addConPerson" data-hide="#addContactBtn">Add Contact Person</button>
                                                </fieldset>       
                                            </li>	
                                            <li id="addConPerson" class="hidden addressField">
                                                <div class="formbody secondary">
                                                    <ul class="fields">
                                                        <li>
                                                            <p>
                                                                <strong>Add Contact Person</strong>
                                                            </p>
                                                        </li>
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
                                                    <!-- State List -->
                                                        <li>
                                                                    <fieldset class="inputgroup">
                                                                    <legend>
                                                                        <label for="propState" class="required">State</label>
                                                                    </legend>                                                    
                                                                    <select id="propState" name="propstateSelect" 
                                                                    style="width:250px;" required>
                                                                        <option selected="selected" value="">Select</option>
                                                                        <option value="EXWAY">Delhi</option>
                                                                        <option value="GNOD">Haryana</option>
                                                                        <option value="GZB">Jharkhand</option>
                                                                        <option value="NOD">Uttarpradesh</option>
                                                                    </select>
                                                                    </fieldset>
                                                                </li>  
                                                    <!-- End State List -->
                                                    <!-- City List -->
                                                        <li>
                                                                <fieldset class="inputgroup">
                                                                <legend>
                                                                    <label for="propcity" class="required">City</label>
                                                                </legend>
                                                                <select id="propcity" name="propcitySelect" style="width:250px;"
                                                                required>
                                                                    <option selected="selected" value="">Select</option>
                                                                    <option value="EXWAY">Yamuna Expressway</option>
                                                                    <option value="GNOD">Greater Noida</option>
                                                                    <option value="GZB">NH-24/Ghaziabad</option>
                                                                    <option value="NOD">Noida</option>
                                                                    <option value="NODE">Noida Extension</option>
                                                                </select>
                                                                </fieldset>
                                                            </li>
                                                    <!-- End City List -->
                                                    <!-- Location Details -->
                                                        <li>
                                                            <fieldset class="inputgroup">
                                                                <legend>
                                                                    <label for="localityTags" class="required">Locality</label>
                                                                </legend>
                                                                <input id="localityTags" name="locality" type="text" placeholder="Type Locality E.g. Noida Extension" required>
                                                            </fieldset>
                                                        </li>
                                                    <!-- End Location Details -->
                                                        <li>
                                                            <fieldset class="inputgroup">
                                                                <legend>
                                                                    <label for="additStreet" class="required">Street</label>
                                                                </legend>
                                                                <input id="additStreet" name="additStreet" type="text" 
                                                                required>
                                                            </fieldset>
                                                        </li>
                                                        <li>
                                                            <fieldset class="inputgroup">
                                                                <legend>
                                                                    <label for="additPin" class="required">Pincode</label>
                                                                </legend>
                                                                <input id="additPin" name="additPin" type="text" pattern="\+?[0-9]{1,20}" required>
                                                            </fieldset>
                                                        </li>
                                                        <li class="saveCancelButtons addressField">
                                                            <ul class="actions">
                                                                <li>
                                                                    <button type="button" name="event" value="cancel" class="hide show" data-hide="#addConPerson" data-show="#addContactBtn">Cancel</button>
                                                                </li>
                                                                <li>
                                                                    <button type="button" id="saveChange" name="event" value="save" class="hide show primary" data-hide="#addConPerson, #addContactBtn" data-show="#cancelSearch">Save</button>
                                                                </li>
                                                            </ul>
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
                                           	</li>
                                        </ul>
                                        </form>
                                        <div id="Tab" class="module">
      										<div class="tabmenu tabbed-content" id="detailsTabs">
        										<ul id="tabcontainer" class="clearfix property-link-list">
                                                  <li id="tabFloorPlan" class="pdetail-tab active"> 
                                                  	<a href="#tab1">Floor Plan</a> 
                                                  </li>
                                                  <li id="tabLocationMap" class="pdetail-tab"> 
                                                  	<a href="#tab2">Location Map</a> 
                                                  </li>
                                                  <li id="tabSitePlan" class="pdetail-tab"> 
                                                  	<a href="#tab3">Site Plan</a> 
                                                  </li>
                                                  <li id="tabPriceDetails" class="pdetail-tab"> 
                                                  	<a href="#tab4">Price Details</a> 
                                                  </li>
                                                  <li id="tabSpecification" class="pdetail-tab">
                                                  	<a href="#tab5">Specification</a> 
                                                  </li>
                                                  <li id="tabSlideImage" class="pdetail-tab">
                                                  	<a href="#tab6">Slide Image</a> 
                                                  </li>
                                                </ul>
        										<div id="tab1" class="tab_content clearfix tabs" style="display:block;">
                                                	<div class="contentBoxContainer padding20 marginB15">
                                                    	<p><strong>Please upload Floor Plan photos</strong></p>
                                                        <form  id="upload" class="uploadfile" method="post" 
                                                        action="upload.php" enctype="multipart/form-data">
                                                        
                                                        <div id="drop" class="dropfile">
                                                        	Drop Here
                                                        	<a>Browse</a>
                                                        	<input type="file" name="upl" multiple />
                                                        </div>
                                                        
                                                        <ul>
                                                        <!-- The file uploads will be shown here -->
                                                        </ul>
                                                        </form>
          											</div>
        										</div>
        										<div id="tab2" class="tab_content clearfix tabs" style="display:none">
          											<div class="contentBoxContainer padding20 marginB15">
                                                		<p><strong>Please upload Location photos</strong></p>
                                                        <form id="upload1" class="uploadfile" method="post" action="upload.php"
                                                        enctype="multipart/form-data">
                                                        
                                                        <div id="drop1" class="dropfile">
                                                        	Drop Here
                                                        	<a>Browse</a>
                                                        	<input type="file" name="upl1" multiple />
                                                        </div>
                                                        
                                                        <ul>
                                                        <!-- The file uploads will be shown here -->
                                                        </ul>
                                                        </form>
                                                    </div>
        										</div>
            									<div id="tab3" class="tab_content clearfix tabs" style="display:none">
                  									<div class="contentBoxContainer padding20 marginB15">	
                                                       <p><strong>Please upload Site Plan photos</strong></p>
                                                       <form id="upload2" class="uploadfile" method="post" action="upload.php"
                                                        enctype="multipart/form-data">
                                                        
                                                        <div id="drop2" class="dropfile">
                                                        	Drop Here
                                                        	<a>Browse</a>
                                                        	<input type="file" name="upl2" multiple />
                                                        </div>
                                                        
                                                        <ul>
                                                        <!-- The file uploads will be shown here -->
                                                        </ul>
                                                        </form>
                                                  	</div>
            									</div>
                                                <div id="tab4" class="tab_content clearfix tabs" style="display:none">
                                                	<div class="contentBoxContainer padding20 marginB15">	
                                                       <p><strong>Please upload Price Details photos</strong></p>
                                                       <form id="upload3" class="uploadfile" method="post" action="upload.php"
                                                        enctype="multipart/form-data">
                                                        
                                                        <div id="drop3" class="dropfile">
                                                        	Drop Here
                                                        	<a>Browse</a>
                                                        	<input type="file" name="upl3" multiple />
                                                        </div>
                                                        
                                                        <ul>
                                                        <!-- The file uploads will be shown here -->
                                                        </ul>
                                                        </form>
                                                    </div>    
                                                </div>
                                                <div id="tab5" class="tab_content clearfix tabs" style="display:none">
                                                	<div class="contentBoxContainer padding20 marginB15"> 	
                                                        <p><strong>Please upload Specification photos</strong></p>
                                                        <form id="upload4" class="uploadfile" method="post" action="upload.php"
                                                        enctype="multipart/form-data">
                                                        
                                                        <div id="drop4" class="dropfile">
                                                        	Drop Here
                                                        	<a>Browse</a>
                                                        	<input type="file" name="upl4" multiple />
                                                        </div>
                                                        
                                                        <ul>
                                                        <!-- The file uploads will be shown here -->
                                                        </ul>
                                                        </form>
                                                    </div>  
                                                </div>
                                                <div id="tab6" class="tab_content clearfix tabs" style="display:none">
                                                	<div class="contentBoxContainer padding20 marginB15"> 	
                                                        <p><strong>Please upload Slide photos</strong></p>
                                                        <form id="upload5" class="uploadfile" method="post" action="upload.php"
                                                        enctype="multipart/form-data">
                                                        
                                                        <div id="drop5" class="dropfile">
                                                        	Drop Here
                                                        	<a>Browse</a>
                                                        	<input type="file" name="upl5" multiple />
                                                        </div>
                                                        
                                                        <ul>
                                                        <!-- The file uploads will be shown here -->
                                                        </ul>
                                                        </form>
                                                    </div>  
                                                </div>
      										</div>
                                            <div class="clear"></div>
                                       	</div>
                                        <div class="clear"></div>
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
                                        <button type="submit" name="event" value="continue" class="primary">
                                        Save &amp; continue &gt;</button>
                                    </li>
                                </ul>
                                <div class="clear"></div>
                            </section>
                        </div>	
                        	
			</div>
		</div>
	</div>
</section>
<!--Content Section-->

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

<!-- JavaScript Includes -->
<script src="js/jquery.knob.js"></script>

<!-- jQuery File Upload Dependencies -->
<script src="js/jquery.ui.widget.js"></script>
<script src="js/jquery.iframe-transport.js"></script>
<script src="js/jquery.fileupload.js"></script>

<!-- Our main JS file -->
<script src="js/scripts.js"></script>

</body>
</html>