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
					<li><a href="/bloggerHome">Home</a></li>
					<li><a href="/posts">Posts</a></li>

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
			<h3>Welcome to my blog</h3>
			<p>This will be the firet post of some ones blogs. A textbook or
				coursebook is a manual of instruction in any branch of study.
				Textbooks are produced according to the demands of educational
				institutions. Although most textbooks are only published in printed
				format, many are now available as online electronic books.</p>
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
				<h3>Explore the Site</h3>
			</div>
			<div class="panel-body">
				<table class="table">
					<tbody>
						<tr>
							<td><a href="">Physics</a></td>
							<td><a href="">Mathematics</a></td>
							<td><a href="">Computer Science</a></td>
							<td><a href="">Projects</a></td>
						</tr>
						<tr>
							<td><a href="">Question</a></td>
							<td><a href="">Links</a></td>
							<td><a href="">Contact Me</a></td>
							<td></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>