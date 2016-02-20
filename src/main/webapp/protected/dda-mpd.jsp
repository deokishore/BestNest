<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE HTML>
<html><head>
<meta charset="utf-8">
<title>Delhi L Zone, Dwarka Extension Plan | BestNest Real Estate</title>
<meta name="description" content="As a step towards facilitating the growing need of housing in Delhi, the Delhi Development Authority (DDA) is working on the Master Plan of L Zone. Located in South-West Delhi and spread across 22,840 hectare of land, the L Zone is expected to give an impetus to the slow and stagnant real estate market of the national capital." />
<meta name="keywords" content="dda lzone, lzone projects, dwarka lzone, dwarka lzone projects, lzone hot projects" />
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
    <div class="logo"> <a href="/"><img src="http://images.bestnest.in/best-nest.png" alt="BestNest Real Estate Services Pvt. Ltd." /></a>
      <div class="clear"></div>
    </div>
        <a class="toggleMenu" href="#"><img src="http://images.bestnest.in/nav-icon.png" alt="Menu Items" border="0" /></a>
	
	  <ul class="nav">
         <li><a href="/nriServices.htm" class="deactive" title="NRI Services">NRI Services</a></li>
	    <li><a href="/aboutUs.htm" class="deactive" title="About Us">About Us</a></li>
	    <li><a href="/lZone.htm" class="active" title="DDA L ZONE">DDA L Zone</a></li>
		<li><a href="/contactUs.htm" class="deactive" title="Contact Us">Contact Us</a></li>
		<li><a href="javascript:submitForAdmin()" class="deactive" title="Login To Admin Panel">Login</a></li>
		<!-- <li class="postProLi"><a class="sellrent" href="sell/seller-login.html" title="Post Property">Post Property<small> Free</small></a> </li>  -->
       </ul>
    <div class="clear"></div>
  </div>
  <div class="clear"></div>
</header>
<!--Header Section-->

<!--Search Section-->
<div class="inner-form">
  <div class="clear"></div>
</div>
<!--Search Section-->

