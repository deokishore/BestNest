<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page isELIgnored="false"%>


<!DOCTYPE HTML>
<html>
<head>
<title>Mahagun India | Projects of Mahagun india in Noida Extension by| BestNest Real Estate Services  </title>
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Meta Keywords for Indexing -->
<meta name="keywords" content="Noida Extension Projects, property in noida extension, flat in noida extension, 2BHK Flat in Noida extension, Mahagun group in noida extension  " />
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
<link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/colorbox.css" />
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
<script type="text/javascript" src="http://resources.bestnest.in/js/jquery.colorbox.js"></script>
<script type="text/javascript" src="http://resources.bestnest.in/js/jssor.slider.min.js"></script>
<script type="text/javascript" src="http://resources.bestnest.in/js/projectsection.js"></script>

<script type="text/javascript">
	$(document).ready(function(){$(".example7").colorbox({width:"600px",height:"400px",iframe:true});});
</script>
<script type="text/javascript">
	$(document).ready(function(){$(".example8").colorbox({width:"600px",height:"400px",iframe:true});});
</script>


<script type="text/javascript">

function makeMinMax2(data) {
	var arr = data.split(',');
	var min = arrayMin(arr);
	var max = arrayMax(arr);
	return nFormatter(min) + ' to ' + nFormatter(max);	
}

