<!DOCTYPE HTML>
<html><head>
<meta charset="utf-8">
<title>User Login | BestNest Real Estate Services </title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--CSS Theme-->
<link rel="stylesheet" type="text/css" href="../css/best-nest.css" />
<!--CSS Theme-->

<!--HTML5 Code-->
<script src="js/css3-mediaqueries.js"></script>
<script src="js/html5.js"></script>
<!--HTML5 Code-->

<!--Banner Code-->
<link rel="stylesheet" type="text/css" href="../css/jquery-ui.css" />
<script src="../js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="../js/jquery-ui.js" type="text/javascript"></script>
<script type="text/javascript" src="js/behaviour.js"></script>
<script type="text/javascript" src="js/validator.js"></script>
<!--Banner Code-->

<!--Developers Logo Slider-->
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/admin-form.css" />
<!--Developers Logo Slider-->
<script>
	$(function(){
		$("form").attr("novalidate","novalidate");
		$("button.openLightbox").each(function(){
			if($(this).val()=="cancel"){
				$(this).attr("formaction","index.html");
			}
		});
		$("form.validator").validate();
	});

	addCSSRule(0, ".hidden", "display: none;");
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
<noscript>
	<style>
        .nsHide{display: none!important;}
    </style>
</noscript>
</head>

<body>

<!--Header Section-->
<header>
  <div class="head">
    <div class="logo"> <a href="../index.html"><img src="http://images.bestnest.in/best-nest.png" alt="BestNest Real Estate Services Pvt Ltd." /></a>
      <div class="clear"></div>
    </div>
        <a class="toggleMenu" href="#"><img src="http://images.bestnest.in/nav-icon.png" alt="Menu Items" border="0" /></a>
	
	  <ul class="nav">
        <li><a href="../nri-services.html" class="deactive">NRI Services</a></li>
	    <li><a href="../aboutUs.html" class="deactive">About Us</a></li>
		<li><a href="../contactUs.html" class="deactive">Contact Us</a></li>
		<li><a href="user-login.html" class="active">Login</a></li>
        <!--<li class="postProLi"><a class="sellrent" href="../sell/seller-login.html">Post Property<small> Free</small></a>  -->
        </li>
       </ul>
    <div class="clear"></div>
  </div>
  <div class="clear"></div>
</header>
<!--Header Section-->

<!--Content Section-->
<section>
    <div class="wrapper">
    	<!--Page Breadcrumbs-->
        	
        <!--Page Breadcrumbs-->
            <div id="main" class="rightColumn">	
            	<div id="content">
                    	<h1>Login To Bestnest</h1>
                        <div class="informationMessage">
							<p>This login is only valid to Bestnest employee</p>
						</div>
                        <form name="userLogin" method="post" action="company-details.html" class="validator" data-req-msg="Required default" data-format-msg="Required default">
                        	<div id="login-user">
                        	<section class="nopadding">
                        		<div class="form">
                        			<h2>User Login</h2>
                                    <div class="formbody">
                        <ul class="fields">
                            <li>
                            	<label class="required" for="userId">User Id</label> 
                            	<input type="text" id="userId" name="userId" required>
                                
                            </li>
                            <li>
                            	<label class="required" for="txtPassword">Password</label>
                            	<input type="password" id="txtPassword" name="txtPassword" required>
                           	</li>
                        </ul>
                        <ul class="actions right">
                            <li>
                                <button type="submit" name="event" value="cancel" class="secondary" formnovalidate>
                                    Cancel
                                </button>
                            </li>
                            <li>
                                <button type="submit" name="event" value="login" class="primary">Login</button>
                            </li>
						</ul>
                    </div>
                                </div>
                            </section>
                        </div>
                    	</form>
                       	<form class="validator" action="user-personal-info.html" method="post" name="userRegistration" novalidate>
                    		<div id="new-user-register">
                        	<section class="nopadding">
                            	<div class="form">
									<h2>I don't have an Account</h2>
									<div class="formbody">
						<h3>You can register here just fill your details!!</h3>
                        <ul class="actions right">
                                <li>
                                	<button class="primary" value="register" name="" type="submit">
                                    Register &gt;</button>
                                </li>
                            </ul>
					</div>
								</div>
                            </section>
                        </div>
                    	</form>
                </div>
            </div>
        <div class="clear"></div>
    </div>  
	<div class="clear"></div>
</section>
<!--Content Section-->

<!--Footer Section-->
<footer>
<div class="copyright">
	<div class="main-text">
		<div class="rights">
&copy; 2014 Best Nest. All Rights Reserved
<div class="clear"></div>
</div>
		<div class="clear"></div>
	</div>
	<div class="clear"></div>
</div>
  <div class="clear"></div>
</footer>
<!--Footer Section-->

<!--Responsive Navigation-->
<link rel="stylesheet" type="text/css" href="../css/menu-style.css">      
<script type="text/javascript" src="../js/script.js"></script>
<!--Responsive Navigation-->

</body>
</html>
