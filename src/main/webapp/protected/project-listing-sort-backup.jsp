<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>BestNest Real Estate Services </title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--CSS Theme-->
<link href="http://resources.bestnest.in/css/dropdown.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/best-nest.css" />
<!--CSS Theme-->

<!--HTML5 Code-->
<script src="http://resources.bestnest.in/js/css3-mediaqueries.js"></script>
<script src="js/html5.js"></script>
<!--HTML5 Code-->



<!--Responsive Navigation-->
<link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/menu-style.css">
<script type="text/javascript" src="http://resources.bestnest.in/js/script.js"></script>
<!--Responsive Navigation-->



<!--Banner Code-->
<link rel="stylesheet" href="http://resources.bestnest.in/css/loading_img.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script src="http://resources.bestnest.in/js/EzFade.js"></script>
<script>
            $(document).ready(function(){
              $('#fadeMe').EzFade({height: '450'});
                          });
        </script>
<!--Banner Code-->

<!--Developers Logo Slider-->
<link href="http://resources.bestnest.in/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://resources.bestnest.in/js/jquery.flexisel.js"></script>

<!-- Common Js File -->
<script type="text/javascript" src="http://resources.bestnest.in/js/common.js"></script>
<!-- End Common Js File-->

<link type="text/css" rel="stylesheet" href="http://resources.bestnest.in/css/pagination/styles.css" />
<script type="text/javascript" src="http://resources.bestnest.in/js/pagination/jquery.pajinatel.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#paging_container2').pajinate();
	});		
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
    	
<script type="text/javascript">

$(window).load(function() {
    $("#flexiselDemo3").flexisel({
        visibleItems: 5,
        animationSpeed: 1500,
        autoPlay: true,
        autoPlaySpeed: 3000,            
        pauseOnHover: true,
        enableResponsiveBreakpoints: true,
        responsiveBreakpoints: { 
            portrait: { 
                changePoint:480,
                visibleItems: 1
            }, 
            landscape: { 
                changePoint:640,
                visibleItems: 2
            },
            tablet: { 
                changePoint:768,
                visibleItems: 3
            }
        }
    });});
	$(window).load(function() {
    $("#flexiselDemo4").flexisel({
        visibleItems: 5,
        animationSpeed: 1500,
        autoPlay: true,
        autoPlaySpeed: 3000,            
        pauseOnHover: true,
        enableResponsiveBreakpoints: true,
        responsiveBreakpoints: { 
            portrait: { 
                changePoint:480,
                visibleItems: 1
            }, 
            landscape: { 
                changePoint:640,
                visibleItems: 2
            },
            tablet: { 
                changePoint:768,
                visibleItems: 3
            }
        }
    });  
});
</script>

<!-- BestNest JS Start -->
<script src="http://resources.bestnest.in/js/home-page.js" type="text/javascript"></script>
<!-- BestNest JS End -->

<style type="text/css">
.nbs-flexisel-item img {
	cursor: pointer;
	position: relative;
	margin-top: 5px;
	margin-bottom: 10px;
	max-width: 148px;
	max-height: 77px;
	border: 1px solid #d6d5d5;
}

.nbs-flexisel-item {
	float: left;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
	position: relative;
	line-height: 0px;
	background: #0994d6;
	color: #fff;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 13px;
	height: 208px;
	margin: 0 8px;
	width: 161px !Important;
}

.nbs-flexisel-container {
	position: relative;
	max-width: 883px;
	margin-left: 61px;
}

.nbs-flexisel-nav-left {
	left: -41px;
	background: url(images/go-previous.png) no-repeat;
}

.nbs-flexisel-nav-right {
	right: -41px;
	background: url(images/go-next.png) no-repeat;
}

.nbs-flexisel-nav-left,.nbs-flexisel-nav-right {
	width: 19px;
	height: 78px;
	position: absolute;
	cursor: pointer;
	z-index: 100;
	opacity: 0.5;
}
</style>
<!--Developers Logo Slider-->