<!--Content Section-->
<section class="sectioncol">
  <div class="wrapper">
  	<div class="breadcrumbs">
        <ul>
        	<li>
          		<a href="/" title="Home">Home</a>
            	<span class="tick"></span>
        	</li>
          	<li>
          		<a class="last" href="lZone.htm" title="DDA L ZONE">DDA L ZONE</a>
                <span class="tick"></span>
           	</li>
          	<li>About L Zone</li>
        </ul>
    	<div class="clear"></div>
  	</div>
  	<div class="section-header marginT15">
		<h2 class="dark-text">MASTER PLAN OF DELHI - 2021</h2>
		<h6>DDA L ZONE - UPCOMING LARGEST SUBCITY IN DELHI</h6>
	</div>
    
    <!--Left Portion -->
    <div class="left-portion">
    	<div class="module" id="Tab">
      		<div id="detailsTabs" class="tabmenu tabbed-content">
        		<ul class="clearfix property-link-list" id="tabcontainer">
          			<li class="pdetail-tab active" id="masterplan"> <a href="#tab1">Master Plan Delhi 2021</a> </li>
          			<li class="pdetail-tab" id="lzoneland"> <a href="#tab2">L Zone Land in Delhi</a> </li>
          			<li class="pdetail-tab" id="facilities"> <a href="#tab3">Facilities</a> </li>
          			<li class="pdetail-tab" id="propertyavl"> <a href="#tab4">Hot Projects</a></li>
          			<li class="pdetail-tab" id="mapview"> <a href="#tab5">Map View</a> </li>
                    <li class="pdetail-tab" id="faqs"> <a href="#tab6">FAQ's</a> </li>
        		</ul>
                <div class="tab_content clearfix tabs" id="tab1">
                  <div class="overview">
                    <div class="contentBoxContainer padding20 marginB15">
                        <div class="contentdiv">
                        	<h2>MASTER PLAN DELHI 2021</h2>
                            <p>As a step towards facilitating the growing need of housing in Delhi, the Delhi Development Authority (DDA) is working on the Master Plan of L Zone. Located in South-West Delhi and spread across 22,840 hectare of land, the L Zone is expected to give an impetus to the slow and stagnant real estate market of the national capital. It is close to IGI Airport and is strategically positioned between Dwarka and Gurgaon.</p>
                            <p>Under the development plan, the authority has divided Delhi into 15 zones wherein ‘L’ Zone is the largest and boasts Najafgarh as the only census town in the zone. “At present the zones are open for buying land, wherein the housing societies and private developers are coming forth with their investment plans. Where majority have already bought land, many are still looking to obtaining the necessary approvals from the authority,” says Partho Kunar, director, Suhaskrit, a Delhi-based consultant firm.</p>
                            <p>Once the approvals are received, the land owners of L Zone will submit the land to DDA out of which the authority will take 40 per cent of the total land area for development of roads, drainage, sewerage and other civic amenities. Once developed, the developers/housing societies will be allowed to start their construction plans.</p>
                            <p>The Zone L of West Delhi is contemplated to be a major hub for population in the near future. The zone covers an area of 22,979 hectares and is located in the South West Delhi, hence is closest to South Delhi. The zone shares boundary with Gurgaon and is in close proximity of IGI International Airport. In order to meet the rising standard of
                living of the metro city life, the zone is decked with elite amenities and has access to the upcoming Delhi’s largest
                Golf Course. The area is surrounded by NH-10/Rohtak Road and Railway line in the North and Dwarka Sub-City in the East. Being the most well-connected zone of the city makes L Zone a highly sought after residential zone in the coming five years. The Zone L is envisioned to be the next area to ease out the space related issue in the city. If any time is the ideal time to invest in property, the time is now and the place is L Zone.</p>
                            <p>The green belt has been identified along the NCT Delhi boundary which includes all the revenue villages abutting the NCTD boundary as shown in MPD &ndash; 2021 land use plan. The farmhouses were permitted and sanctioned under the
                provisions of Master Plans 1962 and 2001. As per MPD 2021 the Farm Houses are now permitted only in the ‘green belt’.
                Delhi Government has allotted approx. 900 acres in L Zone for water reservoir. In the near future, L Zone will emerge
                as the most sought after property in the city.</p>
                			<div class="video marginB15">
                                <video id="MY_VIDEO_1" class="video-js vjs-default-skin" controls
                                preload="auto" width="100%" height="380" data-setup="{}">
                                <source src="http://images.bestnest.in/news/videos/smart-city-video-01.mp4" type=
                                'video/mp4'>
                                </video>
                                <div class="clear"></div>
                        	</div>
                            <div>
                            	<a class="group1 cboxElement" title="Land Pooling" href="http://images.bestnest.in/land pooling_01.jpg">
                            	<img width="576" height="790" style="display: block; margin-left: auto; 
                                margin-right: auto;" alt="" src="http://images.bestnest.in/land pooling_01.jpg"><br></a></div>
                        </div>
                       
                      <div class="clear"></div>
                    </div>
                  </div>
                </div>
        		<div id="tab2" class="tab_content clearfix tabs" style="display: none;" >
                     <div class="overview">
                        <div class="contentBoxContainer padding20 marginB15">
                            <div class="contentdiv">
                            <h2>L ZONE LAND IN DELHI</h2>
                        <p class="bold">L- Zone covers an area of 21933 Hectare, out of which 10322 Hectare is available for peripheral green and&nbsp; 11611 Hectare&nbsp; is available for urbanized area &amp; is surrounded by the following: </p>
                        <ul>
                            <li>NH-10 / Rohtak Road and Railway line, in the North Delhi </li>
                            <li>‘K-I &amp; K-II’ mainly comprising of Dwarka Sub City, in the South West Delhi </li>
                            <li>KMP ( Kundli- Manesar - Palwal) Expressway thru Dhansa Border</li>
                            <li>UER-II &amp; UER-III ( 100 meters &amp; 80 meters wide&nbsp; URBAN EXTN. ROAD or we can say new Ring Road’s of New Delhi)</li>
                            <li>MDR-123 &amp; MDR-136 ( Major District Roads ) falls in L-Zone </li>
                        </ul>
                        <p class="bold">L Zone is the south west corner of Delhi and hence is the closest to South Delhi. This zone also shares its boundary with newly developed Gurgaon and is the zone closest to the IGI International airport.</p>
                        <ul>
            <li>The zone is closest to Existing Dwarka sub-city, which has already seen high end development &amp; Upcoming Delhi’s largest GOLF COURSE &amp; DIPLOMATIC ENCLAVE</li>
            <li>Close to UPCOMING AIIMS-2 in 270 Acres in Village- Badsha ,Distt. Jhajjer ,Haryana</li>
            <li>MAJOR developers already invested in this zone like<strong> DLF,MGF, Express, Anantraj, Antiksh, Supertech &amp; Many more </strong></li>
            <li>The proposed connectivity of the Zone with Gurgaon (through a 150 m Northern Peripheral Road) and with Delhi (through NH -8 and Bijwasan Road), make it well connected to South Delhi and Gurgaon. </li>
            <li>Many Gated Farm-House complexes are coming up in this zone.</li>
            <li>Largest Ayurvedic Hospital Operational in this Zone</li>
            <li>Area to have demand from the Upper Middle Income Groups and Affluent class.</li>
            <li>DSIIDC is developing a 77.50 acre Knowledge Based Industry park at Baprola at a cost of Rs 2,000 crore. This would create direct employment for about 85,000 people.</li>
            <li>DSIIDC is developing a 77.50 acre Knowledge Based Industry park at Baprola at a cost of Rs 2,000 crore. This would create direct employment for about 85,000 people.</li>
            </ul>
                <h2 class="bold"> L-Zone</h2>
                <table width="100%" cellspacing="0" cellpadding="5" border="0" class="tbllzone">
                    <tbody>
                        <tr>
                            <td valign="top" colspan="2"><h3 class="bold">Land Use Details</h3></td>
                        </tr>
                        <tr>
                            <td width="183" valign="top">Total Area of Zone</td>
                            <td width="158" valign="top">21933.0 Ha.</td>
                        </tr>
                        <tr class="blue-bg">
                            <td valign="top">Peripheral Green</td>
                            <td valign="top">10322.0 Ha.</td>
                        </tr>
                        <tr>
                            <td valign="top" class="last">Area to be Urbanized</td>
                            <td valign="top" class="last">11611.0 Ha.</td>
                        </tr>
                    </tbody>
                </table>
                <table width="100%" cellspacing="0" cellpadding="5" border="0" class="tbllzone">
                    <tbody>
                        <tr>
                            <td width="341" valign="top" colspan="3">
                                <h3 class="bold">Break - up of Urban Extension Area</h3>
                            </td>
                        </tr>
                        <tr>
                            <td width="150" valign="top"><strong>Land use</strong></td>
                            <td width="108" valign="top"><strong>Area in Ha.</strong></td>
                            <td width="83" valign="top"><strong>Percentage</strong></td>
                        </tr>
                        <tr class="blue-bg">
                        <td valign="top"><strong>Residential</strong></td>
                        <td valign="top">5344.00</td>
                        <td width="83" valign="top">46.03</td>
                        </tr>
                        <tr>
                        <td valign="top"><strong>Commercial</strong></td>
                        <td valign="top">600.00</td>
                        <td width="83" valign="top">5.17</td>
                        </tr>
                        <tr class="blue-bg">
                        <td valign="top"><strong>Industrial</strong></td>
                        <td valign="top">641.00</td>
                        <td width="83" valign="top">5.52</td>
                        </tr>
                        <tr>
                        <td valign="top"><strong>Recreational</strong></td>
                        <td valign="top">1509.00</td>
                        <td width="83" valign="top">13.00</td>
                        </tr>
                        <tr class="blue-bg">
                        <td valign="top"><strong>PSP</strong></td>
                        <td valign="top">1800.00</td>
                        <td width="83" valign="top">15.50</td>
                        </tr>
                        <tr>
                        <td valign="top"><strong>Government</strong></td>
                        <td valign="top">658.00</td>
                        <td width="83" valign="top">5.67</td>
                        </tr>
                        <tr class="blue-bg">
                        <td valign="top"><strong>Utilities</strong></td>
                        <td valign="top">129.00</td>
                        <td width="83" valign="top">1.11</td>
                        </tr>
                        <tr>
                        <td valign="top"><strong>Transportation</strong></td>
                        <td valign="top">930.00</td>
                        <td width="83" valign="top">8.01</td>
                        </tr>
                        <tr class="blue-bg">
                        <td valign="top" class="last"><strong>Total</strong></td>
                        <td valign="top" class="last">11611.00</td>
                        <td width="83" valign="top" class="last">100 </td>
                        </tr>
                    </tbody>
                </table>
                <h2 class="bold">R-Zone Villages Falling  in Zone 'L'</h2>
                <table width="100%" cellspacing="0" cellpadding="5" border="0" class="tbllzone">
                    <tbody>
                        <tr>
                            <td width="36" valign="bottom" rowspan="2"><strong>Sr. No. </strong></td>
                            <td width="144" valign="bottom" rowspan="2"><strong>Name of Village</strong></td>
                            <td width="131" valign="bottom" colspan="2"><strong>Area</strong></td>
                        </tr>
                        <tr>
                            <td width="67" valign="bottom" nowrap=""><strong>Hectare</strong></td>
                            <td width="64" valign="bottom" nowrap=""><strong>Acre</strong><strong> </strong></td>
                        </tr>
                        <tr>
                            <td width="36" valign="bottom" nowrap="">1</td>
                            <td width="144" valign="bottom" nowrap="">Asalatpur khadar </td>
                            <td width="67" valign="bottom" nowrap="">156.24</td>
                            <td width="64" valign="bottom" nowrap="">386.35</td>
                        </tr>
                        <tr class="blue-bg">
                            <td width="36" valign="bottom" nowrap="">2</td>
                            <td width="144" valign="bottom" nowrap="">Bakkarwala (part)</td>
                            <td width="67" valign="bottom" nowrap="">74.49</td>
                            <td width="64" valign="bottom" nowrap="">184.20</td>
                        </tr>
                        <tr>
                            <td width="36" valign="bottom" nowrap="">3</td>
                            <td width="144" valign="bottom" nowrap="">Chhawla </td>
                            <td width="67" valign="bottom" nowrap="">549.28</td>
                            <td width="64" valign="bottom" nowrap="">1358.26</td>
                        </tr>
                        <tr class="blue-bg">
                            <td width="36" valign="bottom" nowrap="">4</td>
                            <td width="144" valign="bottom" nowrap="">Daryapur khurd </td>
                            <td width="67" valign="bottom" nowrap="">168.50</td>
                            <td width="64" valign="bottom" nowrap="">416.67</td>
                        </tr>
                        <tr>
                            <td width="36" valign="bottom" nowrap="">5</td>
                            <td width="144" valign="bottom" nowrap="">Daulatpur</td>
                            <td width="67" valign="bottom" nowrap="">242.14</td>
                            <td width="64" valign="bottom" nowrap="">598.76</td>
                        </tr>
                        <tr class="blue-bg">
                            <td width="36" valign="bottom" nowrap="">6</td>
                            <td width="144" valign="bottom" nowrap="">Dichaon kalan </td>
                            <td width="67" valign="bottom" nowrap="">1120.72</td>
                            <td width="64" valign="bottom" nowrap="">2771.32</td>
                        </tr>
                        <tr>
                            <td width="36" valign="bottom" nowrap="">7</td>
                            <td width="144" valign="bottom" nowrap="">Dindarpur khurd </td>
                            <td width="67" valign="bottom" nowrap="">244.00</td>
                            <td width="64" valign="bottom" nowrap="">603.36</td>
                        </tr>
                        <tr class="blue-bg">
                            <td width="36" valign="bottom" nowrap="">8</td>
                            <td width="144" valign="bottom" nowrap="">Gheora </td>
                            <td width="67" valign="bottom" nowrap="">184.54</td>
                            <td width="64" valign="bottom" nowrap="">456.33</td>
                        </tr>
                        <tr>
                            <td width="36" valign="bottom" nowrap="">9</td>
                            <td width="144" valign="bottom" nowrap="">Goela khurd (part)</td>
                            <td width="67" valign="bottom" nowrap="">21.04</td>
                            <td width="64" valign="bottom" nowrap="">52.03</td>
                        </tr>
                        <tr class="blue-bg">
                            <td width="36" valign="bottom" nowrap="">10</td>
                            <td width="144" valign="bottom" nowrap="">Hasanpur </td>
                            <td width="67" valign="bottom" nowrap="">155.65</td>
                            <td width="64" valign="bottom" nowrap="">384.89</td>
                        </tr>
                        <tr>
                            <td width="36" valign="bottom" nowrap="">11</td>
                            <td width="144" valign="bottom" nowrap="">Haibutpur </td>
                            <td width="67" valign="bottom" nowrap="">366.10</td>
                            <td width="64" valign="bottom" nowrap="">905.29</td>
                        </tr>
                        <tr class="blue-bg">
                            <td width="36" valign="bottom" nowrap="">12</td>
                            <td width="144" valign="bottom" nowrap="">Jaffarpur-(hiran Kunda) </td>
                            <td width="67" valign="bottom" nowrap="">344.89</td>
                            <td width="64" valign="bottom" nowrap="">852.84</td>
                        </tr>
                        <tr>
                            <td width="36" valign="bottom" nowrap="">13</td>
                            <td width="144" valign="bottom" nowrap="">Jafarpur kalan </td>
                            <td width="67" valign="bottom" nowrap="">326.38</td>
                            <td width="64" valign="bottom" nowrap="">807.07</td>
                        </tr>
                        <tr class="blue-bg">
                            <td width="36" valign="bottom" nowrap="">14</td>
                            <td width="144" valign="bottom" nowrap="">Jharoda kalan </td>
                            <td width="67" valign="bottom" nowrap="">197.00</td>
                            <td width="64" valign="bottom" nowrap="">487.14</td>
                        </tr>
                        <tr>
                            <td width="36" valign="bottom" nowrap="">15</td>
                            <td width="144" valign="bottom" nowrap="">Jhuljhuli</td>
                            <td width="67" valign="bottom" nowrap="">291.39</td>
                            <td width="64" valign="bottom" nowrap="">720.55</td>
                        </tr>
                        <tr class="blue-bg">
                            <td width="36" valign="bottom" nowrap="">16</td>
                            <td width="144" valign="bottom" nowrap="">Kharkhari jatmal</td>
                            <td width="67" valign="bottom" nowrap="">220.91</td>
                            <td width="64" valign="bottom" nowrap="">546.27</td>
                        </tr>
                        <tr>
                            <td width="36" valign="bottom" nowrap="">17</td>
                            <td width="144" valign="bottom" nowrap="">Kharkhari nahar</td>
                            <td width="67" valign="bottom" nowrap="">196.88</td>
                            <td width="64" valign="bottom" nowrap="">486.84</td>
                        </tr>
                        <tr class="blue-bg">
                            <td width="36" valign="bottom" nowrap="">18</td>
                            <td width="144" valign="bottom" nowrap="">Kharkhari round</td>
                            <td width="67" valign="bottom" nowrap="">135.10</td>
                            <td width="64" valign="bottom" nowrap="">334.08</td>
                        </tr>
                        <tr>
                            <td width="36" valign="bottom" nowrap="">19</td>
                            <td width="144" valign="bottom" nowrap="">Khera </td>
                            <td width="67" valign="bottom" nowrap="">266.81</td>
                            <td width="64" valign="bottom" nowrap="">659.77</td>
                        </tr>
                        <tr class="blue-bg">
                            <td width="36" valign="bottom" nowrap="">20</td>
                            <td width="144" valign="bottom" nowrap="">Khera dabar</td>
                            <td width="67" valign="bottom" nowrap="">308.36</td>
                            <td width="64" valign="bottom" nowrap="">762.51</td>
                        </tr>
                        <tr>
                            <td width="36" valign="bottom" nowrap="">21</td>
                            <td width="144" valign="bottom" nowrap="">Malikpurzer najafgarh</td>
                            <td width="67" valign="bottom" nowrap="">390.04</td>
                            <td width="64" valign="bottom" nowrap="">964.49</td>
                        </tr>
                        <tr class="blue-bg">
                            <td width="36" valign="bottom" nowrap="">22</td>
                            <td width="144" valign="bottom" nowrap="">Masudabad </td>
                            <td width="67" valign="bottom" nowrap="">59.89</td>
                            <td width="64" valign="bottom" nowrap="">148.10</td>
                        </tr>
                        <tr>
                            <td width="36" valign="bottom" nowrap="">23</td>
                            <td width="144" valign="bottom" nowrap="">Mitraon</td>
                            <td width="67" valign="bottom" nowrap="">225.00</td>
                            <td width="64" valign="bottom" nowrap="">556.38</td>
                        </tr>
                        <tr class="blue-bg">
                            <td width="36" valign="bottom" nowrap="">24</td>
                            <td width="144" valign="bottom">Mundka (part) </td>
                            <td width="67" valign="bottom" nowrap="">154.25</td>
                            <td width="64" valign="bottom" nowrap="">381.43</td>
                        </tr>
                        <tr>
                            <td width="36" valign="bottom" nowrap="">25</td>
                            <td width="144" valign="bottom">Najafgarh </td>
                            <td width="67" valign="bottom" nowrap="">236.86</td>
                            <td width="64" valign="bottom" nowrap="">585.71</td>
                        </tr>
                        <tr class="blue-bg">
                            <td width="36" valign="bottom" nowrap="">26</td>
                            <td width="144" valign="bottom">Nangli sakroti </td>
                            <td width="67" valign="bottom" nowrap="">11.33</td>
                            <td width="64" valign="bottom" nowrap="">28.02</td>
                        </tr>
                        <tr>
                            <td width="36" valign="bottom" nowrap="">27</td>
                            <td width="144" valign="bottom">Neelwal </td>
                            <td width="67" valign="bottom" nowrap="">340.43</td>
                            <td width="64" valign="bottom" nowrap="">841.82</td>
                        </tr>
                        <tr class="blue-bg">
                            <td width="36" valign="bottom" nowrap="">28</td>
                            <td width="144" valign="bottom">Pandwala kalan </td>
                            <td width="67" valign="bottom" nowrap="">363.48</td>
                            <td width="64" valign="bottom" nowrap="">898.81</td>
                        </tr>
                        <tr>
                            <td width="36" valign="bottom" nowrap="">29</td>
                            <td width="144" valign="bottom">Paprawat</td>
                            <td width="67" valign="bottom">500.16</td>
                            <td width="64" valign="bottom" nowrap="">1236.80</td>
                        </tr>
                        <tr class="blue-bg">
                            <td width="36" valign="bottom" nowrap="">30</td>
                            <td width="144" valign="bottom">Pimdwala Khurd</td>
                            <td width="67" valign="bottom" nowrap="">271.13</td>
                            <td width="64" valign="bottom" nowrap="">670.45</td>
                        </tr>
                        <tr>
                            <td width="36" valign="bottom" nowrap="">31</td>
                            <td width="144" valign="bottom">Qazipur</td>
                            <td width="67" valign="bottom" nowrap="">151.39</td>
                            <td width="64" valign="bottom" nowrap="">374.36</td>
                        </tr>
                        <tr class="blue-bg">
                            <td width="36" valign="bottom" nowrap="">32</td>
                            <td width="144" valign="bottom">Rewla Khanpur</td>
                            <td width="67" valign="bottom" nowrap="">502.44</td>
                            <td width="64" valign="bottom" nowrap="">1242.43</td>
                        </tr>
                        <tr>
                            <td width="36" valign="bottom" nowrap="">33</td>
                            <td width="144" valign="bottom">Roshanpura</td>
                            <td width="67" valign="bottom" nowrap="">276.20</td>
                            <td width="64" valign="bottom" nowrap="">682.99</td>
                        </tr>
                        <tr class="blue-bg">
                            <td width="36" valign="bottom" nowrap="">34</td>
                            <td width="144" valign="bottom">Sarangpur</td>
                            <td width="67" valign="bottom" nowrap="">258.41</td>
                            <td width="64" valign="bottom" nowrap="">639.00</td>
                        </tr>
                        <tr>
                            <td width="36" valign="bottom" nowrap="">35</td>
                            <td width="144" valign="bottom"><em>Samaspur Khalsa</em></td>
                            <td width="67" valign="bottom" nowrap="">389.41</td>
                            <td width="64" valign="bottom" nowrap="">962.93</td>
                        </tr>
                        <tr class="blue-bg">
                            <td width="36" valign="bottom" nowrap="">36</td>
                            <td width="144" valign="bottom">Surekhpur</td>
                            <td width="67" valign="bottom" nowrap="">46.75</td>
                            <td width="64" valign="bottom" nowrap="">115.60</td>
                        </tr>
                        <tr>
                            <td width="36" valign="bottom" nowrap="">37</td>
                            <td width="144" valign="bottom">Surera</td>
                            <td width="67" valign="bottom" nowrap="">525.68</td>
                            <td width="64" valign="bottom" nowrap="">1299.90</td>
                        </tr>
                        <tr class="blue-bg">
                            <td width="36" valign="bottom" nowrap="">38</td>
                            <td width="144" valign="bottom">Sherpur Deri</td>
                            <td width="67" valign="bottom" nowrap="">164.92</td>
                            <td width="64" valign="bottom" nowrap="">407.81</td>
                        </tr>
                        <tr>
                            <td width="36" valign="bottom" nowrap="">39</td>
                            <td width="144" valign="bottom">Tajpur Khurd (Part)</td>
                            <td width="67" valign="bottom" nowrap="">17.00</td>
                            <td width="64" valign="bottom" nowrap="">42.04</td>
                        </tr>
                        <tr class="blue-bg">
                            <td width="36" valign="bottom" nowrap="">40</td>
                            <td width="144" valign="bottom">Tikri Kalan</td>
                            <td width="67" valign="bottom" nowrap="">461.55</td>
                            <td width="64" valign="bottom" nowrap="">1141.32</td>
                        </tr>
                        <tr>
                            <td width="36" valign="bottom" nowrap="">41</td>
                            <td width="144" valign="bottom">Ujwa</td>
                            <td width="67" valign="bottom" nowrap="">694.16</td>
                            <td width="64" valign="bottom" nowrap="">1716.52</td>
                        </tr>
                        <tr class="blue-bg">
                            <td width="180" valign="bottom" nowrap="" colspan="2" class="last"><strong>Total Area</strong></td>
                            <td width="67" valign="bottom" nowrap="" class="last"><strong>11610.90</strong></td>
                            <td width="64" valign="bottom" nowrap="" class="last">28711.42 </td>
                        </tr>
                    </tbody>
                </table>
                    </div>
                        </div>
                     </div>
        		</div>
                <div id="tab3" class="tab_content clearfix tabs" style="display: none;" >
                     <div class="overview">
                        <div class="contentBoxContainer padding20 marginB15">
                            <div class="contentdiv">
                            	<h2>FACILITIES</h2> <br />
								<h2> Healthcare Facilities:</h2> 
                                <p>A hierarchy of health facilities / hospitals has been proposed to meet the 
                                requirement of 20 lakh population of the zone and to provide 5 hospitals &ndash; 
                                beds per thousand population.</p>
                               	<h2> Educational Facilities:</h2>
                                <p>To enable optimum utilization of resources and available education 
                                infrastructure, need to The Zone L of West Delhi is contemplated to be a major 
                                hub for population in the near future. The zone covers an area formulate policies
                                and norms have been recognized in the Master Plan. Also, land measuring about 
                                53.6 ha is to be kept of 22,979 hectares and is located in the South West Delhi, 
                                hence is closest to South Delhi. The zone shares boundary</p>
                                <h2>Sport Facilities: </h2>
								<p>metro city life, the zone is decked with elite amenities and has access to the upcoming Delhi’s largest Golf Course. The In the zone, a site of about 17 ha already exists for sports Training Institute. New sports facilities have to area is surrounded by NH-10/Rohtak Road and Railway line in the North and Dwarka Sub-City in the East. Being the be provided in the zone in a hierarchy of divisional sports centre / Golf Course, District Sports Centre and Community most well-connected zone of the city makes L Zone a highly sought after residential zone in the coming ﬁve years. sports centre. The Zone L is envisioned to be the next area to ease out the space related issue in the city. If any time is the ideal time</p>
								<h2>Communication Facilities:</h2>
                            	<p>Two plots of Head Post o ce each 2500 sq.m. and two plots of Telephone Exchange each 2500 sq.m. are to be provided. Remote subscriber units within radius of 3 Km each of 300 sq.m. shall also be provided in the sector / scheme at appropriate location.
    </p>
								<h2> Security &amp; Safety Facilities: </h2>
								<p>Police Station / Police Post, Police Lines and Jail etc. shall be provided in Public / Semipublic
