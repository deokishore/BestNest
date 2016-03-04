<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<title>Contact Us | BestNest Real Estate Services private limited</title>
<meta name="description" content="Contact us to buy,sell,rent your property in Delhi NCR, contact us to buy residential, commercial, plot, villa property in noida extension/delhi ncr " />
<meta name="keywords" content="BestNest real estate services private limited, property in noida extension, BestNest noida,property dealer in noida extension, contact us for buy/sell/rent your property www.bestnest.in " />

<!--Content Section-->
<section>
    <div class="wrapper">
    	<div class="contact-block">
    		<div class="contact-block-inner">
        	<div class="contact-block-gradient">
            	<div class="twoColsFixedRight270">
                	<div class="col">
                    	<div id="gform_wrapper_3" class="gform_wrapper frmLeaveMessage_wrapper">
                        	<!-- <form action="/contact/" class="frmLeaveMessage" id="gform_3" method="post">  -->
                        	<form:form id="clientInformationForm" class="frmLeaveMessage" action="${pageContext.request.contextPath}/contactUsSave"
          							modelAttribute="clientInformationForm">
          							
          						<input id="sourceSite" name="sourceSite" type="hidden" value="www.bestnest.in"/>
          						
                            	<div class="gform_heading">
                            		<h3 class="gform_title">Send Us A Message</h3>
                        		</div>
                                <div class="gform_body">
                                	<ul class="gform_fields">
                                    	<li class="gfield left placeholder gfield_contains_required" id="field_1">
                                        	<label for="input_1_1" class="gfield_label">First Name
                                            	<span class="gfield_required">*</span>
                                            </label>
                                            <div class="ginput_container">
                                            	<input type="text" name="firstName" placeholder="First Name" errormsg="" inputtype="name" tabindex="1" class="medium required" value="" id="input_1_1" name="input_1" required="required">
                                           	</div>
                                 		</li>
                                        <li class="gfield right placeholder gfield_contains_required" id="field_2">
                                        	<label for="input_1_2" class="gfield_label">Last Name
                                            	<span class="gfield_required">*</span>
                                            </label>
                                            <div class="ginput_container">
                                            	<input type="text" name="lastName" placeholder="Last Name" errormsg="" inputtype="name" tabindex="2" class="medium required email" value="" id="input_1_2" name="input_2" required="required">
                                         	</div>
                                  		</li>
                                    </ul>
                                    <ul class="gform_fields">
                                    	<li class="gfield left placeholder" id="field_3">
                                        	<label for="input_1_3" class="gfield_label">Home Phone Number</label>
                                            <div class="ginput_container">
                                            	<input type="text" name="homePhoneNumber" placeholder="Home Phone Number" errormsg="" inputtype="phone" tabindex="3" class="medium" value="" id="input_1_3" name="input_3" required="required">
                                     		</div>
                                   		</li>
                                        <li class="gfield right placeholder" id="field_4">
                                        	<label for="input_1_4" class="gfield_label">Mobile Phone Number</label>
                                            <div class="ginput_container">
                                            	<input type="text" name="mobilePhoneNumber" placeholder="Mobile Phone Number" errormsg="" inputtype="Phone" tabindex="4" class="medium" value="" id="input_1_4" name="input_4" required="required">
                                         	</div>
                                   		</li>
                                    </ul>
                                    <ul class="gform_fields">
                                    	<li class="gfield left placeholder" id="field_3">
                                        	<label for="input_1_3" class="gfield_label">Email</label>
                                            <div class="ginput_container">
                                            	<input type="text" name="email" placeholder="Email Id" errormsg="" inputtype="email" tabindex="5" class="medium" value="" id="input_1_5" name="input_5" required="required">
                                     		</div>
                                   		</li>
                                        <li class="gfield right placeholder" id="field_4">
                                        	<label for="input_1_4" class="gfield_label">Subject</label>
                                            <div class="ginput_container">
                                            	<input type="text" name="subject" placeholder="Subject" errormsg="" inputtype="Subject" tabindex="6" class="medium" value="" id="input_1_6" name="input_6" required="required">
                                         	</div>
                                   		</li>
                                    </ul>
                                    <ul class="gform_fields">
                                    	<li class="gfield placeholder" id="field_5">
                                        	<label for="input_1_5" class="gfield_label">Message</label>
                                            <div class="ginput_container">
                                            	<textarea placeholder="Message" name="message" errormsg="" inputtype="textarea" cols="50" rows="10" tabindex="7" class=                                                "textarea medium" id="input_1_5" name="input_5"></textarea>
                                      		</div>
                                      	</li>
                                    </ul> 
                                </div>
                                <div class="gform_footer top_label">
                                	<button type="reset">Cancel</button>
                                    <button onclick="" tabindex="6" class="button gform_button" id="gform_submit_button" type="submit">
                                    	<span>Submit</span>
                                  	</button>
                                </div>
                            </form:form>
                        </div>
                    </div>
                    <div class="col">
                    	<div class="widget-locations">
                        	<div class="widget-header">
                            	<h2>BestNest Real Estate Pvt. ltd.</h2>
                        	</div>
                            <div class="widget-content">
                            	<ul class="locations">
                                    <li>
                                    	<a class="location-map" title="Location" href="javascript:void(0);">
                                        	<img alt="Location" src="http://images.bestnest.in/ico-location.png">
                                       	</a>
                                        <p class="location-office">
                                        	<strong>Noida, UP</strong> (Head Office)                                         
                                        </p>
                                    	<p class="location-address">
                                        	D-77, Ground floor<br>
                                        	Sector - 63, Noida<br>
                                        	Tel: +91-9211170170, 8800491841<br>
                                            Email: query@bestnest.in
                                        </p>
                                    </li>
                                    <li>
                                    	<a class="location-map" title="Location" href="javascript:void(0);">
                                        	<img alt="Location" src="http://images.bestnest.in/ico-location.png">
                                       	</a>
                                        <p class="location-office">
                                        	<strong>London, UK</strong> (Branch Office)                                         
                                       	</p>
                                    	<p class="location-address">
                                       		47 Vermeer Court<br>                                     		
                                          	1 Rembrandt Close<br> 
                                          	Postal: E14 3XA <br>
                                          	London, UK <br>                                      		   
                                          	Tel: 44-7561420709
                                     	</p>
                                    </li>
                                </ul>
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
</section>
<!--Content Section-->

