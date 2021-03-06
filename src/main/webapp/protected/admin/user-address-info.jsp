<!doctype html>
<html lang="en-GB">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="user-scalable=yes, width=device-width, initial-scale=1">
<title>User Registration</title>
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
  	$(document).ready(function(){
   $("#addStateBtn").click(function(e){
     e.preventDefault();
	 
     $("#propState").attr('disabled','disabled');
	 
	 $(".hide").click(function() {
			$("#propState").attr("disabled", false);
			//$("#discountselection").hide();//To hide the dropdown
		});
   });
   
   $("#addCityBtn").click(function(e){
     e.preventDefault();
	 
     $("#propcity").attr('disabled','disabled');
	 
	 $(".hide").click(function() {
			$("#propcity").attr("disabled", false);
			//$("#discountselection").hide();//To hide the dropdown
		});
   });
   
   $("#addLocationBtn").click(function(e){
     e.preventDefault();
	 
     $("#localityTags").attr('disabled','disabled');
	 
	 $(".hide").click(function() {
			$("#localityTags").attr("disabled", false);
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
		<li><a href="user-login.html" class="active">Login</a></li>
        <!-- <li class="postProLi"><a class="sellrent" href="../sell/seller-login.html">Post Property<small> Free</small></a> </li> -->
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
                            <li>Personal Information</li>
                            <li class="current">Address Details</li>
                    	</ol>
                    <!--Page Breadcrumbs-->
        				<form name="userRegistration" method="post" action="user-login.html" class="validator" data-req-msg="Required default" data-format-msg="Required default">
                        	<div id="personal-info">
                        		<section class="nopadding">
                					<div class="form">
                   						<h2>Address Details</h2>
                            			<div class="formbody">
                                			<ul class="fields">
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
                                                                <button type="button" id="addStateBtn" class="show hide primary" data-show="#addNewState" data-hide="#addStateBtn" data-disable="#propState">Add New State</button>
                                                                </fieldset>
                                                            </li>
                                                    <!-- Add State -->
                                                        <li id="addNewState" class="hidden addressField">
                                                            <div class="formbody secondary">
                                                                <ul class="fields">
                                                                    <li>
                                                                        <p>
                                                                            <strong>Add New State</strong>
                                                                        </p>
                                                                    </li>															
                                                                    <li>
                                                                        <label for="additstateId" 
                                                                        class="required">State Id</label>
                                                                         <select id="additstateId" 
                                                                         name="stateidSelect" 
                                                                         style="width:250px;" required>
                                                                            <option value="">Select</option>
                                                                            <option value="1">ANI</option>
                                                                            <option value="2">ANP</option>
                                                                            <option value="3">ARP</option>
                                                                            <option value="4">ASM</option>
                                                                            <option value="5">BHR</option>
                                                                            <option value="6">CHD</option>
                                                                            <option value="7">CHT</option>
                                                                            <option value="8">DLI</option>
                                                                            <option value="9">GOA</option>
                                                                            <option value="10">GUJ</option>
                                                                            <option value="11">HAR</option>
                                                                            <option value="12">HMP</option>
                                                                            <option value="13">JNK</option>
                                                                            <option value="14">JHR</option>
                                                                            <option value="15">KAR</option>
                                                                            <option value="16">KER</option>
                                                                            <option value="17">LKW</option>
                                                                            <option value="18">MAP</option>
                                                                            <option value="19">MAH</option>
                                                                            <option value="20">MAP</option>
                                                                            <option value="21">MGH</option>
                                                                            <option value="22">MIZ</option>
                                                                            <option value="23">NGL</option>
                                                                            <option value="24">ODS</option>
                                                                            <option value="25">PNC</option>
                                                                            <option value="26">PUN</option>
                                                                            <option value="27">RJS</option>
                                                                            <option value="28">SIK</option>
                                                                            <option value="29">TAN</option>
                                                                            <option value="30">TEL</option>
                                                                            <option value="31">TRP</option>
                                                                            <option value="32">UP</option>
                                                                            <option value="33">UK</option>
                                                                            <option value="34">WB</option>
                                                                        </select>
                                                                        </li>
                                                                        <li>
                                                                        <label for="additnewState" 
                                                                        class="required">State Name</label>
                                                                         <select id="additnewState" 
                                                                         name="addstateSelect" style="width:250px;" required>
                                                                            <option value="">Select</option>
                                                                            <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
                                                                            <option value="Andhra Pradesh">Andhra Pradesh</option>
                                                                            <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                                                            <option value="Assam">Assam</option>
                                                                            <option value="Bihar">Bihar</option>
                                                                            <option value="Chandigarh">Chandigarh</option>
                                                                            <option value="Chhattisgarh">Chhattisgarh</option>
                                                                            <option value="Delhi">Delhi</option>
                                                                            <option value="Goa">Goa</option>
                                                                            <option value="Gujarat">Gujarat</option>
                                                                            <option value="Haryana">Haryana</option>
                                                                            <option value="Himachal Pradesh">Himachal Pradesh</option>
                                                                            <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                                                                            <option value="Jharkhand">Jharkhand</option>
                                                                            <option value="Karnataka">Karnataka</option>
                                                                            <option value="Kerala">Kerala</option>
                                                                            <option value="Lakshadweep">Lakshadweep</option>
                                                                            <option value="Madhya Pradesh">Madhya Pradesh</option>
                                                                            <option value="Maharashtra">Maharashtra</option>
                                                                            <option value="Manipur">Manipur</option>
                                                                            <option value="Meghalaya">Meghalaya</option>
                                                                            <option value="Mizoram">Mizoram</option>
                                                                            <option value="Nagaland">Nagaland</option>
                                                                            <option value="Odisha">Odisha</option>
                                                                            <option value="Puducherry">Pondicherry</option>
                                                                            <option value="Punjab">Punjab</option>
                                                                            <option value="Rajasthan">Rajasthan</option>
                                                                            <option value="Sikkim">Sikkim</option>
                                                                            <option value="Tamil Nadu">Tamil Nadu</option>
                                                                            <option value="Telengana">Telengana</option>
                                                                            <option value="Tripura">Tripura</option>
                                                                            <option value="Uttar Pradesh">Uttar Pradesh</option>
                                                                            <option value="Uttarakhand">Uttarakhand</option>
                                                                            <option value="West Bengal">West Bengal</option>
                                                                        </select>
                                                                    </li>
                                                                    <li class="saveCancelButtons addressField">
                                                                        <ul class="actions">
                                                                            <li>
                                                                                <button type="button" name="event" value="cancel" class="hide show" data-hide="#addNewState, #stateSwitchResult" data-show="#addStateBtn, #stateSwitchResult">Cancel</button>
                                                                            </li>
                                                                            <li>
                                                                                <button type="button" id="saveChange" name="event" value="save" class="hide show primary" data-hide="#addNewState" data-show="#cancelSearch, #stateSwitchResult">Save</button>
                                                                            </li>
                                                                        </ul>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </li>
                                                        <li id="stateSwitchResult" class="hidden addressField">
                                                            <div class="formbody secondary">
                                                                <table class="editStateDetails">
                                                                    <thead>
                                                                        <tr>
                                                                         <th class="text-center" scope="col">State Id</th>
                                                                         <th class="text-center" scope="col">State Name</th>				
                                                                            <th class="text-center last"></th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <tr>
                                                                            <td class="text-center">U.P.</td>
                                                                            <td  class="text-center">Uttarpradesh</td>
                                                                            <td  class="text-center" rowspan="1">
                                                                                <button type="button" id="editstate" name="event" value="edit" class="hide show" data-hide="#stateSwitchResult, #addStateBtn" data-show="#cancelSearch, #EditNewState">Edit</button>
                                                                            </td>
                                                                        </tr>		
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </li>
                                                    <!-- End --> 
                                                    <!-- Edit State -->
                                                        <li id="EditNewState" class="hidden addressField">
                                                            <div class="formbody secondary">
                                                                <ul class="fields">
                                                                    <li>
                                                                        <p>
                                                                            <strong>Edit State</strong>
                                                                        </p>
                                                                    </li>															
                                                                    <li>
                                                                        <label for="editstateId" 
                                                                        class="required">State Id</label>
                                                                         <select id="editstateId" 
                                                                         name="editSId" 
                                                                         style="width:250px;" required>
                                                                            <option value="">Select</option>
                                                                            <option value="1">ANI</option>
                                                                            <option value="2">ANP</option>
                                                                            <option value="3">ARP</option>
                                                                            <option value="4">ASM</option>
                                                                            <option value="5">BHR</option>
                                                                            <option value="6">CHD</option>
                                                                            <option value="7">CHT</option>
                                                                            <option value="8">DLI</option>
                                                                            <option value="9">GOA</option>
                                                                            <option value="10">GUJ</option>
                                                                            <option value="11">HAR</option>
                                                                            <option value="12">HMP</option>
                                                                            <option value="13">JNK</option>
                                                                            <option value="14">JHR</option>
                                                                            <option value="15">KAR</option>
                                                                            <option value="16">KER</option>
                                                                            <option value="17">LKW</option>
                                                                            <option value="18">MAP</option>
                                                                            <option value="19">MAH</option>
                                                                            <option value="20">MAP</option>
                                                                            <option value="21">MGH</option>
                                                                            <option value="22">MIZ</option>
                                                                            <option value="23">NGL</option>
                                                                            <option value="24">ODS</option>
                                                                            <option value="25">PNC</option>
                                                                            <option value="26">PUN</option>
                                                                            <option value="27">RJS</option>
                                                                            <option value="28">SIK</option>
                                                                            <option value="29">TAN</option>
                                                                            <option value="30">TEL</option>
                                                                            <option value="31">TRP</option>
                                                                            <option value="32" selected>UP</option>
                                                                            <option value="33">UK</option>
                                                                            <option value="34">WB</option>
                                                                        </select>
                                                                    </li>
                                                                    <li>
                                                                        <label for="editStateName" 
                                                                        class="required">State Name</label>
                                                                         <select id="editStateName" 
                                                                         name="stateName" style="width:250px;" required>
                                                                            <option value="">Select</option>
                                                                            <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
                                                                            <option value="Andhra Pradesh">Andhra Pradesh</option>
                                                                            <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                                                            <option value="Assam">Assam</option>
                                                                            <option value="Bihar">Bihar</option>
                                                                            <option value="Chandigarh">Chandigarh</option>
                                                                            <option value="Chhattisgarh">Chhattisgarh</option>
                                                                            <option value="Delhi">Delhi</option>
                                                                            <option value="Goa">Goa</option>
                                                                            <option value="Gujarat">Gujarat</option>
                                                                            <option value="Haryana">Haryana</option>
                                                                            <option value="Himachal Pradesh">Himachal Pradesh</option>
                                                                            <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                                                                            <option value="Jharkhand">Jharkhand</option>
                                                                            <option value="Karnataka">Karnataka</option>
                                                                            <option value="Kerala">Kerala</option>
                                                                            <option value="Lakshadweep">Lakshadweep</option>
                                                                            <option value="Madhya Pradesh">Madhya Pradesh</option>
                                                                            <option value="Maharashtra">Maharashtra</option>
                                                                            <option value="Manipur">Manipur</option>
                                                                            <option value="Meghalaya">Meghalaya</option>
                                                                            <option value="Mizoram">Mizoram</option>
                                                                            <option value="Nagaland">Nagaland</option>
                                                                            <option value="Odisha">Odisha</option>
                                                                            <option value="Puducherry">Pondicherry</option>
                                                                            <option value="Punjab">Punjab</option>
                                                                            <option value="Rajasthan">Rajasthan</option>
                                                                            <option value="Sikkim">Sikkim</option>
                                                                            <option value="Tamil Nadu">Tamil Nadu</option>
                                                                            <option value="Telengana">Telengana</option>
                                                                            <option value="Tripura">Tripura</option>
                                                                            <option value="Uttar Pradesh" selected>Uttar Pradesh</option>
                                                                            <option value="Uttarakhand">Uttarakhand</option>
                                                                            <option value="West Bengal">West Bengal</option>
                                                                        </select>
                                                                    </li>
                                                                    <li class="saveCancelButtons addressField">
                                                                        <ul class="actions">
                                                                            <li>
                                                                                <button type="button" name="event" value="cancel" class="hide show" 
                                                                                data-hide="#EditNewState, #addStateBtn" data-show=" #stateSwitchResult">Cancel</button>
                                                                            </li>
                                                                            <li>
                                                                                <button type="button" name="event" value="save" class="hide show primary" data-hide="#addStateBtn, #EditNewState" 
                                                                                data-show="#cancelSearch, #stateSwitchResult">Save
                                                                                </button>
                                                                            </li>
                                                                        </ul>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </li>
                                                    <!-- End --> 
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
                                                            <button type="button" id="addCityBtn" class="show hide primary" data-show="#addNewCity" data-hide="#addCityBtn">Add New City</button>
                                                            </fieldset>
                                                        </li>
                                                    <!-- Add City -->
                                                        <li id="addNewCity" class="hidden addressField">
                                                            <div class="formbody secondary">
                                                                <ul class="fields">
                                                                    <li>
                                                                        <p>
                                                                            <strong>Add New City</strong>
                                                                        </p>
                                                                    </li>															
                                                                    <li>
                                                                        <label for="additstateId1" 
                                                                        class="required">State Id</label>
                                                                         <select id="additstateId1" 
                                                                         name="stateidSelect" 
                                                                         style="width:250px;" required>
                                                                            <option value="">Select</option>
                                                                            <option value="1">ANI</option>
                                                                            <option value="2">ANP</option>
                                                                            <option value="3">ARP</option>
                                                                            <option value="4">ASM</option>
                                                                            <option value="5">BHR</option>
                                                                            <option value="6">CHD</option>
                                                                            <option value="7">CHT</option>
                                                                            <option value="8">DLI</option>
                                                                            <option value="9">GOA</option>
                                                                            <option value="10">GUJ</option>
                                                                            <option value="11">HAR</option>
                                                                            <option value="12">HMP</option>
                                                                            <option value="13">JNK</option>
                                                                            <option value="14">JHR</option>
                                                                            <option value="15">KAR</option>
                                                                            <option value="16">KER</option>
                                                                            <option value="17">LKW</option>
                                                                            <option value="18">MAP</option>
                                                                            <option value="19">MAH</option>
                                                                            <option value="20">MAP</option>
                                                                            <option value="21">MGH</option>
                                                                            <option value="22">MIZ</option>
                                                                            <option value="23">NGL</option>
                                                                            <option value="24">ODS</option>
                                                                            <option value="25">PNC</option>
                                                                            <option value="26">PUN</option>
                                                                            <option value="27">RJS</option>
                                                                            <option value="28">SIK</option>
                                                                            <option value="29">TAN</option>
                                                                            <option value="30">TEL</option>
                                                                            <option value="31">TRP</option>
                                                                            <option value="32" selected>UP</option>
                                                                            <option value="33">UK</option>
                                                                            <option value="34">WB</option>
                                                                        </select>
                                                                    </li>
                                                                    <li>
                                                                        <label for="additCityId" 
                                                                        class="required">City Id</label>
                                                                         <select id="additCityId" 
                                                                         name="cityIdSelect" 
                                                                         style="width:250px;" required>
                                                                            <option value="">Select</option>
                                                                            <option value="1">NOD</option>
                                                                            <option value="2">GHZ</option>
                                                                            <option value="3">GNOD</option>
                                                                        </select>
                                                                    </li>
                                                                    <li>
                                                                        <label for="additCityName" 
                                                                        class="required">City Name</label>
                                                                         <select id="additCityName" 
                                                                         name="cityNameSelect" style="width:250px;" required>
                                                                            <option value="">Select</option>
                                                                            <option value="NOD">Noida</option>
                                                                            <option value="GHZ">Ghaziabad</option>
                                                                            <option value="GNOD">Greater Noida</option>
                                                                        </select>
                                                                    </li>
                                                                    <li class="saveCancelButtons addressField">
                                                                        <ul class="actions">
                                                                            <li>
                                                                                <button type="button" name="event" value="cancel" class="hide show" data-hide="#addNewCity, #citySwitchResult" data-show="#addCityBtn">Cancel</button>
                                                                            </li>
                                                                            <li>
                                                                                <button type="button" id="saveChange" name="event" value="save" class="hide show primary" data-hide="#addNewCity, #addCityBtn" data-show="#cancelSearch, #citySwitchResult">Save</button>
                                                                            </li>
                                                                        </ul>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </li>
                                                        <li id="citySwitchResult" class="hidden addressField">
                                                            <div class="formbody secondary">
                                                                <table class="editCityDetails">
                                                                    <thead>
                                                                        <tr>
                                                                            <th class="text-center" scope="col">State Id</th>
                                                                            <th class="text-center" scope="col">City Id</th>
                                                                            <th class="text-center" scope="col">City Name</th>					
                                                                            <th class="text-center last"></th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <tr>
                                                                            <td class="text-center">UP</td>
                                                                            <td class="text-center">NOD</td>
                                                                            <td class="text-center">NOIDA</td>
                                                                            <td class="text-center" rowspan="1">
                                                                                <button type="button" id="editlocDetails" name="event" value="edit" class="hide show" data-hide="#citySwitchResult, #addCityBtn" data-show="#cancelSearch, #editNewCity">Edit</button>
                                                                            </td>
                                                                        </tr>		
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </li>
                                                    <!--End -->	
                                            		<!-- Edit City -->
                                            			<li id="editNewCity" class="hidden addressField">
                                                    <div class="formbody secondary">
                                                        <ul class="fields">
                                                            <li>
                                                                <p>
                                                                    <strong>Edit City</strong>
                                                                </p>
                                                            </li>
                                                            <li>
                                                            	<label for="editstateId2" 
                                                                class="required">State Id</label>
                                                                 <select id="editstateId2" 
                                                                 name="editSId2" 
                                                                 style="width:250px;" required>
                                                                    <option value="">Select</option>
                                                                    <option value="1">ANI</option>
                                                                    <option value="2">ANP</option>
                                                                    <option value="3">ARP</option>
                                                                    <option value="4">ASM</option>
                                                                    <option value="5">BHR</option>
                                                                    <option value="6">CHD</option>
                                                                    <option value="7">CHT</option>
                                                                    <option value="8">DLI</option>
                                                                    <option value="9">GOA</option>
                                                                    <option value="10">GUJ</option>
                                                                    <option value="11">HAR</option>
                                                                    <option value="12">HMP</option>
                                                                    <option value="13">JNK</option>
                                                                    <option value="14">JHR</option>
                                                                    <option value="15">KAR</option>
                                                                    <option value="16">KER</option>
                                                                    <option value="17">LKW</option>
                                                                    <option value="18">MAP</option>
                                                                    <option value="19">MAH</option>
                                                                    <option value="20">MAP</option>
                                                                    <option value="21">MGH</option>
                                                                    <option value="22">MIZ</option>
                                                                    <option value="23">NGL</option>
                                                                    <option value="24">ODS</option>
                                                                    <option value="25">PNC</option>
                                                                    <option value="26">PUN</option>
                                                                    <option value="27">RJS</option>
                                                                    <option value="28">SIK</option>
                                                                    <option value="29">TAN</option>
                                                                    <option value="30">TEL</option>
                                                                    <option value="31">TRP</option>
                                                                    <option value="32" selected>UP</option>
                                                                    <option value="33">UK</option>
                                                                    <option value="34">WB</option>
                                                                </select>
                                                            </li>														
                                                            <li>
                                                                 <label for="editCityId2" 
                                                                class="required">City Id</label>
                                                                 <select id="editCityId2" 
                                                                 name="cityIdSelect2" 
                                                                 style="width:250px;" required>
                                                                    <option value="">Select</option>
                                                                    <option value="1" selected>NOD</option>
                                                                    <option value="2">GHZ</option>
                                                                    <option value="3">GNOD</option>
                                                                </select>
                                                            </li>
                                                            <li>
                                                                <label for="editCityName2" 
                                                                class="required">City Name</label>
                                                                 <select id="editCityName2" 
                                                                 name="cityNameSelect2" style="width:250px;" required>
                                                                    <option value="">Select</option>
                                                                    <option value="NOD">Noida</option>
                                                                    <option value="GHZ">Ghaziabad</option>
                                                                    <option value="GNOD">Greater Noida</option>
                                                                </select>
                                                            </li>
                                                            <li class="saveCancelButtons addressField">
                                                                <ul class="actions">
                                                                    <li>
                                                                        <button type="button" name="event" value="cancel" class="hide show" data-hide="#editNewCity, #addCityBtn" data-show=" #citySwitchResult">Cancel</button>
                                                                    </li>
                                                                    <li>
                                                                        <button type="button" name="event" value="save" class="hide show primary" data-hide="#addCityBtn, #editNewCity" data-show="#cancelSearch, #citySwitchResult">Save
                                                                        </button>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </li>
                                            		<!-- End -- >
                                       			<!-- End City List -->
                                                
                                                <!-- Location Details -->
                                                    <li>
                                                        <fieldset class="inputgroup">
                                                            <legend>
                                                                <label for="localityTags" class="required">Locality</label>
                                                            </legend>
                                                            <input id="localityTags" name="locality" type="text" placeholder="Type Locality E.g. Noida Extension" required>
                                                            <button type="button" id="addLocationBtn" class="show hide primary" data-show="#addNewLocality" data-hide="#addLocationBtn">Add New Locality</button>
                                                        </fieldset>
                                                    </li>
                                                    <!-- Add Locality -->
                                                        <li id="addNewLocality" class="hidden addressField">
                                                            <div class="formbody secondary">
                                                                <ul class="fields">
                                                                    <li>
                                                                        <p>
                                                                            <strong>Add New Locality</strong>
                                                                        </p>
                                                                    </li>															
                                                                    <li>
                                                                        <label for="additCityId1" 
                                                                        class="required">City Id</label>
                                                                         <select id="additCityId1" 
                                                                         name="cityIdSelect1" 
                                                                         style="width:250px;" required>
                                                                            <option value="">Select</option>
                                                                            <option value="1" selected>NOD</option>
                                                                            <option value="2">GHZ</option>
                                                                            <option value="3">GNOD</option>
                                                                        </select>
                                                                    </li>
                                                                    <li>
                                                                        <label for="additLocalityName" 
                                                                        class="required">Locality Name</label>
                                                                        <input type="text" name=
                                                                        "additLocalityName" 
                                                                        id="additLocalityName" required/>
                                                                    </li>
                                                                    <li class="saveCancelButtons addressField">
                                                                        <ul class="actions">
                                                                            <li>
                                                                                <button type="button" name="event" value="cancel" class="hide show" data-hide="#addNewLocality, #localitySwitchResult" data-show="#addLocationBtn">Cancel</button>
                                                                            </li>
                                                                            <li>
                                                                                <button type="button" id="saveChange" name="event" value="save" class="hide show primary" data-hide="#addNewLocality, #addLocationBtn" data-show="#cancelSearch, #localitySwitchResult">Save</button>
                                                                            </li>
                                                                        </ul>
                                                                    </li>
                                                                 </ul>
                                                            </div>
                                                        </li>
                                                        <li id="localitySwitchResult" class="hidden addressField">
                                                            <div class="formbody secondary">
                                                                    <table class="editLocationDetails">
                                                                        <thead>
                                                                            <tr>
                                                                                <th class="text-center" scope="col">City Id</th>
                                                                                <th class="text-center" scope="col">Locality Name</th>					
                                                                                <th class="text-center last"></th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <tr>
                                                                                <td class="text-center">NOD</td>
                                                                                <td class="text-center">NOIDA</td>
                                                                                <td class="text-center" rowspan="1">
                                                                                    <button type="button" id="editlocDetails" name="event" value="edit" class="hide show" data-hide="#localitySwitchResult, #addLocationBtn" data-show="#cancelSearch, #editNewLocality">Edit</button>
                                                                                </td>
                                                                            </tr>		
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                        </li>
                                                    <!-- End -->
                                                    <!-- Edit Locality -->
                                                        <li id="editNewLocality" class="hidden addressField">
                                                            <div class="formbody secondary">
                                                                <ul class="fields">
                                                                    <li>
                                                                        <p>
                                                                            <strong>Edit Locality</strong>
                                                                        </p>
                                                                    </li>														
                                                                    <li>
                                                                         <label for="editCityId3" 
                                                                        class="required">City Id</label>
                                                                         <select id="editCityId3" 
                                                                         name="cityIdSelect3" 
                                                                         style="width:250px;" required>
                                                                            <option value="">Select</option>
                                                                            <option value="1" selected>NOD</option>
                                                                            <option value="2">GHZ</option>
                                                                            <option value="3">GNOD</option>
                                                                        </select>
                                                                    </li>
                                                                    <li>
                                                                        <label for="editLocalityName" 
                                                                        class="required">Locality Name</label>
                                                                        <input type="text" name=
                                                                        "editLocalityName" 
                                                                        id="editLocalityName" required/>
                                                                    </li>
                                                                    <li class="saveCancelButtons addressField">
                                                                        <ul class="actions">
                                                                            <li>
                                                                                <button type="button" name="event" value="cancel" class="hide show" data-hide="#editNewLocality, #addLocationBtn" data-show=" #localitySwitchResult">Cancel</button>
                                                                            </li>
                                                                            <li>
                                                                                <button type="button" name="event" value="save" class="hide show primary" data-hide="#addLocationBtn, #editNewLocality" data-show="#cancelSearch, #localitySwitchResult">Save
                                                                                </button>
                                                                            </li>
                                                                        </ul>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </li>
                                                    <!-- End -->  
                                      	<!-- End Location Details-->
                                            
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
                                            </ul>
                      					</div>
                    				</div>
                                    <ul class="actions right">
                                                <li>
                                                    <button type="reset" name="event" value="reset" 
                                                    class="secondary">Reset</button>
                                                </li>
                                                <li>
                                                    <button id="saveContinueBtn" type="submit" name="event" value="submit" class="primary">Submit</button>
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