use. The requirement of 13 ha land for security facilities and 15 ha for safety facilities such as Fire Station has been proposed.
</p>
								<div class="img">
                                	<img src="http://images.bestnest.in/facility-1.png">
                               	</div>
								<div class="img">
                                	<img src="http://images.bestnest.in/facility-2.png">
                                </div>
								<div class="img">
                                	<img src="http://images.bestnest.in/facility-3.png">
                                </div>
							</div>
                        </div>
                     </div>
        		</div>
                <div id="tab4" class="tab_content clearfix tabs" style="display: none;" >
                     <div class="overview">
                        <div class="contentBoxContainer padding20 marginB15">
                            <div class="contentdiv">
								<h2> HOT PROJECT LIST IN L ZONE</h2> 
                                <p>Smart Cities in Delhi and India are Prime Minister Narendra Modi’s dream project, an ambitious plan to set up 100 such urban settlements across the country. He promised about them while campaigning for the Lok Sabha and now sees them a step towards improving governance. Construction of Smart City in Delhi L Zone would be result of joint efforts of DDA and private developers. </p>
                                
                                <p>DDA would be building the infrastructure while private developers would build cities. The development these cities would come up on 20,000-24,000 hectares each.
It would a city skyline changing development. Residential development norms in city has been modified to allow residential building to rise upto 24 floors, previously it was only upto 12 floors for residential apartments in Delhi, says officials.</p>
                                <ul>
                            		<li class="bold">Antriksh Urban Greek</li>
                                    <li class="bold">Antrix Victorian County</li>
                            		<li class="bold">Revanta Smart Residency</li>
                                    <li class="bold">Colors Housing Krisha Heights</li>
                                    <li class="bold">Colors Regalia Apartments</li>
                                    <li class="bold">Divine City Welfare Society</li>
                                    <li class="bold">Indian Oil The Hindusta</li>
                                    <li class="bold">Seven Colors Happy Homes</li>
                                    <li class="bold">Reinfotech Welfare Society</li>
                                    <li class="bold">Kamp Eden Heights</li>
                                    <li class="bold">Shri Hari Niwas Welfare Society</li>
                                    <li class="bold">Camellia Welfare Society</li>
                                    <li class="bold">Exalter Green View</li>
                                    <li class="bold">Samadhan Aspiration Heights</li>
                                    <li class="bold">Best Group Woodbridge</li>
                                    <li class="bold">Galaxy Luxury Apartments</li>
                                    <li class="bold">Orange Blossom Welfare Society</li>
                                    <li class="bold">Country Dwaraka Green</li>
                                    <li class="bold">Colors Regalia Apartments</li>
                                    <li class="bold">Victorian Privilege In Dwarka</li>
                        		</ul>
							</div>
                        </div>
                     </div>
        		</div>
                <div id="tab5" class="tab_content clearfix tabs" style="display: none;" >
                     <div class="overview">
                        <div class="contentBoxContainer padding20 marginB15">
                            <div class="contentdiv">
								<h2>MAP VIEW</h2> 
                                <a href="http://images.bestnest.in/flyer-map.png" data-fancybox-group="button" 
                                class="fancybox-buttons">
                                <img src="http://images.bestnest.in/flyer-map.png" alt="Map View"></a>
							</div>
                        </div>
                     </div>
        		</div>
                <div id="tab6" class="tab_content clearfix tabs" style="display: none;" >
                     <div class="overview">
                        <div class="contentBoxContainer padding20 marginB15">
                            <div class="contentdiv">
								<h2>Frequently Asked Questions</h2>
                                <div>
                                	<div id="ques-answer1">
                                	<p class="bold"><span>Que.</span> What is L zone and where is it?</p>
                                    <p><span class="bold">Ans.</span> DDA has divided Delhi into fifteen zones for development. L Zone is one of these zones with smart city. DDA L zone is located in the South Western part of Delhi, in very close proximity to Dwarka Subcity and Gurgaon. It also enjoys a very close proximity to Dwarka Sec 21 Metro Starion, IGI International Airport and upcoming Dwarka Expressway. Its proximity to Gurgaon, Dwarka expressway, Dwarka sub city, and IGI Airport gives it a good position for upcoming residential development. It has an extent greater than 22,840 hectares of land that meets residential needs of people who wish to invest comparatively low amounts but for great benefits far into future.</p>
                                    </div>
                                    <div id="ques-answer2">
                                    <p class="bold"><span>Que.</span> What is land pooling policy?</p>
                                    <p><span class="bold">Ans.</span> Under the Land Pooling Policy, the land owners can surrender their land into a central pool and be a stakeholder in the development that occurs on the land. Once the land is pooled, the land owner would get 40-60% of the total given land as developable land (Read Details Here). DDA would retain the rest of the area for development of roads, sewage facilities, civic amenities and other public utilities. Once these facilities are developed, developers and housing societies will be allowed to start their construction activities. Land Pooling policy has been approved and the process of giving up of land and approval of projects is being waited for.</p>
                                    </div>
                                    <div id="ques-answer3">
                                    <p class="bold"><span>Que.</span> Is DDA L Zone worth investing?</p>
                                    <p><span class="bold">Ans.</span> L zone is a good place for new home buyers as well as investors to make residential real estate development. It is being considered as hottest real estate destination in Delhi/NCR as this is still in early stage of planning. However, the whole deal depends on a lot of speculation which is governed by political factors. Actual implementation of the regulations will take some time and hence, patience is the key factor here. The investment can be liquefied on a short term basis.</p>
                                    <p class="bold"><span>Que.</span> When did the DDA Land pooling policy start?</p>
                                    <p><span class="bold">Ans.</span> DDA took decision to start development of residential units in Delhi under Land Pooling Policies using Private- Public– Partnership, on 5th Sep 2013. DDA has issued draft operational regulations for the scheme on 29 Jan, 14. Final regulations are expected to be issued in the next few months.</p>
                                    <p class="bold"><span>Que.</span> Is Bank loan facility available on this project?</p>
                                    <p><span class="bold">Ans.</span> Being DDA scheme under Private – Public – Partnership, Bank loans will be available once the approvals are announced by DDA, land is surrendered by Developers to DDA and land is returned back by DDA to the Developer. </p>
                                    <p class="bold"><span>Que.</span> Can we see the location where we will get apartments under this Policy?</p>
                                    <p><span class="bold">Ans.</span> Really not very relevant to see a piece of land, as exact location will only be known after DDA returns back the land to the Developers, which is expected to be within the radius of 5 Kms from the chunk of land Developer surrenders to DDA, as given in DDA Land Pooling Policy.</p>
                                    <p class="bold"><span>Que.</span> When will the land be surrendered to DDA?</p>
                                    <p><span class="bold">Ans.</span> Land will be surrendered to DDA as soon as DDA announces the implementation process asking developers for the same. DDA has currently issued draft operational regulations on 29 Jan 2014 and is likely to announce the detailed steps for surrender of pooled land in next few months.</p>
                                    <p class="bold"><span>Que.</span> Who will provide the basic amenities within the complex?</p>
                                    <p><span class="bold">Ans.</span> All infrastructure within the complex including internal roads, sewage, electricity wiring, water pipes, parks, facilities will be provided by Developer.</p>
                                    <p class="bold"><span>Que. </span> What type of development is expected ? </p>
                                    <p><span class="bold">Ans.</span> Under the Policy, a no. of sub-cities like Dwarka will come up with all infrastructure, amenities, public support services, commercial city centres and will be well connected with multi modal transport system.</p>
                                     <p class="bold"><span>Que. </span> Are these going to be high rise buildings?</p>
                                    <p><span class="bold">Ans.</span> It depends on the FAR allowed by DDA, open spaces and also density permitted. It is estimated that buildings may be 15-20 storeys with 60% + open spaces. But these may vary based on final approvals for plans of DDA. </p>
                                    </div>
                               </div>
                                
							</div>
                        </div>
                     </div>
        		</div>
      		</div>
      		<div class="clear"></div>
    	</div>
        <div class="clear"></div>
    </div>
    <!--End Left Portion -->
    
    <!-- Right Portion -->
    <div class="right-portion">
    	<div class="get-in-touch">
      <h2>Get in Touch with BestNest</h2>
      <form method="post" action="/contactUsSave.htm" id="clientInformationForm">
        <table width="100%" cellspacing="0" cellpadding="0" border="0">
          <tbody>
            <tr>
              <td><input type="text" value="" placeholder="Name" name="userName" id="userName"></td>
            </tr>
            <tr>
              <td><input type="text" value="" placeholder="Email ID" name="email" id="email"></td>
            </tr>
            <tr>
              <td><input type="text" value="" placeholder="City" name="city" id="city"></td>
            </tr>
            <tr>
              <td><input type="text" value="" placeholder="Mobile Number" name="mobileNumber" id="mobileNumber"></td>
            </tr>
            <tr>
              <td><textarea cols="45" rows="5" name="message" id="message"></textarea></td>
            </tr>
            <tr>
              <td valign="middle" align="center" colspan="2"><input type="submit" value="Send" id="button" name="button"></td>
            </tr>
          </tbody>
        </table>
      </form>
      <div class="clear"></div>
    </div>
    	<div class="resources sideprojects" style="background:#ffffff; border-radius:5px; box-shadow: 0px 3px 4px #000000;">
      		<h2>Hot Projects</h2>
      		<ul class="sidelist">
                <li class="project-name">
                <a href="#">Antriksh Urban Greek<br><b>Delhi, L Zone</b></a>
                </li>
                <li class="project-name">
                <a href="javascript:void(0);">Antrix Victorian County<br><b>Delhi, L Zone</b></a>
                </li>
                <li class="project-name">
                <a href="javascript:void(0);">Revanta Smart Residency <br><b>Delhi, L Zone</b></a>
                </li>
                <li class="project-name">
                <a href="javascript:void(0);">Colors Housing Krisha Heights<br><b>Delhi, L Zone</b></a>
                </li>
                <li class="project-name">
                <a href="javascript:void(0);">Colors Regalia Apartments<br><b>Delhi, L Zone</b></a>
                </li>
                <li class="project-name">
                <a href="javascript:void(0);">Divine City Welfare Society<br><b>Delhi, L Zone</b></a>
                </li>
                <li class="project-name">
                <a href="javascript:void(0);">Indian Oil The Hindusta<br><b>Delhi, L Zone</b></a>
                </li>
                <li class="project-name">
                <a href="javascript:void(0);">Seven Colors Happy Homes<br><b>Delhi, L Zone</b></a>
                </li>
		 	</ul>
      		<div class="clear"></div>
    	</div>
    	<div id="newsUpdate" class="rgt-box" style="background:#ffffff; border-radius:5px; box-shadow: 0px 3px 4px #000000;">
      		<div class="rgtboxcntr" style="border:medium none;">
        		<div class="inner-content">  
        			<p><img alt="News Update" src="http://images.bestnest.in/news.png"></p>
          			<ul class="property-like" id="property-like">
          <marquee id="recentNews" scrollamount="5" behavior="scroll" height="300" direction="up" onmouseover="this.setAttribute('scrollamount', 3, 0);" onmouseout="this.setAttribute('scrollamount', 5, 0);"> 
            <li>
              <h5><a href="http://images.bestnest.in/news/Media_Smart-City-01.jpg" class="cpopunder">Model Smart City Spread Across 24,000 Hectares To Come Up Near Delhi</a></h5>
              
