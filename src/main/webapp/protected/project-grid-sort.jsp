<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page isELIgnored="false"%>

<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>BestNest Projects in sorted view | BestNest Real Estate Services </title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--CSS Theme-->
<link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/best-nest.css" />
<link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/jquery-ui.css" />
<link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/dropdown.css" />
<link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/easydropdown.css" />
<link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/top-slider.css" />
<link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/structure.css" />
<link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/jquery.bxslider.css" />
<link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/flexisel.css">
<link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/prettyPhoto.css" />
<link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/video-js.css">
<link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/jquery.fancybox.css">
<link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/jquery.fancybox-buttons.css">
<!--CSS Theme-->
<!-- JS Scripts-->
<script type="text/javascript" src="http://resources.bestnest.in/js/html5.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script type="text/javascript" src="http://resources.bestnest.in/js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="http://resources.bestnest.in/js/jqueryui.js"></script>
<script type="text/javascript" src="http://resources.bestnest.in/js/jquery.tinyscrollbar.js"></script>
<script type="text/javascript" src="http://resources.bestnest.in/js/projectsection.js"></script>
<script type="text/javascript" src="http://resources.bestnest.in/js/custom.js"></script>
<script type="text/javascript" src="http://resources.bestnest.in/js/EzFade.js"></script>
<script>
	$(document).ready(function(){
	  $('#fadeMe').EzFade({height: '450'});
});
</script>
<script type="text/javascript" src="http://resources.bestnest.in/js/services.js"></script>
<script type="text/javascript" src="http://resources.bestnest.in/js/jquery.easydropdown.js"></script>

<!--Top Slider Adds-->
<script type="text/javascript" src="http://resources.bestnest.in/js/jquery.bxslider.js"></script>
<script type="text/javascript" src="http://resources.bestnest.in/js/jquery.bxslider.min.js"></script>
<script>
$(document).ready(function(){
  $('.slider1').bxSlider({
    slideWidth: 300,
    minSlides: 3,
    maxSlides: 6,
    slideMargin: 4,
	speed: 800,
    auto:true,
  });
});
</script>
<!--End Top Slider Adds-->

<!-- Developer Slider Footer -->
<script type="text/javascript" src="http://resources.bestnest.in/js/jquery.flexisel.js"></script>
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
    });  
});
</script>
<!-- End Developer Slider Footer -->

<!-- Nri Slide Image Gallery -->
<script src="http://resources.bestnest.in/js/jquery.prettyPhoto.js" type="text/javascript"></script>
<!-- End Nri Slide Image Gallery -->

<!-- Common Js File -->
<script type="text/javascript" src="http://resources.bestnest.in/js/common.js"></script>
<!-- End Common Js File-->

<!-- Fancy Box -->
<script type="text/javascript" src="http://resources.bestnest.in/js/video.js"></script> 
<script type="text/javascript" src="http://resources.bestnest.in/js/jquery.fancybox.js"></script>
<script type="text/javascript" src="http://resources.bestnest.in/js/jquery.fancybox-buttons.js"></script> 
<script type="text/javascript">
	$(document).ready(function() {
		/*
		 *  Simple image gallery. Uses default settings
		 */
	
		$('.fancybox').fancybox();
	
	
		/*
		 *  Different effects
		 */
	
		
		/*
		 *  Button helper. Disable animations, hide close button, change title type and content
		 */
	
		$('.fancybox-buttons').fancybox({
			openEffect  : 'elastic',
			closeEffect : 'fade',
	
			prevEffect : 'none',
			nextEffect : 'none',
	
			closeBtn  : false,
	
			helpers : {
				title : {
					type : 'inside'
				},
				buttons	: {}
			},
	
			afterLoad : function() {
				this.title = 'Image ' + (this.index + 1) + ' of ' + this.group.length + (this.title ? ' - ' + this.	
				title : '');
			}
		});	
	});
</script>
<!--End Fancy Box-->

<!--Project Detail Slideshow-->
<script type="text/javascript" src="http://resources.bestnest.in/js/jssor.slider.min.js"></script>
<script>

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
<!--End Project Detail Slideshow-->

<!-- Other Scripts -->
<script>
  $(document).ready(function () {
  	$("p.title").click(function() {
	   $(this).parent().toggleClass("active");
	});
  });
  </script>
<script>
  	$(document).ready(function () {
  	$(".zsg-form").click(function() {
	   $(this).parent().removeClass('zmm-lrf-advanced-hidden').addClass('zmm-lrf-advanced-show');
	});
	$(".zsg-icon-x-thin").click(function() {
	   $(this).find('#zmm-lrf').removeClass('zmm-lrf-advanced-show').addClass('zmm-lrf-advanced-hidden');
	});
	
  })  
</script>
<script type="text/javascript">
    function customCheckbox(checkboxName){
        var checkBox = $('input[name="'+ checkboxName +'"]');
        $(checkBox).each(function(){
            $(this).wrap( "<span class='custom-checkbox'></span>" );
            if($(this).is(':checked')){
                $(this).parent().addClass("selected");
            }
        });
        $(checkBox).click(function(){
            $(this).parent().toggleClass("selected");
        });
    }
    $(document).ready(function (){
        customCheckbox("Silver_scheck");
		customCheckbox("Gold_scheck");
		customCheckbox("Platinum_scheck");
		customCheckbox("Silver_acheck");
		customCheckbox("Gold_acheck");
		customCheckbox("Platinum_acheck");
		customCheckbox("otherService");
    })
