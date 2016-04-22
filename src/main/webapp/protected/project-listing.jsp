<!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">
    <title> Listing View Of Projects in bestnest | BestNest Real Estate Services</title>
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

  ga('create', 'UA-59446819-2', 'auto');
  ga('send', 'pageview');

</script>
<!-- End Google Analytics -->

<!--End Js Scripts-->

<style>
.hidefilter {display:none;}
.showfilter {display:block;}
</style>
<link rel="shortcut icon" type="image/ico" href="http:images.bestnest.in/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="http:images.bestnest.in/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="http:images.bestnest.in/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="http:images.bestnest.in/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="http:images.bestnest.in/ico/apple-touch-icon-57-precomposed.png">
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
    <div class="logo"> <a href="/"><img src="http://images.bestnest.in/best-nest.png" alt="BestNest Real Estate Services Pvt Ltd." /></a>
              <div class="clear"></div>
            </div>

              <a class="toggleMenu" href="#"><img src="http://images.bestnest.in/nav-icon.png" alt="Menu Items" border="0" /></a>
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

<div class="clear"></div>
<div class="inner-form">
          <div class="listing-form-box">
    <form action="">
              <table width="100%" border="0">
        <tr>
                  <td width="" align="left" valign="middle">
                  <input type="text" name="textfield" id="textfield" placeholder="New Delhi/NCR"></td>
                  <td width="" align="left" valign="middle">
               <select id="select-beast" required class="demo-default" placeholder="Select a person...">
							
      <option value="">Min Price</option>
              <option value="10000">$10,000</option>
        <option value="20000">$20,000</option>
        <option value="30000">$30,000</option>
        <option value="50000">$50,000</option>
        <option value="100000">$100,000</option>
        <option value="130000">$130,000</option>
        <option value="150000">$150,000</option>
        <option value="200000">$200,000</option>
        <option value="250000">$250,000</option>
        <option value="300000">$300,000</option>
        <option value="350000">$350,000</option>
        <option value="400000">$400,000</option>
        <option value="450000">$450,000</option>
        <option value="500000">$500,000</option>
        <option value="550000">$550,000</option>
        <option value="600000">$600,000</option>
        <option value="650000">$650,000</option>
        <option value="700000">$700,000</option>
        <option value="750000">$750,000</option>
        <option value="800000">$800,000</option>
        <option value="850000">$850,000</option>
        <option value="900000">$900,000</option>
        <option value="950000">$950,000</option>
        <option value="1000000">$1M</option>
        <option value="1100000">$1.1M</option>
        <option value="1200000">$1.2M</option>
        <option value="1250000">$1.25M</option>
        <option value="1400000">$1.4M</option>
        <option value="1500000">$1.5M</option>
        <option value="1600000">$1.6M</option>
        <option value="1700000">$1.7M</option>
        <option value="1750000">$1.75M</option>
        <option value="1800000">$1.8M</option>
        <option value="1900000">$1.9M</option>
        <option value="2000000">$2M</option>
        <option value="2250000">$2.25M</option>
        <option value="2500000">$2.5M</option>
        <option value="2750000">$2.75M</option>
        <option value="3000000">$3M</option>
        <option value="3500000">$3.5M</option>
        <option value="4000000">$4M</option>
        <option value="5000000">$5M</option>
        <option value="10000000">$10M</option>
        <option value="20000000">$20M</option>
            <option class="hideFully noMatch" value="">No Match</option>
  
						</select></td>
                  <td width="" align="left" valign="middle"><select name="select-beast" class="demo-default" id="select-beast2" required placeholder="Select a person...">
                    <option value="">Max Price</option>
                    <option value="10000">$10,000</option>
                    <option value="20000">$20,000</option>
                    <option value="30000">$30,000</option>
                    <option value="50000">$50,000</option>
                    <option value="100000">$100,000</option>
                    <option value="130000">$130,000</option>
                    <option value="150000">$150,000</option>
                    <option value="200000">$200,000</option>
                    <option value="250000">$250,000</option>
                    <option value="300000">$300,000</option>
                    <option value="350000">$350,000</option>
                    <option value="400000">$400,000</option>
                    <option value="450000">$450,000</option>
                    <option value="500000">$500,000</option>
                    <option value="550000">$550,000</option>
                    <option value="600000">$600,000</option>
                    <option value="650000">$650,000</option>
                    <option value="700000">$700,000</option>
                    <option value="750000">$750,000</option>
                    <option value="800000">$800,000</option>
                    <option value="850000">$850,000</option>
                    <option value="900000">$900,000</option>
                    <option value="950000">$950,000</option>
                    <option value="1000000">$1M</option>
                    <option value="1100000">$1.1M</option>
                    <option value="1200000">$1.2M</option>
                    <option value="1250000">$1.25M</option>
                    <option value="1400000">$1.4M</option>
                    <option value="1500000">$1.5M</option>
                    <option value="1600000">$1.6M</option>
                    <option value="1700000">$1.7M</option>
                    <option value="1750000">$1.75M</option>
                    <option value="1800000">$1.8M</option>
                    <option value="1900000">$1.9M</option>
                    <option value="2000000">$2M</option>
                    <option value="2250000">$2.25M</option>
                    <option value="2500000">$2.5M</option>
                    <option value="2750000">$2.75M</option>
                    <option value="3000000">$3M</option>
                    <option value="3500000">$3.5M</option>
                    <option value="4000000">$4M</option>
                    <option value="5000000">$5M</option>
                    <option value="10000000">$10M</option>
                    <option value="20000000">$20M</option>
                    <option class="hideFully noMatch" value="">No Match</option>
                  </select></td>
                  <td width="" align="left" valign="middle"><select>
      <option value="">All Beds</option>
      <option value="0">0+</option>
      <option value="1">1+</option>
      <option value="2">2+</option>
      <option value="3">3+</option>
      <option value="4">4+</option>
      <option value="5">5+</option>
    </select></td>
                  <td width="" align="left" valign="middle">
                    <select name="select" id="select" class="property-type">
                      <option>Property Type</option>
                      <option>Option 1</option>
                      <option>Option2</option>
                      <option>Option 3</option>
                  </select></td>
                  <td width="" align="right" valign="middle"><input type="submit" name="button" id="button" value="Save Search"></td>
                </tr>
      </table>
            </form>
          
            
    <div class="clear"></div>
  </div>
          <div class="clear"></div>
        </div>
