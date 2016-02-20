<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE HTML>
<html><head>
<meta charset="utf-8">
<title>Tenant Management | NRI Services | BestNest Real Estate Services </title>
<meta name="description" content="Tenant Management Is a part of NRI Service,Tenant management is yet another quality service from BestNest.in, BestNest.in gives its customers the feel of managing your let out property yourself." />
<meta name="keywords" content="Tenant Management in NRI Services, Customize your package and options in NRi Service Under NRI Section, Silver Package, Four Times A Year,Gold Package, Six Times A Year, Platinum Package, Twelve Times A Year" />
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
         <li><a href="/nriServices.htm" class="active" title="NRI Services">NRI Services</a></li>
	    <li><a href="/aboutUs.htm" class="deactive" title="About Us">About Us</a></li>
		<li><a href="/lZone.htm" class="deactive" title="DDA L ZONE">DDA L Zone</a></li>
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
    <div class="wrapper">
    	<!--Page Breadcrumbs-->
        	<div class="breadcrumbs">
            <ul>
              <li>
              	<a href="/" title="Home">Home</a>
              	<span class="tick"></span>
              </li>
              <li>
              	<a href="/nriServices" title="NRI Services">NRI Services</a>
              	<span class="tick"></span></li>
              <li>
              	Tenant Management
             </li>
            </ul>
    		<div class="clear"></div>
  		</div>
        <!--Page Breadcrumbs-->
        
    	<!--NRI Box Section-->
        	<div class="nri-content">
                <div class="page-title">              
                    <h1>Tenant Management</h1>
                    <div style="width:14%; margin-top:10px;" class="fl">
                    	<img src="http://images.bestnest.in/nri-services/nri-other/nri-service3.jpg" alt="NRI Services" width="130" height="110"></div>
                    <div style="width:86%" class="fr">
                    <p>
Tenant management is yet another quality service from BestNest.in. We step into the customer’s shoes on an individual basis while rendering the service to him/her. Our field specialists take utmost care while making periodic visits to your property, depositing rental cheques, reporting on the same, etc. BestNest.in gives its customers the feel of managing your let out property yourself, while saving you the hassles of handling your tenants. Register with us and rest assured that your property is in good hands.
                	</p>
                    </div>
                    <div class="clear"></div>
     			</div>
                <div class="nrservice-wrapper">
                	<div class="page-title">
                    <h1>Our Packages</h1>
                    <p>Customize your package and options. Roll the mouse over the question mark for a detailed                    description. Frequency of service is based on a 12 months contract.
               		</p>
                	</div>
                    	<div id="bn-packages">
                        	<div id="silver-package" class="services-wrap marginT15">
                            	<h2>Silver Package, Four Times A Year</h2>
                    			<div class="package-wrap">
                            	<div class="wrap-img">
                            		<table cellspacing="0" cellpadding="0" border="0" class="nriContTable">
                            			<tr align="left">
                            				<td width="105" valign="middle" align="left" style="padding-right: 10px;                                    	border-right:1px solid #cccccc;">
		                                    	<div align="center" class="packageSilver"></div>
		                                    </td>
                            			</tr>
                            		</table>
                            	</div>
                            	<div class="wrap-data">
                    			<table cellspacing="0" cellpadding="0" border="0" class="nriContTable">
                        		<tbody>
                            	<tr align="left">
                                    <td style="padding-left: 10px">
                                    	<div>
                                        	<form id="Silver_form" name="Silver_form" method="post" action="/nriUserRegistration.htm">
                      	<input type="hidden" value="Tenant Management" name="productName" id="productName" /> 
                        <input type="hidden" id="Silver_hacheckid" name="Silver_hacheckid" value="E" />
                                            	<table cellspacing="0" cellpadding="0" border="0" class="pckContent">
                                                	<tbody>
                                                    	<tr>
                                                        	<th style="width:35%;">Service Frequency</th>
                                                            <th style="width:40%;">Services Included</th>
                                                            <th style="width:25%;">View Sample Data</th>
                                                        </tr>
                                                        <tr valign="middle">
                                                        	<td valign="top" align="left" style="padding-left: 4px;                                                            padding-top: 4px; border-right:1px solid #ccc;">
                                    							<select onchange="chngFreqValue('Silver_h_stdfreq','Silver_freq',document.Silver_form.Silver_scheck,document.Silver_form.Silver_acheck,'inrSilver_stdcost_h','inrSilver_curcost_h','usdSilver','inrSilverlbl',61.53,'disctPctSilver','decutPCTSilver')" id="Silver_freq" name="Silver_freq" class="dropdown" data-settings='{"wrapperClass":"metro"}'>
                                                            <option value="1">One Time in a Year</option>
                                                            <option value="2">Two Times in a Year</option>
                                                            <option value="3">Three Times in a Year</option>
                                                            <option value="4" selected="selected">Four Times in a Year</option>
                                                            <option value="6">Six Times in a Year</option>
                                                            <option value="12">Twelve Times in a Year</option>
                                                            </select>
                                    						<!-- HIDDEN VARIABLE --> 
                                    						<input type="hidden" id="Silver_h_stdfreq" name=                                                            "Silver_h_stdfreq" value="4" /> 																					                                   							<!-- HIDDEN VARIABLE -->
                                                            <div align="left" id="discount" style="margin-top:42px">
                                                            <!-- HIDDEN VARIABLE --> 
                                                            <input type="hidden" id="disctPctSilver" name="disctPctSilver" value="10.0" />
                                                            <!-- HIDDEN VARIABLE -->
                                                            <label class="themeFont">Package Discount : </label> 										                                                            <label id="decutPCTSilver" class="themeFont">10.0</label>
                                                            <label class="themeFont">%</label> 
															<script>
											valueVar=parseInt(document.getElementById('decutPCTSilver').innerHTML);
											document.getElementById('decutPCTSilver').innerHTML=valueVar;
                                            				</script>
                                                            </div>
                 											</td>	
                    										<td valign="top" style="padding-left: 10px;                                                            padding-top: 4px; border-right:1px solid #ccc;">
                                                            <label>
                                                                 <input type="checkbox" name="Silver_scheck" 
                                                                 id="Silver_scheck" value="1000.0" checked="checked"disabled /> Periodic Inspection
                                                                 </label>
                                                                <a href="javascript:void(0)" onmouseover="TagToTip('std_Silver_28',BORDERCOLOR,'#316EA7',BGCOLOR,'#C3D4E6',TITLE, unescape('Periodic Inspection'),WIDTH, 250, ABOVE,true,SHADOW,true,STICKY,true,CLOSEBTN, true, CLICKCLOSE, true,CLOSEBTNCOLORS, ['#316EA7', 'white', '#C3D4E6','white'])" onmouseout="UnTip()">
                                                                <span style="display:none" id="std_Silver_28">Periodic property inspection is to check the condition of the property. Inspection includes both the interiors and exteriors of the property. Exterior checks will be done at the time of rent collection. An Interior check will be done once every quarter.<br><br>Damages and misuse or unauthorized use of property, if any shall be handled as per the contract terms and will be reported to you.</span>
                                                                <img src="http://images.bestnest.in/nri-services/nri-other/help_icon.gif" alt="Help" style="border-width:0px; border-color:transparent;"/></a><br/>	
                                                                <label>
                                                                 <input type="checkbox" id="Silver_acheck" name="Silver_acheck" value="500.0" onclick="chngMonyValue(this,'Silver_freq','inrSilver_curcost_h','usdSilver','inrSilverlbl','Silver_hacheckid','30',61.53)" /> Rent Collection & Deposit
                                                                 </label>
                                                                <a onmouseout="UnTip()" onmouseover="TagToTip('addi_Silver_30',BORDERCOLOR,'#316EA7',BGCOLOR,'#C3D4E6',TITLE, unescape('Rent Collection & Deposit'),WIDTH, 250, ABOVE,true,SHADOW,true,STICKY,true,CLOSEBTN, true, CLICKCLOSE, true,CLOSEBTNCOLORS, ['#316EA7', 'white', '#C3D4E6','white'])" href="javascript:void(0)">
                                                                <span id="addi_Silver_30" style="display:none"> Monthly rent will be collected on or before the date fixed as per the agreement and will be deposited in the bank. A scanned copy of bank deposit receipt would be made available for you. We will make reasonable efforts to make errant tenants pay up on time, but shall not be responsible for non-payment by any tenant.</span>
                                                                <img style="border-width:0px; border-color:transparent;" src="http://images.bestnest.in/nri-services/nri-other/help_icon.gif" alt="Help" ></a><br />
                                                                
                                                                <label>
                                                                 <input type="checkbox" id="Silver_acheck" name="Silver_acheck" value="500.0" onclick="chngMonyValue(this,'Silver_freq','inrSilver_curcost_h','usdSilver','inrSilverlbl','Silver_hacheckid','29',61.53)" />  Utility Bill Payment
                                                                 </label>             
                                                                <a href="javascript:void(0)" onmouseover="TagToTip('addi_Silver_29',BORDERCOLOR,'#316EA7',BGCOLOR,'#C3D4E6',TITLE, unescape('Utility Bill Payment'),WIDTH, 250, ABOVE, true,SHADOW,true,STICKY,true,CLOSEBTN, true, CLICKCLOSE, true,CLOSEBTNCOLORS, ['#316EA7', 'white', '#C3D4E6','white'])" onmouseout="UnTip()">
                                                                <span style="display:none" id="addi_Silver_29">All the details about the utility bill payments like Property Tax, Water, Electricity, etc will be maintained by us and a request note for the payments will be sent to you well before the final payment date. After the receipt of the payments, it will be paid to the concerned department. Receipts will be maintained in your case file and can also be sent to you on request.</span>
                                                                <img src="http://images.bestnest.in/nri-services/nri-other/help_icon.gif" alt="Help" style="border-width:0px; border-color:transparent;"></a><br />
                                                            <div style="margin-top:15px;">
                                                                    <label class="themeFont fl">Package Price :
                                                                    </label>
 <!-- HIDDEN VARIABLE -->                                                               
