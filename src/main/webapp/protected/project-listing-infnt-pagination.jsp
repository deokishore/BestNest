<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>BestNest Real Estate Services </title>
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

<!-- BestNest JS Start -->
<script src="http://resources.bestnest.in/js/home-page.js" type="text/javascript"></script>
<!-- BestNest JS End -->

<script type="text/javascript">
	function handleOnLoadEvent() {
		
	}
</script>

<!-- JavaScript Start-->
    <script type="text/javascript">
    	
		 // Updates hiddenJson variavle
		function updateHiddenField() {

			// Updates hiddenJson variavle
	        var e = document.getElementById('city');
	        var txt = e.options[e.selectedIndex].text;
	        document.getElementById('cityName').value = txt;

	        var e = document.getElementById('companyId');
	        var txt = e.options[e.selectedIndex].text;
	        document.getElementById('companyName').value = txt;
	        			
		    return false;
		}
	</script>
	
	
	 <!--Vertical Slider-->
    <link rel="stylesheet" type="text/css" href="http://resources.bestnest.in/css/style2.css"/>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script type="text/javascript" src="http://resources.bestnest.in/js/jquery.totemticker.js"></script>
	<script type="text/javascript">
	var d = jQuery.noConflict();
		d(function(){
			d('#vertical-ticker').totemticker({
				row_height	:	'580px',
				next		:	'#ticker-next',
				previous	:	'#ticker-previous',
				stop		:	'#stop',
				start		:	'#start',
				mousestop	:	true,
			});
		});
	</script>
    <!--Vertical Slider-->
	
	
	<script>
    //get default articles
    $(document).ready(function () {
         GetArticlesFromNextSection(false);
    });

    //get next articles automatic
    $(window).scroll(function () {

    	var a = $(window).scrollTop() ;
    	var b = $(document).height() - $(window).height();
    	var c = ((b - a) / b) * 100;
        if (c < 10) {
            GetArticlesFromNextSection(true);
        }
    });

    //common handler
    function GetArticlesFromNextSection(scrollPage) {
    	
    	var startIndx = $("#startIndex").val();
    	var endInx = $("#endIndex").val();
    	
        var lastRowId = ($("#lastRowId").val() * 1);
        var isHistoryBack = (lastRowId > 0 && !scrollPage);
        
        $.ajax({
            type: 'GET',
            url: '/bestnest/rest/projectSearchData?lastRowId=' + 
            lastRowId + '&isHistoryBack=' + isHistoryBack + 
            '&startIndex=' + startIndx +
            '&endIndex=' + endInx,
            dataType: 'json',
            success: function (jsonData) {
                var rowid = lastRowId + 1;
                
                $("#startIndex").val($("#endIndex").val());
                var eIndx = parseInt($("#endIndex").val()) + parseInt(10);
                $("#endIndex").val(eIndx);
                				
                if (jsonData == null) {
                    return;
                }

                var sectionIndex = (isHistoryBack ? index + 1 : rowid);
                var articleData = "";

				var count = 0;
				
                for ( var i = 0; i < jsonData.length; i++ ) {
					
                	for ( var j = 0; j < jsonData[i].projectDetailsFormSet.length; j++ ) {
                		count = count + 1;                 	
                 	if(jsonData[i].projectDetailsFormSet.length > 0) {
                 		
	               	 articleData += '<div class="p-detail">'+
	              	'<div class="project-list-box">'+
	      			'<div class="head">'+
	      						jsonData[i].companyForm.companyName + '-' 
								+ jsonData[i].projectName + '-' 
								+ jsonData[i].propertyTypeForm.propertyTypeId + '-'
								+ count +
	      		'	<div class="clear"></div>'+
	      		'</div>'+
	      		'<div class="location">'+
	      			'<div class="left">'+
	      				'<div id="demo2" class="webwidget_slideshow_dot">'+
	      					'<ul>'+
	      						'<li><a href="${pageContext.request.contextPath}/projectDetail.htm?projectId='+ jsonData[i].projectId + 
	      										'&projectDetailsId='+ jsonData[i].projectDetailsFormSet[j].projectDetailsId +
	      										'&cityId=<%=request.getAttribute("cityId")%>'+
	      										'&companyId=<%=request.getAttribute("companyId")%>'+
	      										'&propertyType=<%=request.getAttribute("propertyType")%>'+
	      										'&cityName=<%=request.getAttribute("cityName")%>'+
	      										'&bedRoom=<%=request.getAttribute("bedRoom")%>'+
	      										'&minPrice=<%=request.getAttribute("minPrice")%>'+
	      										'&maxPrice=<%=request.getAttribute("maxPrice")%>'+
	      										'&gridList=projectSearchListPage.htm"><img src="images/'+ jsonData[i].projectDetailsFormSet[j].projectImageForm.slideImagesArray[0] +'" width="178" height="124" alt="slideshow_large" /></a></li>'+
	      					'</ul>'+
	      					'<div style="clear: both"></div>'+
	      				'</div>'+
	      				'<ul id="projectDetailsList">'+
	      					'<strong>Type of Property</strong>'+
	      					'<li>'+ jsonData[i].projectDetailsFormSet[j].bedRooms + ' Bedrooms</li>'+
	      					'<li>'+ jsonData[i].projectDetailsFormSet[j].bathRooms + ' Bedrooms</li>'+
	      					'<li>Sizes '+ jsonData[i].projectDetailsFormSet[j].size +' sq.ft.</li>'+
	      					'<li>Price : '+ jsonData[i].projectDetailsFormSet[j].price +' Lac(s)</li>'+
	      				'</ul>'+
	      				'<div class="clear"></div>'+
	      			'</div>'+
	      			'<div class="right">'+
	      				'<strong>Address</strong><br>'+ jsonData[i].addressForm.cityLocalityForm.locality +','+ jsonData[i].addressForm.cityLocalityForm.cityForm.name +'<br>'+
	      				'<b>Mob No : </b>'+ jsonData[i].userProfileForm.mobileNumber +'<br> <b>Ph No :</b>' + jsonData[i].userProfileForm.landLineNumber + '<br>'+
	      				'<b>E-mail</b> : <a href="#">'+ jsonData[i].userProfileForm.email + '</a>'+
	      				'<div class="clear"></div>'+
	      			'</div>'+
	      			
	      			'<div class="view-details">'+
	      				'<a href="${pageContext.request.contextPath}/projectDetail.htm?projectId='+ jsonData[i].projectId + 
							'&projectDetailsId='+ jsonData[i].projectDetailsFormSet[j].projectDetailsId +
								'&cityId=<%=request.getAttribute("cityId")%>'+
								'&companyId=<%=request.getAttribute("companyId")%>'+
								'&propertyType=<%=request.getAttribute("propertyType")%>'+
								'&cityName=<%=request.getAttribute("cityName")%>'+
								'&bedRoom=<%=request.getAttribute("bedRoom")%>'+
								'&minPrice=<%=request.getAttribute("minPrice")%>'+
								'&maxPrice=<%=request.getAttribute("maxPrice")%>'+
								'&gridList=projectSearchListPage.htm">View Details <img src="images/view-icon-png.png" alt="View Details" border="0" align="absmiddle" /></a>'+
	      				'<div class="clear"></div>'+
	      			'</div>'+
	      			'<div class="clear"></div>'+
	      		'</div>'+
	      		'<div class="clear"></div>'+
	      	'</div>'+
	      	'<div class="clear"></div>'+
	      '</div>';
                 	}     	
                 	
                }
                }      
              

                $('#sectionArticles').append(articleData);
               
                if (!isHistoryBack) {
                    $("#lastRowId").val(rowid);
                }
            },
            error: function () {
                alert('Error');
            }
        });

        return false;
    }
