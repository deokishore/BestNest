
<title>Login To BestNest Real Estate Services </title>
<meta name="keywords" content="Login to BestNest, BestNest Admin Login,Login as a admin to BestNest" />
<meta name="description" content="you can see property rate and access admin panel if you will first Login from here" />

	<div id="wrapper">
		<a href="#main" class="auralOnly"
			title="click here to skip to main content">skip to main content</a>
		<header class="secSHeader" role="banner">
			<div id="headerbanner">
				<div id="bankname">
					<a href="/homePage">BestNest - Home Page</a>
				</div>
				<div id="loginfo">
					<span class="username">Deo Kishore</span> <span class="successful">Last
						successful log on: <strong>21/11/2013 13:24</strong>
					</span> <span class="unsuccessful">Last unsuccessful log on: <strong>21/11/2013
							13:24</strong></span>
				</div>
				<div id="logoff">
					<a href="javascript:submitForAdmin()">Log in</a>
				</div>
			</div>
		</header>
		<div id="main" class="rightColumn">
			<div id="content">
				<form:form id="loginForm" method="post" action="authenticate.htm" class="validator"
					data-req-msg="Required default" modelAttribute="loginForm">

					<ul class="actions trailing">
						<li class="leading">
							<button type="submit" name="event" value="back" class="secondary" onclick="submitForHomePage()" formnovalidate>
								BestNest Home Page</button>
						</li>
					</ul>
					
					<h1>Login To BestNest</h1>

					<div class="informationMessage">
						<p>
							This login is only valid to <strong>BestNest employee</strong>
						</p>
					</div>
					<div class="form">
						<h2>Login</h2>
						<div class="formbody">
							<ul class="fields">
								<li><span></span>
									<div class="OTPStep">
										<ul class="fields">
											<li>
												<label for="phoneNumberInput">User Id (Your	Bestnest email )</label> 
												<input type="tel" name="userId" id="userId">
											</li>
											
											<li>
												<label for="phoneConfirmNumberInput">Password</label>
												<input type="password" name="password" id="password"></li>
										</ul>
									</div></li>
							</ul>
						</div>
					</div>
					<ul class="actions">
						<li><button type="submit" name="event" value="cancel"
								class="secondary openLightbox" formnovalidate>Cancel</button></li>
						<li><button type="submit" name="event" value="continue"
								class="primary">Login</button></li>
					</ul>
				</form:form>
			</div>

		</div>

	</div>