</script>
<script>
  $(function() {
    $( "#dialog" ).dialog({
	   width: 700,
       height: 500,
      autoOpen: false,
      show: {
        effect: "blind",
        duration: 1000
      },
      hide: {
        effect: "explode",
        duration: 1000
      }
    });
	
	 $( "#dialog1" ).dialog({
	   width: 650,
       height: 300,
      autoOpen: false,
      show: {
        effect: "blind",
        duration: 1000
      },
      hide: {
        effect: "explode",
        duration: 1000
      }
    });
	
    $( ".sample-report-opener" ).click(function() {
      $( "#dialog" ).dialog( "open" );
    });
	
	$( ".price-report-opener" ).click(function() {
      $( "#dialog1" ).dialog( "open" );
    });
	
  });
  </script>
<script>
  $(function() {
    var availableTags = [
      "GreaterNoida",
      "Noida",
      "NoidaExtension",
      "Ghaziabad",
      "GaurSons",
      "GaurCity",
      "GaurHeights",
      "Supertech",
      "RGLuxuryHomes",
      "MahagunMantra",
	  "MahagunMantra2",
      "GalaxyNorthAvenue2",
      "GC14Avenue",
      "ShivalikHomes",
      "SayaZion"
    ];
    $(".tags").autocomplete({
      source: availableTags
    });
  });
  </script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#scrollbar1').tinyscrollbar();
		$('#scrollbar2').tinyscrollbar();
		$('#scrollbar3').tinyscrollbar();
		$('#scrollbar4').tinyscrollbar();
		$('#scrollbar5').tinyscrollbar();
		$('#scrollbar6').tinyscrollbar();
});
	
	/** Filter Hidden Div Toogle **/
	function toggleDiv(divId) {
   		$("#"+divId).toggleClass('flipClose flipOpen');
   		return false;
	}
	/** End Filter Hidden Div Toogle **/

	/** Set Filter Values **/
	function handleClick(obj, valparam, tosetid, settype, clsid, rpclass) {
		var setObj = document.getElementById(tosetid);
		var trgCls = document.getElementById(clsid);
		
		if (setObj!=null) {
			if (settype = "stInner") {
				setObj.innerHTML = valparam;
			}
			else if (settype = "stCheck") {
				setObj.checked  = true;
			}
			else if (settype = "stRadio") {
				setObj.checked  = true;
			}
			else if (settype = "stSelect") {
				setObj.selected = valparam;
			}
			else if (settype = "stText") {
				setObj.value = valparam;
			}
			else {
				// DO NOTHING
			}
			
			if ((trgCls != null) && (rpclass == "Y")) {
				trgCls.className = trgCls.className.replace('flipOpen', 'flipClose');
				//alert (trgCls.className);	
			}		
		}				
	}
	
	/** End Set Filter Values **/
	
	/** Reset Filter Values **/
	function resetdo(){
		var field1 = document.getElementById("cstatus");
		var field2 = document.getElementById("filterCity");
		var field3 = document.getElementById("filtermin-price");
		var field4 = document.getElementById("filtermax-price");
		var field5 = document.getElementById("filterbeds");
		var field6 = document.getElementById("protpe");
		var field7 = document.getElementById("rentFilterCity");
		var field8 = document.getElementById("rentMinprice");
		var field9 = document.getElementById("rentMaxprice");
		var field10 = document.getElementById("rentFilterBeds");
		
		var radiobtn0 = document.getElementById("protypeli1").checked = true;
		var radiobtn1 = document.getElementById("protypeli3").checked = true;
		var radiobtn2 = document.getElementById("allst").checked = true;
		var radiobtn3 = document.getElementById("cityli0").checked = true;
		var radiobtn4 = document.getElementById("bedroomli1").checked = true;
		var radiobtn5 = document.getElementById("rentcityli0").checked = true;
		
		if (field1!= null){
			field1.innerHTML = "All";
		}
		if (field2!= null){
			field2.innerHTML = "All";
		}
		if (field3!= null){
			field3.innerHTML = "Min Price";
		}
		if (field4!= null){
			field4.innerHTML = "Max Price";
		}
		if (field5!= null){
			field5.innerHTML = "Any";
		}
		if (field6!= null){
			field6.innerHTML = "All Residential";
		}
		if (field7!= null){
			field7.innerHTML = "All";
		}
		if (field8!= null){
			field8.innerHTML = "Min Price";
		}
		if (field9!= null){
			field9.innerHTML = "Max Price";
		}
		if (field10!= null){
			field10.innerHTML = "Any";
		}
	}
	/** End Reset Filter Values **/
