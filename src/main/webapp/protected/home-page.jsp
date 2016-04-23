<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page isELIgnored="false"%>
<head>

<meta name="msvalidate.01" content="9759E0718AC050A65102EA3D3F92C50A" />
<meta name="google-site-verification" content="r7tc1qa4MWIwCkE8iqUDczB4y9x-7DomeOxqUlKXEII" />
<title>BestNest Real Estate | Real Estate Consultant Noida | Property Dealer in Noida Extension</title>
<meta name="description" content="BestNest Real estate services Pvt.Ltd. is a Real Estate property Consultancy Company in Delhi NCR, We Provide buy,sell option for your property, our office Address is  D-77,Sector 63, Noida " />
<meta name="keywords" content="BestNest,BestNest Real Estate,Property dealer in Noida Extension,Real Estate Consultant Noida, 2BHK Flat in Noida Extension,Property in Noida Extension,BestNest Noida,Residential Flat in Noida Extension,Commercial shop in Noida Extension,Flats in greater Noida west" />
<meta name="page-topic" content="BestNest Real Estate" />
<meta name="Copyright" content="BestNest Real Estate Services Private Limited" />
<meta name="ROBOTS" content="INDEX, FOLLOW" />
<meta name="rating" content="Safe For Kids" />
<meta name="googlebot" content="INDEX, FOLLOW" />
<meta name="YahooSeeker" content="INDEX, FOLLOW" />
<meta name="msnbot" content="INDEX, FOLLOW" />
<meta name="allow-search" content="yes" />
<meta name="revisit-after" content="daily" />
<meta name="distribution" content="global" />
<meta name="expires" content="never" />
<meta name="language" content="english" />

</head>

<div class="clear"></div>
 <!-- Adds -->
 <div class="slider1">

   <c:forEach  var="varProjectForm" items="${projectSearchForm.focusedProjectList}">
  		
  		<c:if test="${varProjectForm.focusProject}">
  		
  		<c:set var="bedRooms" value="" scope="page" />
		<c:set var="bathRooms" value="" scope="page" />
		<c:set var="size" value="" scope="page" />
		<c:set var="price" value="" scope="page" />
						
  		 <c:forEach var="varProjectDetailsForm" items="${varProjectForm.projectDetailsFormSet}" varStatus="loop">
  				<c:if test="${loop.first || loop.last }">
						<c:choose>
							<c:when test="${loop.last}">
								<c:set var="bedRooms" value="${bedRooms}${varProjectDetailsForm.bedRooms} " />
								<c:set var="bathRooms" value="${bathRooms}${varProjectDetailsForm.bathRooms} " />
								<c:set var="size" value="${size}${varProjectDetailsForm.size} " />
								<c:set var="price" value="${price}${varProjectDetailsForm.price} " />
							</c:when>
							<c:otherwise>
								<c:set var="bedRooms" value="${bedRooms}${varProjectDetailsForm.bedRooms} to " />
								<c:set var="bathRooms" value="${bathRooms}${varProjectDetailsForm.bathRooms} to" />
								<c:set var="size" value="${size}${varProjectDetailsForm.size} to " />
								<c:set var="price" value="${price}${varProjectDetailsForm.price} to " />
							</c:otherwise>
						</c:choose>	
				</c:if>
				<c:set var="slideImage" value="${varProjectDetailsForm.projectImageForm.slideImagesArray[0]}" />
  		</c:forEach>
  		
    	
	  	  <div class="slide">
		  		<a href="/property-for-sale/${varProjectForm.url}/"><img src="http://images.bestnest.in/${slideImage}" height="150" width="300" alt="${slideImage}"></a>
		        <div class="slide-wrapper">
		        	<div>
		        		<a href="#" class="sprojectname">${varProjectForm.projectName}, </a>
		        		<span>${varProjectForm.addressForm.cityLocalityForm.cityForm.name}</span>
		    		</div>
		       		<div class="marginT3">
		        		<div class="stextbhk">
		            		<span>${bedRooms} BHK</span>
		        		</div>
		        		
		        		<div class="stextprice">
		            		<a href="#"> Rs.
		                		<span class="sprice">${price}</span> Lacs*	
		            		</a>
		        		</div>
		                <div class="clear"></div>
		    		</div>
		            <div class="clear"></div>
		        </div>  
		   </div>
	</c:if>
  </c:forEach>
</div>
 <!--End Adds -->
