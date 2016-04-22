<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>Project detail of Gaursons | BestNest Real Estate Services</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" itemprop="description" content="" />

<!-- Css Files -->
<link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/best-nest.css" />
<link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/micro-site/gaurproject/style.css" media="all" />
<link rel="stylesheet/less" type="text/css" href="http://resources.bestnest.in/css/micro-site/gaurproject/style.less">
<link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/micro-site/gaurproject/coin-slider.css"  />
<link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/jquery-ui.css" />
<link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/jquery.bxslider.css" />
<link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/structure.css" />

<!-- End Css Files -->

<!--JS Code-->
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
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
<!--JS Code-->

<!--JS Code-->

<!--Slideshow-->
<c:set var="google_map" value="" scope="page"/>
<c:set var="googleMapLatlang" value="" scope="page"/>

<script type="text/javascript">
	$(document).ready(function(){
		
		<c:forEach items="${projectForm.projectDetailsFormSet}" var="listItem" varStatus="status">
			<c:set var="google_map" value="${listItem.projectImageForm.googleMap}" scope="page" />
			<c:set var="googleMapLatlang" value="${listItem.projectImageForm.googleMapLatlang}" scope="page"/>					
		</c:forEach>
		    
		init_map();		
	});
		
	//google.maps.event.addDomListener(window, 'load', init_map);
	
	function init_map() {
		
		var myOptions = {
			zoom : 14,
			center : new google.maps.LatLng($googleMapLatlang),
			mapTypeId : google.maps.MapTypeId.ROADMAP
		};
		map = new google.maps.Map(document.getElementById("gmap_canvas"),
				myOptions);
		marker = new google.maps.Marker({
			map : map,
			position : new google.maps.LatLng($googleMapLatlang)
		});
		infowindow = new google.maps.InfoWindow({
			content : "${google_map}"
		});
		google.maps.event.addListener(marker, "click", function() {
			infowindow.open(map, marker);
		});
		infowindow.open(map, marker);
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

function submitForAdmin() {
	document.getElementById('clientInformationForm').action = "admin.htm";
	document.getElementById('clientInformationForm').submit();
}

		jssor_slider2_starter = function (containerId) {
		var options = {
			$AutoPlay: true,                                    //[Optional] Whether to auto play, to enable slideshow, this option must be set to true, default value is false
			$AutoPlaySteps: 1,                                  //[Optional] Steps to go for each navigation request (this options applys only when slideshow disabled), the default value is 1
			$AutoPlayInterval: 4000,                            //[Optional] Interval (in milliseconds) to go for next slide since the previous stopped if the slider is auto playing, default value is 3000
			$PauseOnHover: 1,                               //[Optional] Whether to pause when mouse over if a slider is auto playing, 0 no pause, 1 pause for desktop, 2 pause for touch device, 3 pause for desktop and touch device, 4 freeze for desktop, 8 freeze for touch device, 12 freeze for desktop and touch device, default value is 1

			$ArrowKeyNavigation: true,   			            //[Optional] Allows keyboard (arrow key) navigation or not, default value is false
			$SlideDuration: 500,                                //[Optional] Specifies default duration (swipe) for slide in milliseconds, default value is 500
			$MinDragOffsetToSlide: 20,                          //[Optional] Minimum drag offset to trigger slide , default value is 20
			//$SlideWidth: 680,                                 //[Optional] Width of every slide in pixels, default value is width of 'slides' container
			//$SlideHeight: 432,                                //[Optional] Height of every slide in pixels, default value is height of 'slides' container
			$SlideSpacing: 0, 					                //[Optional] Space between each slide in pixels, default value is 0
			$DisplayPieces: 1,                                  //[Optional] Number of pieces to display (the slideshow would be disabled if the value is set to greater than 1), the default value is 1
			$ParkingPosition: 0,                                //[Optional] The offset position to park slide (this options applys only when slideshow disabled), default value is 0.
			$UISearchMode: 1,                                   //[Optional] The way (0 parellel, 1 recursive, default value is 1) to search UI components (slides container, loading screen, navigator container, arrow navigator container, thumbnail navigator container etc).
			$PlayOrientation: 1,                                //[Optional] Orientation to play slide (for auto play, navigation), 1 horizental, 2 vertical, 5 horizental reverse, 6 vertical reverse, default value is 1
			$DragOrientation: 3,                                //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $DisplayPieces is greater than 1, or parking position is not 0)

			$ArrowNavigatorOptions: {
				$Class: $JssorArrowNavigator$,              //[Requried] Class to create arrow navigator instance
				$ChanceToShow: 1,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
				$AutoCenter: 2,                                 //[Optional] Auto center arrows in parent container, 0 No, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
				$Steps: 1                                       //[Optional] Steps to go for each navigation request, default value is 1
			},

			$ThumbnailNavigatorOptions: {
				$Class: $JssorThumbnailNavigator$,              //[Required] Class to create thumbnail navigator instance
				$ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always

				$ActionMode: 1,                                 //[Optional] 0 None, 1 act by click, 2 act by mouse hover, 3 both, default value is 1
				$AutoCenter: 3,                                 //[Optional] Auto center thumbnail items in the thumbnail navigator container, 0 None, 1 Horizontal, 2 Vertical, 3 Both, default value is 3
				$Lanes: 1,                                      //[Optional] Specify lanes to arrange thumbnails, default value is 1
				$SpacingX: 3,                                   //[Optional] Horizontal space between each thumbnail in pixel, default value is 0
				$SpacingY: 3,                                   //[Optional] Vertical space between each thumbnail in pixel, default value is 0
				$DisplayPieces: 9,                              //[Optional] Number of pieces to display, default value is 1
				$ParkingPosition: 260,                          //[Optional] The offset position to park thumbnail
				$Orientation: 1,                                //[Optional] Orientation to arrange thumbnails, 1 horizental, 2 vertical, default value is 1
				$DisableDrag: false                            //[Optional] Disable drag or not, default value is false
			}
		};

		var jssor_slider2 = new $JssorSlider$(containerId, options);
		//responsive code begin
		//you can remove responsive code if you don't want the slider scales while window resizes
		function ScaleSlider() {
			var parentWidth = jssor_slider2.$Elmt.parentNode.clientWidth;
			if (parentWidth)
				jssor_slider2.$ScaleWidth(Math.min(parentWidth));
			else
				$Jssor$.$Delay(ScaleSlider, 30);
		}

		ScaleSlider();
		$Jssor$.$AddEvent(window, "load", ScaleSlider);

		$Jssor$.$AddEvent(window, "resize", $Jssor$.$WindowResizeFilter(window, ScaleSlider));
		$Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
		//responsive code end
	};
</script>

<script type="text/javascript">

$(document).ready(function () {
	
	var bhkIdCount = 1;
	var bhkId = [];
	var sizePrint = [];
	var pricePrint = [];
	
	var bedRoom = '';
	var projectTitleMessage='';
	
	<c:forEach items="${projectForm.projectDetailsFormSet}" var="listItem" varStatus="status">	
	
	if(${status.index} == 0){
		$("#detail_1").append("<span><b>Status :</b> ${listItem.possessionStatus} </span>");
		$("#detail_1").append("<span><b>Sizes :</b> ${listItem.size} </span>");
		$("#detail_1").append("<span><b>Availability  :</b> Yes </span>");
		$("#detail_1").append("<span><b>Furnished :</b> ${listItem.furnished} </span>");

		$("#detail_2").append("<span><b>Bedrooms :</b> ${listItem.bedRooms} </span>");
		$("#detail_2").append("<span><b>Bathrooms :</b> ${listItem.bathRooms} </span>");
		$("#detail_2").append("<span><b>Floor Number  :</b> ${listItem.floorNumber} </span>");
		$("#detail_2").append("<span><b>Total Floors :</b> ${listItem.totalFloors} </span>");

		$("#detail_3").append("<span><b>Over Looking :</b> ${listItem.overLooking} </span>");
		$("#detail_3").append("<span><b>Facing :</b> ${listItem.facing} </span>");
		$("#detail_3").append("<span><b>Additional Rooms :</b> ${listItem.additionalRooms} </span>");
		$("#detail_3").append("<span><b>Ownership Type  :</b> ${listItem.typeOfOwnership} </span>");

		// For Site Plan
		$("#site-plan").append("<span class=''><img src='http://images.bestnest.in/${listItem.projectImageForm.sitePlan}' alt='Site Plan' width='625' height='600'></span>");
		// For Location Map
		$("#location-map").append("<span class=''><img src='http://images.bestnest.in/${listItem.projectImageForm.locationMap}' alt='Location Map' width='625' height='600'></span>");
		// For Price Details
		$("#price-details").append("<span class=''><img src='http://images.bestnest.in/${listItem.projectImageForm.priceDetail}' alt='Price Details' width='625' height='600'></span>");
		
		}
	
		var bhkIdRowCountString = 'row' + bhkIdCount;

		// PARENT ROW ID HANDLING START
		var found = false;
		for (var j=0;j<bhkId.length;j++) {
			if(bhkId[j].key == "${listItem.bedRooms}"){
				found = true;
			} 
		}
		
		if(!found) {
			bhkId.push({key: "${listItem.bedRooms}", value: bhkIdRowCountString });
			bhkIdCount += bhkIdCount;
			projectTitleMessage = projectTitleMessage + "${listItem.bedRooms}" + "/" ;
		}
		// PARENT ROW ID HANDLING END


		// PARENT TD PRINT START 
		var sizePrintFound = false;
		for (var j=0;j<sizePrint.length;j++) {
			if(sizePrint[j].key == "${listItem.bedRooms}"){
				sizePrintFound = true;
				var sizePrintValue = sizePrint[j].value+","+"${listItem.size}";
				sizePrint[j].value = sizePrintValue;
				
				var pricePrintValue = pricePrint[j].value+","+nFormatter("${listItem.price}");
				pricePrint[j].value = pricePrintValue;
				
				break;
			} 
		}
		
		if(!sizePrintFound) {
			sizePrint.push({key: "${listItem.bedRooms}", value:"${listItem.size}"});
			pricePrint.push({key: "${listItem.bedRooms}", value:nFormatter("${listItem.price}") });
		}
		// PARENT TD PRINT END
		
	</c:forEach>


	var parentCount = 0;
	var childCount = 0;
	var storeBedValue = 'NA';
	<c:forEach items="${projectForm.projectDetailsFormSet}" var="listItem" varStatus="status">
		
		if(storeBedValue != "${listItem.bedRooms}" || storeBedValue == 'NA') {
		
			  $("#detail_table > tbody").append("<tr id='"+ bhkId[parentCount].value + "' class='parent' style='cursor: pointer;' title='Click to expand/collapse'> "+
					 "<td>" +
		                "<label for='proptype1'> " +
		                	"<div class='arrow-down'><span>" + "${listItem.bedRooms}" + " BHK</span></div>"+
		                "</label>"+
		            "</td>"+
		            "<td class='ng-scope'>" +
		            	"<label for='propsize1'> " +
		            		"<span>" + sizePrint[parentCount].value + " sq ft</span>"+
		           	 "</label>"+
		     		 "</td>"+
		     		 "<td class='ng-scope'>" +
		     			"<label for='propprice1'> " +
		     				"<span>" + pricePrint[parentCount].value + " L </span>"+
		    	 		"</label>"+
		 			 "</td>"+
		 			 "<td class='ng-scope'>" +
		 				"<label for='proppersqt1'> " +
		 					"<span>" + parseFloat("${listItem.price}" / "${listItem.size}").toFixed(2) + " /Sq ft </span>"+
		       	 		"</label>"+
					"</td>");
 			
			storeBedValue = "${listItem.bedRooms}";
			parentCount = parentCount + 1;
			childCount = parentCount -1;	
		} else {
			storeBedValue = "${listItem.bedRooms}";
		}


		// 
		var childId = 'child-'+bhkId[childCount].value;
		$("#detail_table > tbody").append("<tr id="+ ${listItem.projectDetailsId} +" class="+ childId + " style='display:none;'>"+
				 "<td>" +
	                 "<label for='proptype2'> " +
	                 	"<span> ${listItem.bedRooms} BHK ${listItem.bathRooms} T </span>"+
	                 "</label>"+
                "</td>"+
                "<td>" +
                	"<label for='propsize2'> " +
                		"<span>" + "${listItem.size}" + " sq ft</span>"+
               	 "</label>"+
            	"</td>"+
            	"<td>" +
            		"<label for='proppersqt2'> " +
            			"<span>" + nFormatter("${listItem.price}") + " L </span>"+
           	 	"</label>"+
        		"</td>"+
        		"<td>" +
        			"<label for='propprice2'> " +
        				"<span>" + parseFloat("${listItem.price}" / "${listItem.size}").toFixed(2) + " /Sq ft </span>"+
           	 		"</label>"+
    			"</td>");
		
	</c:forEach>



	// COMPANY PRICE PLAN
	var parentCount = 0;
	var childCount = 0;
	var storeBedValue = 'NA';
	<c:forEach items="${projectForm.projectDetailsFormSet}" var="listItem" varStatus="status">
	
			var parentId = "parent"+${listItem.bedRooms};
			
			  $("#company_price_table > tbody").append("<tr id='"+ parentId + "' class='parent' style='cursor: pointer;' title='Click to expand/collapse'> "+
					 "<td>" +
		                "<label for='proptype1'> " +
		                	"<div class='arrow-down'><span>" + "${listItem.bedRooms} BHK ${listItem.bathRooms} T" + "</span></div>"+
		                "</label>"+
		            "</td>"+
		            "<td class='ng-scope'>" +
		            	"<label for='propsize1'> " +
		            		"<span></span>"+
		           	 	"</label>"+
		     		 "</td>"+
		     		 "<td class='ng-scope'>" +
		     			"<label for='propprice1'> " +
		     				"<span></span>"+
		    	 		"</label>"+
		 			 "</td>"+
		 			"<td class='ng-scope'>" +
	     				"<label for='propprice1'> " +
	     					"<span></span>"+
	    	 			"</label>"+
	 			 	"</td>"+
	 			 	"<td class='ng-scope'>" +
		     			"<label for='propprice1'> " +
	    	 				"<span></span>"+
	    		 		"</label>"+
		 			 "</td>"+
		 			 "<td class='ng-scope'>" +
		 				"<label for='proppersqt1'> " +
		 					"<span></span>"+
		       	 		"</label>"+
					 "</td>");

				<c:forEach items="${listItem.projectPricesForm}" var="projectPriceItem" varStatus="status">
					$("#company_price_table > tbody").append("<tr class=child-"+parentId+" style='display:none;'>"+
							 "<td>" +
				                 "<label for='proptype2'> " +
				                 	"<span> ${projectPriceItem.paymentPlan} </span>"+
				                 "</label>"+
			                "</td>"+
			                "<td>" +
			                	"<label for='proptype2'> " +
			                		"<span>" + "${projectPriceItem.companyRate}" + " sq ft</span>"+
			               	 	"</label>"+
			            	"</td>"+
			            	"<td>" +
			            		"<label for='proptype2'> " +
			            			"<span>" + "${projectPriceItem.companyDiscount}" + "</span>"+
			           	 		"</label>"+
			        		"</td>"+
			        		"<td>" +
		        				"<label for='proptype2'> " +
		        					"<span>" + "${projectPriceItem.brokerDiscount}" + "</span>"+
		           	 			"</label>"+
		    				"</td>"+
		    				"<td>" +
        						"<label for='proptype2'> " +
        							"<span>" + "${projectPriceItem.maxCustomerDiscountFromBrokerDiscount}" + "</span>"+
           	 					"</label>"+
    						"</td>"+
		    				"<td>" +
	        					"<label for='proptype2'> " +
	        						"<span>" + "${projectPriceItem.companyOtherBenifit}" + "</span>"+
	           	 				"</label>"+
	    					"</td>");
	    					
				</c:forEach>
		
	</c:forEach>
	//END COMPANY PRICE PALN
	
	
	
	$("#projectTitleMessage").append("<span><h1><span itemprop='name'>" + "${projectForm.projectName}" + ":  " +projectTitleMessage + " Luxurious BHK with World Class Amenities.</span></h1>"+
			"<p>${projectForm.addressForm.street} , ${projectForm.addressForm.cityLocalityForm.locality}</p></span>");		


	$('#detail_table').on('click', 'tr', function() {

		 var projectDetailsId = $(this).attr('id');
		 
		 <c:forEach items="${projectForm.projectDetailsFormSet}" var="listItem" varStatus="status">
		 	if( projectDetailsId == ${listItem.projectDetailsId}) {

		 		
		 		
		 		
		 		$( "#tabcontainer" ).tabs({ active: 4 }); 
		 		//$( "#Tab" ).tabs( "option", "active", # );
		 		
		 	 	$("#detail_1").empty();
			 	$("#detail_2").empty();
			 	$("#detail_3").empty();
				 	
			 	$("#detail_1").append("<span><b>Status :</b> ${listItem.possessionStatus} </span>");
			 	$("#detail_1").append("<span><b>Size :</b> ${listItem.size} </span>");
			 	$("#detail_1").append("<span><b>Availability  :</b> Yes </span>");
			 	$("#detail_1").append("<span><b>Furnished :</b> ${listItem.furnished} </span>");
	
			 	$("#detail_2").append("<span><b>Bedrooms :</b> ${listItem.bedRooms} </span>");
			 	$("#detail_2").append("<span><b>Bathrooms :</b> ${listItem.bathRooms} </span>");
			 	$("#detail_2").append("<span><b>Floor Number  :</b> ${listItem.floorNumber} </span>");
			 	$("#detail_2").append("<span><b>Total Floors :</b> ${listItem.totalFloors} </span>");
	
			 	$("#detail_3").append("<span><b>Over Looking :</b> ${listItem.overLooking} </span>");
			 	$("#detail_3").append("<span><b>Facing :</b> ${listItem.facing} </span>");
			 	$("#detail_3").append("<span><b>Additional Rooms :</b> ${listItem.additionalRooms} </span>");
				$("#detail_3").append("<span><b>Ownership Type  :</b> ${listItem.typeOfOwnership} </span>");

				

		 	}
		</c:forEach>	
	});
		
	//rowFormatting();
});




function rowFormatting() {
	$('#detail_table tr').click(function(e) {
	    $('#detail_table tr').removeClass('highlighted');
	    $(this).addClass('highlighted');
	});
}


function nFormatter(val) {
	if(val >= 10000000) val = (val/10000000).toFixed(2) ;
    else if(val >= 100000) val = (val/100000).toFixed(2);
    else if(val >= 1000) val = (val/1000).toFixed(2);
    return val;
}

function nFormatter2(val) {
	if(val >= 10000000) val = (val/10000000).toFixed(2) + ' Cr';
    else if(val >= 100000) val = (val/100000).toFixed(2) + ' Lac';
    else if(val >= 1000) val = (val/1000).toFixed(2) + ' K';
    return val;
}
</script>


<!--End Slideshow-->
<!--Tab Code -->

<!-- End Tab Code-->
</head>

<body>

	<!--Start Header Section-->
  	<header class="nav-header">
    <div class="middleContainer clearfix">
  		<div class="contactright"> 
            <a href="javascript:void(0);" title="Call Us">
                <img width="25" height="25" src="http://images.bestnest.in/micro-site/gaursons-india-limited/phone_icon.png" alt="Call Us" style="vertical-align:middle">
            </a> 
            <span>
                <strong>Call Us:</strong> 
                <a title="Call 91 9211170170 (IND)" href="tel:919211170170">91 9211170170</a>
            </span>
            <span style="display: block; margin-left:34px;">
                <strong>Email id:</strong> 
                <a href="mailto:info@gaurproject.com">info@gaurproject.com</a>
            </span>
    	</div>
    <a class="toggleMenu" href="#"><img src="http://images.bestnest.in/micro-site/gaursons-india-limited/nav-icon.png" alt="Menu Items" border="0" /></a>
       <ul class="nav">
         <li><a href="/gaurproject" title="Home">Home</a> </li>
        <li><a href="/gaurproject/aboutUsGaursons" title="About Us">About Gaur</a> </li>
        <li><a class="active" href="/gaurproject/contactusGaursons title="Contact Us">Contact Us</a> </li>
      </ul>
    </div>
  </header>
	<!--End Header Section--> 

	<!--Wrapper-->
	<div class="wrapper">

		<!--Breadcrumb-->
		<div class="breadcrumbs">
			<ul>
				<li><a href="/" title="Home">Home</a><span class="tick"></span></li>
      			
      			 <li>Property Details</li>
      			<div class="go-back">
					<a href="${pageContext.request.contextPath}/<%=request.getAttribute("gridList")%>
					?cityId=<%=request.getAttribute("cityId")%>
					&companyId=<%=request.getAttribute("companyId")%>
					&propertyType=<%=request.getAttribute("propertyType")%>
					&cityName=<%=request.getAttribute("cityName")%>
					&bedRoom=<%=request.getAttribute("bedRoom")%>
					&minPrice=<%=request.getAttribute("minPrice")%>
					&maxPrice=<%=request.getAttribute("maxPrice")%>">
						<strong></strong>&nbsp;
					</a>
					<div class="clear"></div>
				</div>

			</ul>
			<div class="clear"></div>
		</div>
		<!--End Breadcrumb-->

		<!--Page Heading -->
		<div class="top-heading">
			<div id="projectTitleMessage" class="lftheading">
				
			</div>
		</div>
		<ul class="rgt-listing-link">
			<li id="pdetail-prevlink-top" class="li-perv"><span>�</span> <a
				class="cxpopunder" href="${pageContext.request.contextPath}/projectDetail.htm?projectId=${projectForm.prevProjectId}
										&projectDetailsId=${varProjectDetailsForm.projectDetailsId}
										&cityId=<%=request.getAttribute("cityId")%>
										&companyId=<%=request.getAttribute("companyId")%>
										&propertyType=<%=request.getAttribute("propertyType")%>
										&cityName=<%=request.getAttribute("cityName")%>
										&bedRoom=<%=request.getAttribute("bedRoom")%>
										&minPrice=<%=request.getAttribute("minPrice")%>
										&maxPrice=<%=request.getAttribute("maxPrice")%>
										&gridList=projectSearchGridPage.htm" onclick="">Prev
					Property</a></li>
			<li style="width: 135px;" id="pdetail-nextlink-top"
				class="end li-next"><a class="cxpopunder"
				href="${pageContext.request.contextPath}/projectDetail.htm?projectId=${projectForm.nextProjectId}
										&projectDetailsId=${varProjectDetailsForm.projectDetailsId}
										&cityId=<%=request.getAttribute("cityId")%>
										&companyId=<%=request.getAttribute("companyId")%>
										&propertyType=<%=request.getAttribute("propertyType")%>
										&cityName=<%=request.getAttribute("cityName")%>
										&bedRoom=<%=request.getAttribute("bedRoom")%>
										&minPrice=<%=request.getAttribute("minPrice")%>
										&maxPrice=<%=request.getAttribute("maxPrice")%>
										&gridList=projectSearchGridPage.htm" onclick="">Next Property </a> <span>�</span>
			</li>
		</ul>
		<!--End Page Heading-->

		<!--Left Portion-->
		<div class="left-portion">
			<!--Slideshow Code-->
			<div class="slideshow">
				<div id="gallery" class="ad-gallery">
					<div class="cell">
						<div id="slider2_container"
							style="position: relative; top: 0px; left: 0px; width: 652px; height: 437px; overflow: hidden;">

							<!-- Loading Screen -->
							<div u="loading" style="position: absolute; top: 0px; left: 0px;">
								<div
									style="filter: alpha(opacity = 70); opacity: 0.7; position: absolute; display: block; background-color: #4a7c98; top: 0px; left: 0px; width: 100%; height: 100%;">
								</div>
								<div
									style="position: absolute; display: block; background: url(../img/loading.gif) no-repeat center center; top: 0px; left: 0px; width: 100%; height: 100%;">
								</div>
							</div>

							<!-- Slides Container Start -->
							<div id="slides_container" u="slides"
								style="cursor: move; position: absolute; left: 0px; top: 0px; width: 652px; height: 437px; overflow: hidden;">
								<c:forEach items="${projectForm.projectDetailsFormSet}" var="listItem" varStatus="status">
									<c:forEach var="slideImage" items="${listItem.projectImageForm.slideImagesArray}" >
										<div> <img u="image" src="http://images.bestnest.in/${slideImage}"> 
											<img u="thumb" src="http://images.bestnest.in/${slideImage}" /> 
										</div>
									</c:forEach>
								</c:forEach>	
							</div>
							<!-- Slides Container End-->

							<!-- Arrow Left -->
							<span u="arrowleft" class="jssora02l"
								style="width: 55px; height: 55px; top: 123px; left: 8px;">
							</span>
							<!-- Arrow Right -->
							<span u="arrowright" class="jssora02r"
								style="width: 55px; height: 55px; top: 123px; right: 8px">
							</span>
							<!-- Arrow Navigator Skin End -->

							<!-- ThumbnailNavigator Skin Begin -->
							<div u="thumbnavigator" class="jssort03"
								style="position: absolute; width: 652px; height: 60px; left: 0px; bottom: 0px;">
								<div
									style="background-color: #000; filter: alpha(opacity = 30); opacity: .3; width: 100%; height: 100%;"></div>

								<!-- Thumbnail Item Skin Begin -->
								<div u="slides" style="cursor: move;">
									<div u="prototype" class="p"
										style="POSITION: absolute; WIDTH: 62px; HEIGHT: 32px; TOP: 0; LEFT: 0;">
										<div class=w>
											<div u="thumbnailtemplate"
												style="WIDTH: 100%; HEIGHT: 100%; border: none; position: absolute; TOP: 0; LEFT: 0;"></div>
										</div>
										<div class=c
											style="POSITION: absolute; BACKGROUND-COLOR: #000; TOP: 0; LEFT: 0">
										</div>
									</div>
								</div>
								<!-- Thumbnail Item Skin End -->
							</div>
							<!-- ThumbnailNavigator Skin End -->

							<!-- Trigger -->
							<script>
            jssor_slider2_starter('slider2_container');
        </script>
						</div>
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
			<!--End of Slide show -->
			<!-- Left Tabs -->
			<div class="tt-table-content">
				<table id="detail_table" class="detail">
					<tbody>
						<tr>
							<td>PROPERTY</td>
							<td>SIZE</td>
							<td>PRICE</td>
							<td>PRICE (Per Sqft.)</td>
						</tr>
					</tbody>
				</table>
				<div class="clear"></div>
			</div>
			<div id="Tab" class="module">
				<div class="tabmenu tabbed-content" id="detailsTabs">
					<ul id="tabcontainer" class="clearfix property-link-list">
						<li id="propertydetails" class="pdetail-tab active"><a
							href="#tab1">Property Details</a></li>
						<li id="floorplansTab" class="pdetail-tab"><a href="#tab2">Floorplan</a>
						</li>
						<li id="mapview" class="pdetail-tab"><a href="#tab3">Map
								View</a></li>
						<li id="siteplan" class="pdetail-tab"><a href="#tab4">Site
								Plan</a></li>
						<li id="pricedetails" class="pdetail-tab"><a href="#tab5">Location
								Map</a></li>
						<li id="pricedetails" class="pdetail-tab"><a href="#tab6">Price
								Details</a></li>
						<c:if test="${sessionScope.login == 'success'}">				
						<li id="pricedetails" class="pdetail-tab"><a href="#tab7">Company Price
								Details</a></li>
						</c:if>				
					</ul>
					<div id="tab1" class="tab_content clearfix tabs"
						style="display: block;">
						<div class="overview">
							<div class="contentBoxContainer padding20 marginB15">
								<div class="contentHeader row-full">
									<h2 class="fl">${projectForm.projectName}, ${projectForm.addressForm.cityLocalityForm.locality} - Overview</h2>
									<div class="fr sub-date-info">
										<span class="fl"> <span class="date-info">POSSESSION</span>
										</span>
									</div>
								</div>
								<div class="content-info">
									<div class="ng-scope">
										<span>Life is best lived the unhurried way. <b>"${projectForm.projectName}"</b>
											located in <b>"${projectForm.addressForm.cityLocalityForm.locality}"</b>ensures just that with
											conveniences galore. A home here means all your needs are
											very well met within the neighborhood. "${projectForm.projectName}" is in
											close vicinity to Schools, Shopping, Hospitals and
											Entertainment, making it an ideal place to live. It offers
											luxurious apartments and surrounded with most beautiful
											palaces.</span>
									</div>
								</div>
								 <div class="content-info paddingT25 marginL20">
            							<h6 class="sub-Header">At a Glance</h6>
		            					<div class="row-full paddingT5">
		                					<div id ="detail_1" class="prop-over-info wide32 fl marginR10">
		                                    </div>
		                                    <div id="detail_2" class="prop-over-info wide32 fl marginR10">
		                                    </div>
		                                    <div id="detail_3" class="prop-over-info wide32 fl">
		                                    </div>        
		            					</div>
        						</div>
								<div class="content-info paddingT25 marginL20">
									<h6 class="sub-Header">Neighborhood</h6>
									<div class="row-full paddingT5">
										<div class="prop-over-info wide32 fl marginR10">
											<span>Higher Education <b>(1)</b></span> <span>Bus
												Station <b>(2)</b>
											</span> <span>Park <b>(1)</b></span>
										</div>
										<div class="prop-over-info wide32 fl marginR10">
											<span>School <b>(2)</b></span> <span>Hospital <b>(1)</b></span>
											<span>Club <b>(1)</b></span>
										</div>
										<div class="prop-over-info wide32 fl">
											<span>Temple <b>(1)</b></span> <span>Firestation <b>(1)</b></span>
											<span>Shopping Mall <b>(1)</b></span>
										</div>
									</div>
								</div>
								<div class="clear"></div>
							</div>
						</div>
						<div class="overview">
							<div class="contentBoxContainer padding20 marginB15">
								<div class="contentHeader row-full">
									<h2 class="fl">Specifications</h2>
								</div>
								<div class="content-info wide45 paddingT25 marginL20 fl">
									<h6 class="sub-Header">Doors</h6>
									<div class="row-full paddingT5">
										<div class="prop-over-info wide32 fl marginR10">
											<span><b>Internal :</b> Frames of Maranti or
												equivalent wood, made of painted flush shutters </span> <span><b>Main
													:</b> Frame of Maranti or equivalent wood with skin moulded
												door shutter, Good quality hardware fittings </span>
										</div>
									</div>
								</div>
								<div class="content-info wide45 paddingT25 marginL20 fl">
									<h6 class="sub-Header">Fittings</h6>
									<div class="row-full paddingT5">
										<div class="prop-over-info wide32 fl marginR10">
											<span><b>Electrical :</b> Copper wire in PVC conduits
												with MCB supported circuits </span> <span><b>Kitchen :</b>
												Granite working top with stainless steel sink, individual RO
												unit for drinking water</span> <span><b>Toilets :</b>
												Provision for hot and cold water system, white sanitary ware
												with EWC, washbasin and CP fittings </span>
										</div>
									</div>
								</div>
								<div class="content-info wide45 paddingT25 marginL20 fl">
									<h6 class="sub-Header">Flooring</h6>
									<div class="row-full paddingT5">
										<div class="prop-over-info wide32 fl marginR10">
											<span><b>Balcony :</b> Ceramic tiles </span> <span><b>Kitchen
													:</b> Vitrified tiles </span> <span><b>Living/Dining :</b>
												Vitrified tiles </span> <span><b>Master Bedroom :</b> Wooden
												laminated </span>
										</div>
									</div>
								</div>
								<div class="content-info wide45 paddingT25 marginL20 fl">
									<h6 class="sub-Header">Walls</h6>
									<div class="row-full paddingT5">
										<div class="prop-over-info wide32 fl marginR10">
											<span><b>Exterior :</b> Exterior </span> <span><b>Interior
													:</b> OBD in pleasing shades </span> <span><b>Kitchen :</b>
												Ceramic tiles dado up to 2'-0'' above the working top </span> <span><b>Toilets
													:</b> Ceramic tiles dado up to door level </span>
										</div>
									</div>
								</div>
								<div class="clear"></div>
							</div>
						</div>
					</div>
					<div id="tab2" class="tab_content clearfix tabs"
						style="display: none">
						<div class="overview">
							<div class="contentBoxContainer padding20 marginB15">
								<div id="floorplans_table" class="padding_box">
									<table id="floorplans_table" width="100%" cellspacing="0"
										cellpadding="0" align="center" class="unit_detail non_free">
										<thead>
											<tr>
												<th class="floorplan_name">View</th>
												<th>Property</th>
												<th>Sq. Ft.</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${projectForm.projectDetailsFormSet}" var="listItem" varStatus="status">
												<tr class="normal">
													<td class="floorplan_box">
								                      	<span>
								                        	<a onclick="MM_openBrWindow('http://images.bestnest.in/${listItem.projectImageForm.floorPlan}','Image','scrollbars=yes,resizable=yes,width=800,height=600')" href="javascript:void(0)" class="link_floorplan_thumb">
								                            	<img class="floorplan_thumb" src="http://images.bestnest.in/${listItem.projectImageForm.floorPlan}" alt="Floor Plan" style="display: inline;">
								                            	<span class="icon_magnify sprite"></span>
								                   			</a>
								                            <a href="javascript:void(0)" class="link_floorplan"></a>
								                            <span class="clr"></span>
								                     	</span>
		                      						</td>
							                        <td>${listItem.bedRooms} BHK ${listItem.bathRooms} T</td>
							                        <td>${listItem.size} sq.ft.</td>
							                  </tr>
                    						</c:forEach> 
										</tbody>
									</table>
								</div>
								<div class="clear"></div>
							</div>
						</div>
					</div>
					<div id="tab3" class="tab_content clearfix tabs">
						<div class="overview">
							<div class="contentBoxContainer padding20 marginB15">
								<div class="contentHeader row-full">
									<h2 class="fl">Map View</h2>
								</div>
								<div style="overflow: hidden; height: 600px; width: 650px;">
									<div id="gmap_canvas" style="height: 600px; width: 650px;"></div>
											<style>
												#gmap_canvas img {
												max-width: none !important;
												background: none !important
												}
											</style>
											<a class="google-map-code" href="http://wptiger.com" id="get-map-data">http://wptiger.com</a>
								   </div>
								<div class="clear"></div>
							</div>
						</div>
					</div>
					<div id="tab4" class="tab_content clearfix tabs"
						style="display: none">
						<div class="overview">
							<div class="contentBoxContainer padding20 marginB15">
								<div class="contentHeader row-full">
									<h2 class="fl">Site Plan</h2>
								</div>
								<div class="content-info">
									<div id="site-plan" class="ng-scope">
										
									</div>
								</div>
								<div class="clear"></div>
							</div>
						</div>
					</div>
					<div id="tab5" class="tab_content clearfix tabs"
						style="display: none">
						<div class="overview">
							<div class="contentBoxContainer padding20 marginB15">
								<div class="contentHeader row-full">
									<h2 class="fl">Location Plan</h2>
								</div>
								<div class="content-info">
									<div id="location-map" class="ng-scope">
										
									</div>
								</div>
								<div class="clear"></div>
							</div>
						</div>
					</div>
					<div id="tab6" class="tab_content clearfix tabs"
						style="display: none">
						<div class="overview">
							<div class="contentBoxContainer padding20 marginB15">
								<div class="contentHeader row-full">
									<h2 class="fl">Price Details</h2>
								</div>
								<div class="content-info">
									<div id="price-details" class="ng-scope">
										
									</div>
								</div>
								<div class="clear"></div>
							</div>
						</div>
					</div>
					<c:if test="${sessionScope.login == 'success'}">
					<div id="tab7" class="tab_content clearfix tabs"
						style="display: none">
						<div class="overview">
							<div class="contentBoxContainer padding20 marginB15">
								<div class="contentHeader row-full">
									<h2 class="fl">Company Price Details</h2>
								</div>
											<div class="tt-table-content" >						
														<table id="company_price_table" class="detail">
												        <tbody>
												          <tr>
												          	<td> PAYMENT PLAN </td>
												            <td> COMPANY_RATE </td>
												            <td> COMPANY_DISCOUNT </td>
												            <td> BROKER DISCOUNT </td>
												            <td > MAX DISCOUNT FROM BROKERAGE </td>
												            <td > COMPANY OTHER BENIFIT </td>
												          </tr>
												         
												        </tbody>
									      </table>
									      </div>
								<div class="clear"></div>
							</div>
						</div>
					</div>
					</c:if>
					
				</div>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
			<!--End Left Tabs-->
		</div>
		<!--End Left Portion-->

		<!--Right Portion-->
		<div class="right-portion">
			<div class="get-in-touch">
				<h2>Get in Touch with BestNest</h2>
				<form:form id="clientInformationForm" action="${pageContext.request.contextPath}/contactUsSave.htm" 
          			modelAttribute="clientInformationForm">
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td><form:input path="firstName" placeholder = "First Name"/></td>
						</tr>
						<tr>
							<td><form:input path="lastName" placeholder = "Last Name"/></td>
						</tr>
						<tr>
							<td><form:input path="email" placeholder = "Email ID"/></td>
						</tr>
						<tr>
							<td><form:input path="homePhoneNumber" placeholder = "Home Phone"/></td>
						</tr>
						<tr>
							<td><form:input path="mobilePhoneNumber" placeholder = "mobile Phone"/></td>
						</tr>
						<tr>
							<td><form:input path="subject" placeholder = "Subject"/></td>
						</tr>
						<tr>
							<td><form:textarea path="message" cols="45" rows="5"/></td>
						</tr>
						
						<tr>
							<td colspan="2" align="right" valign="middle"><input type="submit" name="button" id="button"
								value="Send"></td>
						</tr>
					</table>
				</form:form>
				<div class="clear"></div>
			</div>
			
			<div style="" id="prop-you-like" class="rgt-box">
				<div class="rgtboxcntr">
					<div class="rgtboxtop-head">Properties you might like...</div>
					<div class="inner-content">

						<ul id="property-like" class="property-like">
						
							<marquee id="test" behavior="scroll" direction="down" height="400"
								onMouseOver="this.stop();" onMouseOut="this.start();">
								
								<c:forEach items="${projectForm.projectSimilarsForProjectSimilarMappingIdForm}" var="projectSimilar" varStatus="status">
								
									<c:set var="projectAddress" value="${projectSimilar.projectByProjectSimilarMappingIdForm.addressForm.street} ,
									  ${projectSimilar.projectByProjectSimilarMappingIdForm.addressForm.cityLocalityForm.locality}" />
									<c:set var="finalString" value="" scope="page" />
									<c:set var="projectId" value="${projectSimilar.projectByProjectSimilarMappingIdForm.projectId}" scope="page" />
									
									<c:forEach items="${projectSimilar.projectByProjectSimilarMappingIdForm.projectDetailsFormSet}" var="projectDetails" varStatus="status">
										<c:set var="projectDetailsName" value="${projectDetails.projectDetailsName}" />
										<c:set var="finalString" value="${projectDetails.bedRooms} BHK | ${projectDetails.size} Sq.Ft.<br>${finalString}" />
										<c:set var="project_image" value="${projectDetails.projectImageForm.slideImagesArray[0]}" scope="page" />
									</c:forEach>
									
										<li>
											<h5>
												<a onclick="" class="cpopunder" href="${pageContext.request.contextPath}/projectDetail.htm?projectId=${projectId}
										&projectDetailsId=${varProjectDetailsForm.projectDetailsId}
										&cityId=<%=request.getAttribute("cityId")%>
										&companyId=<%=request.getAttribute("companyId")%>
										&propertyType=<%=request.getAttribute("propertyType")%>
										&cityName=<%=request.getAttribute("cityName")%>
										&bedRoom=<%=request.getAttribute("bedRoom")%>
										&minPrice=<%=request.getAttribute("minPrice")%>
										&maxPrice=<%=request.getAttribute("maxPrice")%>
										&gridList=projectSearchGridPage.htm"> ${projectDetailsName}: <br> Good flats with top class Amenities</a>
											</h5>
											<div class="property-pic">
												<a onclick="" href="#"><img width="97" height="77" alt="Property"
													src="http://images.bestnest.in/${project_image}"></a>
											</div>
											<div class="property-text"> ${projectAddress}: 
												<br> ${finalString}
											</div>
										</li>
										
										
								</c:forEach>									
							</marquee>
							
						</ul>
					</div>
				</div>
				<div class="rgtboxbtm"></div>
			</div>
			<div class="clear"></div>
			
			<div class="resources">
				<h2>resources</h2>
				<ul>
					<li class="homeloan"><a href="#">
							<h4>Home Loan</h4> Get advise on home loan and EMI calculations.
					</a></li>
					<li class="nri"><a href="#">
							<h4>NRI Services</h4> Get advise on laws for NRI Customers and
							avail services of our dedicated NRI Services team.
					</a></li>
					<li class="bestnest"><a href="#">
							<h4>Buying with BestNest</h4> Visit our buying guide to use our
							services to buy Property.
					</a></li>
					<li class="tag"><a href="#">
							<h4>Selling with BestNest</h4> Visit our Selling guide to use
							our services to sell Property.
					</a></li>
					<li class="like"><a href="#">
							<h4>Recommend BestNest</h4> Found the website useful, refer our
							website to your friends.
					</a></li>
					<li class="partner"><a href="#">
							<h4>Partner Websites BestNest</h4> Aims Golf Avenue-II, Sec- 75,
							Parsvnath Exotica Arthala, G.T Road
					</a></li>
				</ul>
				<div class="clear"></div>
			</div>
			
		</div>
		<!--End Right Portion-->
		<div class="clear"></div>
	</div>
	<!--End of Wrapper -->

	

<!--Responsive Navigation-->
<link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/micro-site/gaurproject/menu-style.css">
<script type="text/javascript" src="http://resources.bestnest.in/js/script.js"></script> 
<!--Responsive Navigation-->
	
	
		
	

</body>
</html>