<!--Project Gallery-->
<script type="text/javascript" src="http://resources.bestnest.in/js/jquery-1.3.2.min.js"></script>
<link href="http://resources.bestnest.in/css/webwidget_slideshow_dot.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript" src="http://resources.bestnest.in/js/webwidget_slideshow_dot.js"></script>
<script language="javascript" type="text/javascript">
  var j = jQuery.noConflict();
            j(function() {
                j("#demo1").webwidget_slideshow_dot({
                    slideshow_time_interval: '5000',
                    slideshow_window_width: '178',
                    slideshow_window_height: '124',
                    slideshow_title_color: '#17CCCC',
                    soldeshow_foreColor: 'transparent',
                    directory: 'images/'
                });
				   j("#demo2").webwidget_slideshow_dot({
                    slideshow_time_interval: '5000',
                    slideshow_window_width: '178',
                    slideshow_window_height: '124',
                    slideshow_title_color: '#17CCCC',
                    soldeshow_foreColor: 'transparent',
                    directory: 'images/'
                });
				j("#demo3").webwidget_slideshow_dot({
                    slideshow_time_interval: '5000',
                    slideshow_window_width: '178',
                    slideshow_window_height: '124',
                    slideshow_title_color: '#17CCCC',
                    soldeshow_foreColor: 'transparent',
                    directory: 'images/'
                });
				j("#demo4").webwidget_slideshow_dot({
                    slideshow_time_interval: '5000',
                    slideshow_window_width: '178',
                    slideshow_window_height: '124',
                    slideshow_title_color: '#17CCCC',
                    soldeshow_foreColor: 'transparent',
                    directory: 'images/'
                });
				j("#demo5").webwidget_slideshow_dot({
                    slideshow_time_interval: '5000',
                    slideshow_window_width: '178',
                    slideshow_window_height: '124',
                    slideshow_title_color: '#17CCCC',
                    soldeshow_foreColor: 'transparent',
                    directory: 'images/'
                });
            });
        </script>
<!--Project Gallery-->

<script type="text/javascript">
	function handleOnLoadEvent() {
		
	}
</script>

<!-- JavaScript Start-->
    <script type="text/javascript">
    	
		 // Updates hiddenJson variavle
		function updateHiddenField() {

			// Updates hiddenJson variavle
	        var e = document.getElementById('city');
	        var txt = e.options[e.selectedIndex].text;
	        document.getElementById('cityName').value = txt;

	        var e = document.getElementById('companyId');
	        var txt = e.options[e.selectedIndex].text;
	        document.getElementById('companyName').value = txt;
	        			
		    return false;
		}
	</script>
	
	
	 <!--Vertical Slider-->
     <link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/style2.css"/>
        	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script type="text/javascript" src="http://resources.bestnest.in/js/jquery.totemticker.js"></script>
	<script type="text/javascript">
	var d = jQuery.noConflict();
		d(function(){
			d('#vertical-ticker').totemticker({
				row_height	:	'580px',
				next		:	'#ticker-next',
				previous	:	'#ticker-previous',
				stop		:	'#stop',
				start		:	'#start',
				mousestop	:	true,
			});
		});
	</script>
    <!--Vertical Slider-->
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
		
</head>