<!--Banner Section-->
<div class="banner">
  <div id="search-bar-Bg">
    <form:form id="projectSearchForm" action="property-for-sale"
          	modelAttribute="projectSearchForm" onsubmit="javascript:updateHiddenField();">
          
          	
          <input id="cityName" name="cityForm.name" type="hidden"/>
          <input id="companyName" name="companyForm.companyName" type="hidden"/>
          <input id="minPrice" name="minPrice" type="hidden"/>
          <input id="maxPrice" name="maxPrice" type="hidden"/>
          <input id="bedRoom" name="bedRoom" type="hidden"/>
          <input id="propertyTypeId" name="propertyTypeId" type="hidden"/>
          <input id="gridList" name="gridList" value="Grid" type="hidden"/>
          
    
      <div class="form-container">
        <div class="form">
          <div class="tab-items">
            <div class="search-tabs clearfix">
                <ul style="list-style:none outside none; padding:0; margin:0;">
                    <li>
                       <a href="javascript:void(0)" class="sel frmEl tabs" id="ResBuyTab" title="Buy">Buy</a>  
                    </li>
                   <!-- <li>
                    	<a href="javascript:void(0)" class="frmEl tabs" id="ResRentTab" title="Rent">Rent</a> 
                    </li>-->
                </ul>
            </div>
            <div class="vShadow"></div>
            <!-- Start Buy Tab -->
            <div id="buyTab" class="showfilter buyrentpanel">
            	<div id="search-fld-wraper">
              	<div class="ptype-input-wrap">
                 <div class="pList-wrap">
                            <a class="frmEl pType-dd ddLClick dropDown" id="pType-dd" onClick="javascript:toggleDiv('s_property_type');" title="All">
                                <div id="protpe" class="addPdElip" style="width: 100px;">All Type</div>
                                <span class="fl vmid">
                                     <img src="http://images.bestnest.in/drop-darrow.png" alt="Drop Down Arrow" width="8" height="4">
                                </span>
                            </a>
                             <div id="s_property_type" class="cScroll dd-list-menu scrollbar96 ddlistOpen ddlstSrp showi propTypvariant flipClose" style="width:200px;top:100%;height:100px">
                            	<a id="resddli" class="prnt DCheadingOpt">
                                    <label for="allPropertyType">
                                        <input class="vmid" type="radio" name="propertyType" id="allPropertyType" value="All Type" onclick="handleClick(this, this.value, 'protpe', 'stInner', 's_property_type','Y');" checked="checked" />  All Type
                                    </label>
                                </a>
                            </div>
                 </div>
                <div class="suggestWrapWide frmEl zhndle" id="suggesterCtx" style="vertical-align:top">
                  <div id="SelectBox" class="suggest-keyword-Box" style="position:absolute;">
                    <div id="searchfield" class="wordbox fl ui-widget" >
                      <input type="text" class="suggest-keyword-field acoff tags" id="tags" name="tags" 
                                x-webkit-speech lang = "en_IN" placeholder="Type Location, Project or Builder" autocomplete="off" />
                    </div>
                    <div class="clear"></div>
                  </div>
                </div>
                <input type="submit" value="Search" id="submit_query" style="margin-left:80px;" class="btn b yellow marginL5" />
              </div>
             </div>
             <div class="slideOpen search-filter" >
             
            <!-- Possession Status Start -->
              <div id="avail_wrap" class="filter-item mr20 fl">
                  <div class="head clearfix">Construction Status</div>
                  <div class="FI-Box" style="width:145px; white-space:nowrap;">
                      <a class="FI-Tag ddLClick dropDown frmEl" onClick="javascript:toggleDiv('s_possessionStatus_type');">
                          <i class="setMid"></i>
                          <div id="possType" class="addPdElip" style="width: 100px;">All</div>
                          <img src="http://images.bestnest.in/drop-darrow.png" alt="Drop Down Arrow" width="8" height="4">
                      </a>
                      <div id="s_possessionStatus_type" class="dd-list-menu ddlistOpen ddlstSrp showi flipClose" style="width: 160px;">
                           <div class="ddlist">
                          	<a class="acoff" id="const_all" >
                                  <label for="allPossType">
                                      <input class="vmid" type="radio" name="possessionStatus" id="allPossType" value="All" onclick="handleClick(this, this.value, 'possType', 'stInner', 's_possessionStatus_type', 'Y');" checked="checked" /> All
                                  </label>
                             	</a>
                          </div>
                      </div>
                  </div>
               </div>
            <!-- Possession Status End -->
                <!--  City Start  -->
                <div id="city_wrap" class="filter-item mr45 fl">
                    <div class="head clearfix" id="priceLabel">City</div>
                    <div class="FI-Box" id="city_list_wrap">
                        <a class="FI-Tag ddLClick dropDown" onClick="javascript:toggleDiv('s_city');">
                                <i class="setMid"></i>
                                <div id="city" class="addPdElip" style="width: 100px;">All</div>
                               <img src="http://images.bestnest.in/drop-darrow.png" alt="Drop Down Arrow" width="8" height="4">
                            </a>
                        <div id="s_city" class="dd-list-menu ddlistOpen showi ddlstSrp flipClose" style="width:240px; display: none;">
                              <div class="ddlist">
                              	<a class="prnt DCheadingOpt">
                                   <label for="allPropertyType">
                                       <input class="vmid" type="radio" name="filterCity" id="allCity"  value="All" onclick="handleClick(this, this.value, 'city', 'stInner', 's_city', 'Y');" checked="checked" />  All
                                   </label>
                              	</a>		
                              </div>
                        </div>
                        </div>
                    <div class="clear"></div>
                </div>
                <!--  City End  -->
            		<div id="budget_wrap" class="filter-item mr45 fl">
              <div id="priceLabel" class="head clearfix">Price</div>
              <div id="buy_budget_min_wrap" class="FI-Box"> <a class="FI-Tag ddLClick dropDown frmEl" onClick="javascript:toggleDiv('s_buy_budget_min');"> <i class="setMid"></i>
                <div id="filtermin-price">Min Price</div>
                <img src="http://images.bestnest.in/drop-darrow.png" alt="Drop Down Arrow" width="8" height="4"> </a>
                <div id="s_buy_budget_min" class="dd-list-menu ddlistOpen ddlstSrp showi flipClose" style="width:120px;">
                  <div id="scrollbar1" class="cScroll scrollbar96 marginT5" style="height:200px; clear: both;">
                    <div class="scrollbar">
                      <div class="track">
                        <div class="thumb">
                          <div class="end"></div>
                        </div>
                      </div>
                    </div>
                    <div class="viewport" style="height:200px;">
                      <div class="overview" style="top:0px;">
                        <div id="buy_minprice" class="ddlist"> <a val ="0" onclick="handleClick(this, 'Min', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">Min</a> <a val="1" onclick="handleClick(this, 'Below 5 Lacs', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">Below 5 Lacs</a> <a val="2" onclick="handleClick(this, '5 Lacs', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">5 Lacs</a> <a val="3" onclick="handleClick(this, '10 Lacs', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">10 Lacs</a> <a val="4" onclick="handleClick(this, '15 Lacs', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">15 Lacs</a> <a val="5" onclick="handleClick(this, '20 Lacs', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">20 Lacs</a> <a val="6" onclick="handleClick(this, '25 Lacs', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">25 Lacs</a> <a val="7" onclick="handleClick(this, '25 Lacs', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">30 Lacs</a> <a val="8" onclick="handleClick(this, '40 Lacs', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">40 Lacs</a> <a val="9" onclick="handleClick(this, '50 Lacs', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">50 Lacs</a> <a val="10" onclick="handleClick(this, '60 Lacs', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">60 Lacs</a> <a val="11" onclick="handleClick(this, '75 Lacs', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">75 Lacs</a> <a val="12" onclick="handleClick(this, '90 Lacs', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">90 Lacs</a> <a val="13" onclick="handleClick(this, '1 Crore', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">1 Crore</a> <a val="14" onclick="handleClick(this, '1.5 Crore', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">1.5 Crores</a> <a val="15" onclick="handleClick(this, '2 Crore', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">2 Crores</a> <a val="16" onclick="handleClick(this, '3 Crore', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">3 Crores</a> <a val="17" onclick="handleClick(this, '5 Crore', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">5 Crores</a> <a val="18" onclick="handleClick(this, '10 Crore', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">10 Crores</a> </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <i class="marginT10">-</i>
              <div id="buy_budget_max_wrap" class="FI-Box"> <a class="FI-Tag ddLClick dropDown frmEl" onClick="javascript:toggleDiv('s_buy_budget_max');"> <i class="setMid"></i>
                <div id="filtermax-price">Max Price</div>
                <img src="http://images.bestnest.in/drop-darrow.png" alt="Drop Down Arrow" width="8" height="4"> </a>
                <div id="s_buy_budget_max" class="dd-list-menu ddlistOpen ddlstSrp showi flipClose" style="width: 115px;" >
                  <div id="scrollbar2" class="cScroll scrollbar96 marginT5" style="height: 200px; clear: both;">
                    <div class="scrollbar">
                      <div class="track">
                        <div class="thumb">
                          <div class="end"></div>
                        </div>
                      </div>
                    </div>
                    <div class="viewport" style="height:200px;">
                      <div class="overview" style="top: 0px;">
                        <div id="buy_maxprice" class="ddlist"> <a val ="0" onclick="handleClick(this, 'Max', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">Max</a> <a val="1" onclick="handleClick(this, 'Below 5 Lacs', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">Below 5 Lacs</a> <a val="2" onclick="handleClick(this, '5 Lacs', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">5 Lacs</a> <a val="3" onclick="handleClick(this, '10 Lacs', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">10 Lacs</a> <a val="4" onclick="handleClick(this, '15 Lacs', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">15 Lacs</a> <a val="5" onclick="handleClick(this, '20 Lacs', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">20 Lacs</a> <a val="6" onclick="handleClick(this, '25 Lacs', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">25 Lacs</a> <a val="7" onclick="handleClick(this, '25 Lacs', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">30 Lacs</a> <a val="8" onclick="handleClick(this, '40 Lacs', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">40 Lacs</a> <a val="9" onclick="handleClick(this, '50 Lacs', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">50 Lacs</a> <a val="10" onclick="handleClick(this, '60 Lacs', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">60 Lacs</a> <a val="11" onclick="handleClick(this, '75 Lacs', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">75 Lacs</a> <a val="12" onclick="handleClick(this, '90 Lacs', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">90 Lacs</a> <a val="13" onclick="handleClick(this, '1 Crore', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">1 Crore</a> <a val="14" onclick="handleClick(this, '1.5 Crore', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">1.5 Crores</a> <a val="15" onclick="handleClick(this, '2 Crore', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">2 Crores</a> <a val="16" onclick="handleClick(this, '3 Crore', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">3 Crores</a> <a val="17" onclick="handleClick(this, '5 Crore', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">5 Crores</a> <a val="18" onclick="handleClick(this, '10 Crore', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">10 Crores</a> </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            		<div id="bedroom_num_wrap" class="filter-item bedroom mr45 fl">
              <div class="head clearfix">Bedrooms</div>
              <div class="FI-Box"> <a class="FI-Tag ddLClick dropDown frmEl" onClick="javascript:toggleDiv('s_bedroom_num');"> <i class="setMid"></i>
                <div id="filterbeds">Any</div>
                <img src="http://images.bestnest.in/drop-darrow.png" alt="Drop Down Arrow" width="8" height="4"> </a>
                <div id="s_bedroom_num" class="dd-list-menu ddlistOpen ddlstSrp showi flipClose" style="width:115px;">
                  <div id="scrollbar3" class="cScroll scrollbar96 marginT5" style="height:100px; clear: both;">
                    <div class="scrollbar">
                      <div class="track">
                        <div class="thumb">
                          <div class="end"></div>
                        </div>
                      </div>
                    </div>
                    <div class="viewport ptnr" style="height:100px" >
                      <div class="overview" style="top: 0px;">
                        <div class="ddlist"> <a class="acoff" id="filterbd_any" >
                          <label for="bedroomli1">
                            <input class="vmid" type="radio" name="bedroomno" id="bedroomli1" value="Any" onclick="handleClick(this, this.value, 'filterbeds', 'stInner', 's_bedroom_num', 'Y');" checked="checked" />
                            Any </label>
                          </a> <a class="acoff" id="filterbd_any" >
                          <label for="bedroomli2">
                            <input class="vmid" type="radio" name="bedroomno" id="bedroomli2" value="1 BHK" onclick="handleClick(this, this.value, 'filterbeds', 'stInner', 's_bedroom_num', 'Y');" />
                            1 BHK </label>
                          </a> <a class="acoff" id="filterbd_any" >
                          <label for="bedroomli3">
                            <input class="vmid" type="radio" name="bedroomno" id="bedroomli3" value="2 BHK" onclick="handleClick(this, this.value, 'filterbeds', 'stInner', 's_bedroom_num', 'Y');" />
                            2 BHK </label>
                          </a> <a class="acoff" id="filterbd_any" >
                          <label for="bedroomli4">
                            <input class="vmid" type="radio" name="bedroomno" id="bedroomli4" value="3 BHK" onclick="handleClick(this, this.value, 'filterbeds', 'stInner', 's_bedroom_num', 'Y');" />
                            3 BHK </label>
                          </a> <a class="acoff" id="filterbd_any" >
                          <label for="bedroomli5">
                            <input class="vmid" type="radio" name="bedroomno" id="bedroomli5" value="4 BHK" onclick="handleClick(this, this.value, 'filterbeds', 'stInner', 's_bedroom_num', 'Y');" />
                            4 BHK </label>
                          </a> <a class="acoff" id="filterbd_any" >
                          <label for="bedroomli6">
                            <input class="vmid" type="radio" name="bedroomno" id="bedroomli6" value="5 BHK" onclick="handleClick(this, this.value, 'filterbeds', 'stInner', 's_bedroom_num', 'Y');" />
                            5 BHK </label>
                          </a> </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            		<div id="clrAlTxt" class="fr"> 
                    	<a class="clearall" id="clrAl" onClick="resetdo();">clear all</a> 
                   	</div>
            		<div class="clear"></div>
          		</div>
            	<div class="clear"></div>
            </div>
            <!--End Buy Tab -->
            
            <!-- Start Rent Tab -->
           <!-- <div id="rentTab" class="hidefilter buyrentpanel">
            	<div id="rent-fld-wraper">
              		<div class="ptype-input-wrap">
                		<div class="pList-wrap"> 
                	<a class="frmEl pType-dd ddLClick dropDown" id="pType-dd1" onClick="javascript:toggleDiv('s_property_type1');">
                  		<div id="protpe1" class="addPdElip" style="width: 100px;">Flat</div>
                  <span class="fl vmid"> <img src="http://images.bestnest.in/drop-darrow.png" alt="Drop Down Arrow" width="8" height="4"> </span> </a>
                  <div id="s_property_type1" class="cScroll dd-list-menu scrollbar96 ddlistOpen ddlstSrp showi propTypvariant flipClose" style="width:240px;top:100%;height:auto;"> 
                  <span style="font-family:opensans-bold; font-size:14px; color:#666; margin-left:10px;">RESIDENTIAL</span>
                  <a id="flatli" class="prnt DCheadingOpt marginT5">
                    <label for="protypeli3">
                      <input type="radio" name="protype1" id="protypeli3" value="Flat" onclick="handleClick(this, this.value, 'protpe1', 'stRadio', 's_property_type1','Y');" checked="checked" />
                     Flat </label>
                    </a> 
                    <a id="houseli" class="prnt DCopen DCheadingOpt">
                    <label for="protypeli4">
                      <input type="radio" name="protype1" id="protypeli4" value="House-Villa" onclick="handleClick(this, this.value, 'protpe1', 'stRadio', 's_property_type1', 'Y');" />
                      House/Villa</label>
                    </a> 
                    <a id="pgli" class="prnt DCopen DCheadingOpt">
                    <label for="protypeli5">
                      <input type="radio" name="protype1" id="protypeli5" value="PG-Hostel" onclick="handleClick(this, this.value, 'protpe1', 'stRadio', 's_property_type1', 'Y');" />
                      PG/Hostel</label>
                    </a> 
                    </div>
                </div>
                		<div class="suggestWrapWide frmEl zhndle" id="suggesterCtx1" style="vertical-align:top">
                  <div id="SelectBox1" class="suggest-keyword-Box" style="position:absolute;">
                    <div class="wordbox fl ui-widget">
                      <input type="text" class="suggest-keyword-field acoff tags" id="renttag" name="tags1"
                      x-webkit-speech lang = "en_IN" placeholder="Type Location or Project/Society or Keyword" autocomplete="off" />
                    </div>
                    <div class="clear"></div>
                  </div>
                </div>
                		<input type="button" value="Search" id="submit_query" style="margin-left:5px;" class="btn b yellow marginL5" onClick="window.location.href='project-rent-search.html';"/>
              	</div>
            	</div>
            	<div class="slideOpen search-filter" >
            		<div id="rentCityWrap" class="filter-item mr20 fl">
            	<div class="head clearfix" id="rentCity">City</div>
                <div class="FI-Box" id="RentCityList"> 
                        <a class="FI-Tag ddLClick dropDown" onClick="javascript:toggleDiv('s_city1');" style="width:152px;"> 
                            <i class="setMid"></i>
                            <div id="rentFilterCity">All</div>
                            <img src="http://images.bestnest.in/drop-darrow.png" alt="Drop Down Arrow" width="8" height="4"> 
                        </a>
                    <div id="s_city1" class="dd-list-menu ddlistOpen showi ddlstSrp flipClose" style="width:240px; display: none;">
                      <div class="ddlist"> 
                        <a class="acoff" id="city_all" >
                            <label for="rentcityli0">
                            <input class="vmid" type="radio" name="citylist1" id="rentcityli0" value="All" onclick="handleClick(this, this.value, 'rentFilterCity', 'stInner', 's_city1', 'Y');" checked="checked" /> All 
                            </label>
                        </a> 
                        <a class="acoff" id="rentcity_yamuna_exp" >
                            <label for="rentcityli1">
                              <input class="vmid" type="radio" name="citylist1" id="rentcityli1" value="Yamuna Expressway" onclick="handleClick(this, this.value, 'rentFilterCity', 'stInner', 's_city1', 'Y');" />
                              Yamuna Expressway 
                            </label>
                        </a>
                        <a class="acoff"  id="rentcity_gnoida" >
                            <label for="rentcityli2">
                              <input class="vmid" type="radio" name="citylist1" id="rentcityli2" value="Greater Noida" onclick="handleClick(this, this.value, 'rentFilterCity', 'stInner', 's_city1', 'Y');" />
                              Greater Noida 
                            </label>
                        </a> 
                        <a class="acoff"  id="rentcity_nhghz" >
                            <label for="rentcityli3">
                              <input class="vmid" type="radio" name="citylist1" id="rentcityli3" value="NH-24/Ghaziabad" onclick="handleClick(this, this.value, 'rentFilterCity', 'stInner', 's_city1', 'Y');" />
                              NH-24/Ghaziabad 
                            </label>
                            </a>
                            <a class="acoff"  id="rentcity_noida" >
                            <label for="rentcityli4">
                              <input class="vmid" type="radio" name="citylist1" id="rentcityli4" value="Noida" onclick="handleClick(this, this.value, 'rentFilterCity', 'stInner', 's_city1', 'Y');" />
                              Noida 
                            </label>
                            </a> 
                            <a class="acoff"  id="rentcity_nodextn" >
                            <label for="rentcityli5">
                              <input class="vmid" type="radio" name="citylist1" id="rentcityli5" value="Noida Extension" onclick="handleClick(this, this.value, 'rentFilterCity', 'stInner', 's_city1', 'Y');" />
                              Noida 
                            </label>
                            </a> 
                        </div>
                    </div>
                  </div>
              	<div class="clear"></div>
            </div>
            		<div id="rentBudgetWrap" class="filter-item mr45 fl">
              <div class="head clearfix" id="rentPriceLabel">Price</div>
              <div id="rent_budget_min_wrap" class="FI-Box"> 
              	<a class="FI-Tag ddLClick dropDown frmEl" 
                	onClick="javascript:toggleDiv('s_rent_budget_min');" style="width:152px;"> 
                	<i class="setMid"></i>
               		 <div id="rentMinprice">Min Price</div>
                	<img src="http://images.bestnest.in/drop-darrow.png" alt="Drop Down Arrow" width="8" height="4"> 
               	</a>
                <div id="s_rent_budget_min" class="dd-list-menu ddlistOpen ddlstSrp showi flipClose" style="width:170px;">
                  <div id="scrollbar4" class="cScroll scrollbar96 marginT5" style="height:200px; clear: both;">
                    <div class="scrollbar">
                      <div class="track">
                        <div class="thumb">
                          <div class="end"></div>
                        </div>
                      </div>
                    </div>
                    <div class="viewport ptnr" style="height:200px" >
                      <div class="overview" style="top: 0px;">
                        <div id="rent_minprice" class="ddlist"> 
                        <a val ="0" onclick="handleClick(this, 'Min', 'rentMinprice', 'stInner', 's_buy_budget_min1', 'Y');">Min</a> <a val="1" onclick="handleClick(this, 'Below 5000', 'rentMinprice', 'stInner', 's_buy_budget_min1', 'Y');">Below 5,000</a> <a val="2" onclick="handleClick(this, '5000', 'rentMinprice', 'stInner', 's_buy_budget_min1', 'Y');">Rs.5,000</a> <a val="3" onclick="handleClick(this, '10000', 'rentMinprice', 'stInner', 's_rent_budget_min', 'Y');">Rs.10,000</a> <a val="4" onclick="handleClick(this, '15000', 'rentMinprice', 'stInner', 's_rent_budget_min', 'Y');">Rs.15,000</a> <a val="5" onclick="handleClick(this, '20000', 'rentMinprice', 'stInner', 's_rent_budget_min', 'Y');">Rs.20,000</a> <a val="6" onclick="handleClick(this, '25000', 'rentMinprice', 'stInner', 's_rent_budget_min', 'Y');">Rs.25,000</a> <a val="7" onclick="handleClick(this, '30000', 'rentMinprice', 'stInner', 's_rent_budget_min', 'Y');">Rs.30,000</a> <a val="8" onclick="handleClick(this, '35000', 'rentMinprice', 'stInner', 's_rent_budget_min', 'Y');">Rs.35,000</a> <a val="9" onclick="handleClick(this, '40000', 'rentMinprice', 'stInner', 's_rent_budget_min', 'Y');">Rs.40,000</a> <a val="10" onclick="handleClick(this, '45000', 'rentMinprice', 'stInner', 's_rent_budget_min', 'Y');">Rs.45,000</a> <a val="11" onclick="handleClick(this, '50000', 'rentMinprice', 'stInner', 's_rent_budget_min', 'Y');">Rs.50,000</a> <a val="12" onclick="handleClick(this, '55000', 'rentMinprice', 'stInner', 's_rent_budget_min', 'Y');">Rs.55,000</a> <a val="13" onclick="handleClick(this, '60000', 'rentMinprice', 'stInner', 's_rent_budget_min', 'Y');">Rs.60,000</a> <a val="14" onclick="handleClick(this, '65000', 'rentMinprice', 'stInner', 's_rent_budget_min', 'Y');">Rs.65,000</a> <a val="15" onclick="handleClick(this, '70000', 'rentMinprice', 'stInner', 's_rent_budget_min', 'Y');">Rs.70,000</a> <a val="16" onclick="handleClick(this, '75000', 'rentMinprice', 'stInner', 's_rent_budget_min', 'Y');">Rs.75,000</a> <a val="17" onclick="handleClick(this, '80000', 'rentMinprice', 'stInner', 's_rent_budget_min', 'Y');">Rs.80,000</a> <a val="18" onclick="handleClick(this, '85000', 'rentMinprice', 'stInner', 's_rent_budget_min', 'Y');">Rs.85,000</a> </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <i class="marginT10">-</i>
              <div id="rent_budget_max_wrap" class="FI-Box"> <a class="FI-Tag ddLClick dropDown frmEl" onClick="javascript:toggleDiv('s_rent_budget_max');" style="width:152px;"> <i class="setMid"></i>
                <div id="rentMaxprice">Max Price</div>
                <img src="http://images.bestnest.in/drop-darrow.png" alt="Drop Down Arrow" width="8" height="4"> </a>
                <div id="s_rent_budget_max" class="dd-list-menu ddlistOpen ddlstSrp showi flipClose" style="width: 170px;" >
                  <div id="scrollbar5" class="cScroll scrollbar96 marginT5" style="height: 200px; clear: both;">
                    <div class="scrollbar">
                      <div class="track">
                        <div class="thumb">
                          <div class="end"></div>
                        </div>
                      </div>
                    </div>
                    <div class="viewport" style="height:200px;">
                      <div class="overview" style="top: 0px;">
                        <div id="rent_maxprice" class="ddlist"> <a val ="0" onclick="handleClick(this, 'Max', 'rentMaxprice', 'stInner', 's_rent_budget_max', 'Y');">Max</a> <a val="1" onclick="handleClick(this, 'Below 5000', 'rentMaxprice', 'stInner', 's_rent_budget_max', 'Y');">Below 5,000</a> <a val="2" onclick="handleClick(this, '5,000', 'rentMaxprice', 'stInner', 's_rent_budget_max', 'Y');">Rs.5,000</a> <a val="3" onclick="handleClick(this, '10000', 'rentMaxprice', 'stInner', 's_rent_budget_max', 'Y');">Rs.10,000</a> <a val="4" onclick="handleClick(this, '15000', 'rentMaxprice', 'stInner', 's_rent_budget_max', 'Y');">Rs.15,000</a> <a val="5" onclick="handleClick(this, '20000', 'rentMaxprice', 'stInner', 's_rent_budget_max', 'Y');">Rs.20,000</a> <a val="6" onclick="handleClick(this, '25000', 'rentMaxprice', 'stInner', 's_rent_budget_max', 'Y');">Rs.25,000</a> <a val="7" onclick="handleClick(this, '30000', 'rentMaxprice', 'stInner', 's_rent_budget_max', 'Y');">Rs.30,000</a> <a val="8" onclick="handleClick(this, '35000', 'rentMaxprice', 'stInner', 's_rent_budget_max', 'Y');">Rs.35,000</a> <a val="9" onclick="handleClick(this, '40000', 'rentMaxprice', 'stInner', 's_rent_budget_max', 'Y');">Rs.40,000</a> <a val="10" onclick="handleClick(this, '45000', 'rentMaxprice', 'stInner', 's_rent_budget_max', 'Y');">Rs.45,000</a> <a val="11" onclick="handleClick(this, '50000', 'rentMaxprice', 'stInner', 's_rent_budget_max', 'Y');">Rs.50,000</a> <a val="12" onclick="handleClick(this, '55000', 'rentMaxprice', 'stInner', 's_rent_budget_max', 'Y');">Rs.55,000</a> <a val="13" onclick="handleClick(this, '60000', 'rentMaxprice', 'stInner', 's_rent_budget_max', 'Y');">Rs.60,000</a> <a val="14" onclick="handleClick(this, '65000', 'rentMaxprice', 'stInner', 's_rent_budget_max', 'Y');">Rs.65,000</a> <a val="15" onclick="handleClick(this, '70000', 'rentMaxprice', 'stInner', 's_rent_budget_max', 'Y');">Rs.70,000</a> <a val="16" onclick="handleClick(this, '75000', 'rentMaxprice', 'stInner', 's_rent_budget_max', 'Y');">Rs.75,000</a> <a val="17" onclick="handleClick(this, '80000', 'rentMaxprice', 'stInner', 's_rent_budget_max', 'Y');">Rs.80,000</a> <a val="18" onclick="handleClick(this, '85000', 'rentMaxprice', 'stInner', 's_rent_budget_max', 'Y');">Rs.85,000</a> </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            		<div id="rentBedroomWrap" class="filter-item bedroom mr45 fl">
              <div class="head clearfix">Bedrooms</div>
              <div class="FI-Box"> 
              	<a class="FI-Tag ddLClick dropDown frmEl" onClick="javascript:toggleDiv('rent_bedroom_num');" 
                style="width:152px;"> 
              	<i class="setMid"></i>
                <div id="rentFilterBeds">Any</div>
                <img src="http://images.bestnest.in/drop-darrow.png" alt="Drop Down Arrow" width="8" height="4"> </a>
                <div id="rent_bedroom_num" class="dd-list-menu ddlistOpen ddlstSrp showi flipClose" style="width:170px;">
                  <div id="scrollbar6" class="cScroll scrollbar96 marginT5" style="height:100px; clear: both;">
                    <div class="scrollbar">
                      <div class="track">
                        <div class="thumb">
                          <div class="end"></div>
                        </div>
                      </div>
                    </div>
                    <div class="viewport ptnr" style="height:100px" >
                      <div class="overview" style="top: 0px;">
                        <div class="ddlist"> <a class="acoff" id="filterbd_any" >
                          <label for="rentbedroomli1">
                            <input class="vmid" type="radio" name="bedroomno" id="rentbedroomli1" value="Any" onclick="handleClick(this, this.value, 'rentFilterBeds', 'stInner', 'rent_bedroom_num', 'Y');" checked="checked" />
                            Any </label>
                          </a> <a class="acoff" id="filterbd_any" >
                          <label for="rentbedroomli2">
                            <input class="vmid" type="radio" name="bedroomno" id="rentbedroomli2" value="1 BHK" onclick="handleClick(this, this.value, 'rentFilterBeds', 'stInner', 'rent_bedroom_num', 'Y');" />
                            1 BHK </label>
                          </a> <a class="acoff" id="filterbd_any" >
                          <label for="rentbedroomli3">
                            <input class="vmid" type="radio" name="bedroomno" id="rentbedroomli3" value="2 BHK" onclick="handleClick(this, this.value, 'rentFilterBeds', 'stInner', 'rent_bedroom_num', 'Y');" />
                            2 BHK </label>
                          </a> <a class="acoff" id="filterbd_any" >
                          <label for="rentbedroomli4">
                            <input class="vmid" type="radio" name="bedroomno" id="rentbedroomli4" value="3 BHK" onclick="handleClick(this, this.value, 'rentFilterBeds', 'stInner', 'rent_bedroom_num', 'Y');" />
                            3 BHK </label>
                          </a> <a class="acoff" id="filterbd_any" >
                          <label for="rentbedroomli5">
                            <input class="vmid" type="radio" name="bedroomno" id="rentbedroomli5" value="4 BHK" onclick="handleClick(this, this.value, 'rentFilterBeds', 'stInner', 'rent_bedroom_num', 'Y');" />
                            4 BHK </label>
                          </a> <a class="acoff" id="filterbd_any" >
                          <label for="rentbedroomli6">
                            <input class="vmid" type="radio" name="bedroomno" id="rentbedroomli6" value="5 BHK" onclick="handleClick(this, this.value, 'rentFilterBeds', 'stInner', 's_bedroom_num', 'Y');" />
                            5 BHK </label>
                          </a> </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            		<div id="clrAlTxt" class="fr"> 
                    	<a class="clearall" id="clrAl" onClick="resetdo();">clear all</a> 
                   	</div>
            		<div class="clear"></div>
          		</div>
          		<div class="clear"></div>
          	</div>-->
            <!-- End Rent Tab -->
            <div class="clear"></div>
          </div>
          <div class="clear"></div>
        </div>
        <div class="clear"></div>
      </div>
    </form:form>
  </div>
  <div class="clear"></div>
  <!--Search Bar --> 