<div class="clear"></div>

<!--Breadcrumb-->
<div class="breadcrumb">
          <div class="listing">
    <div class="heading"> 2 / 3 / 4  BHK Residential Apartments
              <div class="clear"></div>
            </div>
    <div class="right-portion">
              <div class="listing-box">
        <ul>
                  <li><a href="project-listing.jsp"><img src="images/list-icon.png" alt="List View" /></a></li>
                  <li><a href="project-grid.jsp"><img src="images/grid-icon.png" alt="Grid View" /></a></li>
                </ul>
        <div class="clear"></div>
      </div>
              <div class="pagination">
        <ul>
                  <li><a href="#">First</a></li>
                  <li><a href="#">Previous</a></li>
                  <li><a href="#">1</a></li>
                  <li><a href="#">2</a></li>
                  <li><a href="#" class="active">3</a></li>
                  <li><a href="#">4</a></li>
                  <li><a href="#">5</a></li>
                  <li><a href="#">Next</a></li>
                </ul>
        <div class="clear"></div>
      </div>
              <div class="clear"></div>
            </div>
    <div class="clear"></div>
  </div>
          <div class="clear"></div>
        </div>
<!--Breadcrumb-->
<div class="clear"></div>

<!--Hot Offers-->
<div class="hot-project">
          <!--<h2>Hot Project</h2>-->
          <div class="clear"></div>
          <ul id="flexiselDemo4">
    <li><a href="#"><img src="images/hot-project.jpg" alt="Hot Projects" />
      <h3>Amrapali Centurian</h3>
      <div class="features"> Type : 2 BHK</div>
      <div class="features">Sizes : 1055 sq. ft.</div>
      <div class="features">Price : 20 Lac(S)</div>
      <div class="features">Sector 79, Noida</div>
      </a> </li>
    <li><a href="#"><img src="images/hot-project.jpg" alt="Hot Projects" />
      <h3>Amrapali Centurian</h3>
      <div class="features"> Type : 2 BHK</div>
      <div class="features">Sizes : 1055 sq. ft.</div>
      <div class="features">Price : 20 Lac(S)</div>
      <div class="features">Sector 79, Noida</div>
      </a> </li>
    <li><a href="#"><img src="images/hot-project.jpg" alt="Hot Projects" />
      <h3>Amrapali Centurian</h3>
      <div class="features"> Type : 2 BHK</div>
      <div class="features">Sizes : 1055 sq. ft.</div>
      <div class="features">Price : 20 Lac(S)</div>
      <div class="features">Sector 79, Noida</div>
      </a> </li>
    <li><a href="#"><img src="images/hot-project.jpg" alt="Hot Projects" />
      <h3>Amrapali Centurian</h3>
      <div class="features"> Type : 2 BHK</div>
      <div class="features">Sizes : 1055 sq. ft.</div>
      <div class="features">Price : 20 Lac(S)</div>
      <div class="features">Sector 79, Noida</div>
      </a> </li>
    <li><a href="#"><img src="images/hot-project.jpg" alt="Hot Projects" />
      <h3>Amrapali Centurian</h3>
      <div class="features"> Type : 2 BHK</div>
      <div class="features">Sizes : 1055 sq. ft.</div>
      <div class="features">Price : 20 Lac(S)</div>
      <div class="features">Sector 79, Noida</div>
      </a> </li>
  </ul>
          <div class="clear"></div>
        </div>