<div class="property-pic"><a href="http://images.bestnest.in/news/Media_Smart-City-01.jpg"><img width="97" height="77" src="http://images.bestnest.in/news/Media_Smart-City-01.jpg" alt="News Update"></a></div>
            </li>
            	<li>
              <h5><a href="http://images.bestnest.in/news/Media_Smart-City-02.jpg" class="cpopunder">Centre Notifies Land Pooling Norms</a></h5>
              <div class="property-pic"><a href="http://images.bestnest.in/news/Media_Smart-City-02.jpg">
              <img width="97" height="77" src="http://images.bestnest.in/news/Media_Smart-City-02.jpg" alt="News Update"></a></div>
            </li>
            	<li>
              <h5><a href="http://images.bestnest.in/news/Media_Smart-City-03.jpg" class="cpopunder">High Rise Revolution Set To Give Delhi Lakhs of Homes</a></h5>
              <div class="property-pic"><a href="http://images.bestnest.in/news/Media_Smart-City-03.jpg"><img width="97" height="77" src="http://images.bestnest.in/news/Media_Smart-City-03.jpg" alt="News Update"></a></div>
            </li>
			<li>
              <h5><a href="http://images.bestnest.in/news/Media_Smart-City-04.jpg" class="cpopunder">4 Smart Cities Plan Is Final</a></h5>
              <div class="property-pic"><a href="http://images.bestnest.in/news/Media_Smart-City-04.jpg"><img width="97" height="77" src="http://images.bestnest.in/news/Media_Smart-City-05.jpg" alt="News Update"></a></div>
            </li>
			<li>
              <h5><a href="news.html" class="cpopunder">DDA Will Build 24 Lakhs Flats In 6 Years</a></h5>
              <div class="property-pic"><a href="news.html" onclick=""><img width="97" height="77" src="http://images.bestnest.in/news/Media_Smart-City-06.jpg" alt="News Update"></a></div>
            </li> 
            <li>
              <h5><a href="news.html" class="cpopunder">Three Smart Cities To Come Up On Delhi's Outskirts</a></h5>
              <div class="property-pic"><a href="news.html"><img width="97" height="77" src="http://images.bestnest.in/news/Media_Smart-City-07.jpg" alt="News Update"></a></div>
            </li> 
            <li>
              <h5><a href="news.html" class="cpopunder">Jung Clears Land Pooling Housing Receives A Boost</a></h5>
              <div class="property-pic"><a href="news.html"><img width="97" height="77" src="http://images.bestnest.in/news/Media_Smart-City-08.jpg" alt="News Update"></a></div>
            </li> 
            </marquee>
          </ul>
        		</div>
      		</div>
      		<div class="rgtboxbtm"></div>
      		<div class="clear"></div>
    	</div>
    	<div class="clear"></div>
    </div>
    <!-- End Right Portion -->
    <div class="clear"></div>
  </div>
  <div class="clear"></div>
</section>
<!-- End Footer Section -->

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