<input type="hidden" id="inrSilver_curcost_h" name="inrSilver_curcost_h" value="3600.0" />
<input type="hidden" id="inrSilver_stdcost_h" name="inrSilver_stdcost_h" value="3600.0"> 
<!-- HIDDEN VARIABLE -->
<div id="p-price" class="fl marginL10">
<span style="display:block; margin-bottom:5px;">
<label id="usdSilver">58.50804601691784</label> 
<script>
document.getElementById('usdSilver').innerHTML=formatUSCurrency(parseFloat(document.getElementById('inrSilver_stdcost_h').value)/61.53);
</script>
<b>USD</b> <br />
</span>
<span style="display:block; margin-bottom:5px;">
<label id="inrSilverlbl">3600.0</label>
<script>
 document.getElementById('inrSilverlbl').innerHTML=formatIndiaCurrency(parseFloat(document.getElementById('inrSilver_stdcost_h').value));
</script>
<b>INR</b><br/>
</span>
<span style="font-weight: bold;font-size: 11px;">
	[1 USD = 61.53 INR] 
</span>
</div>  
                                                                </div>
															</td>                 
															<td valign="top" style="padding-left: 10px;                                                            padding-top: 4px;">
                                                            <div id="main">
																<ul class="gallery clearfix" type="square" style="padding-left: 15px; margin-top: 5px;">

<!-- Sample Image Gallery -->
<li style="margin-bottom:5px;">
<a href="http://images.bestnest.in/nri-services/nri-sample-gallery/Tenant-Image1.jpg" rel="prettyPhoto[gallery1]" title="Silver Package"> Sample Photo Gallery
</a>
</li>
<li style="margin-bottom:5px; display:none;">
<a href="http://images.bestnest.in/nri-services/nri-sample-gallery/Tenant-Image2.jpg" rel="prettyPhoto[gallery1]" title="Silver Package"> Sample Photo Gallery
</a>
</li>
<li style="margin-bottom:5px; display:none;">
<a href="http://images.bestnest.in/nri-services/nri-sample-gallery/Tenant-Image3.jpg" rel="prettyPhoto[gallery1]" title="Silver Package"> Sample Photo Gallery
</a>
</li>
</ul>
<!-- End Sample Image Gallery --> 
<!--Report Section --> 
<ul type="square" style="padding-left:15px; margin-top:-14px;" class="report-container">
 	<li style="margin-bottom:5px;"><a class="sample-report-opener" href="javascript:void(0);">Sample Report</a></li>
	<li style="margin-bottom:5px;"><a class="price-report-opener" href="javascript:void(0);">Price Chart</a></li>
</ul>
<!-- End Report Section-->

   																<div style="margin-top:18px">
                                                                	<input type="submit" class="btn b yellow marginL5" style="margin-left:5px; width:75px;" id="ilogin" name="ilogin" value="Buy Now">
                                                                </div>
															</td>
														</tr>
                                                	</tbody>
      											</table>
                                            </form>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        	</div>
                        	</div>
                        	</div>
                            <div id="gold-package" class="services-wrap marginT15">
                            	<h2>Gold Package, Six Times A Year</h2>
                            	<div class="package-wrap">
                            	<div class="wrap-img">
                            		<table cellspacing="0" cellpadding="0" border="0" class="nriContTable">
                            			<tr align="left">
                            				<td width="105" valign="middle" align="left" style="padding-right: 10px;                                    		border-right:1px solid #cccccc;">
                                    		<div align="center" class="packageGold"></div>
                                    		</td>
                            			</tr>
                            		</table>
                            	</div>
                            	<div class="wrap-data">
                    			<table cellspacing="0" cellpadding="0" border="0" class="nriContTable">
                        			<tbody>
                                        <tr align="left">
                                            <td style="padding-left: 10px">
                                                <div>
                                                    <form id="Gold_form" name="Gold_form" method="post" action="/nriUserRegistration.htm">
                            <input type="hidden" value="Tenant Management" name="productName" id="productName" /> 							                            <input type="hidden" id="Gold_hacheckid" name="Gold_hacheckid" value="E" />
                                                            <table cellspacing="0" cellpadding="0" border="0" class="pckContent">
                                                            <tbody>
                                                                <tr>
                                                                    <th style="width:35%;">Service Frequency</th>
                                                                    <th style="width:40%;">Services Included</th>
                                                                    <th style="width:25%;">View Sample Data</th>
                                                                </tr>
                                                                <tr valign="middle">
                                                                    <td valign="top" align="left" style="padding-left: 4px;                                                            padding-left: 4px;                                                            padding-top: 4px; border-right:1px solid #ccc;">
                                                                        <select onchange="chngFreqValue('Gold_h_stdfreq','Gold_freq',document.Gold_form.Gold_scheck,document.Gold_form.Gold_acheck,'inrGold_stdcost_h','inrGold_curcost_h','usdGold','inrGoldlbl',61.53,'disctPctGold','decutPCTGold')" id="Gold_freq" name="Gold_freq" class="dropdown" data-settings='{"wrapperClass":"metro"}'>
                                                                    <option value="1">One Time in a Year</option>
                                                                    <option value="2">Two Times in a Year</option>
                                                                    <option value="3">Three Times in a Year</option>
                                                                    <option value="4">Four Times in a Year</option>
                                                                    <option value="6" selected="selected">Six Times in a Year</option>
                                                                    <option value="12">Twelve Times in a Year</option>
                                                                    </select>
                                                                    <!-- HIDDEN VARIABLE --> 
                                                                        <input type="hidden" id="Gold_h_stdfreq" 