<!--Hot Offers--> 

<!--Main Section-->
<div class="project-sections">
          <div class="left-portion">
    <div class="p-detail">
              <div class="project-list-box">
        <div class="head"> Amrapali Centurian Park <br>
                  <span>Address : Sector 79, Noida</span>
                  <div class="clear"></div>
                </div>
        <div class="location">
                  <div class="left">
            <div id="demo2" class="webwidget_slideshow_dot">
                      <ul>
                <li><a href="link1"><img src="images/gall-img.jpg" width="178" height="124" alt="slideshow_large"/></a></li>
                <li><a href="link2"><img src="images/gall-img.jpg" width="178" height="124" alt="slideshow_large"/></a></li>
                <li><a href="link3"><img src="images/gall-img.jpg" width="178" height="124" alt="slideshow_large"/></a></li>
                <li><a href="link4"><img src="images/gall-img.jpg" width="178" height="124" alt="slideshow_large"/></a></li>
              </ul>
                      <div style="clear: both"></div>
                    </div>
            <ul>
                      <strong>Type of Property</strong>
                      <li>3 Bedrooms</li>
                      <li>3 Baths</li>
                      <li>Sizes 1055 sq.ft.</li>
                      <li>Price : 9 Lac(s)</li>
                    </ul>
            <div class="clear"></div>
          </div>
                  <div class="right"> <strong>Address</strong><br>
            Sector 94, Noida<br>
            <b>Mob No : </b>+91-9990808756<br>
            <b>Ph No :</b> +909 02 87078300<br>
            <b>E-mail</b> : <a href="#">test@gmail.com</a>
            <div class="clear"></div>
          </div>
          
          
          
          <div class="right last"> 
         <p> Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content </p>
          
            <div class="clear"></div>
          </div>
          
                  <div class="clear"></div>
                  <div class="more-property"> For more property from noida visit <a href="#">www.bestnest.com</a>
            <div class="clear"></div>
          </div>
                  <div class="view-details"> <a href="project-detail.jsp">View Details <img src="images/view-icon-png.png" alt="View Details" border="0" align="absmiddle" /></a>
            <div class="clear"></div>
          </div>
                  <div class="clear"></div>
                </div>
        <div class="clear"></div>
      </div>
              <div class="clear"></div>
            </div>
    
    <div class="p-detail">
              <div class="project-list-box">
        <div class="head"> Amrapali Centurian Park <br>
                  <span>Address : Sector 79, Noida</span>
                  <div class="clear"></div>
                </div>
        <div class="location">
                  <div class="left">
            <div id="demo3" class="webwidget_slideshow_dot">
                      <ul>
                <li><a href="link1"><img src="images/gall-img.jpg" width="178" height="124" alt="slideshow_large"/></a></li>
                <li><a href="link2"><img src="images/gall-img.jpg" width="178" height="124" alt="slideshow_large"/></a></li>
                <li><a href="link3"><img src="images/gall-img.jpg" width="178" height="124" alt="slideshow_large"/></a></li>
                <li><a href="link4"><img src="images/gall-img.jpg" width="178" height="124" alt="slideshow_large"/></a></li>
              </ul>
                      <div style="clear: both"></div>
                    </div>
            <ul>
                      <strong>Type of Property</strong>
                      <li>3 Bedrooms</li>
                      <li>3 Baths</li>
                      <li>Sizes 1055 sq.ft.</li>
                      <li>Price : 9 Lac(s)</li>
                    </ul>
            <div class="clear"></div>
          </div>
                  <div class="right"> <strong>Address</strong><br>
            Sector 94, Noida<br>
            <b>Mob No : </b>+91-9990808756<br>
            <b>Ph No :</b> +909 02 87078300<br>
            <b>E-mail</b> : <a href="#">test@gmail.com</a>
            <div class="clear"></div>
          </div>
          
          
          
          <div class="right last"> 
         <p> Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content </p>
          
            <div class="clear"></div>
          </div>
          
                  <div class="clear"></div>
                  <div class="more-property"> For more property from noida visit <a href="#">www.bestnest.com</a>
            <div class="clear"></div>
          </div>
                  <div class="view-details"> <a href="project-detail.jsp">View Details <img src="images/view-icon-png.png" alt="View Details" border="0" align="absmiddle" /></a>
            <div class="clear"></div>
          </div>
                  <div class="clear"></div>
                </div>
        <div class="clear"></div>
      </div>
              <div class="clear"></div>
            </div>