<body onload="handleOnLoadEvent()">

	<!--Header Section-->
	<header>
		<div class="head">
			<div class="logo">
				<a href="/"><img src="images/best-nest.png" alt="BestNest Real Estate Services Pvt Ltd." /></a>
				<div class="clear"></div>
			</div>

			<a class="toggleMenu" href="#"><img src="images/nav-icon.png"
				alt="Menu Items" border="0" />
			</a>

			<ul class="nav">				
				<li><a href="${pageContext.request.contextPath}/nriServices.htm" class="deactive" title="NRI Services">NRI Services</a></li>
				<li><a href="${pageContext.request.contextPath}/aboutUs.htm" class="deactive" title="About Us">About Us</a></li>
				<li><a href="${pageContext.request.contextPath}/lZone.htm" class="deactive" title="DDA L ZONE">DDA L Zone</a></li>
				<li><a href="${pageContext.request.contextPath}/contactUs.htm" class="deactive" title="Contact Us">Contact Us</a></li>
				<li><a href="javascript:submitForAdmin()" class="deactive" title="Login to Admin Panel">Login</a></li>
			</ul>
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
	</header>
	<!--Header Section-->

	<div class="clear"></div>
	<div class="inner-form">
		<div class="listing-form-box">

			<form:form id="projectSearchForm" action="${pageContext.request.contextPath}/projectSearchPage.htm"
				modelAttribute="projectSearchForm" onsubmit="javascript:updateHiddenField();">
				
				<input id="cityId" value="${projectSearchForm.cityForm.cityId}" type="hidden"/>
				<!--  <input id="cityName" value="${projectSearchForm.cityForm.name}" type="hidden"/> -->
				
				<form:hidden id="cityName" path="cityForm.name" value="${projectSearchForm.cityForm.name}"/>
				
				<input id="propertyTypeId" value="${projectSearchForm.propertyTypeId}" type="hidden"/>
				
				<input id="companyId"  value="${projectSearchForm.companyForm.companyId}" type="hidden"/>
				<input id="companyName" value="${projectSearchForm.companyForm.companyName}" type="hidden"/>
				
				
				<table width="100%" border="0">
					<tr>
						
						
						<td width="" align="left" valign="middle">
							<div class="dropdown">
    							<form:select id="propertyType" path="propertyTypeId" class="dropdown-select">
	                			</form:select>
  							</div>
						</td>
						
						<td width="" align="left" valign="middle">
							<div class="dropdown">
    							<form:select id="city" path="cityForm.cityId" class="dropdown-select">
	                			</form:select>
  							</div>
						</td>
						
						
						<td width="" align="left" valign="middle">
							<div class="dropdown">
    							<form:select id="company" path="companyForm.companyId" class="dropdown-select">
	                			</form:select>
  							</div>
						</td>
						
						<td width="" align="left" valign="middle">
							<div class="dropdown">
								<form:select id="bedRoom" path="bedRoom" class="dropdown-select">
									<form:option value="0" label="Bed Room" />
									<form:option value="1" label="1+" />
									<form:option value="2" label="2+" />
									<form:option value="3" label="3+" />
									<form:option value="4" label="4+" />
									<form:option value="5" label="5+" />
								</form:select>
							</div>
						</td>

						<td width="" align="left" valign="middle">
							<div class="dropdown">
								<form:select id="minPrice" path="minPrice" class="dropdown-select">
									<form:option value="0" label="Min Price" />
									<form:option value="5 Lacs" label="5 Lacs" />
									<form:option value="10 Lacs" label="10 Lacs" />
									<form:option value="20 Lacs" label="20 Lacs" />
									<form:option value="30 Lacs" label="30 Lacs" />
									<form:option value="40 Lacs" label="40 Lacs" />
									<form:option value="50 Lacs" label="50 Lacs" />
									<form:option value="60 Lacs" label="60 Lacs" />
									<form:option value="70 Lacs" label="70 Lacs" />
									<form:option value="80 Lacs" label="80 Lacs" />
									<form:option value="90 Lacs" label="90 Lacs" />
									<form:option value="1 Crore" label="1 Crore" />
									<form:option value="2 Crore" label="2 Crore" />
									<form:option value="3 Crore" label="3 Crore" />
									<form:option value="4 Crore" label="4 Crore" />
									<form:option value="5 Crore" label="5 Crore" />
								</form:select>
							</div>
						</td>
						
						<td width="" align="left" valign="middle">
							<div class="dropdown">
								<form:select
									id="maxPrice" path="maxPrice" class="dropdown-select">
									<form:option value="0" label="Max Price" />
									<form:option value="5 Lacs" label="5 Lacs" />
									<form:option value="10 Lacs" label="10 Lacs" />
									<form:option value="20 Lacs" label="20 Lacs" />
									<form:option value="30 Lacs" label="30 Lacs" />
									<form:option value="40 Lacs" label="40 Lacs" />
									<form:option value="50 Lacs" label="50 Lacs" />
									<form:option value="60 Lacs" label="60 Lacs" />
									<form:option value="70 Lacs" label="70 Lacs" />
									<form:option value="80 Lacs" label="80 Lacs" />
									<form:option value="90 Lacs" label="90 Lacs" />
									<form:option value="1 Crore" label="1 Crore" />
									<form:option value="2 Crore" label="2 Crore" />
									<form:option value="3 Crore" label="3 Crore" />
									<form:option value="4 Crore" label="4 Crore" />
									<form:option value="5 Crore" label="5 Crore" />
								</form:select>
							</div>
						</td>
						
						<td width="" align="right" valign="middle"><input
							type="submit" name="button" id="button" value="Search"></td>
					</tr>
				</table>
			</form:form>

			<div class="clear"></div>
		</div>
		<div class="clear"></div>
	</div>
	<div class="clear"></div>

	<!--Breadcrumb-->
	<div class="breadcrumb">
		<div class="listing">
			<!--Filter Section-->
			<div class="filter">
				<h2>
					<%=request.getAttribute("cityName")%>
					<span><%=request.getAttribute("totalProjects")%>
						results.</span>
				</h2>
				<div class="clear"></div>
			</div>

			<!--Filter Section-->
			<div class="right-portion">
				<div class="listing-box">
						<ul>
							<li><a href="${pageContext.request.contextPath}/projectSearchListPage.htm
										?cityId=<%=request.getAttribute("cityId")%>
										&companyId=<%=request.getAttribute("companyId")%>
										&propertyType=<%=request.getAttribute("propertyType")%>
										&cityName=<%=request.getAttribute("cityName")%>
										&bedRoom=<%=request.getAttribute("bedRoom")%>
										&minPrice=<%=request.getAttribute("minPrice")%>
										&maxPrice=<%=request.getAttribute("maxPrice")%>">
										<img src="images/list-icon.png" alt="List View" /></a></li>
							<li><a href="${pageContext.request.contextPath}/projectSearchGridPage.htm
									?cityId=<%=request.getAttribute("cityId")%>
										&companyId=<%=request.getAttribute("companyId")%>
										&propertyType=<%=request.getAttribute("propertyType")%>
										&cityName=<%=request.getAttribute("cityName")%>
										&bedRoom=<%=request.getAttribute("bedRoom")%>
										&minPrice=<%=request.getAttribute("minPrice")%>
										&maxPrice=<%=request.getAttribute("maxPrice")%>">
										<img src="images/grid-icon.png" alt="Grid View"/></a></li>
						</ul>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
	</div>

	
	<!--Main Section-->
	<div id="paging_container2" class="project-sections">
		<div class="page_navigation"></div>
		
		
		<div class="left-portion">
			<!-- Box Start -->
			<c:forEach var="varProjectForm" items="${projectSearchForm.projectFormList}">
				
				<c:forEach var="varProjectDetailsForm" items="${varProjectForm.projectDetailsFormSet}">
						
				<c:if test="${ varProjectDetailsForm.price  ge projectSearchForm.minPriceInt
								&& varProjectDetailsForm.price  le projectSearchForm.maxPriceInt}">
								
				<c:if test="${ varProjectDetailsForm.bedRooms ge projectSearchForm.bedRoom}">
    							
				<div class="p-detail">
					<div class="project-list-box">
					
						<div class="head">
							${varProjectForm.companyForm.companyName} - 
							${varProjectForm.projectName} - 
							${varProjectForm.propertyTypeForm.propertyTypeId} 
							<div class="clear"></div>
						</div>
						
						<c:set var="slideImage" value="${varProjectDetailsForm.projectImageForm.slideImagesArray[0]}" />
						
						
						<div class="location">
							<div class="left">
								<div class="webwidget_slideshow_dot">
									<ul>
										<li><a href="${pageContext.request.contextPath}/projectDetail.htm?projectId=${varProjectForm.projectId}
										&projectDetailsId=${varProjectDetailsForm.projectDetailsId }
										&cityId=<%=request.getAttribute("cityId")%>
										&companyId=<%=request.getAttribute("companyId")%>
										&propertyType=<%=request.getAttribute("propertyType")%>
										&cityName=<%=request.getAttribute("cityName")%>
										&bedRoom=<%=request.getAttribute("bedRoom")%>
										&minPrice=<%=request.getAttribute("minPrice")%>
										&maxPrice=<%=request.getAttribute("maxPrice")%>
										&gridList=projectSearchListPage.htm">
										<img src="images/${slideImage}" width="178" height="124" alt="slideshow_large" /></a></li>

									</ul>
									<div style="clear: both"></div>
								</div>
								<ul>
									<strong>Property Details</strong>
									<li>${varProjectDetailsForm.bedRooms} Bedrooms</li>
									<li>${varProjectDetailsForm.bathRooms} Baths</li>
									<li>Size: ${varProjectDetailsForm.size} sq.ft.</li>
									<li>Price : ${varProjectDetailsForm.price} Lac(s)</li>
								</ul>
								<div class="clear"></div>
							</div>

							<div class="right">
								<strong>Address</strong> <br>
								${varProjectForm.addressForm.cityLocalityForm.locality},
								${varProjectForm.addressForm.cityLocalityForm.cityForm.name}<br>
								<b>Mob No : </b>${varProjectForm.userProfileForm.mobileNumber}
								<br> <b>Ph No :</b>${varProjectForm.userProfileForm.landLineNumber}
								<br> <b>E-mail</b> : <a href="#">${varProjectForm.userProfileForm.email}</a>
								<div class="clear"></div>
							</div>
					
							<div class="view-details">
								<a href="${pageContext.request.contextPath}/projectDetail.htm?projectId=${varProjectForm.projectId}
										&projectDetailsId=${varProjectDetailsForm.projectDetailsId }
										&cityId=<%=request.getAttribute("cityId")%>
										&companyId=<%=request.getAttribute("companyId")%>
										&propertyType=<%=request.getAttribute("propertyType")%>
										&cityName=<%=request.getAttribute("cityName")%>
										&bedRoom=<%=request.getAttribute("bedRoom")%>
										&minPrice=<%=request.getAttribute("minPrice")%>
										&maxPrice=<%=request.getAttribute("maxPrice")%>
										&gridList=projectSearchListPage.htm">View
									Details <img src="images/view-icon-png.png" alt="View Details" border="1"
									align="absmiddle" />
								</a>
								<div class="clear"></div>
							</div>
							<div class="clear"></div>
						</div>
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
				</c:if>
				</c:if>
				</c:forEach>
			</c:forEach>
			<!-- Box End -->
			
			<div class="clear"></div>
		</div>
		
		<!--  RIGH BEST DEALS START -->
		<div class="right-portion"
			style="width: 211px; height: auto; float: right;">

			<h2
				style="background: #C0C0C0; margin-bottom: 10px; padding: 5px; color: #080808; text-align: center;">Best
				Deals</h2>
			<div class="advertisement">
				<div id="wrapper">
					<ul id="vertical-ticker">
						<c:forEach var="varProjectForm" items="${projectSearchForm.projectFormList}">
								
								<c:forEach var="varProjectDetailsForm" 	items="${varProjectForm.projectDetailsFormSet}">
									
									<c:if test="${ varProjectDetailsForm.bestDeal ==  'Y'}">
											
										<li>
											<a href="${pageContext.request.contextPath}/projectDetail.htm?projectId=${varProjectForm.projectId}
													&projectDetailsId=${varProjectDetailsForm.projectDetailsId }
													&cityId=<%=request.getAttribute("cityId")%>
													&companyId=<%=request.getAttribute("companyId")%>
													&propertyType=<%=request.getAttribute("propertyType")%>
													&cityName=<%=request.getAttribute("cityName")%>
													&bedRoom=<%=request.getAttribute("bedRoom")%>
													&minPrice=<%=request.getAttribute("minPrice")%>
													&maxPrice=<%=request.getAttribute("maxPrice")%>
													&gridList=projectSearchListPage.htm"><img src="images/gall-img.jpg" alt="Gallery Image" />
												<h3>${varProjectForm.projectName}</h3>
												<div class="features">Type : ${varProjectDetailsForm.bedRooms} BHK</div>
												<div class="features">Sizes : ${varProjectDetailsForm.size} sq. ft.</div>
												<div class="features">Price : ${varProjectDetailsForm.price} Lac(S)</div>
												<div class="features">${varProjectForm.addressForm.cityLocalityForm.locality},
												${varProjectForm.addressForm.cityLocalityForm.cityForm.name}</div> 
											</a>
										</li>
									</c:if>
								</c:forEach>	
						</c:forEach>
					</ul>

				</div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
		<script>
			$(document).ready(function(){
				$('li:odd, .content > *:odd');
			});
		</script>
	</div>
	<!--Main Section-->

	<div class="clear"></div>

	<!--Footer Section-->