name="Gold_h_stdfreq" value="6" /><!-- HIDDEN VARIABLE -->
                                                                        <div align="left" id="discount" style="margin-top:42px">
                                            <!-- HIDDEN VARIABLE --> 
                                           <input type="hidden" id="disctPctGold" name="disctPctGold" value="20.0" />  
                                            <!-- HIDDEN VARIABLE -->
                                            <label class="themeFont">Package Discount : </label> 
                                            <label id="decutPCTGold" class="themeFont">20.0</label>
                                        	<label class="themeFont">%</label> 
											<script>
												valueVar=parseInt(document.getElementById('decutPCTGold').innerHTML);
												document.getElementById('decutPCTGold').innerHTML=valueVar;
                                            </script>
                                            </div>
                                                                    </td>                           	
                                                                    <td valign="top" style="padding-left: 10px;                                                            padding-top: 4px; border-right:1px solid #ccc;">
                                                                        <label>
                                                                        <input type="checkbox" name="Gold_scheck" id="Gold_scheck" value="1000.0" checked="checked" disabled="disabled"/> Periodic Inspection
                                                                        </label>
                                                                        <a href="javascript:void(0)" onmouseover="TagToTip('std_Gold_28',BORDERCOLOR,'#316EA7',BGCOLOR,'#C3D4E6',TITLE, unescape('Periodic Inspection'),WIDTH, 250, ABOVE,true,SHADOW,true,STICKY,true,CLOSEBTN, true, CLICKCLOSE, true,CLOSEBTNCOLORS, ['#316EA7', 'white', '#C3D4E6','white'])" onmouseout="UnTip()">
                                                                <span style="display:none" id="std_Gold_28">Periodic property inspection is to check the condition of the property. Inspection includes both the interiors and exteriors of the property. Exterior checks will be done at the time of rent collection. An Interior check will be done once every quarter.<br><br>Damages and misuse or unauthorized use of property, if any shall be handled as per the contract terms and will be reported to you.</span>
                                                                        <img src="http://images.bestnest.in/nri-services/nri-other/help_icon.gif" alt="Help" style="border-width:0px; border-color:transparent;"/></a><br/>	
                                                                        
                                                                        <label>
                                                                        <input type="checkbox" name="Gold_scheck" id="Gold_scheck" value="500.0" checked="checked" disabled="disabled"/> Utility Bill Payment
                                                                        </label>
                                                                        <a href="javascript:void(0)" onmouseover="TagToTip('std_Gold_29',BORDERCOLOR,'#316EA7',BGCOLOR,'#C3D4E6',TITLE, unescape('Utility Bill Payment'),WIDTH, 250, ABOVE, true,SHADOW,true,STICKY,true,CLOSEBTN, true, CLICKCLOSE, true,CLOSEBTNCOLORS, ['#316EA7', 'white', '#C3D4E6','white'])" onmouseout="UnTip()">
                                                                <span style="display:none" id="std_Gold_29">All the details about the utility bill payments like Property Tax, Water, Electricity, etc will be maintained by us and a request note for the payments will be sent to you well before the final payment date. After the receipt of the payments, it will be paid to the concerned department. Receipts will be maintained in your case file and can also be sent to you on request.</span>
                                                                        <img src="http://images.bestnest.in/nri-services/nri-other/help_icon.gif" alt="Help" style="border-width:0px; border-color:transparent;"/></a><br />
                                                                        
                                                                        <label>
<input type="checkbox" id="Gold_acheck"	name="Gold_acheck" value="500.0" onclick="chngMonyValue(this,'Gold_freq','inrGold_curcost_h','usdGold','inrGoldlbl','Gold_hacheckid','30',61.53)" /> Rent Collection & Deposit
                                                                        </label>
                                                                        <a onmouseout="UnTip()" onmouseover="TagToTip('addi_Gold_30',BORDERCOLOR,'#316EA7',BGCOLOR,'#C3D4E6',TITLE, unescape('Rent Collection & Deposit'),WIDTH, 250, ABOVE,true,SHADOW,true,STICKY,true,CLOSEBTN, true, CLICKCLOSE, true,CLOSEBTNCOLORS, ['#316EA7', 'white', '#C3D4E6','white'])" href="javascript:void(0)">
                                                                <span id="addi_Gold_30" style="display:none">Monthly rent will be collected on or before the date fixed as per the agreement and will be deposited in the bank. A scanned copy of bank deposit receipt would be made available for you. We will make reasonable efforts to make errant tenants pay up on time, but shall not be responsible for non-payment by any tenant.</span>
                                                                        <img src="http://images.bestnest.in/nri-services/nri-other/help_icon.gif" alt="Help" style="border-width:0px; border-color:transparent;"/></a><br />
                                                                        
                                                                        <div style="margin-top:15px;">
                                                                        <label class="themeFont fl">Package Price :</label>
                                                                        <!-- HIDDEN VARIABLE -->