<div class="p-detail">
              <div class="project-list-box">
        <div class="head"> Amrapali Centurian Park <br>
                  <span>Address : Sector 79, Noida</span>
                  <div class="clear"></div>
                </div>
        <div class="location">
                  <div class="left">
            <div id="demo4" class="webwidget_slideshow_dot">
                      <ul>
                <li><a href="link1"><img src="images/gall-img.jpg" width="178" height="124" alt="slideshow_large"/></a></li>
                <li><a href="link2"><img src="images/gall-img.jpg" width="178" height="124" alt="slideshow_large"/></a></li>
                <li><a href="link3"><img src="images/gall-img.jpg" width="178" height="124" alt="slideshow_large"/></a></li>
                <li><a href="link4"><img src="images/gall-img.jpg" width="178" height="124" alt="slideshow_large"/></a></li>
              </ul>
                      <div style="clear: both"></div>
                    </div>
            <ul>
                      <strong>Type of Property</strong>
                      <li>3 Bedrooms</li>
                      <li>3 Baths</li>
                      <li>Sizes 1055 sq.ft.</li>
                      <li>Price : 9 Lac(s)</li>
                    </ul>
            <div class="clear"></div>
          </div>
                  <div class="right"> <strong>Address</strong><br>
            Sector 94, Noida<br>
            <b>Mob No : </b>+91-9990808756<br>
            <b>Ph No :</b> +909 02 87078300<br>
            <b>E-mail</b> : <a href="#">test@gmail.com</a>
            <div class="clear"></div>
          </div>
          
          
          
          <div class="right last"> 
         <p> Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content </p>
          
            <div class="clear"></div>
          </div>
          
                  <div class="clear"></div>
                  <div class="more-property"> For more property from noida visit <a href="#">www.bestnest.com</a>
            <div class="clear"></div>
          </div>
                  <div class="view-details"> <a href="project-detail.jsp">View Details <img src="images/view-icon-png.png" alt="View Details" border="0" align="absmiddle" /></a>
            <div class="clear"></div>
          </div>
                  <div class="clear"></div>
                </div>
        <div class="clear"></div>
      </div>
              <div class="clear"></div>
            </div>
            
            
            
            
            <div class="p-detail">
              <div class="project-list-box">
        <div class="head"> Amrapali Centurian Park <br>
                  <span>Address : Sector 79, Noida</span>
                  <div class="clear"></div>
                </div>
        <div class="location">
                  <div class="left">
            <div id="demo5" class="webwidget_slideshow_dot">
                      <ul>
                <li><a href="link1"><img src="images/gall-img.jpg" width="178" height="124" alt="slideshow_large"/></a></li>
                <li><a href="link2"><img src="images/gall-img.jpg" width="178" height="124" alt="slideshow_large"/></a></li>
                <li><a href="link3"><img src="images/gall-img.jpg" width="178" height="124" alt="slideshow_large"/></a></li>
                <li><a href="link4"><img src="images/gall-img.jpg" width="178" height="124" alt="slideshow_large"/></a></li>
              </ul>
                      <div style="clear: both"></div>
                    </div>
            <ul>
                      <strong>Type of Property</strong>
                      <li>3 Bedrooms</li>
                      <li>3 Baths</li>
                      <li>Sizes 1055 sq.ft.</li>
                      <li>Price : 9 Lac(s)</li>
                    </ul>
            <div class="clear"></div>
          </div>
                  <div class="right"> <strong>Address</strong><br>
            Sector 94, Noida<br>
            <b>Mob No : </b>+91-9990808756<br>
            <b>Ph No :</b> +909 02 87078300<br>
            <b>E-mail</b> : <a href="#">test@gmail.com</a>
            <div class="clear"></div>
          </div>
          
          
          
          <div class="right last"> 
         <p> Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content Loreum ipsum dummy content </p>
          
            <div class="clear"></div>
          </div>
          
                  <div class="clear"></div>
                  <div class="more-property"> For more property from noida visit <a href="#">www.bestnest.com</a>
            <div class="clear"></div>
          </div>
                  <div class="view-details"> <a href="project-detail.jsp">View Details <img src="images/view-icon-png.png" alt="View Details" border="0" align="absmiddle" /></a>
            <div class="clear"></div>
          </div>
                  <div class="clear"></div>
                </div>
        <div class="clear"></div>
      </div>
              <div class="clear"></div>
            </div>    
            
            
            
            
            
            
    <div class="clear"></div>
  </div>
          <!--<div class="right-portion">
    <div class="get-in-touch">
              <h2>Get in Touch with BestNest</h2>
              <form action="" method="get">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
            <td><input name="" type="text" placeholder="Name" required></td>
          </tr>
                  <tr>
            <td><input name="input" type="text" placeholder="Email ID" required></td>
          </tr>
                  <tr>
            <td><input name="input2" type="text" placeholder="Phone" required></td>
          </tr>
                  <tr>
            <td><label for="textarea"></label>
                      <textarea name="textarea" id="textarea" cols="45" rows="5"></textarea></td>
          </tr>
                  <tr>
            <td><input type="submit" name="button" id="button" value="Send"></td>
          </tr>
                </table>
      </form>
              <div class="clear"></div>
            </div>
    <div class="resources">
              <h2>resources</h2>
              <ul>
        <li class="homeloan"> <a href="#">
          <h4>Home Loan</h4>
          Get advise on home loan and EMI calculations. </a> </li>
          
          
          
          <li class="nri"> <a href="#">
          <h4>NRI Services</h4>
          
