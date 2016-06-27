<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page isELIgnored="false"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Mahagun India | Luxury Projects in Noida Extension | BestNest Real Estate Services </title>
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Meta Keywords for Indexing -->
<meta name="keywords" content="Noida Extension Projects, property in noida extension, flat in noida extension, 2BHK Flat in Noida extension, Mahagun group in noida extension" />
<meta name="description" content="Mahagunindia provide one of the best projects in delhi ncr, One of the best luxuries projects in Noida extension belongs to mahagunindia, Mahagun group provides all modern and luxurious facilities.  " />
<!--Meta Robot.txt reference for Indexing -->
<meta name="robots" content="index,follow" />
<!--End Meta Robot.txt for Indexing -->

<!-- End Meta Keywords for Indexing -->

<!-- Css Files -->
<link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/structure.css" />
<link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/best-nest.css" />
<link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/micro-site/mahagunproject/style.css" media="all" />
<link rel="stylesheet/less" type="text/css" href="http://resources.bestnest.in/css/micro-site/mahagunproject/style.less">
<link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/micro-site/mahagunproject/coin-slider.css"  />
<link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/jquery-ui.css" />
<link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/jquery.bxslider.css" />
<!-- End Css Files -->

<!--Fav Icon -->
<link rel="icon" type="image/ico" href="favicon.ico">
<!-- Fav Icon -->
<script type="text/javascript" src="http://resources.bestnest.in/js/less.js"></script>
<script type="text/javascript" src="http://resources.bestnest.in/js/custom.js"></script>
<script type="text/javascript" src="http://resources.bestnest.in/js/html5.js"></script>
<script type="text/javascript" src="http://resources.bestnest.in/js/jquery.js"></script>
<script type="text/javascript" src="http://resources.bestnest.in/js/slider_script.js"></script>
<script type="text/javascript" src="http://resources.bestnest.in/js/coin-slider.min.js"></script>
<script type="text/javascript" src="http://resources.bestnest.in/js/jquery.bxslider.js"></script>
<script type="text/javascript" src="http://resources.bestnest.in/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="http://resources.bestnest.in/js/jssor.slider.min.js"></script>
<script type="text/javascript" src="http://resources.bestnest.in/js/projectsection.js"></script>

<!-- BestNest JS -->
<script src="/js/micro-site/micro-site.js" type="text/javascript"></script>

<script>
function toggleDiv(divId) {
   $("#"+divId).toggleClass('active');
   return false;  
}

function nFormatter(val) {
	if(val >= 10000000) val = (val/10000000).toFixed(2) ;
    else if(val >= 100000) val = (val/100000).toFixed(2);
    else if(val >= 1000) val = (val/1000).toFixed(2);
    return val;
}

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