</div>
<!--End Search Bar --> 
<!--Banner Section--> 

<!--Content Section-->
<section>
 <div class="blockHeading" style="border-bottom:1px solid #e6e6e6; padding-bottom:10px;"><h1>BestNest Recommended Builders</h1></div>
  <div class="content-section">
    <div style="" id="proGalleryTop" class="blockWrap">
      <div class="blockWidth">
        <div class="proGalleryTwo">
          <div id="projGalTwo">
            <div class="pgTwoBlock"> 
              <a target="_blank" href="/mahagunproject" title="Mahagun Group">
              <div class="pgTwo">
                <div class="pgTwoImg"> <img src="http://images.bestnest.in/recommended-projects/mahagun-group.jpg" alt="Mahagun Group"> </div>
                <div class="pgTwoCity">Delhi/NCR</div>
                <div class="borderHover"></div>
              </div>
              <div class="pgTwoContent">
                <div class="pgTwoLogo"> <img src="http://images.bestnest.in/logo_mahagungroup.png" alt="Mahagun Group"> </div>
                <div class="pgTwoDetails">
                  <div class="pgTwoName">Mahagun Group</div>
                  <div class="pgTwoGroup">Mahagun</div>
                  <div class="pgTwoAdd">Delhi/NCR</div>
                  <div class="pgTwoType">2, 3, 4 BHK Flats</div>
                </div>
                <div class="pgTwoPrice">
                  <p><strong>25 Lac</strong></p>
                  <p>onwards</p>
                  <span>See Details</span> </div>
                <div class="clear"></div>
                <div class="marketedBy">Marketed by BestNest</div>
              </div>
              </a> </div>
            <div class="pgTwoBlock"> 
              <a target="_blank" href="/gaurproject" title="Gaur Group">
              <div class="pgTwo">
                <div class="pgTwoImg"> <img src="http://images.bestnest.in/recommended-projects/gaur-group.jpg" alt="Gaur Group"> </div>
                <div class="pgTwoCity">Delhi/NCR</div>
                <div class="borderHover"></div>
              </div>
              <div class="pgTwoContent">
                <div class="pgTwoLogo"> <img src="http://images.bestnest.in/logo_gaurgroup.png" alt="Gaur Group"> </div>
                <div class="pgTwoDetails">
                  <div class="pgTwoName">Gaur Sons</div>
                  <div class="pgTwoGroup">Gaur</div>
                  <div class="pgTwoAdd">Delhi/NCR</div>
                  <div class="pgTwoType">2, 3, 4 BHK Flats</div>
                </div>
                <div class="pgTwoPrice">
                  <p><strong>30 Lac</strong></p>
                  <p>onwards</p>
                  <span>See Details</span> </div>
                <div class="clear"></div>
                <div class="marketedBy">Marketed by BestNest</div>
              </div>
              </a> </div>
          </div>
          <div class="clear"></div>
        </div>
        <div class="blockHeading" style="border-bottom:1px solid #e6e6e6; padding-bottom:10px;"><h2>BestNest Featured Projects</h2></div>
        <div style="" id="proGalleryFourdive1" class="proGalleryFour">
          <div class="anythingSlider anythingSlider-default activeSlider selectedSlider" style="width: 941px; 
                height: 404px;">
            <div class="anythingWindow">
              <ul id="proGalleryFourSlider_1" class="anythingBase horizontal" style="width: 3764px; left: 0px;">
                <li class="panel activePage" style="width: 941px; height: 404px;"> 
                  <!-- Featured Project 1 -->
                  <div class="pgFourBlock"> <a target="_blank" href="/property-for-sale/supertech-sport-village-greater-noida-west/" class="focusedLink">
                    <div class="pgFour">
                      <div class="pgFourImg"> <img width="221" height="217" border="0" alt="Supertech Eco Village-3" src="http://images.bestnest.in/featured-projects/supertech-sports-village.jpg" class="lazy"> </div>
                      <div class="pgFourCity">Noida Extension</div>
                      <div class="borderHover"></div>
                    </div>
                    <div class="pgFourContent">
                      <div class="pgFourName">Supertech Eco Village III</div>
                      <div class="pgFourGroup">Supertech Group</div>
                      <div class="pgFourAdd">Greater Noida West </div>
                      <div class="pgFourType">2, 3 BHK Flats</div>
                      <div class="pgFourPrice">
                        <p><strong>23 Lac</strong> onwards</p>
                      </div>
                      <span class="seeDetailsLink">See Details</span>
                      <div class="marketedBy">Marketed by BestNest</div>
                    </div>
                    </a> </div>
                  <!-- End Featured Project 1 --> 
                  <!-- Featured Project 2 -->
                  <div class="pgFourBlock"> <a target="_blank" href="/property-for-sale/gaur-city-14th-avenue-noida-extension/" class="focusedLink">
                    <div class="pgFour">
                      <div class="pgFourImg"> <img width="221" height="217" border="0" alt="Gaur City 14 Avenue" src="http://images.bestnest.in/featured-projects/gaur-14-avenue.jpg" class="lazy"> </div>
                      <div class="pgFourCity">Noida Extension</div>
                      <div class="borderHover"></div>
                    </div>
                    <div class="pgFourContent">
                      <div class="pgFourName">Gaur City 14th Avenue</div>
                      <div class="pgFourGroup">Gaur Sons</div>
                      <div class="pgFourAdd">Greater Noida West </div>
                      <div class="pgFourType">2, 3 BHK Flats</div>
                      <div class="pgFourPrice">
                        <p><strong>30 Lac</strong> onwards</p>
                      </div>
                      <span class="seeDetailsLink">See Details</span>
                      <div class="marketedBy">Marketed by BestNest</div>
                    </div>
                    </a> </div>
                  <!-- End Featured Project 2 --> 
                  <!-- Featured Project 3 -->
                  <div class="pgFourBlock"> <a target="_blank" href="/property-for-sale/mahagun-mantra-1-noida-extention/" class="focusedLink">
                    <div class="pgFour">
                      <div class="pgFourImg"> <img width="221" height="217" border="0" alt="Mahagun Mantra 1" src="http://images.bestnest.in/featured-projects/mahagun-mantra-1.jpg" class="lazy"> </div>
                      <div class="pgFourCity">Noida Extension</div>
                      <div class="borderHover"></div>
                    </div>
                    <div class="pgFourContent">
                      <div class="pgFourName">Mahagun Mantra - I</div>
                      <div class="pgFourGroup">Mahagun Group</div>
                      <div class="pgFourAdd">Greater Noida West </div>
                      <div class="pgFourType">2, 3 BHK Flats</div>
                      <div class="pgFourPrice">
                        <p><strong>26 Lac</strong> onwards</p>
                      </div>
                      <span class="seeDetailsLink">See Details</span>
                      <div class="marketedBy">Marketed by BestNest</div>
                    </div>
                    </a> </div>
                  <!-- End Featured Project 3 --> 
                  <!-- Featured Project 4 -->
                  <div class="pgFourBlock"> <a target="_blank" href="/property-for-sale/gaur-city-14th-avenue-noida-extension/" class="focusedLink">
                    <div class="pgFour">
                      <div class="pgFourImg"> <img width="221" height="217" border="0" alt="Mahagun Mezzaria" src="http://images.bestnest.in/featured-projects/mahagun-mezzaria.jpeg" class="lazy"> </div>
                      <div class="pgFourCity">Noida</div>
                      <div class="borderHover"></div>
                    </div>
                    <div class="pgFourContent">
                      <div class="pgFourName">Mahagun Mezzaria</div>
                      <div class="pgFourGroup">Mahagun Group</div>
                      <div class="pgFourAdd">Sector 78, Noida</div>
                      <div class="pgFourType">3, 4 BHK Flats</div>
                      <div class="pgFourPrice">
                        <p><strong>1.6 Crore</strong> onwards</p>
                      </div>
                      <span class="seeDetailsLink">See Details</span>
                      <div class="marketedBy">Marketed by BestNest</div>
                    </div>
                    </a> </div>
                  <!-- End Featured Project 4 -->
                  <div class="clear"></div>
                </li>
                <li class="panel" style="width: 941px; height: 404px;"> 
                  <!-- Featured Project 1 -->
                  <div class="pgFourBlock"> <a target="_blank" href="/property-for-sale/mahagun-marvella-noida-extension/" class="focusedLink">
                    <div class="pgFour">
                      <div class="pgFourImg"> <img width="221" height="217" border="0" alt="Mahagun Marvella" src="http://images.bestnest.in/featured-projects/mahagun-marvella.jpg" class="lazy"> </div>
                      <div class="pgFourCity">Noida Extension</div>
                      <div class="borderHover"></div>
                    </div>
                    <div class="pgFourContent">
                      <div class="pgFourName">Mahagun Marvella</div>
                      <div class="pgFourGroup">Mahagun Group</div>
                      <div class="pgFourAdd">Greater Noida West </div>
                      <div class="pgFourType">2, 3 BHK Flats</div>
                      <div class="pgFourPrice">
                        <p><strong>32 Lac</strong> onwards</p>
                      </div>
                      <span class="seeDetailsLink">See Details</span>
                      <div class="marketedBy">Marketed by BestNest</div>
                    </div>
                    </a> </div>
                  <!-- End Featured Project 1 --> 
                  <!-- Featured Project 2 -->
                  <div class="pgFourBlock"> <a target="_blank" href="/property-for-sale/mahagun-moderne-central-sector-78-noida/" class="focusedLink">
                    <div class="pgFour">
                      <div class="pgFourImg"> <img width="221" height="217" border="0" alt="Mahagun Moderne" src="http://images.bestnest.in/featured-projects/mahagun-moderne.jpg" class="lazy"> </div>
                      <div class="pgFourCity">Noida</div>
                      <div class="borderHover"></div>
                    </div>
                    <div class="pgFourContent">
                      <div class="pgFourName">Mahagun Moderne</div>
                      <div class="pgFourGroup">Mahagun Group</div>
                      <div class="pgFourAdd">Sector 78, Noida</div>
                      <div class="pgFourType">2, 3 & 4 BHK Flats</div>
                      <div class="pgFourPrice">
                        <p><strong>78 Lac</strong> onwards</p>
                      </div>
                      <span class="seeDetailsLink">See Details</span>
                      <div class="marketedBy">Marketed by BestNest</div>
                    </div>
                    </a> </div>
                  <!-- End Featured Project 2 --> 
                  <!-- Featured Project 3 -->
                  <div class="pgFourBlock"> <a target="_blank" href="/property-for-sale/saya-zion-noida-extension/" class="focusedLink">
                    <div class="pgFour">
                      <div class="pgFourImg"> <img width="221" height="217" border="0" alt="Saya Zion" src="http://images.bestnest.in/featured-projects/sava-zion.jpg" class="lazy"> </div>
                      <div class="pgFourCity">Noida Extension</div>
                      <div class="borderHover"></div>
                    </div>
                    <div class="pgFourContent">
                      <div class="pgFourName">Saya Zion</div>
                      <div class="pgFourGroup">Saya Group</div>
                      <div class="pgFourAdd">Greater Noida West </div>
                      <div class="pgFourType">2, 3 & 4 BHK Flats</div>
                      <div class="pgFourPrice">
                        <p><strong>44 Lac</strong> onwards</p>
                      </div>
                      <span class="seeDetailsLink">See Details</span>
                      <div class="marketedBy">Marketed by BestNest</div>
                    </div>
                    </a> </div>
                  <!-- End Featured Project 3 --> 
                  <!-- Featured Project 4 -->
                  <div class="pgFourBlock"> <a target="_blank" href="/property-for-sale/gaur-city-14th-avenue-noida-extension/" class="focusedLink">
                    <div class="pgFour">
                      <div class="pgFourImg"> <img width="221" height="217" border="0" alt="Mahagun Mezzaria" src="http://images.bestnest.in/featured-projects/gaur-7-avenue.jpg" class="lazy"> </div>
                      <div class="pgFourCity">Noida Extension</div>
                      <div class="borderHover"></div>
                    </div>
                    <div class="pgFourContent">
                      <div class="pgFourName">Gaur City 7th Avenue</div>
                      <div class="pgFourGroup">Gaur Sons</div>
                      <div class="pgFourAdd">Greater Noida West</div>
                      <div class="pgFourType">2 BHK Flats</div>
                      <div class="pgFourPrice">
                        <p><strong>36 Lac</strong> onwards</p>
                      </div>
                      <span class="seeDetailsLink">See Details</span>
                      <div class="marketedBy">Marketed by BestNest</div>
                    </div>
                    </a> </div>
                  <!-- End Featured Project 4 -->
                  <div class="clear"></div>
                </li>
              </ul>
            </div>
            <span class="arrow back disabled" style="left: 28px; opacity: 0;;"> <a href="javascript:void(0);"><span>�</span></a> </span> <span class="arrow forward" style="right: 28px; opacity: 0;"> <a href="javascript:void(0);"><span>�</span></a> </span> </div>
        </div>
      </div>
    </div>

    <div class="box">
      <h2><a href="/residential-property-for-sale/ALL-RESIDENTIAL-real-estate/">Search Residential</a></h2>
      <div class="image-box"> <a href="/residential-property-for-sale/ALL-RESIDENTIAL-real-estate/"><img src="http://images.bestnest.in/residential.jpg" alt="Search Residential Projects in Delhi NCR(Noida Extension)" border="0" /> </a>
        <div class="clear"></div>
      </div>
      <div class="text">
        <p> Search 1/2/3/4 BHK Residential Apartments in Delhi/NCR, Noida Extension by just clicking on More Details Button..</p>
        <div class="clear"></div>
      </div>
      <div class="clear"></div>
      <div class="more-link"> <a href="/residential-property-for-sale/ALL-RESIDENTIAL-real-estate/"> More Details </a>
        <div class="clear"></div>
      </div>
      <div class="clear"></div>
    </div>

    <div class="box">
      <h2><a href="/commercial-property-for-sale/ALL-COMMERCIAL-real-estate/">Search Commercial</a></h2>
      <div class="image-box"> <a href="/commercial-property-for-sale/ALL-COMMERCIAL-real-estate/"><img src="http://images.bestnest.in/commercial.jpg" alt="Search Commercial Projects in Noida Extension (Delhi Ncr)" border="0" /></a>
        <div class="clear"></div>
      </div>
      <div class="text">
        <p>Property that is used solely for commercial purpose. Examples of commercial real estate include malls, office space, commercial shops and showrooms.</p>
        <div class="clear"></div>
      </div>
      <div class="clear"></div>
      <div class="more-link"> <a href="/commercial-property-for-sale/ALL-COMMERCIAL-real-estate/"> More Details </a>
        <div class="clear"></div>
      </div>
      <div class="clear"></div>
    </div>

    <div class="box last">
      <h2><a href="/plot-for-sale/">Search Plots</a></h2>
      <div class="image-box"> <a href="/plot-for-sale/"><img src="http://images.bestnest.in/land.jpg" alt="Searching for lands in Noida" border="0" /></a>
        <div class="clear"></div>
      </div>
      <div class="text">
        <p>Find plots that is used for Selling/Investment purpose such as building plots, renovations, conversions, land and improvement.</p>
        <div class="clear"></div>
      </div>
      <div class="clear"></div>
      <div class="more-link"> <a href="/plot-for-sale/"> More Details </a>
        <div class="clear"></div>
      </div>
      <div class="clear"></div>
    </div>
    <div class="clear"></div>
  </div>
  <div class="clear"></div>
