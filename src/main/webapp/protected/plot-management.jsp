<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE HTML>
<html>
   <head>
      <meta charset="utf-8">
      <title>Plot Management | NRI Services | BestNest Real Estate Services</title>
      <meta name="description" content="Plot Management Is a part of NRI Service,Plot management gives peace of mind and gives opportunity take a decision based on the growth around the plot, We have a variety of plot management services which are customizable under various packages." />
      <meta name="keywords" content="Plot Management in NRI Services, Customize your package and options in NRi Service Under NRI Section, Silver Package, Four Times A Year,Gold Package, Six Times A Year, Platinum Package, Twelve Times A Year." />
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
      <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
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
         }(document, 'script', 'facebook-jssdk'));
      </script>
      <!-- End Facebook Plugin -->
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
               <a title="NRI Services" href="/nriServices">NRI Services</a>
               <span class="tick"></span>
            </li>
            <li>
               Plot Management
            </li>
         </ul>
         <div class="clear"></div>
      </div>
      <!--Page Breadcrumbs--> 
      <!--NRI Box Section-->
      <div class="nri-content">
         <div class="page-title">
            <h1>Plot Management</h1>
            <div style="width:14%; margin-top:10px;" class="fl">
               <img alt="Plot Management" src="http://images.bestnest.in/nri-services/nri-other/nri-service1.png" width="130" height="110">                    
            </div>
            <div style="width:86%" class="fr">
               <p>Plot management gives peace of mind and gives opportunity take a decision based on the growth around the plot. We have a variety of plot management services which are customizable under various packages. We make periodic visits to your property and furnish reports along with digital pictures. We also keep you abreast with the infrastructure improvements around your plot like upcoming schools, shopping malls, etc. You name it, we have it.<br>
               </p>
            </div>
            <div class="clear"></div>
         </div>


         <div id="plans" class="overview-layout-wrapper">
            <section class="product-container container">
               <div class="section-number-wrapper">
                  <h2>Select an annual plan</h2>
               </div>
               <div class="row">
                  <div class="col-md-12 col-sm-6">
                     <div class="product-card-flex-wrapper">
                        <div id="product_card_essentials" class="product-card product-card-essentials ">
                           <div class="name-panel">
                              <p class="plan-name txt-large">Web Development</p>
                           </div>
                           <div class="info-panel">
                              <div class="info-panel-interior">
                                 <div class="title-price-row">
                                    <p class="plan-price"><span class="amount">$199</span>/<span class="occurrence">mo</span></p>
                                 </div>
                                 <div class="plan-features">
                                    <ul>
                                       <li class="available">Client Requirement</li>
                                       <li class="available">On Page Optimization</li>
                                       <li class="available">Off Page Optimization</li>
                                       <li class="unavailable">Social Media Optimization</li>
                                       <li class="unavailable">Weekly/Monthly Report</li>
                                       <li class="unavailable">Local Map Listing</li>
                                       <li class="unavailable">Maintenance & Strategy Review</li>
                                    </ul>
                                 </div>
                                 <div class="plan-details-row">
                                    <div class="plan-detail-block">
                                       <span class="caption">Contacts</span>
                                       <span class="threshold contacts">2,500</span>
                                    </div>
                                    <div class="plan-detail-block">
                                       <span class="caption">Emails/Month</span>
                                       <span class="threshold emails">12,500</span>
                                    </div>
                                    <div class="plan-detail-block">
                                       <span class="caption">Users</span>
                                       <span class="threshold users">3</span>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="selection-bar">
                              <div class="selection-circle"></div>
                           </div>
                        </div>
                        <div id="product_card_essentials" class="product-card product-card-essentials ">
                           <div class="name-panel">
                              <p class="plan-name txt-large">Web Development & SEO</p>
                           </div>
                           <div class="info-panel">
                              <div class="info-panel-interior">
                                 <div class="title-price-row">
                                    <p class="plan-price"><span class="amount">$199</span>/<span class="occurrence">mo</span></p>
                                 </div>
                                 <div class="plan-features">
                                    <ul>
                                       <li class="available">Client Requirement</li>
                                       <li class="available">On Page Optimization</li>
                                       <li class="available">Off Page Optimization</li>
                                       <li class="available">Social Media Optimization</li>
                                       <li class="available">Weekly/Monthly Report</li>
                                       <li class="unavailable">Local Map Listing</li>
                                       <li class="unavailable">Maintenance & Strategy Review</li>
                                    </ul>
                                 </div>
                                 <div class="plan-details-row">
                                    <div class="plan-detail-block">
                                       <span class="caption">Contacts</span>
                                       <span class="threshold contacts">2,500</span>
                                    </div>
                                    <div class="plan-detail-block">
                                       <span class="caption">Emails/Month</span>
                                       <span class="threshold emails">12,500</span>
                                    </div>
                                    <div class="plan-detail-block">
                                       <span class="caption">Users</span>
                                       <span class="threshold users">3</span>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="selection-bar">
                              <div class="selection-circle"></div>
                           </div>
                        </div>
                        <div id="product_card_essentials" class="product-card product-card-essentials selected">
                           <div class="name-panel">
                              <p class="plan-name txt-large">Complete</p>
                           </div>
                           <div class="info-panel">
                              <div class="info-panel-interior">
                                 <div class="title-price-row">
                                    <p class="plan-price"><span class="amount">$199</span>/<span class="occurrence">mo</span></p>
                                 </div>
                                 <div class="plan-features">
                                    <ul>
                                       <li class="available">Client Requirement</li>
                                       <li class="available">On Page Optimization</li>
                                       <li class="available">Off Page Optimization</li>
                                       <li class="available">Social Media Optimization</li>
                                       <li class="available">Weekly/Monthly Report</li>
                                       <li class="available">Local Map Listing</li>
                                       <li class="available">Maintenance & Strategy Review</li>
                                    </ul>
                                 </div>
                                 <div class="plan-details-row">
                                    <div class="plan-detail-block">
                                       <span class="caption">Contacts</span>
                                       <span class="threshold contacts">2,500</span>
                                    </div>
                                    <div class="plan-detail-block">
                                       <span class="caption">Emails/Month</span>
                                       <span class="threshold emails">12,500</span>
                                    </div>
                                    <div class="plan-detail-block">
                                       <span class="caption">Users</span>
                                       <span class="threshold users">3</span>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="selection-bar">
                              <div class="selection-circle"></div>
                           </div>
                        </div>
                        <div id="product_card_essentials" class="product-card product-card-essentials ">
                           <div class="name-panel">
                              <p class="plan-name txt-large">SEO & PPC</p>
                           </div>
                           <div class="info-panel">
                              <div class="info-panel-interior">
                                 <div class="title-price-row">
                                    <p class="plan-price"><span class="amount">$199</span>/<span class="occurrence">mo</span></p>
                                 </div>
                                 <div class="plan-features">
                                    <ul>
                                       <li class="available">Client Requirement</li>
                                       <li class="available">On Page Optimization</li>
                                       <li class="available">Off Page Optimization</li>
                                       <li class="available">Social Media Optimization</li>
                                       <li class="available">Weekly/Monthly Report</li>
                                       <li class="available">Local Map Listing</li>
                                       <li class="available">Maintenance & Strategy Review</li>
                                    </ul>
                                 </div>
                                 <div class="plan-details-row">
                                    <div class="plan-detail-block">
                                       <span class="caption">Contacts</span>
                                       <span class="threshold contacts">2,500</span>
                                    </div>
                                    <div class="plan-detail-block">
                                       <span class="caption">Emails/Month</span>
                                       <span class="threshold emails">12,500</span>
                                    </div>
                                    <div class="plan-detail-block">
                                       <span class="caption">Users</span>
                                       <span class="threshold users">3</span>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="selection-bar">
                              <div class="selection-circle"></div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <p class="text-center gap-top-15 gap-bottom-5">All plans with annual contract, billed monthly.</p>
               <p class="text-center">Need more options? Add-ons are available. Call <a href="tel:1234567890">+1&nbsp;234&nbsp;567&nbsp;890</a> for details.</p>
               <div class="form-group center">
                  <a href="#" class="btn btn-primary btn-lg">Get Free Quote</a>
               </div>
            </section>
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
                     <input type="hidden" value="E" id="selOthrOpt" name="selOthrOpt">
                     <input type="hidden" id="otherprodName" name="productName" value="Plot Management">	
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
                              <td class="alt">Encumbrance Certificate</td>
                              <td>
                                 <label id="141_USD">$32.55</label>
                                 <script>
                                    document.getElementById('141_USD').innerHTML=formatUSCurrency
                                    (32.546785600793704);
                                 </script>
                              </td>
                              <td>
                                 <label id="141_INR">2,000.00</label>
                                 <script>
                                    document.getElementById('141_INR').innerHTML=formatIndiaCurrency(2000.0);
                                 </script>
                              </td>
                              <td>As Per Estimate</td>
                              <td>
                                 <label>
                                 <input type="checkbox" id="otherService" name="otherService" onclick="chngOthrServAmt(this,'totalAmtOthrINR','totalAmtOthrUSD',61.45,'totINR','selOthrOpt','11',61.45)" value="2000.0"/> 		                                    </label>
                              </td>
                           </tr>
                           <tr>
                              <td class="alt">Fencing</td>
                              <td>
                                 <label id="136_USD">32.546785600793704</label>
                                 <script>
                                    document.getElementById('136_USD').innerHTML=formatUSCurrency
                                    (32.546785600793704);
                                 </script>
                              </td>
                              <td>
                                 <label id="136_INR">2000.0</label>
                                 <script>
                                    document.getElementById('136_INR').innerHTML=formatIndiaCurrency(2000.0);
                                 </script>
                              </td>
                              <td>As Per Estimate</td>
                              <td>
                                 <label>
                                 <input	type="checkbox" align="middle" name="otherService" id="otherService" value="2000.0" onclick="chngOthrServAmt(this,'totalAmtOthrINR','totalAmtOthrUSD',61.45,'totINR','selOthrOpt','6',61.45)"/>
                                 </label>
                              </td>
                           </tr>
                           <tr>
                              <td class="alt">Legal Opinion</td>
                              <td>
                                 <label id="138_USD">16.27339292800396852</label>
                                 <script>
                                    document.getElementById('138_USD').innerHTML=formatUSCurrency
                                    (16.273392800396852);
                                                                 
                                 </script>
                              </td>
                              <td>
                                 <label id="138_INR">1000.0</label>
                                 <script>
                                    document.getElementById('138_INR').innerHTML=formatIndiaCurrency(1000.0);
                                 </script>
                              </td>
                              <td>As Per Estimate</td>
                              <td>
                                 <label>
                                 <input	type="checkbox" align="middle" name="otherService" id="otherService" value="1000.0" onclick="chngOthrServAmt(this,'totalAmtOthrINR','totalAmtOthrUSD',61.45,'totINR','selOthrOpt','7',61.45)"/>
                                 </label>
                              </td>
                           </tr>
                           <tr>
                              <td class="alt">Mutation Of Property</td>
                              <td>
                                 <label id="132_USD">32.546785600793704</label>
                                 <script>
                                    document.getElementById('132_USD').innerHTML=formatUSCurrency
                                    (32.546785600793704);
                                 </script>
                              </td>
                              <td>
                                 <label id="132_INR">2000.0</label>
                                 <script>
                                    document.getElementById('132_INR').innerHTML=formatIndiaCurrency(2000.0);
                                 </script>
                              </td>
                              <td>As Per Estimate</td>
                              <td>
                                 <label>
                                 <input	type="checkbox" align="middle" name="otherService" id="otherService" value="2000.0" onclick="chngOthrServAmt(this,'totalAmtOthrINR','totalAmtOthrUSD',61.45,'totINR','selOthrOpt','12',61.45)"/>
                                 </label>
                              </td>
                           </tr>
                           <tr>
                              <td class="alt">Name Board Installation</td>
                              <td>
                                 <label id="140_USD">65.09357120158741</label>
                                 <script>
                                    document.getElementById('140_USD').innerHTML=formatUSCurrency
                                    (65.09357120158741);
                                 </script>
                              </td>
                              <td>
                                 <label id="140_INR">4000.0</label>
                                 <script>
                                    document.getElementById('140_INR').innerHTML=formatIndiaCurrency(4000.0);
                                 </script>
                              </td>
                              <td>As Per Estimate</td>
                              <td>
                                 <label>
                                 <input	type="checkbox" align="middle" name="otherService" id="otherService" value="4000.0" onclick="chngOthrServAmt(this,'totalAmtOthrINR','totalAmtOthrUSD',61.45,'totINR','selOthrOpt','10',61.45)"/>
                                 </label>
                              </td>
                           </tr>
                           <tr>
                              <td class="alt">On Demand Property Pictures</td>
                              <td>
                                 <label id="131_USD">16.273392800396852</label>
                                 <script>
                                    document.getElementById('131_USD').innerHTML=formatUSCurrency
                                    (16.273392800396852);
                                 </script>
                              </td>
                              <td>
                                 <label id="131_INR">1000.0</label>
                                 <script>
                                    document.getElementById('131_INR').innerHTML=formatIndiaCurrency(1000.0);
                                 </script>
                              </td>
                              <td>As Per Estimate</td>
                              <td>
                                 <label>
                                 <input	type="checkbox" align="middle" name="otherService" id="otherService" value="1000.0" onclick="chngOthrServAmt(this,'totalAmtOthrINR','totalAmtOthrUSD',61.45,'totINR','selOthrOpt','14',61.45)"/>
                                 </label>
                              </td>
                           </tr>
                           <tr>
                              <td class="alt">On Demand Videos</td>
                              <td>
                                 <label id="130_USD">24.41008920059528</label>
                                 <script>
                                    document.getElementById('130_USD').innerHTML=formatUSCurrency
                                    (24.41008920059528);
                                 </script>
                              </td>
                              <td>
                                 <label id="130_INR">1500.0</label>
                                 <script>
                                    document.getElementById('130_INR').innerHTML=formatIndiaCurrency(1500.0);
                                 </script>
                              </td>
                              <td>As Per Estimate</td>
                              <td>
                                 <label>
                                 <input type="checkbox" align="middle" name="otherService" id="otherService" value="1500.0" onclick="chngOthrServAmt(this,'totalAmtOthrINR','totalAmtOthrUSD',61.45,'totINR','selOthrOpt','15',61.45)"/>
                                 </label>
                              </td>
                           </tr>
                           <tr>
                              <td class="alt">Patta / Khata</td>
                              <td>
                                 <label id="135_USD">40.68348200099213</label>
                                 <script>
                                    document.getElementById('135_USD').innerHTML=formatUSCurrency
                                    (40.68348200099213);
                                 </script>
                              </td>
                              <td>
                                 <label id="135_INR">2500.0</label>
                                 <script>
                                    document.getElementById('135_INR').innerHTML=formatIndiaCurrency(2500.0);
                                 </script>
                              </td>
                              <td>As Per Estimate</td>
                              <td>
                                 <label>
                                 <input	type="checkbox" align="middle" name="otherService" id="otherService" value="2500.0" onclick="chngOthrServAmt(this,'totalAmtOthrINR','totalAmtOthrUSD',61.45,'totINR','selOthrOpt','8',61.45)"/>
                                 </label>
                              </td>
                           </tr>
                           <tr>
                              <td class="alt">Payment of Property tax</td>
                              <td>
                                 <label id="133_USD">24.41008920059528</label>
                                 <script>
                                    document.getElementById('133_USD').innerHTML=formatUSCurrency
                                    (24.41008920059528);
                                 </script>
                              </td>
                              <td>
                                 <label id="133_INR">1500.0</label>
                                 <script>
                                    document.getElementById('133_INR').innerHTML=formatIndiaCurrency(1500.0);
                                 </script>
                              </td>
                              <td>As Per Estimate</td>
                              <td>
                                 <label>
                                 <input	type="checkbox" align="middle" name="otherService" id="otherService" value="1500.0" onclick="chngOthrServAmt(this,'totalAmtOthrINR','totalAmtOthrUSD',61.45,'totINR','selOthrOpt','9',61.45)"/>
                                 </label>
                              </td>
                           </tr>
                           <tr>
                              <td class="alt">Property Assessment - Buyer's Perspective</td>
                              <td>
                                 <label id="134_USD">32.546785600793704</label>
                                 <script>
                                    document.getElementById('134_USD').innerHTML=formatUSCurrency
                                    (32.546785600793704);
                                 </script>
                              </td>
                              <td>
                                 <label id="134_INR">2000.0</label>
                                 <script>
                                    document.getElementById('134_INR').innerHTML=formatIndiaCurrency(2000.0);
                                 </script>
                              </td>
                              <td>As Per Estimate</td>
                              <td>
                                 <label>
                                 <input	type="checkbox" align="middle" name="otherService" id="otherService" value="2000.0" onclick="chngOthrServAmt(this,'totalAmtOthrINR','totalAmtOthrUSD',61.45,'totINR','selOthrOpt','4',61.45)"/>
                                 </label>
                              </td>
                           </tr>
                           <tr>
                              <td class="alt">Property Assessment - Seller's perspective</td>
                              <td>
                                 <label id="137_USD">32.546785600793704</label>
                                 <script>
                                    document.getElementById('137_USD').innerHTML=formatUSCurrency
                                    (32.546785600793704);
                                 </script>
                              </td>
                              <td>
                                 <label id="137_INR">2000.0</label>
                                 <script>
                                    document.getElementById('137_INR').innerHTML=formatIndiaCurrency(2000.0);
                                 </script>
                              </td>
                              <td>As Per Estimate</td>
                              <td>
                                 <label>
                                 <input	type="checkbox" align="middle" name="otherService" id="otherService" value="2000.0" onclick="chngOthrServAmt(this,'totalAmtOthrINR','totalAmtOthrUSD',61.45,'totINR','selOthrOpt','5',61.45)"/>
                                 </label>
                              </td>
                           </tr>
                           <tr>
                              <td class="alt">Weeding / Leveling</td>
                              <td>
                                 <label id="139_USD">32.546785600793704</label>
                                 <script>
                                    document.getElementById('139_USD').innerHTML=formatUSCurrency
                                    (32.546785600793704);
                                 </script>
                              </td>
                              <td>
                                 <label id="139_INR">2000.0</label>
                                 <script>
                                    document.getElementById('139_INR').innerHTML=formatIndiaCurrency(2000.0);
                                 </script>
                              </td>
                              <td>As Per Estimate</td>
                              <td>
                                 <label>
                                 <input	type="checkbox" align="middle" name="otherService" id="otherService" value="2000.0" onclick="chngOthrServAmt(this,'totalAmtOthrINR','totalAmtOthrUSD',61.45,'totINR','selOthrOpt','13',61.45)"/>
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
                                             <b>Total Service Cost : </b>
                                          </td>
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
                                          <td colspan="3" style="font-weight: bold;font-size: 11px;border-width: 0px; border-style: none;text-align: right;" align="right" >[1 USD = 61.45 INR]</td>
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
                     <label for="name" >Name*</label>
                     <input type="text" name="name" id="name" required />
                  </div>
                  <div class="container">
                     <label for="email">Email Id*</label>
                     <input type="text" name="email" id="email" required />
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
                     <textarea rows="10" cols="50" name="message" id="message"  required></textarea>
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
      <div class="clear"></div>
      <!--Content Section-->
      <!--Sample Report Div-->
      <div id="dialog" title="Sample Report">
         <div class="borderbox" id="reportCont">
            <div style="margin: 3px 3px 3px 3px;" class="waterMark" id="plotContent">
               <div style="margin-bottom:8px; border-bottom:2px solid #C3D9FF; margin:20px 5px; padding-bottom:10px;">
                  <img src="http://images.bestnest.in/best-nest.png" alt="BestNest Real Estate Services Pvt. Ltd."><br>
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
                              institutions:
                           </td>
                           <td style="text-align: left; width: 460px;">
                              1. An Amity University is about 0.5 km away from your property. 2. The famous Velammal group of educational institutions is about 4 km away from your property. 3. Many good schools &amp; colleges are situated in Greater Noida which is about 8 to 9 km away from your property. 4. Few government schools are situated nearby which is about 2.5 km away from your property.
                           </td>
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
                              Comments:
                           </td>
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
               <tbody>
                  <tr class="headerTR">
                     <th style="width:300px" scope="col">Services</th>
                     <th style="width:300px" scope="col" colspan="2">Standard Fee per visit</th>
                  </tr>
                  <tr valign="middle">
                     <th scope="col">&nbsp;</th>
                     <th style="width:150px" scope="col">USD</th>
                     <th style="width:150px" scope="col">INR</th>
                  </tr>
                  <tr>
                     <td style="padding-left: 10px;white-space:normal">Plot &amp; Neighbourhood report</td>
                     <td style="text-align: right;padding-right: 60px"><label id="1_USD">$16.25</label></td>
                     <td style="text-align: right;padding-right: 50px"><label id="1_INR">Rs.1,000.00</label></td>
                  </tr>
                  <tr>
                     <td style="padding-left: 10px;white-space:normal">Plot Pictures</td>
                     <td style="text-align: right;padding-right: 60px"><label id="2_USD">$8.13</label></td>
                     <td style="text-align: right;padding-right: 50px"><label id="2_INR">Rs.500.00</label></td>
                  </tr>
                  <tr>
                     <td style="padding-left: 10px;white-space:normal">Video</td>
                     <td style="text-align: right;padding-right: 60px"><label id="3_USD">$8.13</label></td>
                     <td style="text-align: right;padding-right: 50px"><label id="3_INR">Rs.500.00</label></td>
                  </tr>
               </tbody>
            </table>
         </div>
         <div class="clear"></div>
      </div>
      <!-- End Sample Price Chart -->
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