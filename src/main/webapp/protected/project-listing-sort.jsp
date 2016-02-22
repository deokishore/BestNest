<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false"%>

<head>

<!-- Pagination Start  -->
<script type="text/javascript" src="http://resources.bestnest.in/js/pagination/jquery_grid.pajinate.js"></script>
<!-- Pagination End -->

<script>

<!-- Construct Table  Start -->
$(document ).ready(function() {
	<c:forEach var="varProjectForm" items="${projectSearchForm.projectFormList}" varStatus="main_loop">

			var tanleName = "detail_table_"+${main_loop.index};
			<c:set var="price" value="" scope="page" />
			<c:set var="overview" value="" scope="page" />

			<c:forEach var="varProjectDetailsForm" items="${varProjectForm.projectDetailsFormSet}" varStatus="loop">
					<c:set var="price" value="${price}${varProjectDetailsForm.price}," />
					<c:set var="slideImage" value="${varProjectDetailsForm.projectImageForm.slideImagesArray[0]}" />
					<c:set var="overview" value="${varProjectDetailsForm.overview}" />
			</c:forEach>

			var minMaxPriceLabel = makeMinMax2("${price}".substr(0, "${price}".length -1));

			$("#grid-panel").append(
							"<div class=\"proj-list-sear-info list-items mahagun-mantra\">"
								+"<div id=\"profilter\" class=\"listViewInfo\">"
									+"<div class=\"proj-list-perview row-full\">"

										+"<div class=\"proj-img-cont left relativePostion\">"
											+"<div class=\"image-view-info\">"
												+"<a href=\"/projectDetail.htm?projectId=1\">"
													+"<div class=\"img-cont-info\">"
														+"<div class=\"big-img-info\">"
															+"<div class=\"img-crop-info\">"
																+"<img src=\"http://images.bestnest.in/${slideImage}\"	alt=\"Mahagun Mantra-1\" height=\"341\" width=\"250\" />"
															+"</div>"
														+"</div>"
													+"</div>"
												+"</a>"
											+"</div>"
										+"</div>"


										+"<div class=\"proj-info-cont left\">"
											+"<div class=\"proj-result-info\">"

												+"<div class=\"proj-meta-info left\">"
													+"<div class=\"left proj-meta-container\">"
														+"<div class=\"proj-name left clear\">"
															+"<div class=\"left textWrap\">"
																+"<a title=\"mahagun-mantra\" href=\"/projectDetail.htm?projectId=1\">"
																	+"<span itemprop=\"name\">${varProjectForm.projectName}</span>"
																+"</a>"
															+"</div>"
														+"</div>"
														+"<div class=\"proj-address left clear row-full\">"
															+"<div class=\"relativePostion left\">"
																+"<div class=\"add-overlay\">"
																	+"<span class=\"city-label\">${varProjectForm.addressForm.cityLocalityForm.cityForm.name}</span>"
																+"</div>"
															+"</div>"
														+"</div>"
													+"</div>"
												+"</div>"

												<!-- Table Comes Here Start -->
												+"<div class=\"tt-table-content relativePostion left row-full\">"
													+"<table class=\"detail\" id=\"detail_table_${main_loop.index}\">"
														+"<tbody>"
															+"<tr>"
																+"<td>PROPERTY</td>"
																+"<td>SIZE (Sq.Ft.)</td>"
																+"<td>PRICE (Rs.)</td>"
																+"<td>PRICE (Per Sqft.)</td>"
															+"</tr>"
														+"</tbody>"
													+"</table>"
													+"<div class=\"clear\"></div>"
												+"</div>"
												<!-- Table Comes Here End -->

												+"<div class=\"proj-details paddingT5 row-full clear\">"
													+"<p>"
														+"<strong>About Project:</strong> \"${varProjectForm.projectName}\""
														+"close vicinity to Schools, Shopping, Hospitals and"
														+"Entertainment, making it an ideal place to live."
													+"</p>"
												+"</div>"
											+"</div>"
											+"<div class=\"proj-postdetails-info left relativePostion\">"
												+"<div class=\"proj-update-info left row-full\">"
													+"<div class=\"price-range\">"
														+"<span class=\"proj-price-info\"> Rs. "+ minMaxPriceLabel +" L </span>"
													+"</div>"
													+"<div class=\"possession-date\">"
														+"<span class=\"list-poss-date-info\"> POSSESSION: "+ "${varProjectForm.possessionDate}" + "</span>"
													+"</div>"
												+"</div>"
												+"<div class=\"proj-pct-post-info left\">"
													+"<div class=\"proj-info-call left\">"
														+"<a href=\"/projectDetail.htm?projectId=${varProjectForm.projectId}\"><button class=\"btn-action\">View Details</button></a>"
													+"</div>"
												+"</div>"
											+"</div>"
										+"</div>"
									+"</div>"
								+"</div>"
							+"</div>"
							);

			$('#detail_table tr').remove();
			var bhkIdCount = 1;
			var bhkId = [];
			var sizePrint = [];
			var pricePrint = [];

			var bedRoom = '';
			var projectTitleMessage='';

			<c:forEach var="listItem" items="${varProjectForm.projectDetailsFormSet}" varStatus="status">
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
			<c:forEach var="listItem" items="${varProjectForm.projectDetailsFormSet}" varStatus="status">

				if(storeBedValue != "${listItem.bedRooms}" || storeBedValue == 'NA') {

					  $("#detail_table_${main_loop.index} > tbody").append("<tr id='"+ bhkId[parentCount].value + "' class='parent' style='cursor: pointer;' title='Click to expand/collapse'> "+
							 "<td>" +
				                "<label for='proptype1'> " +
				                	"<div class='arrow-down'><span>" + "${listItem.bedRooms}" + " BHK</span></div>"+
				                "</label>"+
				            "</td>"+
				            "<td class='ng-scope'>" +
				            	"<label for='propsize1'> " +
				            		"<span>" + makeMinMax(sizePrint[parentCount].value) + " sq ft</span>"+
				           	 "</label>"+
				     		 "</td>"+
				     		 "<td class='ng-scope'>" +
				     			"<label for='propprice1'> " +
				     				"<span>" + makeMinMax(pricePrint[parentCount].value) + " L </span>"+
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
				$("#detail_table_${main_loop.index} > tbody").append("<tr id="+ ${listItem.projectDetailsId} +" class="+ childId + " style='display:none;'>"+
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

	</c:forEach>

});

<!--  Construct Table End -->

function makeMinMax2(data) {
	var arr = data.split(',');
	var min = arrayMin(arr);
	var max = arrayMax(arr);
	return nFormatter(min) + ' to ' + nFormatter(max);
}

function makeMinMax(data) {
	var arr = data.split(',');
	var min = arrayMin(arr);
	var max = arrayMax(arr);
	return min + ' to ' + max;
}


function arrayMin(arr) {
  var len = arr.length, min = Infinity;
  while (len--) {
    if (arr[len] < min) {
      min = arr[len];
    }
  }
  return min;
}

function arrayMax(arr) {
  var len = arr.length, max = -Infinity;
  while (len--) {
    if (arr[len] > max) {
      max = arr[len];
    }
  }
  return max;
};

</script>

<script type="text/javascript">
	$(document).ready(function(){
		$('#paging_container2').pajinate();
	});
</script>

<!--Google Analytics -->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-59446819-1', 'auto');
  ga('send', 'pageview');

</script>
<!-- End Google Analytics -->
</head>





<!--Search Section-->
	<div id="search-bar-Bg" style="height:150px;">
	
     	<form:form id="projectSearchForm" action="projectSearchPage" modelAttribute="projectSearchForm" onsubmit="javascript:updateHiddenField();">
			 
        <input id="minPrice" name="minPrice" value="${projectSearchForm.minPrice}" type="hidden"/>
        <input id="maxPrice" name="maxPrice" value="${projectSearchForm.maxPrice}" type="hidden"/>
        <input id="bedRoom" name="bedRoom"  value="${projectSearchForm.bedRoom}" type="hidden"/>
        <input id="possessionStatus" name="possessionStatus" value="${projectSearchForm.possessionStatus}" type="hidden"/>	
		<input id="cityId" name="cityForm.cityId" value="${projectSearchForm.cityForm.cityId}" type="hidden"/>
		<input id="cityName" name="cityForm.name" value="${projectSearchForm.cityForm.name}" type="hidden"/>
		<input id="companyId"  name="companyForm.companyId" value="${projectSearchForm.companyForm.companyId}" type="hidden"/>
		<input id="companyName" name="companyForm.companyName" value="${projectSearchForm.companyForm.companyName}" type="hidden"/>
		<input id="propertyTypeId" name="propertyTypeId" value="${projectSearchForm.propertyTypeId}" type="hidden"/>		
			
  		<div class="form-container" style="top:6px">
        	<div class="form">
            <div class="slideOpen search-filter">
            	
              <!--  Project Type Start -->
            	<div id="proj-type" class="filter-item mr20 fl">
                	<div class="head clearfix">Project Type</div>
                    <div class="FI-Box" style="white-space:nowrap;">
                    	<a class="FI-Tag pType-dd ddLClick dropDown frmEl" id="pType-dd" onClick="javascript:toggleDiv('s_property_type');">
                        	<div id="protpe" class="addPdElip" style="width: 120px;">All Type</div>
                            <span class="fl vmid">
                                 <img src="http://images.bestnest.in/drop-darrow.png" alt="Drop Down Arrow" width="8" height="4">
                            </span>
                       	</a>
                        <div id="s_property_type" class="cScroll dd-list-menu scrollbar96 ddlistOpen ddlstSrp showi propTypvariant flipClose" style="width:220px;">
                            
                         </div>
                    </div>
                </div>
                <!--  Project Type End -->
                  
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
                  
                <!--  Company Start  -->
                <div id="city_wrap" class="filter-item mr45 fl">
                    <div class="head clearfix" id="priceLabel">Builder</div>
                    <div class="FI-Box" id="city_list_wrap">
                        <a class="FI-Tag ddLClick dropDown" onClick="javascript:toggleDiv('s_company_property_type');">
                             <i class="setMid"></i>
                             <div id="companyProtpe" class="addPdElip" style="width: 100px;">All</div>
                             <img src="http://images.bestnest.in/drop-darrow.png" alt="Drop Down Arrow" width="8" height="4">
                        </a>
                        <div id="s_company_property_type" class="dd-list-menu ddlistOpen showi ddlstSrp flipClose" style="width:240px; display: none;">
                              <div class="ddlist">
                              	<a id="resddli" class="prnt DCheadingOpt">
                                    <label for="allCompanyPropertyType">
                                        <input class="vmid" type="radio" name="company" id="allCompanyPropertyType" value="All Builder" onclick="handleClick(this, this.value, 'companyProtpe', 'stInner', 's_company_property_type','Y');" checked="checked" />  All Company Type
                                    </label>
                                </a>		
                              </div>
                        </div>
                        </div>
                    <div class="clear"></div>
                </div>
                <!--  Company End  -->
            	                
                
                <div id="budget_wrap" class="filter-item mr20 fl">
                    <div id="priceLabel" class="head clearfix">Price</div>
                    <div id="buy_budget_min_wrap" class="FI-Box">
                        <a class="FI-Tag ddLClick dropDown frmEl" onClick="javascript:toggleDiv('s_buy_budget_min');">
                                <i class="setMid"></i><div id="filtermin-price">Min Price</div>
                                <img src="http://images.bestnest.in/drop-darrow.png" alt="Drop Down Arrow" width="8" height="4">
                        </a>
                        <div id="s_buy_budget_min" class="dd-list-menu ddlistOpen ddlstSrp showi flipClose" style="width:120px;">
                            <div id="scrollbar1" class="cScroll scrollbar96 marginT5" style="height:200px; clear: both;">
                            	<div class="scrollbar" style="height:200px;">
                                    <div class="track" style="height: 200px;">
                                        <div class="thumb" style="top: 0px;">
                                            <div class="end"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="viewport" style="height:200px;">
                 					<div class="overview" style="top:0px;">
                                   		<div id="buy_minprice" class="ddlist">
                          				<a val ="0" onclick="handleClick(this, 'Min', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">Min</a>
                          				<a val="1" onclick="handleClick(this, 'Below 5 Lacs', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">Below 5 Lacs</a>
                                        <a val="2" onclick="handleClick(this, '5 Lacs', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">5 Lacs</a>
                                        <a val="3" onclick="handleClick(this, '10 Lacs', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">10 Lacs</a>
                                        <a val="4" onclick="handleClick(this, '15 Lacs', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">15 Lacs</a>
                                        <a val="5" onclick="handleClick(this, '20 Lacs', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">20 Lacs</a>
                                        <a val="6" onclick="handleClick(this, '25 Lacs', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">25 Lacs</a>
                                        <a val="7" onclick="handleClick(this, '25 Lacs', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">30 Lacs</a>
                                        <a val="8" onclick="handleClick(this, '40 Lacs', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">40 Lacs</a>
                                        <a val="9" onclick="handleClick(this, '50 Lacs', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">50 Lacs</a>
                                        <a val="10" onclick="handleClick(this, '60 Lacs', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">60 Lacs</a>
                                        <a val="11" onclick="handleClick(this, '75 Lacs', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">75 Lacs</a>
                                        <a val="12" onclick="handleClick(this, '90 Lacs', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">90 Lacs</a>
                                        <a val="13" onclick="handleClick(this, '1 Crore', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">1 Crore</a>
                                        <a val="14" onclick="handleClick(this, '1.5 Crore', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">1.5 Crores</a>
                                        <a val="15" onclick="handleClick(this, '2 Crore', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">2 Crores</a>
                                        <a val="16" onclick="handleClick(this, '3 Crore', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">3 Crores</a>
                                        <a val="17" onclick="handleClick(this, '5 Crore', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">5 Crores</a>
                                        <a val="18" onclick="handleClick(this, '10 Crore', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">10 Crores</a>
                                    </div>
                                   	</div>
                                </div>
                         	</div>
                        </div>
                    </div>
                    <i class="marginT10">-</i>
                    <div id="buy_budget_max_wrap" class="FI-Box">
                        <a class="FI-Tag ddLClick dropDown frmEl" onClick="javascript:toggleDiv('s_buy_budget_max');">
                            <i class="setMid"></i><div id="filtermax-price">Max Price</div>
                           <img src="http://images.bestnest.in/drop-darrow.png" alt="Drop Down Arrow" width="8" height="4">
                        </a>	
                        <div id="s_buy_budget_max" class="dd-list-menu ddlistOpen ddlstSrp showi flipClose" style="width: 115px;" >
                             <div id="scrollbar2" class="cScroll scrollbar96 marginT5" style="height: 200px; clear: both;">
                                <div class="scrollbar" style="height:200px;">
                                    <div class="track" style="height:200px;">
                                        <div class="thumb" style="top:0px;">
                                            <div class="end"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="viewport" style="height:200px;">
                 					<div class="overview" style="top: 0px;">
                                		<div id="buy_maxprice" class="ddlist">
                                        	<a val ="0" onclick="handleClick(this, 'Max', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">Max</a>
                                            <a val="1" onclick="handleClick(this, 'Below 5 Lacs', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">Below 5 Lacs</a>
                                            <a val="2" onclick="handleClick(this, '5 Lacs', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">5 Lacs</a>
                                            <a val="3" onclick="handleClick(this, '10 Lacs', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">10 Lacs</a>
                                            <a val="4" onclick="handleClick(this, '15 Lacs', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">15 Lacs</a>
                                            <a val="5" onclick="handleClick(this, '20 Lacs', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">20 Lacs</a>
                                            <a val="6" onclick="handleClick(this, '25 Lacs', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">25 Lacs</a>
                                            <a val="7" onclick="handleClick(this, '25 Lacs', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">30 Lacs</a>
                                            <a val="8" onclick="handleClick(this, '40 Lacs', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">40 Lacs</a>
                                            <a val="9" onclick="handleClick(this, '50 Lacs', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">50 Lacs</a>
                                            <a val="10" onclick="handleClick(this, '60 Lacs', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">60 Lacs</a>
                                            <a val="11" onclick="handleClick(this, '75 Lacs', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">75 Lacs</a>
                                            <a val="12" onclick="handleClick(this, '90 Lacs', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">90 Lacs</a>
                                            <a val="13" onclick="handleClick(this, '1 Crore', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">1 Crore</a>
                                            <a val="14" onclick="handleClick(this, '1.5 Crore', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">1.5 Crores</a>
                                            <a val="15" onclick="handleClick(this, '2 Crore', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">2 Crores</a>
                                            <a val="16" onclick="handleClick(this, '3 Crore', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">3 Crores</a>
                                            <a val="17" onclick="handleClick(this, '5 Crore', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">5 Crores</a>
                                            <a val="18" onclick="handleClick(this, '10 Crore', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">10 Crores</a>                           
                                        </div>
                                	</div>
                               	</div>
                            </div>
                        </div>
                    </div>
                </div>
                
                 <!--  Bedrooms Start -->
                 <div id="bedroom_num_wrap" class="filter-item bedroom fl">
                    <div class="head clearfix">Bedrooms</div>
                    <div class="FI-Box">
                        <a class="FI-Tag ddLClick dropDown frmEl" onClick="javascript:toggleDiv('s_bedroom_num');">
                            <i class="setMid"></i>
                            <div id="filterbeds">Any</div>
                            <img src="http://images.bestnest.in/drop-darrow.png" alt="Drop Down Arrow" width="8" height="4">
                        </a>
                        <div id="s_bedroom_num" class="dd-list-menu ddlistOpen ddlstSrp showi flipClose" style="width:115px;">
                            <div id="scrollbar3" class="cScroll scrollbar96 marginT5" style="height:100px; clear: both;">
                                <div class="scrollbar" style="height:100px;">
                                    <div class="track" style="height:100px;">
                                        <div class="thumb" style="top:0px;">
                                            <div class="end"></div>
                                        </div>
                                    </div>
                               </div>
                                <div class="viewport ptnr" style="height:100px" >
                           			<div class="overview" style="top: 0px;">
                                		<div class="ddlist">
                                            <a class="acoff" id="filterbd_any" >
                                                <label for="bedroomli1">
                                                    <input class="vmid" type="radio" name="bedroomno" id="bedroomli1" value="Any" onclick="handleClick(this, this.value, 'filterbeds', 'stInner', 's_bedroom_num', 'Y');" checked="checked" /> Any
                                                </label>
                                            </a>
                                            <a class="acoff" id="filterbd_any" >
                                                <label for="bedroomli2">
                                                    <input class="vmid" type="radio" name="bedroomno" id="bedroomli2" value="1 BHK" onclick="handleClick(this, this.value, 'filterbeds', 'stInner', 's_bedroom_num', 'Y');" /> 1 BHK
                                                </label>
                                            </a>
                                            <a class="acoff" id="filterbd_any" >
                                                <label for="bedroomli3">
                                                    <input class="vmid" type="radio" name="bedroomno" id="bedroomli3" value="2 BHK" onclick="handleClick(this, this.value, 'filterbeds', 'stInner', 's_bedroom_num', 'Y');" /> 2 BHK
                                                </label>
                                            </a>
                                            <a class="acoff" id="filterbd_any" >
                                                <label for="bedroomli4">
                                                    <input class="vmid" type="radio" name="bedroomno" id="bedroomli4" value="3 BHK" onclick="handleClick(this, this.value, 'filterbeds', 'stInner', 's_bedroom_num', 'Y');" /> 3 BHK
                                                </label>
                                            </a>
                                             <a class="acoff" id="filterbd_any" >
                                                <label for="bedroomli5">
                                                    <input class="vmid" type="radio" name="bedroomno" id="bedroomli5" value="4 BHK" onclick="handleClick(this, this.value, 'filterbeds', 'stInner', 's_bedroom_num', 'Y');" /> 4 BHK
                                                </label>
                                            </a>
                                             <a class="acoff" id="filterbd_any" >
                                                <label for="bedroomli6">
                                                    <input class="vmid" type="radio" name="bedroomno" id="bedroomli6" value="5 BHK" onclick="handleClick(this, this.value, 'filterbeds', 'stInner', 's_bedroom_num', 'Y');" /> 5 BHK
                                                </label>
                                            </a>			
                                		</div>
                                	</div>
                               	</div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--  Bedrooms End -->
                
                <div id="search-btn" class="fr" style="margin-top:28px">
				<input id="post" type="image" src="http://images.bestnest.in/search-project.png"  width="35" height="35" alt="Search Project"/>
                </div>
                <div class="clear"></div>    
            </div> 
        </div>
        <div class="clear"></div>
    	</div>
    	
        </form:form>
        <div class="clear"></div>	
  	 </div>
<!--Search Section-->

<!--Sorting Link -->
    <div class="project-items-container marginB15">
        <div class="project_modifiers">
            <div id="project-bar">
                <div class="listing-box">
                    <ul>
                    <li>
                        <h2 style="color:white; margin-right:13px;">
                            <span><%=request.getAttribute("totalProjects")%> results</span>
                        </h2>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/projectSearchListPage.htm
										?cityId=<%=request.getAttribute("cityId")%>
										&companyId=<%=request.getAttribute("companyId")%>
										&propertyType=<%=request.getAttribute("propertyType")%>
										&cityName=<%=request.getAttribute("cityName")%>
										&bedRoom=<%=request.getAttribute("bedRoom")%>
										&minPrice=<%=request.getAttribute("minPrice")%>
										&maxPrice=<%=request.getAttribute("maxPrice")%>" class="active">
                            <img alt="List View" src="http://images.bestnest.in/list-icon1.png">
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/projectSearchGridPage.htm
										?cityId=<%=request.getAttribute("cityId")%>
										&companyId=<%=request.getAttribute("companyId")%>
										&propertyType=<%=request.getAttribute("propertyType")%>
										&cityName=<%=request.getAttribute("cityName")%>
										&bedRoom=<%=request.getAttribute("bedRoom")%>
										&minPrice=<%=request.getAttribute("minPrice")%>
										&maxPrice=<%=request.getAttribute("maxPrice")%>">
                            <img alt="Grid View" src="http://images.bestnest.in/grid-icon1.png">
                        </a>
                    </li>
                    <li>
                    	<c:if test="${projectSearchForm.possessionStatus != 'All'}">
    						<span style="color:white; margin-left:200px;"> ${projectSearchForm.possessionStatus} </span>
						</c:if>
                    </li>
                </ul>
                    <div class="clear"></div>
                </div>
                <div id="project-filters" class="project_modifiers-content">
                <form id="project-filter-form" class="filter-form search-filters ">
                    <div id="project-item1" class="project-item project-item_modifier project-item_animated">
                        <div class="project-item_header">
                            <h4>
                                <span id="sort-size" class="project-item_stateindicator">Size</span>
                            </h4>
                        </div>
                        <div id="project-size-filter" class="project-item_content project-item_content-size Size">
                            <div class="filter">
                                <ul class="filter-size">
                                    <li id="filterSize1" class="fieldValue project-sizes_size-wrapper project-filters_field">
                                        <span class="fieldName">1BHK</span>
                                    </li>
                                    <li id="filterSize2" class="fieldValue project-sizes_size-wrapper project-filters_field">
                                        <span class="fieldName">2BHK</span>
                                    </li>
                                    <li id="filterSize3" class="fieldValue project-sizes_size-wrapper project-filters_field">
                                        <span class="fieldName">3BHK</span>
                                    </li>
                                    <li id="filterSize4" class="fieldValue project-sizes_size-wrapper project-filters_field">
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
                        <div class="project-item_header">
                            <h4>
                                <span id="sort-price" class="project-item_stateindicator">Price</span>
                            </h4>
                        </div>
                        <div id="project-price-filter" class="project-item_content project-item_content-size">
                            <div class="filter">
                                <ul class="sort-price">
                                    <li id="min-price" class="filter_sort sortValue">
                                        <a href="#" title="Price Low to High">Min Price</a>
                                    </li>
                                    <li id="max-price" class="filter_sort sortValue">
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
    </div>
<!--End Sorting Link-->

<!--Main Section-->
<section id="listview-content">
    <div class="wrapper">
	       <div id="paging_container2" class="project-sections">        
	        		<div class="page_navigation"></div>
	                <div id="grid-panel" class="listings-container project-items-wrapper clearfix">
	                	<div>
			            	<!-- List Box Section Start -->
							<!-- It's getting populated by java scrip code --> 
							<!-- List Box Section End -->
			        	</div>
	        		</div>
           </div>
        <div class="clear"></div>
    </div>
</section>
<!--Main Section-->

<!--Responsive Navigation-->
<link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/menu-style.css">
<script type="text/javascript" src="http://resources.bestnest.in/js/script.js"></script>
<script type="text/javascript" src="http://resources.bestnest.in/js/wz_tooltip.js"></script>
<script type="text/javascript" charset="utf-8">
	$(document).ready(function(){
		$("area[rel^='prettyPhoto']").prettyPhoto();

		$(".gallery:first a[rel^='prettyPhoto']").prettyPhoto({animation_speed:'normal',theme:'light_square',slideshow:3000, autoplay_slideshow: true});
		$(".gallery:gt(0) a[rel^='prettyPhoto']").prettyPhoto({animation_speed:'fast',slideshow:10000, hideflash: true});

	});
</script>
<!--Responsive Navigation-->