</section>
<!--Content Section-->
<div class="clear"></div>

<!--Developers Section-->
<!--<div class="developers">
  <h2>Our Developers</h2>
  <div class="logos">
        	<ul id="flexiselDemo3">
    			<li class="nbs-flexisel-item"><img src="http://images.bestnest.in/mahagun-group.png" alt="Mahagun Group Logo"></li>
                <li class="nbs-flexisel-item"><img src="http://images.bestnest.in/stellar-group.png" alt="stellar Group Logo"></li>
                <li class="nbs-flexisel-item"><img src="http://images.bestnest.in/gaur-group.png" alt="Gaur Group Logo"></li>
                <li class="nbs-flexisel-item"><img src="http://images.bestnest.in/sikka-group.png" alt="Sikka Group Logo"></li>
                <li class="nbs-flexisel-item"><img src="http://images.bestnest.in/mmr-group.png" alt="Mmr Group Logo"></li>
                <li class="nbs-flexisel-item"><img src="http://images.bestnest.in/saya-group.png" alt="Saya Group Logo"></li>
                <li class="nbs-flexisel-item"><img src="http://images.bestnest.in/ajnara-logo.jpg" alt="Ajnara Logo"></li>
                <li class="nbs-flexisel-item"><img src="http://images.bestnest.in/jaypee.png" alt="jaypee Logo"></li>
         	</ul>
    <div class="clear"></div>
  </div>
  <div class="clear"></div>
</div>-->
<!--Developers Section--> 