<input type="hidden" id="inrGold_curcost_h" name="inrGold_curcost_h" value="7200.0" /> 
<input type="hidden" id="inrGold_stdcost_h" name="inrGold_stdcost_h" value="7200.0" />
                                                                        <!-- HIDDEN VARIABLE -->
                                                                        <div class="fl marginL10" id="p-price">
                                                                        <span style="display:block; margin-bottom:5px;">
                                                                        <label id="usdGold">117.01609203383568</label>
                                                                        <script>
                                                                        document.getElementById('usdGold').innerHTML=formatUSCurrency(parseFloat(document.getElementById('inrGold_stdcost_h').value)/61.53);
                                                                        </script>
                                                                        <b>USD</b><br />       
                                                                        </span>
                                                                        <span style="display:block; margin-bottom:5px;">
                                                                        <label id="inrGoldlbl">7200.0</label> 
                                                                        <script>
                                                                       document.getElementById('inrGoldlbl').innerHTML=formatIndiaCurrency(parseFloat(document.getElementById('inrGold_stdcost_h').value));
                                                                        </script>
                                                                        <b>INR</b><br />        
                                                                        </span>
                                                                        <span style="font-weight: bold;font-size: 11px;">
                                                                        [1 USD = 61.53 INR] 
                                                                        </span>
                                                                        </div>
                                                                        </div>
                                                                   </td>                 
                                                                    <td valign="top" style="padding-top: 4px; padding-left:10px;">
                                                                    	<ul class="gallery clearfix" type="square" style="padding-left: 15px; margin-top: 5px;">

<!-- Sample Image Gallery -->
<li style="margin-bottom:5px;">
<a href="http://images.bestnest.in/nri-services/nri-sample-gallery/Tenant-Image1.jpg" rel="prettyPhoto[gallery2]" title="Gold Package"> Sample Photo Gallery
</a>
</li>
<li style="margin-bottom:5px; display:none;">
<a href="http://images.bestnest.in/nri-services/nri-sample-gallery/Tenant-Image2.jpg" rel="prettyPhoto[gallery2]" title="Gold Package"> Sample Photo Gallery
</a>
</li>
<li style="margin-bottom:5px; display:none;">
<a href="http://images.bestnest.in/nri-services/nri-sample-gallery/Tenant-Image3.jpg" rel="prettyPhoto[gallery2]" title="Gold Package"> Sample Photo Gallery
</a>
</li>
</ul>
<!-- End Sample Image Gallery --> 
<!--Report Section --> 
<ul type="square" style="padding-left:15px; margin-top:-14px;" class="report-container">
 	<li style="margin-bottom:5px;"><a class="sample-report-opener" href="javascript:void(0);">Sample Report</a></li>
	<li style="margin-bottom:5px;"><a class="price-report-opener" href="javascript:void(0);">Price Chart</a></li>
</ul>
<!-- End Report Section-->

                                                                     	<div style="margin-top:18px">
                                                                        	<input type="submit" class="btn b yellow marginL5" style="margin-left:5px; width:75px;" id="ilogin" name="ilogin" value="Buy Now">
                                                                        </div>
                                                                    </td>
                                                                </tr>  
                                                           </tbody>
                                                        </table>
                                                    </form>
                                                </div>
                                            </td>
                                        </tr>
                            		</tbody>
                        		</table>
                			</div>
                			</div>
                			</div>
                            <div id="platinum-package" class="services-wrap marginT15">
                            	<h2>Platinum Package, Twelve Times A Year</h2>
                            	<div class="package-wrap">
                            	<div class="wrap-img">
                            		<table cellspacing="0" cellpadding="0" border="0" class="nriContTable">
                            			<tr align="left">
                            				<td width="105" valign="middle" align="left" style="padding-right: 10px;                                    	border-right:1px solid #cccccc;">
                                                <div align="center" class="packagePlatinum"></div>
                                            </td>
                            			</tr>
                            		</table>
                            	</div>
                            	<div class="wrap-data">
                    			<table cellspacing="0" cellpadding="0" border="0" class="nriContTable">
                        			<tbody>
                                        <tr align="left">
                                            <td style="padding-left: 10px">
                                                <div>
                                              		<form id="Platinum_form" name="Platinum_form" method="post" action="/nriUserRegistration.htm">
<input type="hidden" value="Tenant Management" name="productName" id="productName" /> 
<input type="hidden" id="Platinum_hacheckid" name="Platinum_hacheckid" value="E" />
                                                        <table cellspacing="0" cellpadding="0" border="0" class="pckContent">
                                                            <tbody>
                                                                <tr>
                                                                    <th style="width:35%;">Service Frequency</th>
                                                                    <th style="width:40%;">Services Included</th>
                                                                    <th style="width:25%;">View Sample Data</th>
                                                                </tr>
                                                                <tr valign="middle">
                                                                    <td valign="top" align="left" style="padding-left: 4px;                                                            padding-left: 4px;                                                            padding-top: 4px; border-right:1px solid #ccc;">
                                                                    <select onchange="chngFreqValue('Platinum_h_stdfreq','Platinum_freq',document.Platinum_form.Platinum_scheck,document.Platinum_form.Platinum_acheck,'inrPlatinum_stdcost_h','inrPlatinum_curcost_h','usdPlatinum','inrPlatinumlbl',61.53,'disctPctPlatinum','decutPCTPlatinum')" id="Platinum_freq" name="Platinum_freq" class="dropdown" data-settings='{"wrapperClass":"metro"}'>
                                                                    <option value="1">One Time in a Year</option>
                                                                    <option value="2">Two Times in a Year</option>
                                                                    <option value="3">Three Times in a Year</option>
                                                                    <option value="4">Four Times in a Year</option>
                                                                    <option value="6">Six Times in a Year</option>
                                                                    <option value="12" selected="selected">Twelve Times in a Year</option>
                                                                    </select>
                                                                <!-- HIDDEN VARIABLE --> 
                                         <input type="hidden" id="Platinum_h_stdfreq" name="Platinum_h_stdfreq" value="12" /><!-- HIDDEN VARIABLE -->
                                                                    <div align="left" id="discount" style="margin-top:42px">
                                            <!-- HIDDEN VARIABLE --> 
                                          <input type="hidden" id="disctPctPlatinum" name="disctPctPlatinum" value="40.0" />
                                            <!-- HIDDEN VARIABLE -->
                                            <label class="themeFont">Package Discount : </label> 
                                            <label id="decutPCTPlatinum" class="themeFont">40.0</label>
                                    		<label class="themeFont">%</label> 
											<script>
											valueVar=parseInt(document.getElementById('decutPCTPlatinum').innerHTML);
											document.getElementById('decutPCTPlatinum').innerHTML=valueVar;
                                            </script>
                                            </div>
                                                                    </td>	
                                                                    <td valign="top" style="padding-left: 10px;                                                            padding-top: 4px; border-right:1px solid #ccc;">
                                                                        <label>
                                                                        <input type="checkbox" id="Platinum_scheck" name="Platinum_scheck" value="1000.0" checked="checked" disabled="disabled" /> Periodic Inspection
                                                                        </label>                                                                 
                                                                        <a href="javascript:void(0)" onmouseover="TagToTip('std_Platinum_28',BORDERCOLOR,'#316EA7',BGCOLOR,'#C3D4E6',TITLE, unescape('Periodic Inspection'),WIDTH, 250, ABOVE,true,SHADOW,true,STICKY,true,CLOSEBTN, true, CLICKCLOSE, true,CLOSEBTNCOLORS, ['#316EA7', 'white', '#C3D4E6','white'])" onmouseout="UnTip()">
                                                                <span style="display:none" id="std_Platinum_28">Periodic property inspection is to check the condition of the property. Inspection includes both the interiors and exteriors of the property. Exterior checks will be done at the time of rent collection. An Interior check will be done once every quarter.<br><br>Damages and misuse or unauthorized use of property, if any shall be handled as per the contract terms and will be reported to you.</span>
                                                                        <img src="http://images.bestnest.in/nri-services/nri-other/help_icon.gif" alt="Help" style="border-width:0px; border-color:transparent;"/></a><br/>	
                                                                                
                                                                        <label>
                                                                        <input type="checkbox" id="Platinum_scheck" name="Platinum_scheck" value="500.0" checked="checked" disabled="disabled" /> Rent Collection & Deposit
                                                                        </label>  
                                                                        <a onmouseout="UnTip()" onmouseover="TagToTip('std_Platinum_30',BORDERCOLOR,'#316EA7',BGCOLOR,'#C3D4E6',TITLE, unescape('Rent Collection & Deposit'),WIDTH, 250, ABOVE,true,SHADOW,true,STICKY,true,CLOSEBTN, true, CLICKCLOSE, true,CLOSEBTNCOLORS, ['#316EA7', 'white', '#C3D4E6','white'])" href="javascript:void(0)">
                                                                <span id="std_Platinum_30" style="display:none"> Monthly rent will be collected on or before the date fixed as per the agreement and will be deposited in the bank. A scanned copy of bank deposit receipt would be made available for you. We will make reasonable efforts to make errant tenants pay up on time, but shall not be responsible for non-payment by any tenant.</span>
                                                                        <img src="http://images.bestnest.in/nri-services/nri-other/help_icon.gif" alt="Help" style="border-width:0px; border-color:transparent;"/></a><br />
                                                                         
                                                                        <label>
                                                                        <input type="checkbox" id="Platinum_acheck" name="Platinum_acheck" value="500.0" onclick="chngMonyValue(this,'Platinum_freq','inrPlatinum_curcost_h','usdPlatinum','inrPlatinumlbl','Platinum_hacheckid','29',61.53)" /> Utility Bill Payment
                                                                        </label>     
                                                                        <a href="javascript:void(0)" onmouseover="TagToTip('addi_Platinum_29',BORDERCOLOR,'#316EA7',BGCOLOR,'#C3D4E6',TITLE, unescape('Utility Bill Payment'),WIDTH, 250, ABOVE, true,SHADOW,true,STICKY,true,CLOSEBTN, true, CLICKCLOSE, true,CLOSEBTNCOLORS, ['#316EA7', 'white', '#C3D4E6','white'])" onmouseout="UnTip()">
                                                                <span style="display:none" id="addi_Platinum_29">All the details about the utility bill payments like Property Tax, Water, Electricity, etc will be maintained by us and a request note for the payments will be sent to you well before the final payment date. After the receipt of the payments, it will be paid to the concerned department. Receipts will be maintained in your case file and can also be sent to you on request.</span>
                                                                        <img src="http://images.bestnest.in/nri-services/nri-other/help_icon.gif" alt="Help" style="border-width:0px; border-color:transparent;"/></a><br />
																		
                                                                        <div style="margin-top:15px;">