<!-- Start Table Construction   -->
$(document ).ready(function() {
	<c:forEach var="varProjectForm" items="${projectSearchForm.projectFormList}" varStatus="main_loop">

			var str = $.trim("${varProjectForm.addressForm.cityLocalityForm.cityForm.name}");
			str = str.replace(/\s+/g, '-').toLowerCase();
			
			$("#portfolio").append("<li id=\"prolist${main_loop.index}\" class=\"project-filter-li item "+ str +"\""
						+"data-filter=\"${varProjectForm.projectGroup}\"><a id=\"${varProjectForm.projectGroup}\""
						+"href=\"javascript:void(0);\""
						+"style=\"background-image: url(${varProjectForm.projectLogo})\"></a>"
						+"</li>");
	
			var tanleName = "detail_table_"+${main_loop.index};
			<c:set var="price" value="" scope="page" />
			<c:set var="overview" value="" scope="page" />
			
			<c:forEach var="varProjectDetailsForm" items="${varProjectForm.projectDetailsFormSet}" varStatus="loop">
					<c:set var="price" value="${price}${varProjectDetailsForm.price}," />
					<c:set var="slideImage" value="${varProjectDetailsForm.projectImageForm.slideImagesArray[0]}" />
					<c:set var="overview" value="${varProjectDetailsForm.overview}" />
			</c:forEach>
			
			//var minMaxPriceLabel = makeMinMax2("${price}".substr(0, "${price}".length -1));
			var minMaxPriceLabel = makeMinMax2("${price}".substr(0, "${price}".length -1));
			
			$("#project-wrap").append(
							"<div class=\"proj-list-sear-info list-items ${varProjectForm.projectGroup}\">"
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
																	+"<span itemprop=\"name\">${varProjectForm.projectName} (${varProjectForm.propertyTypeForm.propertyTypeId})</span>"
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

												<!-- Table Starts here -->
												+"<div class=\"tt-table-content relativePostion left row-full\">"
													+"<table class=\"detail\" id=\"detail_table_${main_loop.index}\">"
														+"<tbody>"
															+"<tr>"
																+"<td>PROPERTY </td>"
																+"<td>SIZE (Sq.Ft.)</td>"
																+"<td>PRICE (Rs.)</td>"
																+"<td>PRICE (Per Sqft.)</td>"
															+"</tr>"
														+"</tbody>"
													+"</table>"
													+"<div class=\"clear\"></div>"
												+"</div>"
												<!-- Table Ends here --> 
																								
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

function nFormatter(val) {
	if(val >= 10000000) val = (val/10000000).toFixed(2) ;
    else if(val >= 100000) val = (val/100000).toFixed(2);
    else if(val >= 1000) val = (val/1000).toFixed(2);
    return val;
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

<script type="text/javascript">
	/** Best Deals Slider Function**/
	$(document).ready(function()
	{
		$(".anythingSlider").mouseover(function() { $("span.arrow").css('opacity', '1'); });
		$(".anythingSlider").mouseout(function() { $("span.arrow").css('opacity', '0'); });
		
	$(".forward").click(function(){  
		$("#proGalleryFourSlider_1 li").removeClass('activePage').next('li').addClass('activePage');
		$(".anythingSlider").find("span.back").removeClass("disabled"); 
		$(this).parents(".anythingSlider").find("ul").css('left' , '-941px');
	});
	
	$(".back").click(function(){  
		$("#proGalleryFourSlider_1 li").removeClass('activePage').next('li').addClass('activePage');
		$(".anythingSlider").find("span.back").addClass("disabled"); 
		$(this).parents(".anythingSlider").find("ul").css('left' , '0px');
	});
	
	/** End Best Deals Slider Function**/
	
	/** Project Size & Price Sorting Function **/
		$('#sort-size').click(function() {
			$(this).closest('div').parents().find('#project-item1').toggleClass('active');
			$(this).parents().siblings('div').find('#project-item2').removeClass('active');
		});
	
		$('#sort-price').click(function() {
			$(this).closest('div').parents().find('#project-item2').toggleClass('active');
			$(this).parents().siblings('div').find('#project-item1').removeClass('active');
		});
		
		$('#filterSize1').click(function() {
			
			$(this).parents().find('#project-item1').removeClass('active');
			constructOriginalTable();	
			$('#project-wrap table tbody tr').each(function(){ 
				   var str = $(this).find('td').text();
				   if(!containsWord(str, "PROPERTY") ) {
					   if(!containsWord(str, "1 BHK") ){
						   $(this).remove();
					   }
				   }
			});
		});
		
		$('#filterSize2').click(function() {

			$(this).parents().find('#project-item1').removeClass('active');
			constructOriginalTable();
			$('#project-wrap table tbody tr').each(function(){ 
				   var str = $(this).find('td').text();
				   if(!containsWord(str, "PROPERTY") ) {
					   if(!containsWord(str, "2 BHK") ){
						   $(this).remove();
					   }
				   }
			});
		});
		
		$('#filterSize3').click(function() {

			$(this).parents().find('#project-item1').removeClass('active');
			constructOriginalTable();	
			$('#project-wrap table tbody tr').each(function(){ 
				   var str = $(this).find('td').text();
				   if(!containsWord(str, "PROPERTY") ) {
					   if(!containsWord(str, "3 BHK") ){
						   $(this).remove();
					   }
				   }
			});
		});
		
		$('#filterSize4').click(function() {
			
			$(this).parents().find('#project-item1').removeClass('active');
			constructOriginalTable();
			$('#project-wrap table tbody tr').each(function(){ 
				   var str = $(this).find('td').text();
				   if(!containsWord(str, "PROPERTY") ) {
					   if(!containsWord(str, "4 BHK") ){
						   $(this).remove();
					   }
				   }
			});
		});

		$('#filterSize5').click(function() {
			$(this).parents().find('#project-item1').removeClass('active');
			constructOriginalTable();
		});
		
		$('#min-price').click(function() {
			alert("You have selected min price");
			$(this).parents().find('#project-item2').removeClass('active');
		});
		
		$('#max-price').click(function() {
			alert("You have selected max price");
			$(this).parents().find('#project-item2').removeClass('active');
		});	
		/** End Project Size & Price Sorting Function **/

		function containsWord(haystack, needle) {
    		return (" " + haystack + " ").indexOf(" " + needle + " ") !== -1;
		}
});	
</script>

<script type="text/javascript">

function constructOriginalTable() {

	$("#project-wrap").empty();
	
	<c:forEach var="varProjectForm" items="${projectSearchForm.projectFormList}" varStatus="main_loop">


	var tanleName = "detail_table_"+${main_loop.index};
	<c:set var="price" value="" scope="page" />
	<c:set var="overview" value="" scope="page" />
	
	<c:forEach var="varProjectDetailsForm" items="${varProjectForm.projectDetailsFormSet}" varStatus="loop">
			<c:set var="price" value="${price}${varProjectDetailsForm.price}," />
			<c:set var="slideImage" value="${varProjectDetailsForm.projectImageForm.slideImagesArray[0]}" />
			<c:set var="overview" value="${varProjectDetailsForm.overview}" />
	</c:forEach>
	
	//var minMaxPriceLabel = makeMinMax2("${price}".substr(0, "${price}".length -1));
	var minMaxPriceLabel = "3333333";
	
	$("#project-wrap").append(
					"<div class=\"proj-list-sear-info list-items ${varProjectForm.projectGroup}\">"
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
															+"<span itemprop=\"name\">${varProjectForm.projectName} (${varProjectForm.propertyTypeForm.propertyTypeId})</span>"
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

										<!-- Table Starts here -->
										+"<div class=\"tt-table-content relativePostion left row-full\">"
											+"<table class=\"detail\" id=\"detail_table_${main_loop.index}\">"
												+"<tbody>"
													+"<tr>"
														+"<td>PROPERTY </td>"
														+"<td>SIZE (Sq.Ft.)</td>"
														+"<td>PRICE (Rs.)</td>"
														+"<td>PRICE (Per Sqft.)</td>"
													+"</tr>"
												+"</tbody>"
											+"</table>"
											+"<div class=\"clear\"></div>"
										+"</div>"
										<!-- Table Ends here --> 
																						
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
}

</script>

<script>
function toggleDiv(divId) {
   $("#"+divId).toggleClass('active');
   return false;  
}
</script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-62344738-1', 'auto');
  ga('send', 'pageview');
</script>
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
				<a class="toggleMenu" href="#"><img src="http://images.bestnest.in/micro-site/mahagun-group/nav-icon.png" alt="Menu Items" border="0" /></a>
				<ul class="nav">
			        <li id="listone"><a class="active" href="/mahagunproject" title="Home">Home</a> </li>
			        <li id="listtwo" style="display:none;"><a rel="residential" href="/mahagunproject/residential" title="Residential Projects">Residential Projects</a></li>
					<li id="listthree" style="display:none;"><a rel="commercial" href="/mahagunproject/commercial" title="Commercial Projects">Commercial Projects</a></li>
			        <li id="listfour"><a href="/mahagunproject/aboutus" title="About Us">About Mahagun</a> </li>
			        <li id="listfive"><a href="/mahagunproject/contactus" title="Contact Us">Contact Us</a> </li>
			      </ul>
			</div>
		</header>
		<!--End Header Section-->
		<!--Start Slideshow Area-->
		<div id="coin-slider" > 
			<a href="javascript:void(0);"><img src="http://images.bestnest.in/micro-site/mahagun-group/slideimages/slideimage1.jpg" width="1583" height="450" alt="Image1" /> </a> 
			<a href="javascript:void(0);"><img src="http://images.bestnest.in/micro-site/mahagun-group/slideimages/slideimage2.jpg" width="1583" height="450" alt="Image2" /> </a> 
			<a href="javascript:void(0);"><img src="http://images.bestnest.in/micro-site/mahagun-group/slideimages/slideimage3.jpg" width="1583" height="450" alt="Image3" /> </a> 
			<a href="javascript:void(0);"><img src="http://images.bestnest.in/micro-site/mahagun-group/slideimages/slideimage4.jpg" width="1583" height="450" alt="Image4" /> </a> 
			<a href="javascript:void(0);"><img src="http://images.bestnest.in/micro-site/mahagun-group/slideimages/slideimage5.jpg" width="1583" height="450" alt="Image5" /> </a>
		</div>
		<!--End Slideshow Area-->
		<!--Start Main Content Section-->
		<div role="main" id="main">
			<div class="sidelinks" style="left: 0px; display: block;">
				<a rel="main" href="/mahagunproject" class="prlogo"> <img
					border="0"
					src="http://images.bestnest.in/micro-site/mahagun-group/logo_mahagungroup.png"
					alt="Mahagun Group"></a>
				<div>
					<ul>
						<li><a class="active" rel="residential" href="/mahagunproject/residential" title="Residential Projects">Residential Projects</a></li>
						<li><a rel="commercial" href="/mahagunproject/commercial" title="Commercial Projects">Commercial Projects</a></li>
						<li><a rel="aboutus" href="/mahagunproject/aboutus" title="About Us">About	Mahagun</a></li>
						<li><a rel="contact" href="/mahagunproject/contactus" title="Contact Us">Contact Us</a></li>
						<div class="clear"></div>
					</ul>
				</div>
			</div>
			<div class="middleContainer main-content clearfix">
				<div class="rightColumnContainer discuss-right">
					<h1 id="toptitle">${projectSearchForm.propertyTypeId} Projects</h1>
					
					<!--  City Start -->
					<div class="discuss-nav">
						<ul id="filter">
							  <li><a id="all" href="javascript:void(0);" class="selected all">All Projects</a></li>
		                      <li><a id="noida-ext" href="javascript:void(0);" class="noida-ext">Noida Extension</a></li>
		                      <li><a id="nh24-ghz" href="javascript:void(0);" class="nh24-ghz">NH24-Ghaziabad</a></li>
		                      <li><a id="noida" href="javascript:void(0);" class="noida">Noida</a></li>
		                      <li><a id="noidaexp" href="javascript:void(0);" class="noidaexp">Noida Expressway</a></li>
		                      <li><a id="g-noida" href="javascript:void(0);" class="g-noida">Greater Noida</a></li>
		                      <li class="darrow"><a id="more-city" href="javascript:void(0);">More City</a>
		                      	<ul>
		                        	<li> 
		                        		<a id="dli" href="javascript:void(0);" class="city-delhi">Delhi</a>
		                            </li>
		                        	<li> 
		                            	<a id="ggn" href="javascript:void(0);" class="city-gurgaon">Gurgaon</a>
		                            </li>
		                        	<li class="last">
		                            	<a id="fbd" href="javascript:void(0);" class="city-faridabad">Faridabad</a>
		                        	</li>
		                        </ul>
                      		</li>
						</ul>
						<div class="clear"></div>
					</div>
					<!--  City End -->
					
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
									<li><a href="/mahagunproject/projectlisting" class="active"><img alt="List View" src="http://images.bestnest.in/list-icon.png"></a></li>
									<li><a href="/mahagunproject/projectgrid"><img 	alt="Grid View" src="http://images.bestnest.in/grid-icon.png"></a></li>
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
                        				
										<div class="project-item_content project-item_content-size Size">
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
													<li id="filterSize5" class="fieldValue project-sizes_size-wrapper project-filters_field">
														<span class="fieldName">Clear</span>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</form>
							</div>
							
							
							
							
							<div id="price-sort" class="project_modifiers-content">
								<div class="project_modifier price_modifier_sort">
									<div id="project-item2"
										class="project-item project-item_modifier project-item_animated">
										<div class="project-item_header"
											onClick="javascript:toggleDiv('project-item2');">
											<h4>
												<span class="project-item_stateindicator">Price</span>
											</h4>
										</div>
										<div class="project-item_content project-item_content-size">
											<div class="filter">
												<ul class="sort-price">
													<li class="filter_sort sortValue"><a href="#"
														title="Price Low to High">Min Price</a></li>
													<li class="filter_sort sortValue"><a href="#"
														title="Price High to Low">Max Price</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>

							</div>
							<div class="clear"></div>
						</div>
					</div>
					<!--End Sorting Link-->
					
					<!-- Box Section Start -->
					<div id="project-wrap" class="listings-container project-items-wrapper clearfix">
						
						

					</div>
					<!-- Box Section End -->
					
				</div>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<!-- Site Visit Section -->
    
	<!-- End Site Visit -->
	
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

	<div class="righttext" style="position: fixed; top: 300px; right: 0; z-index: 9999">
		<div id="showtext" style="display: block; color: #ff0000"
			class="calbg">
			<div id="more">
				<div style="color: rgb(255, 255, 255);" class="calbgpd">+91-9631500252</div>
			</div>
			<br>
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