<!-- Start Box Construction   -->
<script>
$(document ).ready(function() {
	<c:forEach var="varProjectForm" items="${projectSearchForm.projectFormList}" varStatus="main_loop">

	var str = $.trim("${varProjectForm.addressForm.cityLocalityForm.cityForm.name}");
	str = str.replace(/\s+/g, '-').toLowerCase();
	$("#portfolio").append("<li id=\"prolist${main_loop.index}\" class=\"project-filter-li item "+ str +"\""
			+"data-filter=\"${varProjectForm.projectGroup}\"><a id=\"${varProjectForm.projectGroup}\""
			+"href=\"javascript:void(0);\""
			+"style=\"background-image: url(http://images.bestnest.in/${varProjectForm.projectLogo})\"></a>"
			+"</li>");
	
	<c:set var="overview" value="" scope="page" />
	var prices = [];
	var bedRooms = [];
	<c:forEach var="varProjectDetailsForm" items="${varProjectForm.projectDetailsFormSet}" varStatus="loop">
			prices.push(nFormatter(${varProjectDetailsForm.price}));
			bedRooms.push(${varProjectDetailsForm.bedRooms});
			
			<c:set var="slideImage" value="${varProjectDetailsForm.projectImageForm.slideImagesArray[0]}" />
			<c:set var="overview" value="${varProjectDetailsForm.overview}" />
	</c:forEach>

	prices = prices.sort();
	bedRooms = bedRooms.sort();
	
	// Creating Box for each project.
	$("#project-wrap").append(
			"<div id=\"liscont1\" class=\"js-list-item-wrapper list-items ${varProjectForm.projectGroup}\">"
					+"<a title=\"${varProjectForm.projectName} , ${varProjectForm.addressForm.cityLocalityForm.cityForm.name}\" href=\"/projectDetail.htm?projectId=23\">"
				        +"<div class=\"list-item-container\">"
				        	+"<div class=\"content\">"
				        		+"<img alt=\"${varProjectForm.projectName} , ${varProjectForm.addressForm.cityLocalityForm.cityForm.name}\" src=\"http://images.bestnest.in/${slideImage}\" itemprop=\"image\" class=\"list-item-image\">"
				        			+"<div class=\"clearfix list-item-info\">"
				                
				        					+"<div class=\"clearfix proleft\">"
				        						+"<h3 itemprop=\"name\" class=\"name\">${varProjectForm.projectName}</h3>"
				        						+"<h6 class=\"builder-name\">${varProjectForm.companyForm.companyName}</h6>"
				        						+"<h5 class=\"no-of-bedrooms\">" + bedRooms.shift() + " to " + bedRooms.pop() + " BHK Apartment</h5>"
				        						+"<div class=\"ico-location\"></div>"
				        						+"<h5 class=\"locality-name\">${varProjectForm.addressForm.cityLocalityForm.cityForm.name}</h5>"
				        					+"</div>"
				                    
				        					+"<div class=\"clearfix proright\">"
				        						+"<div class=\"price\">"
				        							+"<h3 class=\"number\">"
				        								+"<div data-currency=\"INR\" data-value=\"3657500\" class=\"number-text\">"
				        									+"<i class=\"ico-rupee\"></i>"+ prices.shift() + " Lacs"
						                                +"</div>"
						                             +"</h3>"
						                             +"<h6 class=\"onwards\">Onwards</h6>"
						                         +"</div>"
						                         +"<div class=\"bordered btn primary view-project\" onClick=\"location.href('/projectDetail.htm?projectId=23');\">	View Project </div>"
						                     +"</div>"
				                    
						       +"</div>"
						   +"</div>"
						  +"</div>"
						+"</a>"
				+"</div>"
			 );	
	
	</c:forEach>	
});
</script>
<!-- End Box Construction   -->