<label class="themeFont fl">Package Price :</label>
 <!-- HIDDEN VARIABLE --> 
<input type="hidden" id="inrPlatinum_curcost_h" name="inrPlatinum_curcost_h" value="10800.0" /> 
<input type="hidden" id="inrPlatinum_stdcost_h" name="inrPlatinum_stdcost_h" value="10800.0	" /> 
<!-- HIDDEN VARIABLE -->
<div class="fl marginL10" id="p-price">
<span style="display:block; margin-bottom:5px;">
<label id="usdPlatinum">175.52413805075352</label>
<script>
document.getElementById('usdPlatinum').innerHTML=formatUSCurrency(parseFloat(document.getElementById('inrPlatinum_stdcost_h').value)/61.53);
</script>
<b>USD</b> <br />
</span>
<span style="display:block; margin-bottom:5px;">
<label id="inrPlatinumlbl">10800.0</label>
<script>
document.getElementById('inrPlatinumlbl').innerHTML=formatIndiaCurrency(parseFloat(document.getElementById('inrPlatinum_stdcost_h').value));
</script>
<b>INR</b> <br />
</span>
<span style="font-weight: bold;font-size: 11px;">
 [1 USD = 61.53 INR]
</span>
</div>
</div>
                                                                   </td>                 
                                                                    <td valign="top" style="padding-left: 10px;                                                            padding-top: 4px;">
        													<ul class="gallery clearfix" type="square" style="padding-left: 15px; margin-top: 5px;">

<!-- Sample Image Gallery -->
<li style="margin-bottom:5px;">
<a href="http://images.bestnest.in/nri-services/nri-sample-gallery/Tenant-Image1.jpg" rel="prettyPhoto[gallery3]" title="Platinum Package"> Sample Photo Gallery
</a>
</li>
<li style="margin-bottom:5px; display:none;">
<a href="http://images.bestnest.in/nri-services/nri-sample-gallery/Tenant-Image2.jpg" rel="prettyPhoto[gallery3]" title="Platinum Package"> Sample Photo Gallery
</a>
</li>
<li style="margin-bottom:5px; display:none;">
<a href="http://images.bestnest.in/nri-services/nri-sample-gallery/Tenant-Image3.jpg" rel="prettyPhoto[gallery3]" title="Platinum Package"> Sample Photo Gallery
</a>
</li>
</ul>
<!-- End Sample Image Gallery --> 
<!--Report Section --> 
<ul type="square" style="padding-left:15px; margin-top:-14px;" class="report-container">
 	<li style="margin-bottom:5px;"><a class="sample-report-opener" href="javascript:void(0);">Sample Report</a></li>
	<li style="margin-bottom:5px;"><a class="price-report-opener" href="javascript:void(0);">Price Chart</a></li>