Get advise on laws for NRI Customers and avail services of our dedicated NRI Services team. </a> </li>
          
          
          
          <li class="bestnest"> <a href="#">
          <h4>Buying with BestNest</h4>
         
Visit our buying guide to use our services to buy Property.</a> </li>
          
          
          <li class="tag"> <a href="#">
          <h4>Selling with BestNest</h4>
         
Visit our Selling guide to use our services to sell Property. </a> </li>
          
          
          <li class="like"> <a href="#">
          <h4>Recommend BestNest</h4>
          
Found the website useful, refer our website to your friends. </a> </li>
          
          <li class="partner"> <a href="#">
          <h4>Partner Websites BestNest</h4>
          
Aims Golf Avenue-II, Sec- 75, Parsvnath Exotica Arthala, G.T Road</a> </li>
      </ul>
              <div class="clear"></div>
            </div>
            
            
            
            <div class="tools">
            <h2>tools</h2>
            <ul>
            <li><a href="#">EMI Calculator</a></li>
            <li><a href="#">Area Calculator</a></li>
            <li><a href="#">Stamp Duty Calculator</a></li>
            <li><a href="#">Loan Eligiblity Calculator</a></li>
            <li><a href="#">Check List for Purchase</a></li>
            <li><a href="#">Legal Advice</a></li>
            <li><a href="#">Taxation Query</a></li>
            </ul>
            
            
            <div class="clear"></div>
            </div>
            
            
            <div class="advertisement"> <a href="#"><img src="images/advertisement.jpg" alt="" border="0" /></a>
            </div>
            
            
    <div class="clear"></div>
  </div> -->
          <div class="clear"></div>
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