</head>
<body>
<div class="outer-container"> 
	<!--Start Header Section-->
  	<header class="nav-header">
			<div class="middleContainer clearfix">
				<div class="contactright">
					<span style="display: block; margin-bottom: 5px;"> 
						<img width="26" height="26" src="http://images.bestnest.in/micro-site/mahagun-group/phone_icon.png" alt="Call Us" style="vertical-align: middle"> 
						<a title="Call BestNest Real Estate Services" style="font-size:22px!important;">+91-9631500252</a>
					</span> 
					<span style="display: block; margin-top: 5px;"> 
						<img width="26" height="26" src="http://images.bestnest.in/micro-site/mahagun-group/message-icon.png" alt="Email Us" style="vertical-align: middle">
						<a href="mailto:query@bestnest.in" style=" font-size:19px!important;">query@bestnest.in</a>
					</span>
				</div>
				<a class="toggleMenu" href="#"><img
					src="http://images.bestnest.in/micro-site/mahagun-group/nav-icon.png"
					alt="Menu Items" border="0" /></a>
				<ul class="nav">
			        <li id="listone"><a href="/mahagunproject" title="Home" class="active">Home</a> </li>
			        <li id="listtwo" style="display:none;"><a rel="residential" href="/mahagunproject/residential" title="Residential Projects">Residential Projects</a></li>
					<li id="listthree" style="display:none;"><a rel="commercial" href="/mahagunproject/commercial" title="Commercial Projects">Commercial Projects</a></li>
			        <li id="listfour"><a href="/mahagunproject/aboutus" title="About Us">About Mahagun</a> </li>
			        <li id="listfive"><a href="/mahagunproject/contactus" title="Contact Us">Contact Us</a> </li>
			      </ul>
			</div>
		</header>
	<!--End Header Section--> 
	<!--Start Slideshow Area-->
	<div id="coin-slider">
		<a href="javascript:void(0);"><img src="http://images.bestnest.in/micro-site/mahagun-group/slideimages/slideimage1.jpg" width="1583" height="450" alt="Image1" /> </a> 
    	<a href="javascript:void(0);"><img src="http://images.bestnest.in/micro-site/mahagun-group/slideimages/slideimage2.jpg" width="1583" height="450" alt="Image2" /> </a> 
    	<a href="javascript:void(0);"><img src="http://images.bestnest.in/micro-site/mahagun-group/slideimages/slideimage3.jpg" width="1583" height="450" alt="Image3" /> </a> 
    	<a href="javascript:void(0);"><img src="http://images.bestnest.in/micro-site/mahagun-group/slideimages/slideimage4.jpg" width="1583" height="450" alt="Image4" /> </a> 
    	<a href="javascript:void(0);"><img src="http://images.bestnest.in/micro-site/mahagun-group/slideimages/slideimage5.jpg" width="1583" height="450" alt="Image5" /> </a>
	</div>
	<!--End Slideshow Area--> 
	<!--Start Main Content Section-->
	<div role="main" id="main">
  		<div class="sidelinks" style="left: 0px; display: block;"> <a rel="main" href="javascript:;" class="prlogo">
        	<img border="0" src="http://images.bestnest.in/micro-site/mahagun-group/logo_mahagungroup.png" alt="Mahagun Group"></a>
    		<div>
      			<ul>
                    <li><a class="active" rel="residential" href="/mahagunproject/residential" title="Residential Projects">Residential Projects</a></li>
                    <li><a rel="commercial" href="/mahagunproject/commercial" title="Commercial Projects">Commercial Projects</a></li>
                    <li><a rel="aboutus" href="/mahagunproject/aboutus" title="About Us">About Mahagun</a></li>
                    <li><a rel="contact" href="/mahagunproject/contactus" title="Contact Us">Contact Us</a></li>
                	<div class="clear"></div>
              	</ul>
    		</div>
  		</div>
    	<div class="middleContainer main-content clearfix">
    		<div class="rightColumnContainer discuss-right">
      			<h1 id="toptitle">Residential Projects</h1>
      			<div class="discuss-nav"> 
                    <ul id="filter">
                      <li><a id="all" href="javascript:void(0);" class="selected all">All Projects</a></li>
                      <!-- 
                      <li><a id="noida-ext" href="javascript:void(0);" class="noida-ext">Noida Extension</a></li>
                      <li><a id="nh24-ghz" href="javascript:void(0);" class="nh24-ghz">NH24-Ghaziabad</a></li>
                      <li><a id="noida" href="javascript:void(0);" class="noida">Noida</a></li>
                      <li><a id="yamunaexp" href="javascript:void(0);" class="yamunaexp">Yamuna Expressway</a></li>
                      <li><a id="g-noida" href="javascript:void(0);" class="g-noida">Greater Noida</a></li>
                       -->
                    </ul>
                    <div class="clear"></div>
      			</div>
      			
      			<!--  Project List Start -->
      			<div class="project-subnav">
                    <div class="project-subnav-wrapper">
                    
                        <ul id="portfolio" class="clearfix slider1">
                           
                        </ul>
                    </div> 
       			</div>
       			<!--  Project List End -->
       			
                <!--Sorting Link -->
                <div class="project-items-container">
                <div class="project_modifiers">
                	<div class="listing-box">
        		<ul>
                  <li><a href="/mahagunproject/projectlisting"><img alt="List View" src="http://images.bestnest.in/list-icon.png"></a></li>
                  <li><a href="/mahagunproject/projectgrid" class="active"><img alt="Grid View" src="http://images.bestnest.in/grid-icon.png"></a></li>
                </ul>
        <div class="clear"></div>
      </div>
                	<div id="project-filters" class="project_modifiers-content">
                        <form id="project-filter-form" class="filter-form search-filters ">
                            <div id="project-item1" class="project-item project-item_modifier project-item_animated">
                                <div class="project-item_header" onClick="javascript:toggleDiv('project-item1');">
                                    <h4>
                                        <span id="sort-size" class="project-item_stateindicator">Size</span>
                                    </h4>
                                </div>
                                <div class="project-item_content project-item_content-size Size">
                                    <div class="filter">
                                        <ul class="filter-size">
                                        	<li class="fieldValue project-sizes_size-wrapper project-filters_field">
                                                <span class="fieldName">1BHK</span>
                                            </li>
                                            <li class="fieldValue project-sizes_size-wrapper project-filters_field">
                                                <span class="fieldName">2BHK</span>
                                            </li>
                                            <li class="fieldValue project-sizes_size-wrapper project-filters_field">
                                                <span class="fieldName">3BHK</span>
                                            </li>
                                            <li class="fieldValue project-sizes_size-wrapper project-filters_field">
                                                <span class="fieldName">4BHK</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>	
                            </div>   
                        </form>
                	</div>
                    <div id="price-sort" class="project_modifiers-content">
                    	<div class="project_modifier price_modifier_sort">
                        	<div id="project-item2" class="project-item project-item_modifier project-item_animated">
                                <div class="project-item_header" onClick="javascript:toggleDiv('project-item2');">
                                    <h4>
                                        <span class="project-item_stateindicator">Price</span>
                                    </h4>
                                </div>
                                <div class="project-item_content project-item_content-size">
                                    <div class="filter">
                                        <ul class="sort-price">
                                            <li class="filter_sort sortValue">
                                                <a href="#" title="Price Low to High">Min Price</a>
                                            </li>
                                            <li class="filter_sort sortValue">
                                                <a href="#" title="Price High to Low">Max Price</a>
                                            </li> 
                                        </ul>
                                    </div>
                                </div>	
                            </div>
                        </div>   
                        
                	</div>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
                </div>
                <!--End Sorting Link-->
                <!-- Start Project Search Results Section -->
				  <div id="new-projects-container">
                    <div class="procontent search-results">
						<div class="clearfix search-results-list-items">
						
							<!--  Box Construction Start -->
                        	<div id="project-wrap" class="list-container">
                        	    
                                
                                 
                            </div>
                            <!--  Box Construction End -->
                            
                        </div>                        
                    </div>
                </div>
                <!-- End Project Search Results Section -->
			</div>
     	</div>
       <div class="clear"></div>
    </div>
    <!--Footer Section-->
	<footer>
		<div class="footercontent">
			<p class="text">
				&copy; Copyright 2015 <a href="http://www.bestnest.in">BestNest Real Estate Services Pvt. Ltd. </a> - All Rights Reserved
			</p>
		</div>
	</footer>
	<!--Footer Section-->
	<div class="clear"></div>
</div>
<!--Responsive Navigation-->
<link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/micro-site/mahagunproject/menu-style.css">
<script type="text/javascript" src="http://resources.bestnest.in/js/script.js"></script> 
<!--Responsive Navigation-->

<div class="righttext" style="position:fixed;top:300px;right:0;z-index:9999">
		<div id="showtext" style="display:block;color:#ff0000" class="calbg">
<div id="more">
    <div style="color: rgb(255, 255, 255);" class="calbgpd">+91-9631500252</div></div><br>
        </div>
</div>
<script>
$(document).ready(function(){
  $('.slider1').bxSlider({
    slideWidth: 160,
	minSlides: 6,
    maxSlides: 6,
	speed: 800,
	auto:true
  });
});
</script>
</body>
</html>