</ul>
<!-- End Report Section-->

           																<div style="margin-top:18px">
                                                                	<input type="submit" class="btn b yellow marginL5" style="margin-left:5px; width:75px;" id="ilogin" name="ilogin" value="Buy Now">
                                                                		</div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </form>
                                                </div>
                                            </td>
                                        </tr>
                            		</tbody>
                        		</table>
                        	</div>
                        	</div>
                        	</div>
                        	<div class="clear"></div>
                    	</div>                     
                	<div class="clear"></div>
                </div>
            </div>
        <!--End NRI Box Section-->
        
        <!-- Left Portion -->
        	<div class="left-portion">
        	<div class="other-services">
                	<div class="page-title paddingT8"> 
                        <h1>Other Available Services</h1>
                        <p>
                    BestNest.in provides an array of various ad-hoc services to cater to the various property related needs. We will charge you with a service fee at this moment. We will provide you with the additional disbursement information later. You will receive a separate invoice from us for additional disbursement amount.<br /><br />
                    We will provide you with the quotes from various vendors for your convenient comparison.
                    </p> 
                	</div>
                	<form name="otherForm" id="otherForm" action="/nriUserRegistration.htm" method="post" onsubmit="return isServiceChecked(document.otherForm.otherService)">
                    	<div>
                    	<input type="hidden" name="selOthrOpt" id="selOthrOpt" value='E'/>
						<input type="hidden" value="Tenant Management" name="productName" id="otherprodName" />		
                        <table class="pricing-table agency-pricing comparison-table blue-table phone-table">
							<thead>
                                <tr class="alt">
                  					<th width="250" scope="col">Services</th>
									<th width="250" colspan="2" scope="col">Service Fee</th>
									<th width="150" scope="col">Additional Disbursement</th>
                  					<th width="50" scope="col">Buy</th>
                                </tr>
                                <tr>
                  					<th scope="col">&nbsp;</th>
									<th scope="col">USD</th>
									<th scope="col">INR</th>
                  					<th scope="col">&nbsp;</th>
  									<th scope="col">&nbsp;</th>
                                </tr>
                          	</thead>
                            <tbody>
                            	<tr>
                                    <td class="alt">Explaining lease terms & condition to Tenant</td>
                                    <td>
	 									<label id="116_USD">8.1261175023497</label>
                                        <script>
                                            document.getElementById('116_USD').innerHTML=formatUSCurrency
											(8.1261175023497);
                                        </script>
									</td>
                                    <td>
									<label id="116_INR">500.0</label>
                                    <script>
                                        document.getElementById('116_INR').innerHTML=formatIndiaCurrency(500.0);
                                    </script>
									</td>
                                    <td>As Per Estimate</td>
									<td>
                                    <label>
                                     <input type="checkbox" id="otherService" name="otherService" onclick="chngOthrServAmt(this,'totalAmtOthrINR','totalAmtOthrUSD',61.53,'totINR','selOthrOpt','34',61.53)" value="500.0"/> 		                                    </label>
                                     </td>
                             	</tr>
                                <tr>
									<td class="alt">Grill/Gate Work</td>
                                	<td>
                                		<label id="142_USD">32.5044700093988</label>
										<script>
                                            document.getElementById('142_USD').innerHTML=formatUSCurrency
											(32.5044700093988);
                                        </script>
                               		</td> 
                                    <td>
                                        <label id="142_INR">2000.0</label>
                                        <script>
                                            document.getElementById('142_INR').innerHTML=formatIndiaCurrency(2000.0);
                                        </script>
                                    </td>
                                	<td>As Per Estimate</td>
                                	<td>
                                    <label>
                                 <input	type="checkbox" align="middle" name="otherService" id="otherService" value="2000.0" onclick="chngOthrServAmt(this,'totalAmtOthrINR','totalAmtOthrUSD',61.53,'totINR','selOthrOpt','40',61.53)"/>
                                   	</label>
                                    </td>
								</tr>
                                <tr>
									<td class="alt">Inventory Check</td>
									<td>
                        				<label id="118_USD">16.2522350046994</label>
										<script>
											document.getElementById('118_USD').innerHTML=formatUSCurrency
											(16.2522350046994);
                                        </script>
									</td> 
									<td>
                                    	<label id="118_INR">1000.0</label>
										<script>
                                        document.getElementById('118_INR').innerHTML=formatIndiaCurrency(1000.0);
                                        </script>
									</td>
									<td>As Per Estimate</td>
									<td>
                                    <label>
				 <input	type="checkbox" align="middle" name="otherService" id="otherService" value="1000.0" onclick="chngOthrServAmt(this,'totalAmtOthrINR','totalAmtOthrUSD',61.53,'totINR','selOthrOpt','33',61.53)"/>
									</label>
                                    </td>
								</tr>
                                <tr>
									<td class="alt">Legal Opinion</td>
									<td>
                                    	<label id="120_USD">16.2522350046994</label>
										<script>
                                        	document.getElementById('120_USD').innerHTML=formatUSCurrency
											(16.2522350046994);
                                        </script>
									</td> 
									<td>
                                    	<label id="120_INR">1000.0</label>
										<script>
                                        document.getElementById('120_INR').innerHTML=formatIndiaCurrency(1000.0);
                                        </script>
									</td>
									<td>As Per Estimate</td>
									<td>
                                    <label>
				 <input	type="checkbox" align="middle" name="otherService" id="otherService" value="1000.0" onclick="chngOthrServAmt(this,'totalAmtOthrINR','totalAmtOthrUSD',61.53,'totINR','selOthrOpt','35',61.53)"/>
									</label>
                                    </td>
								</tr>
                                <tr>
									<td class="alt">Major Maintenance - Repair</td>
                                    <td>
                                    	<label id="117_USD">16.2522350046994</label>
										<script>
                                        	document.getElementById('117_USD').innerHTML=formatUSCurrency
											(16.2522350046994);
                                        </script>
									</td> 
									<td>
                                    	<label id="117_INR">1000.0</label>
										<script>
                                        document.getElementById('117_INR').innerHTML=formatIndiaCurrency(1000.0);
                                        </script>
									</td>
									<td>As Per Estimate</td>
									<td>
                                    <label>
				 <input	type="checkbox" align="middle" name="otherService" id="otherService" value="1000.0" onclick="chngOthrServAmt(this,'totalAmtOthrINR','totalAmtOthrUSD',61.53,'totINR','selOthrOpt','36',61.53)"/>
									</label>
                                    </td>
								</tr>
                                <tr>
									<td class="alt">On Demand Property Pictures</td>	
									<td>
                                    	<label id="113_USD">16.2522350046994</label>
										<script>
                                        	document.getElementById('113_USD').innerHTML=formatUSCurrency
											(16.2522350046994);
                                        </script>
									</td> 
									<td>
                                    	<label id="113_INR">1000.0</label>
										<script>
                                        document.getElementById('113_INR').innerHTML=formatIndiaCurrency(1000.0);
                                        </script>
									</td>
									<td>As Per Estimate</td>
									<td>
                                    <label>
				 <input	type="checkbox" align="middle" name="otherService" id="otherService" value="1000.0" onclick="chngOthrServAmt(this,'totalAmtOthrINR','totalAmtOthrUSD',61.53,'totINR','selOthrOpt','38',61.53)"/>
									</label>
                                    </td>
								</tr>
                                <tr>
									<td class="alt">Property Assessment Value</td>
									<td>
                                    	<label id="121_USD">16.2522350046994</label>
										<script>
                                        	document.getElementById('121_USD').innerHTML=formatUSCurrency
											(16.2522350046994);
                                        </script>
									</td> 
									<td>
                                    	<label id="121_INR">1000.0</label>
										<script>
                                        document.getElementById('121_INR').innerHTML=formatIndiaCurrency(1000.0);
                                        </script>
									</td>
									<td>As Per Estimate</td>
                                    <td>
                                    <label>
                          <input type="checkbox" align="middle" name="otherService" id="otherService" value="1000.0" onclick="chngOthrServAmt(this,'totalAmtOthrINR','totalAmtOthrUSD',61.53,'totINR','selOthrOpt','37',61.53)"/>
                                    </label>
                                    </td>
								</tr>
                                <tr>
									<td class="alt">Rent Collection & Deposit</td>
									<td>
                                    	<label id="114_USD">8.1261175023497</label>
										<script>
                                        	document.getElementById('114_USD').innerHTML=formatUSCurrency
											(8.1261175023497);
                                        </script>
									</td> 
									<td>
                                    	<label id="114_INR">500.0</label>
										<script>
                                        document.getElementById('114_INR').innerHTML=formatIndiaCurrency(500.0);
                                        </script>
									</td>						
									<td>As Per Estimate</td>
									<td>
                                    <label>
				 <input	type="checkbox" align="middle" name="otherService" id="otherService" value="500.0" onclick="chngOthrServAmt(this,'totalAmtOthrINR','totalAmtOthrUSD',61.53,'totINR','selOthrOpt','32',61.53)"/>
									</label>
                                    </td>
								</tr>
                                <tr>
									<td class="alt">Tenant Search</td>
									<td>
                                    	<label id="115_USD">40.6305875117485</label>
										<script>
                                        	document.getElementById('115_USD').innerHTML=formatUSCurrency
											(40.6305875117485);
                                        </script>
									</td> 
									<td>
                                    	<label id="115_INR">2500.0</label>
										<script>
                                        document.getElementById('115_INR').innerHTML=formatIndiaCurrency(2500.0);
                                        </script>
									</td>
									<td>As Per Estimate</td>
									<td>
                                    <label>
				 <input	type="checkbox" align="middle" name="otherService" id="otherService" value="2500.0" onclick="chngOthrServAmt(this,'totalAmtOthrINR','totalAmtOthrUSD',61.53,'totINR','selOthrOpt','39',61.53)"/>
									</label>
                                    </td>
								</tr>
                                <tr>
									<td class="alt">Utility Bill Payment</td>
									<td>
                        				<label id="119_USD">8.1261175023497</label>
										<script>
                                            document.getElementById('119_USD').innerHTML=formatUSCurrency
											(8.1261175023497);
                                        </script>
									</td> 
                                    <td>
                                        <label id="119_INR">500.0</label>
                                        <script>
                                           document.getElementById('119_INR').innerHTML=formatIndiaCurrency(500.0);
                                        </script>
                                    </td>
									<td>As Per Estimate</td>
									<td>
                                    <label>
				 <input	type="checkbox" align="middle" name="otherService" id="otherService" value="500.0" onclick="chngOthrServAmt(this,'totalAmtOthrINR','totalAmtOthrUSD',61.53,'totINR','selOthrOpt','31',61.53)"/>
									</label>
                                    </td>
								</tr>
                                <tr style="height: 32px;">
									<td colspan="4" align="right" style="border-right-width: 0">
										<div id="showError" class="error" align="right" style="display: none;">
											Please Select Services to Buy!
										</div>
										<div id="showValue">
                                        <table align="right" width="300" cellpadding="0" cellspacing="0">
                                            <tr align="right">
                                                <td width="150px;" style="border-width: 0px; border-style: none">
                                                <b>Total Service Cost : </b></td>
                                                <td align="right" style="border-width: 0px; border-style: none">													                                      			<span id="totalAmtOthrUSD" style="text-align: right; width: 75px">0	                                                </span>
                                                </td>
                                                <td style="border-width: 0px; border-style: none"><b>USD</b></td>
                                            </tr>
                                            <tr>
                                                <td style="border-width: 0px; border-style: none"></td>
                                                <td style="border-width: 0px; border-style: none" align="right"
                                                    width="75">
                                                <!-- HIDDEN VARIABLE --> 
                                                <input type="hidden" value="0" id="totINR" name="totINR" />
                                                <!-- HIDDEN VARIABLE -->
                                                <span id="totalAmtOthrINR" style="text-align: right; width: 75px">0															                                                 </span>
                                                </td>
                                                <td style="border-width: 0px; border-style: none"><b>INR</b></td> 
                                            </tr>
                                        	<tr align="right">
                                        		<td colspan="3" style="font-weight: bold;font-size: 11px;border-width: 0px; border-style: none;text-align: right;" align="right" >[1 USD = 61.53 INR]</td>
                                        	</tr>
										</table>
										</div>
									</td>
									<td colspan="1" style="text-align: center;" valign="middle" align="center">
										<input type="submit" class="btn b yellow marginL5" style="margin-left:5px; width:75px;" id="ilogin" name="ilogin" value="Buy Now">
                                    </td>
								</tr>
                            </tbody>
                        </table>	
                    </div>
                    </form> 
                </div>
			<script>
            init('showValue');
            </script>
            <div class="clear"></div>
        </div>
        <!-- End Left Portion -->
        
        <!-- Right Portion -->
        	<div class="right-portion mauto35">
            <form accept-charset="UTF-8" method="post" action="/contactUsSave.htm" id="clientInfo">
            	<fieldset>
                	<legend>Get In Touch</legend>
                    
                    <div class="short_explanation">* Required Fields</div>
                    <div><span class="error"></span></div>
                    <!--Contact Fields Area-->
                    <div class="container">
    					<label for="name" >Name*: </label><br/>
    					<input type="text" name="name" id="name" required /><br/>
					</div>
                    <div class="container">
                        <label for="email" >Email Id*:</label><br/>
                        <input type="text" name="email" id="email" required /><br/> 
                    </div>
                    <div class="container">
                        <label for="mobileno" >Mobile No.*:</label><br/>
                        <input type="text" name="mobileno" id="mobileno" required /><br/>
                    </div>
                    <div class="container">
                        <label for="subject">Subject:</label><br/>
                        <input type="text" name="subject" id="subject" required /><br/>
                    </div>
                    <div class="container">
                        <label for="message">Message:</label><br/>
                        <textarea rows="10" cols="50" name="message" id="message" required></textarea>
                    </div>
                    <div class="container">
                        <input type="submit" name="Submit" value="Submit" />
                    </div>
					<!--End Contact Fields Area-->
                    
                </fieldset>
            </form>
            <div class="clear"></div>
        </div>
        <!-- End Right Portion -->
        
        <div class="clear"></div>
    </div>  