</script>
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
			alert("You have selected 1 Bhk Size");
			$(this).parents().find('#project-item1').removeClass('active');
		});
		
		$('#filterSize2').click(function() {
			alert("You have selected 2 Bhk Size");
			$(this).parents().find('#project-item1').removeClass('active');
		});
		
		$('#filterSize3').click(function() {
			alert("You have selected 3 Bhk Size");
			$(this).parents().find('#project-item1').removeClass('active');
		});
		
		$('#filterSize4').click(function() {
			alert("You have selected 4 Bhk Size");
			$(this).parents().find('#project-item1').removeClass('active');
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
		
	/** Search Tab Buy & Rent Functionality **/
	
	$('.search-tabs li a').click(function() {
    	$('li a.sel').removeClass('sel');
    	$(this).closest('li a').addClass('sel');
		//$(this).closest('div.buyrentpanel').toggleClass('showfilter hidefilter');
	});

	$(".tabs").click(function() {
		$(".buyrentpanel").toggleClass("showfilter hidefilter");
	});
	
	/** End Search Tab Buy & Rent Functionality **/
	
});	
</script>
<!-- End Other Scripts -->

<!-- BestNest JS -->
<script src="http://resources.bestnest.in/js/home-page.js" type="text/javascript"></script>

<!-- Pagination Start  -->
<script type="text/javascript" src="http://resources.bestnest.in/js/pagination/jquery_grid.pajinate.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#paging_container2').pajinate();
	});		
</script>
<!-- Pagination End -->

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

<!--End Js Scripts-->

<style>
.hidefilter {display:none;}
.showfilter {display:block;}
</style>
<link rel="shortcut icon" type="image/ico" href="http://images.bestnest.in/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="http://images.bestnest.in/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="http://images.bestnest.in/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="http://images.bestnest.in/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="http://images.bestnest.in/ico/apple-touch-icon-57-precomposed.png">
</head>
<body>
<!-- Facebook Like Plugin -->
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.4";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<!-- End Facebook Plugin -->
<!--Header Section-->
<header>
    <div class="head">
        <div class="logo">
            <a href="/"><img alt="BestNest Real Estate Services Pvt Ltd." src="http://images.bestnest.in/best-nest.png"></a>
            <div class="clear"></div>
        </div>
        <a href="javascript:void(0);" class="toggleMenu"><img border="0" alt="Menu Items" src="http://images.bestnest.in/nav-icon.png"></a>
    
        <ul class="nav">
           <li><a href="/nriServices.htm" class="deactive" title="NRI Services">NRI Services</a></li>
    		<li><a href="/aboutUs.htm" class="deactive" title="About Us">About Us</a></li>
			<li><a href="/lZone.htm" class="deactive" title="DDA L ZONE">DDA L Zone</a></li>
			<li><a href="/contactUs.htm" class="deactive" title="Contact Us">Contact Us</a></li>
			<li><a href="javascript:submitForAdmin()" class="deactive" title="Login to Admin Panel">Login</a></li>
			<!-- <li class="postProLi"><a class="sellrent" href="sell/seller-login.html" title="Post Property">Post Property<small> Free</small></a> </li>  -->
	    </ul>
        <div class="clear"></div>
    </div>
    <div class="clear"></div>
</header>
	<!--Header Section-->

	<!--Search Section-->
	<div id="search-bar-Bg" style="height:150px;">
	
     	<form:form id="projectSearchForm" method="POST" 
     		action="${pageContext.request.contextPath}/projectSearchPage" 
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
                        <a href="${pageContext.request.contextPath}/projectSearchListPage.htm
										?cityId=<%=request.getAttribute("cityId")%>
										&companyId=<%=request.getAttribute("companyId")%>
										&propertyType=<%=request.getAttribute("propertyType")%>
										&cityName=<%=request.getAttribute("cityName")%>
										&bedRoom=<%=request.getAttribute("bedRoom")%>
										&minPrice=<%=request.getAttribute("minPrice")%>
										&maxPrice=<%=request.getAttribute("maxPrice")%>">
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
										&maxPrice=<%=request.getAttribute("maxPrice")%>" class="active">
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
							<img src="http://images.bestnest.in/${slideImage}" width="290" height="180" alt="slideshow_large" />  
						</div>
						<div class="project-name">
							${varProjectForm.projectName}
							<div class="clear"></div>
						</div>
						<div class="clear"></div>
					</div>
					
					<div class="view-details view-link">
						<a href="${pageContext.request.contextPath}/projectDetail.htm?projectId=${varProjectForm.projectId}
										&projectDetailsId=${varProjectDetailsForm.projectDetailsId}
										&cityId=<%=request.getAttribute("cityId")%>
										&companyId=<%=request.getAttribute("companyId")%>
										&propertyType=<%=request.getAttribute("propertyType")%>
										&cityName=<%=request.getAttribute("cityName")%>
										&bedRoom=<%=request.getAttribute("bedRoom")%>
										&minPrice=<%=request.getAttribute("minPrice")%>
										&maxPrice=<%=request.getAttribute("maxPrice")%>
										&gridList=projectSearchGridPage.htm">
							View Details <img src="http://images.bestnest.in/view-icon-png.png" alt="Details"
							border="0" align="absmiddle" />
						</a>
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

</body>
</html>