</script>	
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

<body onload="handleOnLoadEvent()">

	<!--Header Section-->
	<header>
		<div class="head">
			<div class="logo">
				<a href="/"><img src="images/best-nest.png" alt="BestNest Real Estate Services Pvt Ltd." /></a>
				<div class="clear"></div>
			</div>

			<a class="toggleMenu" href="#"><img src="images/nav-icon.png"
				alt="Menu Items" border="0" />
			</a>

			<ul class="nav">
				<li><a href="${pageContext.request.contextPath}/nriServices.htm" class="deactive" title="NRI Services">NRI Services</a></li>
				<li><a href="${pageContext.request.contextPath}/aboutUs.htm" class="deactive" title="About Us">About Us</a></li>
				<li><a href="${pageContext.request.contextPath}/lZone.htm" class="deactive" title="DDA L ZONE">DDA L Zone</a></li>
				<li><a href="${pageContext.request.contextPath}/contactUs.htm" class="deactive" title="Contact Us">Contact Us</a></li>
				<li><a href="javascript:submitForAdmin()" class="deactive" title="Login to Admin Panel">Login</a></li>
			</ul>


			<div class="clear"></div>
		</div>
		<div class="clear"></div>
	</header>
	<!--Header Section-->

	<div class="clear"></div>
	<div class="inner-form">
		<div class="listing-form-box"> 

			<form:form id="projectSearchForm" action="${pageContext.request.contextPath}/projectSearchPage.htm"
				modelAttribute="projectSearchForm" onsubmit="javascript:updateHiddenField();">
				
				
				<input id="cityId" value="${projectSearchForm.cityForm.cityId}" type="hidden"/>
				<!--  <input id="cityName" value="${projectSearchForm.cityForm.name}" type="hidden"/> -->
				
				<form:hidden id="cityName" path="cityForm.name" value="${projectSearchForm.cityForm.name}"/>
				
				<input id="propertyTypeId" value="${projectSearchForm.propertyTypeId}" type="hidden"/>
				
				<input id="companyId"  value="${projectSearchForm.companyForm.companyId}" type="hidden"/>
				<input id="companyName" value="${projectSearchForm.companyForm.companyName}" type="hidden"/>
				
				
				<table width="100%" border="0">
					<tr>
						
						
						<td width="" align="left" valign="middle">
							<div class="dropdown">
    							<form:select id="propertyType" path="propertyTypeId" class="dropdown-select">
	                			</form:select>
  							</div>
						</td>
						
						<td width="" align="left" valign="middle">
							<div class="dropdown">
    							<form:select id="city" path="cityForm.cityId" class="dropdown-select">
	                			</form:select>
  							</div>
						</td>
						
						
						<td width="" align="left" valign="middle">
							<div class="dropdown">
    							<form:select id="company" path="companyForm.companyId" class="dropdown-select">
	                			</form:select>
  							</div>
						</td>
						
						<td width="" align="left" valign="middle">
							<div class="dropdown">
								<form:select id="bedRoom" path="bedRoom" class="dropdown-select">
									<form:option value="0" label="Bed Room" />
									<form:option value="1" label="1+" />
									<form:option value="2" label="2+" />
									<form:option value="3" label="3+" />
									<form:option value="4" label="4+" />
									<form:option value="5" label="5+" />
								</form:select>
							</div>
						</td>

						<td width="" align="left" valign="middle">
							<div class="dropdown">
								<form:select id="minPrice" path="minPrice" class="dropdown-select">
									<form:option value="0" label="Min Price" />
									<form:option value="5 Lacs" label="5 Lacs" />
									<form:option value="10 Lacs" label="10 Lacs" />
									<form:option value="20 Lacs" label="20 Lacs" />
									<form:option value="30 Lacs" label="30 Lacs" />
									<form:option value="40 Lacs" label="40 Lacs" />
									<form:option value="50 Lacs" label="50 Lacs" />
									<form:option value="60 Lacs" label="60 Lacs" />
									<form:option value="70 Lacs" label="70 Lacs" />
									<form:option value="80 Lacs" label="80 Lacs" />
									<form:option value="90 Lacs" label="90 Lacs" />
									<form:option value="1 Crore" label="1 Crore" />
									<form:option value="2 Crore" label="2 Crore" />
									<form:option value="3 Crore" label="3 Crore" />
									<form:option value="4 Crore" label="4 Crore" />
									<form:option value="5 Crore" label="5 Crore" />
								</form:select>
							</div>
						</td>
						
						<td width="" align="left" valign="middle">
							<div class="dropdown">
								<form:select
									id="maxPrice" path="maxPrice" class="dropdown-select">
									<form:option value="0" label="Max Price" />
									<form:option value="5 Lacs" label="5 Lacs" />
									<form:option value="10 Lacs" label="10 Lacs" />
									<form:option value="20 Lacs" label="20 Lacs" />
									<form:option value="30 Lacs" label="30 Lacs" />
									<form:option value="40 Lacs" label="40 Lacs" />
									<form:option value="50 Lacs" label="50 Lacs" />
									<form:option value="60 Lacs" label="60 Lacs" />
									<form:option value="70 Lacs" label="70 Lacs" />
									<form:option value="80 Lacs" label="80 Lacs" />
									<form:option value="90 Lacs" label="90 Lacs" />
									<form:option value="1 Crore" label="1 Crore" />
									<form:option value="2 Crore" label="2 Crore" />
									<form:option value="3 Crore" label="3 Crore" />
									<form:option value="4 Crore" label="4 Crore" />
									<form:option value="5 Crore" label="5 Crore" />
								</form:select>
							</div>
						</td>
						
						<td width="" align="right" valign="middle"><input
							type="submit" name="button" id="button" value="Search"></td>
					</tr>
				</table>
			</form:form>

			<div class="clear"></div>
		</div>
		<div class="clear"></div>
	</div>
	<div class="clear"></div>

	<!--Breadcrumb-->
	<div class="breadcrumb">
		<div class="listing">
			<!--Filter Section-->
			<div class="filter">
				<h2>
					<%=request.getAttribute("cityName")%>
					<span><%=request.getAttribute("totalProjects")%>
						results.</span>
				</h2>
				<div class="clear"></div>
			</div>

			<!--Filter Section-->
			<div class="right-portion">
				<div class="listing-box">
						<ul>
							<li><a href="${pageContext.request.contextPath}/projectSearchListPage.htm
										?cityId=<%=request.getAttribute("cityId")%>
										&companyId=<%=request.getAttribute("companyId")%>
										&propertyType=<%=request.getAttribute("propertyType")%>
										&cityName=<%=request.getAttribute("cityName")%>
										&bedRoom=<%=request.getAttribute("bedRoom")%>
										&minPrice=<%=request.getAttribute("minPrice")%>
										&maxPrice=<%=request.getAttribute("maxPrice")%>">
										<img src="images/list-icon.png" alt="List View" /></a></li>
							<li><a href="${pageContext.request.contextPath}/projectSearchGridPage.htm
									?cityId=<%=request.getAttribute("cityId")%>
										&companyId=<%=request.getAttribute("companyId")%>
										&propertyType=<%=request.getAttribute("propertyType")%>
										&cityName=<%=request.getAttribute("cityName")%>
										&bedRoom=<%=request.getAttribute("bedRoom")%>
										&minPrice=<%=request.getAttribute("minPrice")%>
										&maxPrice=<%=request.getAttribute("maxPrice")%>">
										<img src="images/grid-icon.png" alt="Grid View" /></a></li>
						</ul>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
	</div>

	
	<!--Main Section-->
	<div id="paging_container2" class="project-sections">
		
		<div id="sectionArticles" class="left-portion">
			<input type="hidden" id="lastRowId" value="0" />
			<input type="hidden" id="startIndex" name="startIndex" value="0"/>
			<input type="hidden" id="endIndex" name="endIndex" value="10"/>
			
			<!-- Box Start -->
				
			<!-- Box End -->
			<div class="clear"></div>
		</div>
		
		<!--  RIGH BEST DEALS START -->
		<div class="right-portion"
			style="width: 211px; height: auto; float: right;">

			<h2
				style="background: #C0C0C0; margin-bottom: 10px; padding: 5px; color: #080808; text-align: center;">Best
				Deals</h2>
			<div class="advertisement">
				<div id="wrapper">
					<ul id="vertical-ticker">
						<c:forEach var="varProjectForm" items="${projectSearchForm.projectFormList}">
								
								<c:forEach var="varProjectDetailsForm" 	items="${varProjectForm.projectDetailsFormSet}">
									
									<c:if test="${ varProjectDetailsForm.bestDeal ==  'Y'}">
											
										<li>
											<a href="${pageContext.request.contextPath}/projectDetail.htm?projectId=${varProjectForm.projectId}
													&projectDetailsId=${varProjectDetailsForm.projectDetailsId }
													&cityId=<%=request.getAttribute("cityId")%>
													&companyId=<%=request.getAttribute("companyId")%>
													&propertyType=<%=request.getAttribute("propertyType")%>
													&cityName=<%=request.getAttribute("cityName")%>
													&bedRoom=<%=request.getAttribute("bedRoom")%>
													&minPrice=<%=request.getAttribute("minPrice")%>
													&maxPrice=<%=request.getAttribute("maxPrice")%>
													&gridList=projectSearchListPage.htm"><img src="images/gall-img.jpg" />
												<h3>${varProjectForm.projectName}</h3>
												<div class="features">Type : ${varProjectDetailsForm.bedRooms} BHK</div>
												<div class="features">Sizes : ${varProjectDetailsForm.size} sq. ft.</div>
												<div class="features">Price : ${varProjectDetailsForm.price} Lac(S)</div>
												<div class="features">${varProjectForm.addressForm.cityLocalityForm.locality},
												${varProjectForm.addressForm.cityLocalityForm.cityForm.name}</div> 
											</a>
										</li>
									</c:if>
								</c:forEach>	
						</c:forEach>
					</ul>

				</div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
		<script>
			$(document).ready(function(){
				$('li:odd, .content > *:odd');
			});
		</script>
	</div>
	<!--Main Section-->

	<div class="clear"></div>



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
