<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE HTML>
<html><head>
<meta charset="utf-8">
<title>Recent News, DDA L Zone | Master Plan 2021 | BestNest Real Estate</title>
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
                <li>Recent News</li>
            </ul>
    		<div class="clear"></div>
  		</div>
        <div class="section-header marginT15">
            <h2 class="dark-text">DELHI SMART CITY L ZONE</h2>
        </div>
        <div class="projectDetailsMidHead">
            <h3 class="left">L ZONE NEWS</h3>
            <div class="clear"></div>
        </div>
        <div id="tabsData" class="fl">
        	<aside>
            	<ul id="tabcontainer" class="myTabs">
                <li class="active" id="masterplan"> 
                    <a href="#tab1">Recent News</a>
                </li>	
                <li>
                    <a href="#tab2">Recent Videos</a>
                </li>		
                <li>
                    <a href="#tab3">Articles</a>
                </li>				
       		</ul>
            </aside>
            <div class="projectDetailsMidLeft fl tab_content clearfix tabs" id="tab1">
        	<div class="newswrapper imageGallery">
                <a href="http://images.bestnest.in/news/Media_Smart-City-01.jpg" data-fancybox-group="button" 						class="group1 fancybox-buttons">
                <img title="Delhi Get Smarter" src="http://images.bestnest.in/news/Media_Smart-City-01.jpg" alt="Delhi Get Smarter">
                <br>
                <p class="bold">Delhi Get Smarter</p>
       			</a>
                <a href="http://images.bestnest.in/news/Media_Smart-City-02.jpg" data-fancybox-group="button" 						class="group1 fancybox-buttons">
                <img title="Land Pooling Norms" src="http://images.bestnest.in/news/Media_Smart-City-02.jpg" alt="Land Pooling Norms">
                <br>
                <p class="bold">Land Pooling Norms</p>
       			</a>
                <a href="http://images.bestnest.in/news/Media_Smart-City-03.jpg" data-fancybox-group="button" 						class="group1 fancybox-buttons">
                <img title="High Rise Revolution" src="http://images.bestnest.in/news/Media_Smart-City-03.jpg" alt="High Rise Revolution">
                <br>
                <p class="bold">High Rise Revolution</p>
       			</a>
                <a href="http://images.bestnest.in/news/Media_Smart-City-04.jpg" data-fancybox-group="button" 						class="group1 fancybox-buttons">
                <img title="Property L Zone" src="http://images.bestnest.in/news/Media_Smart-City-04.jpg" alt="Property L Zone">
                <br>
                <p class="bold">Property L Zone</p>
       			</a>
                <a href="http://images.bestnest.in/news/Media_Smart-City-05.jpg" data-fancybox-group="button" 						class="group1 fancybox-buttons">
                <img title="Four Smart Cities Plan Finalise" src="http://images.bestnest.in/news/Media_Smart-City-05.jpg" alt="Four Smart Cities Plan Finalise">
                <br>
                <p class="bold">Four Smart Cities Plan Finalise</p>
       			</a>
                <a href="http://images.bestnest.in/news/Media_Smart-City-06.jpg" data-fancybox-group="button" 						class="group1 fancybox-buttons">
                <img title="DDA Build 24 Lakh Flats" src="http://images.bestnest.in/news/Media_Smart-City-06.jpg" alt="DDA Build 24 Lakh Flats">
                <br>
                <p class="bold">DDA Build 24 Lakh Flats</p>
       			</a>
                <a href="http://images.bestnest.in/news/Media_Smart-City-07.jpg" data-fancybox-group="button" 						class="group1 fancybox-buttons">
                <img title="Govt Coffers To Smart Under Smart Cities" src="http://images.bestnest.in/news/Media_Smart-City-07.jpg" alt="Govt Coffers To Smart Under Smart Cities">
                <br>
                <p class="bold">Redrawing City's Landscape</p>
       			</a>
                <a href="http://images.bestnest.in/news/Media_Smart-City-08.jpg" data-fancybox-group="button" 						class="group1 fancybox-buttons">
                <img title="Foreign Democratic Enclave Dwarka" src="http://images.bestnest.in/news/Media_Smart-City-08.jpg" alt="Smart City News">
                <br>
                <p class="bold">Housing Receives A Boost</p>
       			</a>
            </div>
            <div class="clear"></div>
        </div>
        	<div class="projectDetailsMidLeft fl tab_content clearfix tabs" id="tab2" style="display:none;">
        	<div class="videowrapper imageGallery">
                <div class="videosec">
                    <video id="MY_VIDEO_1" class="video-js vjs-default-skin" controls
                     preload="auto" width="320" height="264" data-setup="{}">
                     <source src="http://images.bestnest.in/news/videos/smart-city-video-01.mp4" type='video/mp4'>
                    </video>
                    <span>Delhi become smart city</span>
                </div>
                <div class="videosec">
                     <video id="MY_VIDEO_2" class="video-js vjs-default-skin" controls
                     preload="auto" width="320" height="264" data-setup="{}">
                     <source src="http://images.bestnest.in/news/videos/smart-city-video-02.mp4" type='video/mp4'>
                    </video>
                 	<span>Impact of land pooling policy in delhi</span>
                </div>
                <div class="videosec">
                     <video id="MY_VIDEO_3" class="video-js vjs-default-skin" controls
                     preload="auto" width="320" height="264" data-setup="{}">
                     <source src="http://images.bestnest.in/news/videos/smart-city-video-03.mp4" type='video/mp4'>
                    </video>
                 	<span>PM Modi's Speech At Launch Of Smart Cities</span>
                </div>
                <div class="videosec">
                     <video id="MY_VIDEO_4" class="video-js vjs-default-skin" controls
                     preload="auto" width="320" height="264" data-setup="{}">
                     <source src="http://images.bestnest.in/news/videos/smart-city-video-04.mp4" type='video/mp4'>
                    </video>
                 	<span>DDA in Land Pooling Policy Conference</span>
                </div>
            </div>
            <div class="clear"></div>
        </div>
        	<div class="projectDetailsMidLeft fl tab_content clearfix tabs" id="tab3" style="display:none;">
        	<div class="entry post clearfix padding15 marginB15" style="border:1px solid#ccc; background-color:#fff;">					
				<h1 class="title">Major Road Network approved in Zone L of West Delhi</h1>
				<p>The cities land and civic authorities have tightened up their work in lieu of the Government’s vision for Delhi 2021. The recently revealed Master Plan for Delhi (MPD) 2021 addressed the need to decongest the city, with a slew of novel road infrastructure schemes, to meet the 2021 expectations.<br>&nbsp;</p>
            	<p>To suit the ring-radical pattern of road network in Delhi, construction of the proposed roads in the Master Plan 2021 has already started. For Zone L of West Delhi, being viewed as a major hub for population in the coming years, besides strengthening the existing road network, a new road network has been approved. It consists of major roads with a width of 100m and a total length of about 19km. Other roads of 60 mt., 45m and 30m width are also being planned. The smaller roads of 24m will serve as the collector roads in residential area. Furthermore, green belts of 20m width on both sides of 80m and 60m roads and 10 m wide green belts on 45 &amp; 30m roads have been proposed.<br>&nbsp;</p>
				<p>Property experts Certes Realty Ltd. believe that this move will increase the already stirring interest of buyers in property in Zone L. Mr. Ajay Dabas, Partner, Certes Realty, says "This move has significantly helped in confirming the Government’s interest in the area and its continued development. They see Zone L as the next area that will help ease the space-related issue of Delhi. The property rates are expected to go up in the coming months and this would be an ideal time for investment in this area."</p>
				<p><br>The introduction of these roads will immediately bolster the existing road network in West Delhi and efficiently connect it to the South, Central and South West Delhi. Zone L is close to Dwarka (Zone K) and will see a lot of traffic influx from it. Sources say that the Government is keen to unveil these new roads in Delhi, starting with Zone L.</p>
			</div>
		   <div class="entry post clearfix padding15 marginB15" style="border:1px solid#ccc; background-color:#fff;">					
				<h1 class="title">Master Plan of Delhi 2021 with new land policy to offer options to thousands of 
                homebuyers</h1>
				<p>The <a href="lZone.htm">Master Plan of Delhi 2021</a> has been in force since 2007. Once this is reimplemented with the new land development policy, Delhi will also offer options to thousands of homebuyers. The capital city has still 27,628.9 hectares of land to fulfil the dreams of thousand of homebuyers.<br>&nbsp;</p>
           		<p>The <a href="ddaMap.htm">DDA (Delhi Development Authority)</a> has earmarked land at Zone J, K1, K2, M, N, L, O, P1 and P2 for raising residential projects. According to the projections in the master plan, nearly 24 lakh residential units are required for an estimated 23 million people by 2021.<br>&nbsp;</p>
                <p>According to the master plan, Delhi will be slum-free in the next 10 years by providing rehabilitation packages (built-up houses with all civic facilities) to slum dwellers. For this DDA has identified 23 sites (slum areas) for rehabilitation. The master plan 2021 has allocated 277 sq km for future urbanization by 2021. In the last fifty years, DDA has acquired 75,609.84 hectares and developed it for residential, recreational, commercial and institutional purposes. Now, with better and holistic planning, DDA intends to set new records and provide more amenities to people.</p>
				<p><br>Delhi is spread over 1,483 sq km and divided into 17 planning zones: 1,159 hectare in Zone-A (Old City); 2,304 hectare in Zone-B (City Extension and Karol Bagh); 3,959 hectare in Planning Zone-C <a href="ddaNews.htm">(Civil Lines)</a>; 6,855 hectares in Zone D (New Delhi); 8,797 hectares in Planning Zone-E (East Delhi); 11,958 hectares in Zone-F (South Delhi I); 11,865 hectares in Planning Zone-G (West Delhi I); 5,677 hectares in Zone-H (North-West Delhi I); 15,178 hectares in Zone-J (South Delhi II); 5,782 hectares in Zone K-I (West Delhi II) and 6,408 hectares in Zone K-II Dwarka; 22,840 hectares in Zone-L (West Delhi III); 5,073 hectares in Zone-M (North West Delhi II); 13,975 hectares in Zone-N (North West Delhi III); 80,70 hectares in Zone-O (River Yamuna-River Front); 9,866 hectares in Zone P-I (Narela) and 8,534 hectares in Zone P-II (North Delhi).</p>
			</div>
            <div class="clear"></div>
        </div>
        </div>
  		<div class="clear"></div>
 	</div>
</section>
<!-- End Content Section -->

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