<footer>
	<!--Social Links Starts -->
		<div class="socialicn" style="float:left; width:120px;">
		<div class="marginL10 marginT10" style="margin-bottom:10px;">
			<a href="//www.pinterest.com/pin/create/button/" data-pin-do="buttonBookmark" data-pin-color="red" data-pin-height="28">
				<img src="//assets.pinterest.com/images/pidgets/pinit_fg_en_rect_red_28.png" />
			</a>
			<!-- Please call pinit.js only once per page -->
			<script type="text/javascript" async defer src="//assets.pinterest.com/js/pinit.js"></script>
		</div>
		<div class="marginL10  marginT10" style="margin-bottom:10px;">
			<div class="fb-like" data-href="https://www.facebook.com/bestnestrealestate" data-layout="box_count" data-action="like" data-show-faces="true" data-share="true"></div>
		</div>
		<div class="marginL10  marginT10" style="margin-bottom:10px;">
			<a href="https://twitter.com/share" class="twitter-share-button" data-url="https://twitter.com/BestNestRealEst" data-text="BestNest Real Estate Services Pvtt.ltd." data-via="BestNestRealEst" data-related="BestNestRealEstate" data-hashtags="BNest">Tweet</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
		</div>
		</div>
		<!--End Social Links -->
		<div class="context">
			<div class="sections">
				<h3>Residential</h3>
				<ul>
					<li><a href="/noida-residential-projects" target="_blank">Noida Residential Projects</a></li>
					<li><a href="/delhi-residential-projects" target="_blank">Delhi Residential Projects</a></li>
					<li><a href="/antrikshurbangreek" target="_blank">Antriksh Urban Greek</a></li>
					<li><a href="/antrikshgalaxy" target="_blank">Antriksh Galaxy</a></li>
					<li><a href="/revantasmartresidency" target="_blank">Revanta Smart Residency</a></li>
					<li><a href="/gaurproject" target="_blank">Gaur Projects</a></li>
					<li><a href="/mahagunproject" target="_blank">Mahagun Projects</a></li>
				</ul>
				<div class="clear"></div>
			</div>
			<div class="sections">
				<h3>Commercial</h3>
				<ul>
					<li><a href="/noida-commercial-projects" target="_blank">Commercial Projects in Noida</a></li>
					<li><a href="/aarzasquare1" target="_blank">Aarza Square</a></li>
					<li><a href="/bandhan" target="_blank">Bandhan</a></li>
					<li><a href="/cybercity" target="_blank">Cyber City</a></li>
					<li><a href="/goldeni" target="_blank">Golden I</a></li>
					<li><a href="/neotowncommercial" target="_blank">Neo Town</a></li>
					<li><a href="/trinitynx" target="_blank">Trinity NX</a></li>
				</ul>
				<div class="clear"></div>
			</div>
            <div class="sections">
				<h3>New Projects</h3>
				<ul>
					<li><a href="/bullandcalisto" target="_blank">Bulland Calisto</a></li>
                    <li><a href="/damontepic" target="_blank">Damont Epic</a></li>
                    <li><a href="/shivalikhomes" target="_blank">Shivalik Homes 2</a></li>
                    <li><a href="/riseorganicghar" target="_blank">Rise Organic Ghar</a></li>
                    <li><a href="/europiapark" target="_blank">Europia Park</a></li>
                    <li><a href="/neotown" target="_blank">Neo Town</a></li>
                    <li><a href="/fragrance" target="_blank">Fragrance</a></li>
                    <li><a href="/trinitynxresidential" target="_blank">Trinity Nx</a></li>
                    <li><a href="/amaatrahomes" target="_blank">Amaatra Homes</a></li>
                    <li><a href="/acecity" target="_blank">Ace City</a></li>
                    
				</ul>
				<div class="clear"></div>
			</div>
			<div class="sections last">
				<h3>Contact us</h3>
				<ul>
					<li><a href="/aboutUs.htm">About Us</a></li>
					<li><a href="/nriServices.htm">NRI Services</a></li>
					<li><a href="/contactUs.htm">Contact Us</a></li>
				</ul>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
		<div class="copyright">
			<div class="main-text">
				<div class="rights">
					&copy; 2014 Best Nest. All Rights Reserved
					<div class="clear"></div>
				</div>
				<div class="poweredby">
					Powered by <a href="/" style="color:#ffc211;">BestNest Real Estate Services Pvt. Ltd.</span>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
		
	</footer>
	<!--End Footer Section-->

<!--Footer Section-->
	




</body>
</html>
