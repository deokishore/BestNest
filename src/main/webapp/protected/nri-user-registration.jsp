<!DOCTYPE HTML>
<html><head>
<meta charset="utf-8">
<title>User Registration | NRI Services | BestNest Real Estate Services</title>
<meta name="keywords" content="NRI Serives Login Pannel, NRI Services In Home Selection & Home Loan, Login NRI Services, NRI User Registration by BestNest, New User Registration." />
<meta name="description" content="BestNest Provide NRI Services to User For All Information First Login Then See the details."/>
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

<!-- Common Js File -->
<script type="text/javascript" src="http://resources.bestnest.in/js/common.js"></script>
<!-- End Common Js File-->

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
.metro {width:auto;}
.dropdown {width:90%; font-size:12px; margin:0;}
.dropdown .selected, .dropdown li {font-size:14px;}
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
    <div class="logo"> <a href="index.html"><img src="http://images.bestnest.in/best-nest.png" alt="BestNest Real Estate Services Pvt. Ltd." /></a>
      <div class="clear"></div>
    </div>
        <a class="toggleMenu" href="#"><img src="http://images.bestnest.in/nav-icon.png" alt="Menu Items" border="0" /></a>
	  <ul class="nav">
        <li><a href="/nriServices.htm" class="active" title="NRI Services">NRI Services</a></li>
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
              	<a title="Home" href="/">Home</a>
              	<span class="tick"></span>
              </li>
              <li>
              	<a title="NRI Services" href="/nriServices.htm">NRI Services</a>
              	<span class="tick"></span>
              </li>
              <li>
              	New User
             </li>
            </ul>
    		<div class="clear"></div>
  		</div>
        <!--Page Breadcrumbs--> 
    	<!--NRI Box Section-->
        	<div class="nri-content">
                <div class="nrservice-wrapper">
                    <div class="services-wrap marginT15">
                    	<h2><span>User Registration</span></h2>
                        <div class="userContainerText">
                        	<div id="textViewLeft" class="textViewLeft">
                                    <form id="regform" name="regform" method="post" action="#"
									onsubmit="return validate(this);">
                                            <table cellpadding="2" cellspacing="7" class="reg-form">
                                            	<tbody>
                                                    <tr>
                                                    	<td></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3"><span class="headingFontColor">Login
                                                        Information</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                    	<td></td>
                                                    </tr>
                                                    <tr>
                                                        <td width="200px">Username*</td>
                                                        <td width="250px"><input type="text" value="" class="inqsel" id="username" name="username" required autofocus /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Password*</td>
                                                        <td><input type="password" class="inqsel" id="pwd" name="pwd" required /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Confirm Password*</td>
                                                        <td><input type="password" class="inqsel" id="cpwd" name="cpwd" required /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Security Question*</td>
                                                        <td>
                                                        <select class="dropdown inqsel" data-settings='{"cutOff": 12}' id="securityqs" name="securityqs" required />
                                                        	<option value="0" selected>Select Security Question</option>
                                                            <option value="My First Car Make">My First Car Make
                                                            </option>
                                                            <option value="My First School">My First School</option>
                                                            <option value="My Mother's Maiden Name">My Mother's                                                            Maiden Name</option>
                                                        </select>
                                                       	</td>
                                                	</tr>
                                                    <tr>
                                                        <td>Security Answer*</td>
                                                        <td><input type="text" class="inqsel" id="secans" name="secans" required /></td>
                                                    </tr>
                                                    <tr>
                                                    	<td></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3"><span class="headingFontColor">User
                                                        Information</span></td>
                                                    </tr>
                                                    <tr></tr>
                                                    <tr>
                                                        <td>First Name*</td>
                                                        <td><input type="text" class="inqsel" id="fname" name="fname" required /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Middle Name</td>
                                                        <td><input type="text" class="inqsel" id="mname" name="mname" required /></td> 
                                                    </tr>
                                                    <tr>
                                                        <td>Last Name*</td>
                                                        <td><input type="text" class="inqsel" id="lname" name="lname" required /></td>
                                                        <td> 
                                                    </tr>
                                                    <tr>
                                                        <td>Gender*</td>
                                                        <td>
                                                        	<input type="radio" value="male" name="gender" id="gender"> 
                                                            <strong>Male</strong>
                                                            <input type="radio" value="female" id="gender" name="gender"> <strong>Female</strong>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Address*</td>
                                                        <td><input type="text" class="inqsel" id="paddr" name="paddr" required /></td>
                                                    </tr>
                                                    <tr>
                                                    	<td></td>
                                                        <td colspan="2">
                                                        <input type="text" value="" class="inqsel" id="paddr2" name="paddr2" required />
                                                        </td>
                                                	</tr>
                                                    <tr>
                                                        <td>City*</td>
                                                        <td><input type="text" class="inqsel" id="pcity" name="pcity" required /></td>
                                                    </tr>
                                                    <tr>
														<td>Country*</td>
                                                        <td>
                                                            <select onchange="fetchState(this.value);" 
                                                            class="dropdown inqsel" data-settings='{"cutOff": 12}' id="pcountry" name="pcountry" required />
                                                                <option selected="selected">Select Country</option>
                                                                <option value="AFG">Afghanistan</option>
                                                                <option value="ALB">Albania</option>
                                                                <option value="DZA">Algeria</option>
                                                                <option value="ASM">American Samoa</option>
                                                                <option value="AND">Andorra</option>
                                                                <option value="AGO">Angola</option>
                                                                <option value="AIA">Anguilla</option>
                                                                <option value="ATA">Antarctica</option>
                                                                <option value="ATG">Antigua and Barbuda</option>
                                                                <option value="ARG">Argentina</option>
                                                                <option value="ARM">Armenia</option>
                                                                <option value="ABW">Aruba</option>
                                                                <option value="AUS">Australia</option>
                                                                <option value="AUT">Austria</option>
                                                                <option value="AZE">Azerbaijan</option>
                                                                <option value="BHS">Bahamas</option>
                                                                <option value="BHR">Bahrain</option>
                                                                <option value="BGD">Bangladesh</option>
                                                                <option value="BRB">Barbados</option>
                                                                <option value="BLR">Belarus</option>
                                                                <option value="BEL">Belgium</option>
                                                                <option value="BLZ">Belize</option>
                                                                <option value="BEN">Benin</option>
                                                                <option value="BMU">Bermuda</option>
                                                                <option value="BTN">Bhutan</option>
                                                                <option value="BOL">Bolivia</option>
                                                                <option value="BIH">Bosnia and Herzegovina</option>
                                                                <option value="BWA">Botswana</option>
                                                                <option value="BVT">Bouvet Island</option>
                                                                <option value="BRA">Brazil</option>
                                                                <option value="IOT">British Indian Ocean Territory
                                                                </option>
                                                                <option value="BWI">British West Indies</option>
                                                                <option value="BRN">Brunei Darussalam</option>
                                                                <option value="BGR">Bulgaria</option>
                                                                <option value="BFA">Burkina Faso</option>
                                                                <option value="BDI">Burundi</option>
                                                                <option value="KHM">Cambodia</option>
                                                                <option value="CMR">Cameroon</option>
                                                                <option value="CAN">Canada</option>
                                                                <option value="CPV">Cape Verde</option>
                                                                <option value="CYM">Cayman Islands</option>
                                                                <option value="CAF">Central African Republic</option>
                                                                <option value="TCD">Chad</option>
                                                                <option value="CHI">Channel Islands</option>
                                                                <option value="CHL">Chile</option>
                                                                <option value="CHN">China</option>
                                                                <option value="CXR">Christmas Island</option>
                                                                <option value="CCK">Cocos (Keeling) Islands</option>
                                                                <option value="COL">Colombia</option>
                                                                <option value="COM">Comoros</option>
                                                                <option value="COG">Congo</option>
                                                                <option value="COD">Congo, The Democratic Republic
                                                                </option>
                                                                <option value="COK">Cook Islands</option>
                                                                <option value="CRI">Costa Rica</option>
                                                                <option value="CIV">Cote D'Ivoire</option>
                                                                <option value="HRV">Croatia</option>
                                                                <option value="CUB">Cuba</option>
                                                                <option value="CYP">Cyprus</option>
                                                                <option value="CZE">Czech Republic</option>
                                                                <option value="DNK">Denmark</option>
                                                                <option value="DJI">Djibouti</option>
                                                                <option value="DMA">Dominica</option>
                                                                <option value="DOM">Dominican Republic</option>
                                                                <option value="TLS">East Timor</option>
                                                                <option value="TMP">East Timor</option>
                                                                <option value="ECU">Ecuador</option>
                                                                <option value="EGY">Egypt</option>
                                                                <option value="SLV">El Salvador</option>
                                                                <option value="ENG">England</option>
                                                                <option value="GNQ">Equatorial Guinea</option>
                                                                <option value="ERI">Eritrea</option>
                                                                <option value="EST">Estonia</option>
                                                                <option value="ETH">Ethiopia</option>
                                                                <option value="FLK">Falkland Islands (Malvinas)
                                                                </option>
                                                                <option value="FRO">Faroe Islands</option>
                                                                <option value="FJI">Fiji</option>
                                                                <option value="FIN">Finland</option>
                                                                <option value="MKD">Fmr Yugoslav Rep of Macedonia
                                                                </option>
                                                                <option value="FRA">France</option>
                                                                <option value="GUF">French Guiana</option>
                                                                <option value="PYF">French Polynesia</option>
                                                                <option value="ATF">French Southern Territories
                                                                </option>
                                                                <option value="GAB">Gabon</option>
                                                                <option value="GMB">Gambia</option>
                                                                <option value="GEO">Georgia</option>
                                                                <option value="DEU">Germany</option>
                                                                <option value="GHA">Ghana</option>
                                                                <option value="GIB">Gibraltar</option>
                                                                <option value="GRC">Greece</option>
                                                                <option value="GRL">Greenland</option>
                                                                <option value="GRD">Grenada</option>
                                                                <option value="GLP">Guadeloupe</option>
                                                                <option value="GUM">Guam</option>
                                                                <option value="GTM">Guatemala</option>
                                                                <option value="GIN">Guinea</option>
                                                                <option value="GNB">Guinea-Bissau</option>
                                                                <option value="GUY">Guyana</option>
                                                                <option value="HTI">Haiti</option>
                                                                <option value="HMD">Heard and McDonald Islands
                                                                </option>
                                                                <option value="VAT">Holy See (Vatican City State)
                                                                </option>
                                                                <option value="HND">Honduras</option>
                                                                <option value="HKG">Hong Kong</option>
                                                                <option value="HUN">Hungary</option>
                                                                <option value="ISL">Iceland</option>
                                                                <option value="IND">India</option>
                                                                <option value="IDN">Indonesia</option>
                                                                <option value="IRN">Iran (Islamic Republic Of)
                                                                </option>
                                                                <option value="IRQ">Iraq</option>
                                                                <option value="IRL">Ireland</option>
                                                                <option value="IOM">Isle of Man</option>
                                                                <option value="ISR">Israel</option>
                                                                <option value="ITA">Italy</option>
                                                                <option value="JAM">Jamaica</option>
                                                                <option value="JPN">Japan</option>
                                                                <option value="JOR">Jordan</option>
                                                                <option value="KAZ">Kazakstan</option>
                                                                <option value="KEN">Kenya</option>
                                                                <option value="KIR">Kiribati</option>
                                                                <option value="PRK">Korea, Democratic People's Rep
                                                                </option>
                                                                <option value="KOR">Korea, Republic of</option>
                                                                <option value="KWT">Kuwait</option>
                                                                <option value="KGZ">Kyrgyzstan</option>
                                                                <option value="LAO">Lao People's Democratic Rep
                                                                </option>
                                                                <option value="LVA">Latvia</option>
                                                                <option value="LBN">Lebanon</option>
                                                                <option value="LSO">Lesotho</option>
                                                                <option value="LBR">Liberia</option>
                                                                <option value="LBY">Libyan Arab Jamahiriya</option>
                                                                <option value="LIE">Liechtenstein</option>
                                                                <option value="LTU">Lithuania</option>
                                                                <option value="LUX">Luxembourg</option>
                                                                <option value="MAC">Macao</option>
                                                                <option value="MDG">Madagascar</option>
                                                                <option value="MWI">Malawi</option>
                                                                <option value="MYS">Malaysia</option>
                                                                <option value="MDV">Maldives</option>
                                                                <option value="MLI">Mali</option>
                                                                <option value="MLT">Malta</option>
                                                                <option value="MHL">Marshall Islands</option>
                                                                <option value="MTQ">Martinique</option>
                                                                <option value="MRT">Mauritania</option>
                                                                <option value="MUS">Mauritius</option>
                                                                <option value="MYT">Mayotte</option>
                                                                <option value="MEX">Mexico</option>
                                                                <option value="FSM">Micronesia, Federated States
                                                                </option>
                                                                <option value="FXX">Missing</option>
                                                                <option value="MDA">Moldova, Republic of</option>
                                                                <option value="MCO">Monaco</option>
                                                                <option value="MNG">Mongolia</option>
                                                                <option value="MSR">Montserrat</option>
                                                                <option value="MAR">Morocco</option>
                                                                <option value="MOZ">Mozambique</option>
                                                                <option value="MMR">Myanmar</option>
                                                                <option value="NAM">Namibia</option>
                                                                <option value="NRU">Nauru</option>
                                                                <option value="NPL">Nepal</option>
                                                                <option value="NLD">Netherlands</option>
                                                                <option value="ANT">Netherlands Antilles</option>
                                                                <option value="NCL">New Caledonia</option>
                                                                <option value="NZL">New Zealand</option>
                                                                <option value="NIC">Nicaragua</option>
                                                                <option value="NER">Niger</option>
                                                                <option value="NGA">Nigeria</option>
                                                                <option value="NIU">Niue</option>
                                                                <option value="NFK">Norfolk Island</option>
                                                                <option value="NIR">Northern Ireland</option>
                                                                <option value="MNP">Northern Mariana Islands</option>
                                                                <option value="NOR">Norway</option>
                                                                <option value="OMN">Oman</option>
                                                                <option value="PAK">Pakistan</option>
                                                                <option value="PLW">Palau</option>
                                                                <option value="PSE">Palestinian Territory, Occupie
                                                                </option>
                                                                <option value="PAN">Panama</option>
                                                                <option value="PNG">Papua New Guinea</option>
                                                                <option value="PRY">Paraguay</option>
                                                                <option value="PER">Peru</option>
                                                                <option value="PHL">Philippines</option>
                                                                <option value="PCN">Pitcairn</option>
                                                                <option value="POL">Poland</option>
                                                                <option value="PRT">Portugal</option>
                                                                <option value="PRI">Puerto Rico</option>
                                                                <option value="QAT">Qatar</option>
                                                                <option value="REU">Reunion</option>
                                                                <option value="ROM">Romania</option>
                                                                <option value="ROU">Romania</option>
                                                                <option value="RUS">Russian Federation</option>
                                                                <option value="RWA">Rwanda</option>
                                                                <option value="SHN">Saint Helena</option>
                                                                <option value="KNA">Saint Kitts and Nevis</option>
                                                                <option value="LCA">Saint Lucia</option>
                                                                <option value="SPM">Saint Pierre and Miquelon
                                                                </option>
                                                                <option value="WSM">Samoa</option>
                                                                <option value="SMR">San Marino</option>
                                                                <option value="STP">Sao Tome and Principe</option>
                                                                <option value="SAU">Saudi Arabia</option>
                                                                <option value="SCT">Scotland</option>
                                                                <option value="SEN">Senegal</option>
                                                                <option value="YUG">Serbia and Montenegro</option>
                                                                <option value="SYC">Seychelles</option>
                                                                <option value="SLE">Sierra Leone</option>
                                                                <option value="SGP">Singapore</option>
                                                                <option value="SVK">Slovakia</option>
                                                                <option value="SVN">Slovenia</option>
                                                                <option value="SLB">Solomon Islands</option>
                                                                <option value="SOM">Somalia</option>
                                                                <option value="ZAF">South Africa</option>
                                                                <option value="ESP">Spain</option>
                                                                <option value="LKA">Sri Lanka</option>
                                                                <option value="VCT">St Vincent and the Grenadines
                                                                </option>
                                                                <option value="SGS">Sth Georgia &amp; Sth Sandwich Is	                                                                </option>
                                                                <option value="SDN">Sudan</option>
                                                                <option value="SUR">Suriname</option>
                                                                <option value="SJM">Svalbard and Jan Mayen</option>
                                                                <option value="SWZ">Swaziland</option>
                                                                <option value="SWE">Sweden</option>
                                                                <option value="CHE">Switzerland</option>
                                                                <option value="SYR">Syrian Arab Republic</option>
                                                                <option value="TWN">Taiwan, Province of China
                                                                </option>
                                                                <option value="TJK">Tajikistan</option>
                                                                <option value="TZA">Tanzania, United Republic of
                                                                </option>
                                                                <option value="THA">Thailand</option>
                                                                <option value="TGO">Togo</option>
                                                                <option value="TKL">Tokelau</option>
                                                                <option value="TON">Tonga</option>
                                                                <option value="TTO">Trinidad and Tobago</option>
                                                                <option value="TUN">Tunisia</option>
                                                                <option value="TUR">Turkey</option>
                                                                <option value="TKM">Turkmenistan</option>
                                                                <option value="TCA">Turks and Caicos Islands</option>
                                                                <option value="TUV">Tuvalu</option>
                                                                <option value="UGA">Uganda</option>
                                                                <option value="UKR">Ukraine</option>
                                                                <option value="ARE">United Arab Emirates</option>
                                                                <option value="GBR">United Kingdom</option>
                                                                <option value="USA">United States</option>
                                                                <option value="URY">Uruguay</option>
                                                                <option value="UMI">US Minor Outlying Islands
                                                                </option>
                                                                <option value="UZB">Uzbekistan</option>
                                                                <option value="VUT">Vanuatu</option>
                                                                <option value="VEN">Venezuela</option>
                                                                <option value="VNM">Viet Nam</option>
                                                                <option value="VGB">Virgin Islands (British)</option>
                                                                <option value="VIR">Virgin Islands (U.S.)</option>
                                                                <option value="WAL">Wales</option>
                                                                <option value="WLF">Wallis and Futuna Islands
                                                                </option>
                                                                <option value="ESH">Western Sahara</option>
                                                                <option value="YEM">Yemen</option>
                                                                <option value="ZAR">Zaire</option>
                                                                <option value="ZMB">Zambia</option>
                                                                <option value="ZWE">Zimbabwe</option>
                                                                </select>
                                                        	</td>
														</tr>
                                                        <tr>
                                                            <td>State*</td>
                                                            <td>
                                                            	<input type="text" class="inqsel" id="pstate" name="pstate" required /> 
                                                            </td>
                                                        </tr>
                                                        <tr>
															<td>Zip Code</td>
                                                            <td colspan="2">
                                                                <input type="text" class="inqsel" id="pzipcode" name="pzipcode" required />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Phone*</td>
                                                            <td>
                                                            <input type="text" class="inqsel" id="pphone" name="pphone" required />
                                                            </td>
                                                    	</tr>
                                                        <tr>
                                                            <td>Email*</td>
                                                            <td>
                                                            <input type="text" class="inqsel" id="pemail" name="pemail" required /></td>
														</tr>
                                                </tbody>
                                            </table>
                                            <table border="0" class="terms-condition">
                                            	<tbody>
                                                	<tr>
                                                        <td align="left">
                                                        	<div class="marginT15">
                                                            <input type="checkbox" id="termid" name="term">&nbsp;
                                                        	I Accept the 
                                                        	<a href="javascript:void(0);">Terms and Conditions </a> 
                                                            </div>
                                                       	</td>
                                                        <td style="padding-left:152px;padding-right:14px">
                                                <button value="Register" class="btn b yellow marginL5 marginT15" type="submit">	                                                	<span>Register</span>
                                                </button>
                                                        </td>
                                                        <td align="left">
                                                        	<div class="error" id="eterm"></div>
														</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                    </form>                       
                                <div class="clear"></div>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                                         
                	<div class="clear"></div>
                </div>
                <div class="clear"></div>
            </div>
        <!--End NRI Box Section-->
        <!--Left Portion-->
        <div class="left-portion">
            <div class="clear"></div>
        </div>
        <!--Left Portion-->
        
        <!--Right Portion-->
        <div class="right-portion mauto35">
            <div class="clear"></div>
        </div>
        <!--Right Portion-->
        <div class="clear"></div>
    </div>  
	<div class="clear"></div>
<!--Content Section-->

<!--Developers Section-->

<!--Developers Section--> 

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