<!--Content Section-->

<!--Sample Report Div-->
	<div id="dialog" title="Sample Report">
       <div class="borderbox" id="reportCont">
    	<div style="margin: 3px 3px 3px 3px;" class="waterMark" id="plotContent">
        	<div style="margin-bottom:8px; border-bottom:2px solid #C3D9FF; margin:20px 5px; padding-bottom:10px;">
            	<img src="http://images.bestnest.in/best-nest.png" alt="BestNest Real Estate Services Pvt Ltd."><br>
			</div>
            	<table width="656" cellspacing="0" cellpadding="0" border="0" style="padding-bottom: 5px; 
                margin-left: 10px; margin-top: 15px;">
					<tbody>
                    	<tr>
							<td width="150" class="nameLabel">Property Short Name:</td>
							<td width="170">Guest Plot</td>
							<td width="130" class="nameLabel">Plot Number:</td>
							<td width="150" style="padding-right: 15px;">GUP010</td>
						</tr>
						<tr>
                        </tr>
						<tr>
							<td style="vertical-align: top;" class="nameLabel">Address:</td>
							<td colspan="3">
								<table cellspacing="0" cellpadding="0">
									<tbody>
                                    	<tr>
											<td align="left">Sector 127,</td>
										</tr>
                                        <tr>
                                           	<td align="left">Expressway</td>
                                        </tr>
                                        <tr>
                                            <td align="left">Greater Noida</td>
                                        </tr>
                                        <tr>
                                            <td align="left">Uttarpradesh</td>
                                        </tr>
                                        <tr>
                                            <td align="left">201310</td>
                                        </tr>
									</tbody>
                              	</table>
							</td>
						</tr>
					</tbody>
             	</table>
                <div>
                	<img src="http://images.bestnest.in/rowSeparator.gif" alt="Row Separator" style="margin-left: 10px;">
               </div>
                <div id="rateDiv">
					<table width="600" cellspacing="3" cellpadding="3" style="margin-left: 5px;">
						<tbody>
                            <tr>
                                <td width="200px;" style="font-weight: bold;">Visited Date:</td>
                                <td>05-Mar-2015</td>
                            </tr>
                            <tr>
                                <td width="200px;" style="font-weight: bold;">Next Available Report Month:</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td width="200px;" style="font-weight: bold;">Market Rate:</td>
                                <td>Rs. 2500 per Sq. Feet</td>
                            </tr>
                            <tr>
                                <td width="200px;" style="font-weight: bold;">Government Rate:</td>
                                <td>Rs. 900  per Sq. Feet</td>
                            </tr>
						</tbody>
                	</table>
				</div>
                <div id="neighDiv">
					<table width="600" cellspacing="3" cellpadding="3" style="margin-left: 5px;">
					<tbody>
                        <tr>
                            <th class="neighTitle" scope="col" colspan="2">Neighbourhood Updates:</th>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; vertical-align: top; width: 130px;">Educational
                            institutions:</td>
                            <td style="text-align: left; width: 460px;">
                            1. An Amity University is about 0.5 km away from your property. 2. The famous Velammal group of educational institutions is about 4 km away from your property. 3. Many good schools &amp; colleges are situated in Greater Noida which is about 8 to 9 km away from your property. 4. Few government schools are situated nearby which is about 2.5 km away from your property.</td>
                        </tr>
                        <tr>
                            <td colspan="2"><img src="http://images.bestnest.in/rowSeparator.gif" alt="Row Separator" ></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; vertical-align: top; width: 130px;">Hospitals:</td>
                            <td style="text-align: left; width: 460px;">1. Jaypee Hospital (24 hour critical care unit) is just 2 km away from your property. 2. Many good hospitals (i.e. Kailash Hospital, Apollo Hospital) &amp; renowned doctors clinics are in Greater Noida which is about 8 to 9 km away from your property. 3. Few small clinics are also there which is about 2.5 km away from your property.</td>
                        </tr>
                        <tr>
                            <td colspan="2"><img src="http://images.bestnest.in/rowSeparator.gif" alt="Row Separator" ></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; vertical-align: top; width: 130px;">Transportation:</td>
                            <td style="text-align: left; width: 460px;">1. There are both public &amp; private transportation facilities available to reach your property.</td>
                        </tr>
                        <tr>
                            <td colspan="2"><img src="http://images.bestnest.in/rowSeparator.gif" alt="Row Separator" ></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; vertical-align: top; width: 130px;">Entertainment:</td>
                            <td style="text-align: left; width: 460px;">1. Though multiplexes are not in 10 km reach, few ordinary AC &amp; non AC cinema theatres are located within 8 km from your property. 2. Many good restaurants, Shopping complexes, swimming pools, parks are situated in Greater Noida which is about 8 to 9 km away from your property.</td>
                        </tr>
                        <tr>
                            <td colspan="2"><img src="http://images.bestnest.in/rowSeparator.gif" alt="Row Separator" ></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; vertical-align: top; width: 130px;">Miscellaneous:</td>
                            <td style="text-align: left; width: 460px;">1. Nearby Your Property there are many independent houses built in the same layout. Some vacant plots do exist in the layout. A family resides in the house in the plot adjacent to yours. 2. Small clinics, Medical shops, small beauty parlors, mobile service &amp; Xerox shops, two wheeler service shops, petty shops that sell fancy items, grocery items, drinking water bubble tops, stationery, hardware &amp; electrical store etc are available in just 0.5km away from your property. 3. Temple is also within 6 km from your property. 4. Many marriage halls, petrol filling stations are within 6 km reach from your property.</td>
                        </tr>
                        <tr>
                            <td colspan="2"><img src="http://images.bestnest.in/rowSeparator.gif" alt="Row Separator" ></td>
                        </tr>
    
                        <tr>
                            <td style="font-weight: bold; vertical-align: top; width: 130px;">Additional
                            Comments:</td>
                            <td style="text-align: left; width: 460px;">1. Compound wall with grill gate is there in your property with a small shelter inside; your property is locked. Lot of bushes, small trees, creepers, climbers &amp; unwanted plants have grown inside. 2. A branch of a tree touches the electrical cable. So the neighbor gets affected often. The neighbor also said lot of snakes &amp; leeches enter their house through the slots in the compound wall of your property. They want you to do weeding &amp; to close the slots.</td>
                        </tr>
                        <tr>
                            <td colspan="2"><img src="http://images.bestnest.in/rowSeparator.gif" alt="Row Separator" ></td>
                        </tr>
					</tbody>
            	</table>
			</div>
        </div>
    </div>
    </div>
