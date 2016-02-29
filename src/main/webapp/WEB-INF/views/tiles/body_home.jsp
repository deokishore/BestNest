<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript" src="/resources/js/common.js"></script>
<link rel="stylesheet" type="text/css" href="/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap/bootstrap.css">
<link rel="stylesheet" type="text/css" href="/resources/css/home.css">
<script src="/resources/js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="/resources/js/bootstrap/bootstrap.min.js" type="text/javascript"></script>
<script src="/resources/js/common.js" type="text/javascript"></script>
<script src="<tiles:getAsString name='specialScript'/>" type="text/javascript"></script>

<div id="header" class="navbar">
	<nav class="navbar navbar-default navbar-static-top" role="navigation">
		<div class="container">
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/posts">Posts</a></li>
					<li><a href="/bloggerHome">Topic</a></li>

				</ul>
			</div>
		</div>
	</nav>
</div>

<div id="main" class="container panel panel-default">
	<div class="page-header">
		<h1>Blogger</h1>
	</div>
		<div id="mainText" class="col-md-9">
			<h3>Welcome to blog</h3>
			<p>  .............  </p>
		</div>
		<div class="row">
		<div class="col-md-3 panel panel-default side">
			<div class="panel-heading">
				<h3>New Content</h3>
			</div>
			<div class="panel-body">
				<div>Added content:</div>
				<ul>
					<li>Blog #2</li>
					<li>Blog #1</li>
				</ul>
				<div>New comments:</div>
				<ul>
					<li>1st</li>
					<li>2nd</li>
				</ul>
				<div>Trending:</div>
				<ul>
					<li>Big Bang</li>
					<li>Fractels</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3>Blog Topic</h3>
			</div>
			<div class="panel-body">
				<table class="table">
					<tbody>
						<tr>

						</tr>
						<tr>

						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>