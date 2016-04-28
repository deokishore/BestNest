<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page isELIgnored="false"%>


<head>

<!-- Pagination Start  -->
    <script type="text/javascript" src="http://resources.bestnest.in/js/pagination/jquery_grid.pajinate.js"></script>

    <script type="text/javascript">
        $(document).ready(function(){
            $('#paging_container2').pajinate();
        });
    </script>
<!-- Pagination End -->

</head>


	<!--Search Section-->
	<div id="search-bar-Bg" style="height:150px;">
	
     	<form:form id="projectSearchForm" method="POST" 
     		action="${pageContext.request.contextPath}/property-for-sale"
     			modelAttribute="projectSearchForm" onsubmit="javascript:updateHiddenField();">
			 
        <input id="minPrice" name="minPrice" value="${projectSearchForm.minPrice}" type="hidden"/>
        <input id="maxPrice" name="maxPrice" value="${projectSearchForm.maxPrice}" type="hidden"/>
        <input id="bedRoom" name="bedRoom"  value="${projectSearchForm.bedRoom}" type="hidden"/>
        <input id="possessionStatus" name="possessionStatus" value="${projectSearchForm.possessionStatus}" type="hidden"/>	
		<input id="cityId" name="cityForm.cityId" value="${projectSearchForm.cityForm.cityId}" type="hidden"/>
		<input id="cityName" name="cityForm.name" value="${projectSearchForm.cityForm.name}" type="hidden"/>
		<input id="companyId"  name="companyForm.companyId" value="${projectSearchForm.companyForm.companyId}" type="hidden"/>
		<input id="companyName" name="companyForm.companyName" value="${projectSearchForm.companyForm.companyName}" type="hidden"/>
		<input id="propertyTypeId" name="propertyTypeId" value="${projectSearchForm.propertyTypeId}" type="hidden"/>
				<input id="gridList" name="gridList" value="${projectSearchForm.gridList}" type="hidden"/>
			
  		<div class="form-container" style="top:6px;">
        	<div class="form">
            <div class="slideOpen search-filter">
            	
              <!--  Project Type Start -->
            	<div id="proj-type" class="filter-item mr20 fl" style="margin-right:15px!important;">
                	<div class="head clearfix">Project Type</div>
                    <div class="FI-Box" style="white-space:nowrap;">
                    	<a class="FI-Tag pType-dd ddLClick dropDown frmEl" id="pType-dd" onClick="javascript:toggleDiv('s_property_type');">
                        	<div id="protpe" class="addPdElip" style="width: 120px;">All Type</div>
                            <span class="fl vmid">
                                 <img src="http://images.bestnest.in/drop-darrow.png" alt="Drop Down Arrow" width="8" height="4">
                            </span>
                       	</a>
                        <div id="s_property_type" class="cScroll dd-list-menu scrollbar96 ddlistOpen ddlstSrp showi propTypvariant flipClose" style="width:220px;">
                            <div class="ddlist">
                              	<a class="prnt DCheadingOpt">
                                   <label for="allPropertyType">
                                      <input class="vmid" type="radio" name="filterProtpe" id="allProtpe"  value="All Type" onclick="handleClick(this, this.value, 'protpe', 'stInner', 's_property_type', 'Y');"  />  All Type
                                   </label>
                              	</a>		
                              </div>
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
                                       <input class="vmid" type="radio" name="filterCity" id="allCity"  value="All" onclick="handleClick(this, this.value, 'city', 'stInner', 's_city', 'Y');" />  All
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
                                        <input class="vmid" type="radio" name="company" id="allCompanyPropertyType" value="All Builder" onclick="handleClick(this, this.value, 'companyProtpe', 'stInner', 's_company_property_type','Y');"  />  All Company Type
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
                                        <a val="7" onclick="handleClick(this, '30 Lacs', 'filtermin-price', 'stInner', 's_buy_budget_min', 'Y');">30 Lacs</a>
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
                                            <a val="7" onclick="handleClick(this, '30 Lacs', 'filtermax-price', 'stInner', 's_buy_budget_max', 'Y');">30 Lacs</a>
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

                         <form:form  id="projectSearchForm" modelAttribute="projectSearchForm" action="/property-for-sale">
                                <input id="minPrice" name="minPrice" value="${projectSearchForm.minPrice}" type="hidden"/>
                                <input id="maxPrice" name="maxPrice" value="${projectSearchForm.maxPrice}" type="hidden"/>
                                <input id="bedRoom" name="bedRoom"  value="${projectSearchForm.bedRoom}" type="hidden"/>
                                <input id="possessionStatus" name="possessionStatus" value="${projectSearchForm.possessionStatus}" type="hidden"/>
                                <input id="cityId" name="cityForm.cityId" value="${projectSearchForm.cityForm.cityId}" type="hidden"/>
                                <input id="cityName" name="cityForm.name" value="${projectSearchForm.cityForm.name}" type="hidden"/>
                                <input id="companyId"  name="companyForm.companyId" value="${projectSearchForm.companyForm.companyId}" type="hidden"/>
                                <input id="companyName" name="companyForm.companyName" value="${projectSearchForm.companyForm.companyName}" type="hidden"/>
                                <input id="propertyTypeId" name="propertyTypeId" value="${projectSearchForm.propertyTypeId}" type="hidden"/>
                                <input id="gridList" name="gridList" value="List" type="hidden"/>

                                <a href="#" onclick="$(this).closest('form').submit()">
                                    <img alt="List View" src="http://images.bestnest.in/list-icon1.png">
                                </a>
                         </form:form>

                    </li>
                    <li>

                        <form:form  id="projectSearchForm" modelAttribute="projectSearchForm" action="/property-for-sale">

                                <input id="minPrice" name="minPrice" value="${projectSearchForm.minPrice}" type="hidden"/>
                                <input id="maxPrice" name="maxPrice" value="${projectSearchForm.maxPrice}" type="hidden"/>
                                <input id="bedRoom" name="bedRoom"  value="${projectSearchForm.bedRoom}" type="hidden"/>
                                <input id="possessionStatus" name="possessionStatus" value="${projectSearchForm.possessionStatus}" type="hidden"/>
                                <input id="cityId" name="cityForm.cityId" value="${projectSearchForm.cityForm.cityId}" type="hidden"/>
                                <input id="cityName" name="cityForm.name" value="${projectSearchForm.cityForm.name}" type="hidden"/>
                                <input id="companyId"  name="companyForm.companyId" value="${projectSearchForm.companyForm.companyId}" type="hidden"/>
                                <input id="companyName" name="companyForm.companyName" value="${projectSearchForm.companyForm.companyName}" type="hidden"/>
                                <input id="propertyTypeId" name="propertyTypeId" value="${projectSearchForm.propertyTypeId}" type="hidden"/>
                                <input id="gridList" name="gridList" value="Grid" type="hidden"/>

                                <a href="#" onclick="$(this).closest('form').submit()" class="active">
                                    <img alt="Grid View" src="http://images.bestnest.in/grid-icon1.png">
                                </a>
                        </form:form>

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
	<div id="paging_container2" class="project-sections">
	
		<div class="page_navigation"></div>
		
		<c:set var="reqBedRoom" value="${requestScope.bedRoom}" scope="page" />
	
		<div class="grid-panel">
						
			<c:forEach var="varProjectForm" items="${projectSearchForm.projectFormList}">
				
					<jsp:useBean id="map" class="java.util.LinkedHashMap" scope="request"/>
									
					<c:forEach var="varProjectDetailsForm"
						items="${varProjectForm.projectDetailsFormSet}" varStatus="loop">
						<c:set var="prjBedRoom" value="${varProjectDetailsForm.bedRooms}" scope="page" />
						<c:choose>
							<c:when test="${!requestScope.map.containsValue(prjBedRoom) && (prjBedRoom>=reqBedRoom)}">
							  <c:set target="${requestScope.map}" property="${prjBedRoom}" value="${prjBedRoom}"/>
							</c:when>
	          			</c:choose>
	          			<c:set var="slideImage" value="${varProjectDetailsForm.projectImageForm.slideImagesArray[0]}" />
					</c:forEach>
					
					<c:set var="bedRooms" value="" scope="page" />
					<c:set var="bathRooms" value="" scope="page" />
					<c:set var="size" value="" scope="page" />
					<c:set var="price" value="" scope="page" />
					
				 	
					<c:forEach var="entry" items="${requestScope.map}" varStatus="loop">
  						<c:if test="${loop.first || loop.last }">
  								
  							<c:set var="count" value="0" scope="page" />	
  							<c:forEach var="varProjectDetailsForm2" items="${varProjectForm.projectDetailsFormSet}" varStatus="loop2">
									<c:if test="${entry.key eq varProjectDetailsForm2.bedRooms}">
										<c:if test="${count < 1 }">
												<c:set var="count" value="${count + 1}" scope="page"/>
												<c:choose>
													<c:when test="${loop.last}">
														<c:set var="bedRooms" value="${bedRooms}${varProjectDetailsForm2.bedRooms} " />
														<c:set var="bathRooms" value="${bathRooms}${varProjectDetailsForm2.bathRooms} " />
														<c:set var="size" value="${size}${varProjectDetailsForm2.size} " />
														<c:set var="price" value="${price}${varProjectDetailsForm2.price} " />
													</c:when>
													<c:otherwise>
														<c:set var="bedRooms" value="${bedRooms}${varProjectDetailsForm2.bedRooms} to " />
														<c:set var="bathRooms" value="${bathRooms}${varProjectDetailsForm2.bathRooms} to" />
														<c:set var="size" value="${size}${varProjectDetailsForm2.size} to " />
														<c:set var="price" value="${price}${varProjectDetailsForm2.price} to " />
													</c:otherwise>
												</c:choose>	
										</c:if>
			          				</c:if>
			          		</c:forEach>
						</c:if>
  					</c:forEach>
					
					<c:remove var="map"/>	
				
				
				<div class="grid-box">
					<div class="project-slider">
						<div class="project-img">
							<img src="http://images.bestnest.in/${slideImage}" width="290" height="180" alt="${slideImage}" />
						</div>
						<div class="project-name">
							${varProjectForm.projectName}
							<div class="clear"></div>
						</div>
						<div class="clear"></div>
					</div>
					
					<div class="view-details view-link">
					     <form:form  method="get" id="projectSearchForm" modelAttribute="projectSearchForm" action="/property-for-sale/${varProjectForm.url}/">
                            <input id="minPrice" name="minPrice" value="${projectSearchForm.minPrice}" type="hidden"/>
                            <input id="maxPrice" name="maxPrice" value="${projectSearchForm.maxPrice}" type="hidden"/>
                            <input id="bedRoom" name="bedRoom"  value="${projectSearchForm.bedRoom}" type="hidden"/>
                            <input id="possessionStatus" name="possessionStatus" value="${projectSearchForm.possessionStatus}" type="hidden"/>
                            <input id="cityId" name="cityForm.cityId" value="${projectSearchForm.cityForm.cityId}" type="hidden"/>
                            <input id="cityName" name="cityForm.name" value="${projectSearchForm.cityForm.name}" type="hidden"/>
                            <input id="companyId"  name="companyForm.companyId" value="${projectSearchForm.companyForm.companyId}" type="hidden"/>
                            <input id="companyName" name="companyForm.companyName" value="${projectSearchForm.companyForm.companyName}" type="hidden"/>
                            <input id="propertyTypeId" name="propertyTypeId" value="${projectSearchForm.propertyTypeId}" type="hidden"/>
                            <input id="gridList" name="gridList" value="Grid" type="hidden"/>

                            <a href="#" onclick="$(this).closest('form').submit()">View Details</a>
                         </form:form>

						<div class="clear"></div>
					</div>
					
					<div class="project-amenities">
					
						<table id="property_detail_table" width="100%" border="0">
							<tr>
								<td width="39%"><strong>${varProjectForm.propertyTypeForm.propertyTypeId}:</strong></td>
								<td width="6%" rowspan="4" align="left" valign="middle">
									<img src="http://images.bestnest.in/separator.jpg" alt="Row Separator" />
								</td>
								<td width="55%">${varProjectForm.addressForm.cityLocalityForm.locality}</td>
							</tr>
							
							<c:if test="${requestScope.propertyType != 'Commercial'}">
								<tr>
									<td><strong>Bed:</strong></td>
									<td>${bedRooms}</td>
								</tr>
							</c:if>
							<tr>
								<td><strong>Size:</strong></td>
								<td>${size} Sq. Ft.</td>
							</tr>
							<tr>
								<td><strong>Price:</strong></td>
								<td>${price}</td>
							</tr>
						</table>
						
						<div class="clear"></div>
						<div class="more-pro">
							For more property from noida visit <a href="#">www.bestnest.in
							</a>
							<div class="clear"></div>
						</div>
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
				</div>
			</c:forEach>
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
		
		<div class="clear"></div>
		<script>
			$(document).ready(function(){
				$('li:odd, .content > *:odd');
			});
		</script>
	</div>
	<!--Main Section-->