<!--End Sample Report Div-->

<!-- Sample Price Chart -->
	<div class="borderbox" id="dialog1" title="Sample Price Chart">
    <div align="center" class="marginDiv">
        <table cellspacing="0" cellpadding="0" border="0" style="width:600px" class="othsrCont">
				<tbody><tr class="headerTR">
					<th style="width:300px" scope="col">Services</th>
					<th style="width:300px" scope="col" colspan="2">Standard Fee per visit</th>
				</tr>
				<tr valign="middle">
					<th scope="col">&nbsp;</th>
					<th style="width:150px" scope="col">USD</th>
					<th style="width:150px" scope="col">INR</th>
				</tr>
				<tr>
						<td style="padding-left: 10px;white-space:normal">Periodic Inspection</td>
						<td style="text-align: right;padding-right: 60px"><label id="28_USD">$16.32</label>
						</td>
						<td style="text-align: right;padding-right: 50px"><label id="28_INR">Rs.1,000.00</label>
						</td>
					</tr>
				<tr>
						<td style="padding-left: 10px;white-space:normal">Rent Collection &amp; Deposit</td>
						<td style="text-align: right;padding-right: 60px"><label id="30_USD">$8.16</label>
						</td>
						<td style="text-align: right;padding-right: 50px"><label id="30_INR">Rs.500.00</label>
						</td>
					</tr>
				<tr>
						<td style="padding-left: 10px;white-space:normal">Utility Bill Payment</td>
						<td style="text-align: right;padding-right: 60px"><label id="29_USD">$8.16</label>
						</td>
						<td style="text-align: right;padding-right: 50px"><label id="29_INR">Rs.500.00</label>
						</td>
					</tr>
				</tbody></table>
    </div>
    <div class="clear"></div>
</div>
<!-- End Sample Price Chart -->

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
