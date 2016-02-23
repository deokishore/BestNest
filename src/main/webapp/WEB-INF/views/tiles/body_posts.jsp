<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<link rel="stylesheet" type="text/css" href="/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap/bootstrap.css">
<link rel="stylesheet" type="text/css" href="/resources/css/home.css">

<script src="/resources/js/bootstrap/bootstrap.min.js"></script>
<script src="/resources/js/common.js"></script>



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

<div id="main" class="row">
	<div class="container">
		<c:forEach items="${posts}" var="post">
			<div id="post_${post.id}" class="post">
				<div class="panel panel-default">
					<div class="panel-heading post_header">
						<div class="row">
							<h3 class="post_title">${post.title}</h3>
							<div class="col-sm-6 category">${post.category.categoryName}</div>
							<div class="col-sm-6 timePosted"><fmt:formatDate value="${post.timePosted}" pattern="MMM d, yyyy" /></div>
						</div>
					</div>
					<div class="panel-body">${post.postText}</div>
					<ul class="list-group">
						<c:choose>
							<c:when test="${empty post.comments}">
       							<li class="list-group-item">
       								<button class="btn btn-primary dropdown-toggle" onclick="toggleAddCommentSection(this)" type="button">Add Comment</button>
       							</li>
       							<li class="add_comment list-group-item">
									<form id="formAddComment_${post.id}" role="form" class="post_comment" method="post" autocomplete="on">
        								<div class="row">
        									<div class="col-sm-4 form-group">
          										<label>Name:</label>
          										<input type="text" class="form-control" required name="who" tabindex=1 placeholder="Name"/>
        									</div>
        								</div>
        								<div class="row">
        									<div class="col-sm-4 form-group">
          										<label>Email:</label>
          										<input type="email" class="form-control" required name="email" tabindex=2 placeholder="Email"/>
          									</div>
        								</div>
        								<div class="row">
        									<div class="form-group">
        										<label>Comment:</label>
        										<textarea class="form-control" rows="5" required spellcheck="true" tabindex=3 name="commentText" placeholder="Comment..."></textarea>
        									</div> 
        								</div>      									
        								<button type="submit" tabindex=4 class="btn btn-primary">Submit</button>
        								<button type="reset" tabindex=5 onclick="discardComment(this)" class="btn btn-default">Discard</button>
        								<div class="error alert alert-danger"></div>
									</form>
								</li>
    						</c:when>
							<c:otherwise> 
								<li class="list-group-item">
									<button class="btn btn-primary dropdown-toggle" onclick="toggleCommentSection(this)" type="button">View Comments</button>
									<div class="alert alert-warning" role="alert">
							      		<p>
        									<button onclick="discardComment(this)" type="button" class="btn btn-warning">Keep Comment</button>
        									<button onclick="discardComment(this)" type="button" class="btn btn-warning">Discard Comment</button>
      									</p>
    								</div>
								</li>
								<c:forEach items="${post.comments}" var="comment">
									<li id="comment_${comment.commentId}" class="list-group-item comment">
										<div class="row commentHeader">
											<div class="col-sm-6 who">${comment.who}</div>
											<div class="col-sm-6 time"><fmt:formatDate value="${comment.commentTime}" pattern="MMM d, yyyy h:mm a" /></div>
										</div>

										<div class="commentText panel panel-default">
											${comment.commentText}
											<div class="dropdown commentMenu ">
												<span data-toggle="dropdown" class="editIcon glyphicon glyphicon-cog"></span>
												<ul class="dropdown-menu dropdown-menu-left" role="menu">
    												<li role="presentation">
    													<a role="menuitem" tabindex="-1" href="javascript:void(0)" onclick="getEmail(this);">Edit</a>
    												</li>
    												<li role="presentation">
    													<a role="menuitem" tabindex="-1" href="javascript:void(0)" onclick="getEmail(this);">Delete</a>
    												</li>
												</ul>
											</div>
										</div>

										<div class="row editComment">
											<label>Email:</label>
											<input type="email" class="alert-info form-control" placeholder="Enter your email to be validated">
											<div>
												<button class="btn btn-primary" type="button" name="editOrDelete" onclick="editComment(this);">Submit</button>
												<button class="btn btn-default" type="button" onclick="cancelEditComment(this);">Cancel</button>
											</div>
										</div>															
									</li>
								</c:forEach>
								<li class="sub_add_comment list-group-item">
       								<button class="btn btn-primary dropdown-toggle" onclick="toggleAddCommentSection(this)" type="button">Add Comment</button>	
       							</li>
								<li class="add_comment list-group-item">
									<form id="formAddComment_${post.id}" role="form" class="post_comment" method="post" autocomplete="on">
        								<div class="row">
        									<div class="col-sm-4 form-group">
          										<label>Name:</label>
          										<input type="text" class="form-control" required name="who" tabindex=1 placeholder="Name"/>
        									</div>
        								</div>
        								<div class="row">
        									<div class="col-sm-4 form-group">
          										<label>Email:</label>
          										<input type="email" class="form-control" required name="email" tabindex=2 placeholder="Email"/>
          									</div>
        								</div>
        								<div class="row">
        									<div class="form-group">
        										<label>Comment:</label>
        										<textarea class="form-control" rows="5" required spellcheck="true" tabindex=3 name="commentText" placeholder="Comment..."></textarea>
        									</div> 
        								</div>      									
        								<button type="submit" tabindex=4 class="btn btn-primary">Submit</button>
        								<button type="reset" tabindex=5 onclick="discardComment(this)" class="btn btn-default">Discard</button>
        								<div class="error alert alert-danger"></div>
									</form>
								</li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
			</div>
		</c:forEach>
	</div>
</div>