<!--Developers Section-->
<!--<div class="developers">
  <h2>Our Developers</h2>
  <div class="logos">
    <div class="nbs-flexisel-container">
    	<div class="nbs-flexisel-inner">
        	<ul id="flexiselDemo3" class="nbs-flexisel-ul">
    			<li class="nbs-flexisel-item"><img src="http://images.bestnest.in/mahagun-group.png" alt="Mahagun Group Logo"></li>
                <li class="nbs-flexisel-item"><img src="http://images.bestnest.in/stellar-group.png" alt="stellar Group Logo"></li>
                <li class="nbs-flexisel-item"><img src="http://images.bestnest.in/gaur-group.png" alt="Gaur Group Logo"></li>
                <li class="nbs-flexisel-item"><img src="http://images.bestnest.in/sikka-group.png" alt="Sikka Group Logo"></li>
                <li class="nbs-flexisel-item"><img src="http://images.bestnest.in/mmr-group.png" alt="Mmr Group Logo"></li>
                <li class="nbs-flexisel-item"><img src="http://images.bestnest.in/saya-group.png" alt="Saya Group Logo"></li>
                <li class="nbs-flexisel-item"><img src="http://images.bestnest.in/ajnara-logo.jpg" alt="Ajnara Logo"></li>
                <li class="nbs-flexisel-item"><img src="http://images.bestnest.in/jaypee.png" alt="jaypee Logo"></li>
         	</ul>
      	</div>
        <div class="nbs-flexisel-nav-left" style="visibility: visible; top: 29.5px;"></div>
       	<div class="nbs-flexisel-nav-right" style="visibility: visible; top: 29.5px;"></div>
	</div>
    <div class="clear"></div>
  </div>
  <div class="clear"></div>
</div>-->
