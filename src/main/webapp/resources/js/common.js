$(document).ready(function(){

	/*$( window ).resize(function() {
		var windowSize = $(window).width();
		if (windowSize < 768) {
			$('.timePosted').css('text-align','left');
		}
		else {
			$('.timePosted').css('text-align','right');
		}
	});*/

	$(".post_comment").submit(function(event) {		
		// Stop form from submitting normally
		event.preventDefault();

		// Get some values from elements on the page:
		var email = $(this).find("input[name='email']"),
		name = $(this).find("input[name='who']"),
		comment = $(this).find("textarea[name='commentText']"),
		post = $(this).parentsUntil(".post").parent();
		
		//Create comment JSON
		var commentObj = new Object();
		commentObj.postId = post.attr("id");
		commentObj.who = name.val()
		commentObj.commentText = comment.val();
		commentObj.email = email.val();
		
		// Send the data using post
		var posting = $.ajax({
			type: "POST",
			url: "/ajax/comment/add",
			contentType: 'application/json',
			mimeType: 'application/json',
			dataType: "text",
			data: JSON.stringify(commentObj)
		});

		// Put the results in a div
		posting.done(function(response) {
			var $whereToAddCommentBefore = null,
			isFirst = true,
			$addComment = post.find(".add_comment"),
			$subAddComment = post.find(".sub_add_comment");

			//Adds the comment to the post determines if its the first comment
			if($subAddComment.length && $subAddComment.prev().hasClass("comment")){		
				isFirst = false;
				$whereToAddCommentBefore = $subAddComment;
			} else if($subAddComment.length){
				$whereToAddCommentBefore = $subAddComment; //If first comment after old ones were deleted
			} else{
				$whereToAddCommentBefore = $addComment
			}

			//Remove alert if there is one and show collapse
			var firstLi = $(this).parent().parent().first();
			firstLi.find(".alert").hide();
			firstLi.first().show();

			//If no error
			if(!(response === "ERROR")){
				$addComment.hide();
				if(isFirst){
					var addComment = "<li class='sub_add_comment list-group-item' style=\"display:block\">"+
					"<button class='btn btn-primary dropdown-toggle' onclick='toggleAddCommentSection(this)' type='button'>Add Comment</button>"+	
					"</li>";
					var collapse = "<li class='list-group-item' style=\"display:block\">" +
					"<button class='btn btn-primary dropdown-toggle' onclick='toggleCommentSection(this)' type='button'>Collapse All</button>"+
					"<div class='alert alert-warning alert-dismissible' role='alert'>"+
					"<p>"+
					"<button onclick='discardComment(this)' type='button' class='btn btn-warning'>Keep Comment</button>"+
					"<button onclick='discardComment(this)' type='button' class='btn btn-warning'>Discard Comment</button>"+
					"<div class='error alert alert-danger'></div>" +
					"</p>"+
					"</div>"+
					"</li>";
					$whereToAddCommentBefore.prev().replaceWith($(collapse));
					$(response).insertBefore($whereToAddCommentBefore);
					$(response).show();
					$(addComment).insertBefore($whereToAddCommentBefore);
					$subAddComment.remove();
				}
				else{
					$(response).insertBefore($whereToAddCommentBefore);
					post.find(".sub_add_comment").show();
				}
				email.val("");
				name.val("");
				comment.val("");
			}
			else{
				//Else if there is an error shows alert
				var err = $addComment.find(".error");
				$(err).text("Error adding comment, try again later.");
				$(err).show();
			}
		});
	});
});

/**
 * onclick for handling comment form
 * @param comment
 */
function discardComment(comment){
	var whatToDo = $(comment).text();

	/*
	 * If alert shows and "Keep" is clicked
	 * Else if "Discard" is clicked
	 * Else alert is showing and "Discard Comment" clicked 
	 */
	if(whatToDo === "Keep Comment"){
		$(comment).parent().parent().hide();
		$(comment).parent().parent().prev().show();
	}
	else if(whatToDo === "Discard"){
		var $commentForm = $(comment).parent().parent();

		//Closes comment form, adds back the 'Add Comment' button, clears form
		$commentForm.toggle();
		$commentForm.prev().toggle();
		$($(comment).parent())[0].reset();
		$($(comment).parent()).find("textarea[name='commentText']").val("");

		//Hides alert and View Comment button
		var alert = $commentForm.parent().find(".alert");
		alert.hide();
		alert.prev().show();
	}
	else{
		var $comments = $(comment).parent().parent().parent();
		var $commentForm = $comments.parent().children().last().children().first();	

		//Collapses comments, switches button text
		$comments.nextAll().hide();
		var $alert = $(comment).parent().parent();
		$alert.prev().text("View Comments");
		$(comment).parent().parent().prev().show();
		$alert.hide();

		//Clears form
		$commentForm[0].reset();
		$comments.find("textarea[name='commentText']").val("");
	}
}

/**
 * onclick for adding comment
 * @param section
 */
function toggleAddCommentSection(section){
	var $addComment = $(section).parent().parent().find(".add_comment");
	$addComment.toggle("fast");
	if($addComment.is(":visible")){
		$(section).parent().hide();
	}
	else{
		$(section).parent().show();
	}
}

/**
 * onclick for viewing, adding, or collapsing comment
 * @param section
 */
function toggleCommentSection(section){
	var collapse = "Collapse All",
	view = "View Comments",
	add = "Add Comment",
	value = $(section).text();
	var alertTrigged = false;

	/*
	 * If button is 'View Comments'
	 * Else Adding or Collapsing comments
	 */
	if(value === view){
		//Expands the add_comment section -> the last child
		$(section).parent().siblings().each(function() {
			if($(this).hasClass("add_comment")){

			} else{
				$(this).toggle("fast");
			}
		});
	} else{
		var $addComment = $(section).parent().parent().find(".add_comment");
		var name = $addComment.find("input[name='who']"),
		email = $addComment.find("input[name='email']"),
		comment = $addComment.find("textarea[name='commentText']");

		/*
		 * If the Collapse button is clicked and the fields aren't empty, alert should be triggered
		 * Else hides comments and switches button back to "Add Comments" 
		 */
		//TODO Collapse when edit/delete is open
		if(name.val() || email.val() || comment.val()){
			$(section).next().toggle();
			$(section).toggle();
			alertTrigged = true;
		} else{
			$(section).parent().nextAll().hide();
			$(section).parent().parent().find(".sub_add_comment").find("button").text(add);
			$(section).parent().nextAll().find(".alert").hide();
		}
	}

	//If no alert is triggered
	if(!alertTrigged){
		/*
		 * If button was 'View Comments' changes it to 'Collapse' and switches color
		 * Else vis versa
		 */
		if(value === view){
			$(section).text(collapse);
		} else if(value === collapse){
			$(section).text(view);
		}
	}
}

/**
 * For deleting/editing a comment
 * @param element
 */
function editComment(element){
	var $comment = $(element).parent().parent().parent(),
	buttonClicked = $(element).text(),
	$email = $(element).parent().prev(),
	$editCommentElement = $(element).parent().parent(),
	errorMessage = "<div class='alert alert-danger alert-dismissible' role='alert' style=\"display:block\">"+
	"<button type='button' class='close' data-dismiss='alert'>" +
	"<span aria-hidden='true'>&times;</span><span class='sr-only'>Close</span>" +
	"</button>"+
	"<strong>Warning!</strong> Couldn't alter the comment. Verify the email you entered was correct or contact the <a href='#' class='alert-link'>administrator</a>."
	"</div>";

	//Verify email isn't empty
	if($email.val().trim() === ""){
		$editCommentElement.hide();
		$(errorMessage).insertBefore($editCommentElement);
	} else if(buttonClicked === "Delete"){
		//Create comment JSON
		var commentObj = new Object();
		commentObj.postId = $comment.parent().parent().parent().attr("id");
		commentObj.commentId = $comment.attr("id");
		commentObj.email = $email.val();
		
		//If deleting post
		var posting = $.ajax({
			type: "DELETE",
			url: "/ajax/comment/delete/",
			contentType: 'application/json',
			mimeType: 'application/json',
			dataType: "text",
			data: JSON.stringify(commentObj)
		});

		posting.done(function(response) {
			//If there was an ERROR when deleting it
			if(response === "ERROR"){
				$editCommentElement.hide();
				$email.val("");
				$(errorMessage).insertBefore($editCommentElement);
			}
			else{
				//Else deletes comment
				$editCommentElement.hide();
				$email.val("");
				if(!($comment.prev().hasClass("comment"))){
					$comment.prev().hide();
				}
				$comment.remove();
			}
		});
	}
	else{
		//Create comment JSON
		var commentObj = new Object();
		commentObj.commentId = $comment.attr("id");
		commentObj.email = $email.val();
		
		//Editing post
		var posting = $.ajax({
			type: "POST",
			url: "/ajax/comment/checkEmail",
			contentType: 'application/json',
			mimeType: 'application/json',
			dataType: "text",
			data: JSON.stringify(commentObj)
		});

		// Put the results in a div
		posting.done(function(response) {
			if(response === "ERROR"){
				$editCommentElement.hide();
				$email.val("");
				$(errorMessage).insertBefore($editCommentElement);
			} else {
				//Adds the edit fields
				var json = JSON.parse(response);
				$("<div class=\"row\">"+
        			"<div class=\"form-group\">"+
        				"<label>Comment:</label>"+
        				"<textarea class=\"form-control\" rows=\"5\" required spellcheck=\"true\" name=\"commentText\" placeholder=\"Comment...\">"+
        				json.commentText+
        				"</textarea>"+
        			"</div>"+
        		"</div>").insertAfter($email);
				$("<div class=\"row\">"+
					"<div class=\"col-sm-4 form-group\">"+
						"<label>Name:</label>"+
						"<input type=\"text\" class=\"form-control\" required name=\"who\" placeholder=\"Name\" value='"+json.who+"'/>"+
					"</div>"+
				"</div>").insertAfter($email);
				$email.parent().find("button[name='editOrDelete']").attr("onclick","submitEditComment(this);");

				//Hides comment
				var $currentFields = $(element).parent().parent();
				$currentFields.prev().hide();
				$currentFields.prev().prev().hide();
			}
		});
	}
}

/**
 * Show the email field so you can delete/edit a comment
 * @param element
 */
function getEmail(element){
	//Set button text depending on which menu item was selected
	var $enterEmail = $(element).parent().parent().parent().parent().next();

	if($(element).text() === "Delete"){
		$enterEmail.find("button[name='editOrDelete']").text("Delete");
	}
	else{
		$enterEmail.find("button[name='editOrDelete']").text("Submit");
	}

	//If alerts showing it will remove it
	if($enterEmail.attr("class").indexOf("alert") > -1){
		$enterEmail.remove();
		getEmail(element);
	}
	$enterEmail.show();

}

/**
 * When cancel is clicked close the edit/delete
 * @param element
 */
function cancelEditComment(element){	
	var $enterEmailSection = $(element).parent().parent();
	$enterEmailSection.hide();
	$enterEmailSection.find("input").val("");
	if($(element).parent().prev().find("textarea").length){
		$(element).prev().attr("onclick","editComment(this);");
		$(element).parent().prev().remove();
		$(element).parent().prev().remove();
	}
	$enterEmailSection.prev().show();
	$enterEmailSection.prev().prev().show();
}

/**
 * Submits the edited comment
 */
function submitEditComment(element){
	var $fieldsParent = $(element).parent().parent();
	var $currentText = $fieldsParent.prev(),
	$currentWhoHeader = $fieldsParent.prev().prev();
	var $editIconClone = $currentText.find("div").clone();
	var $email = $(element).parent().prev().prev().prev(),
	$commentText = $(element).parent().prev().find("textarea"),
	$who = $fieldsParent.find("input[name='who']");

	//Create comment JSON
	var commentObj = new Object();
	commentObj.postId = $fieldsParent.parent().parent().parent().parent().attr("id");
	commentObj.who = $who.val();
	commentObj.commentText = $commentText.val();
	commentObj.commentId = $fieldsParent.parent().attr("id");
	commentObj.email = $email.val();

	var posting = $.ajax({
		type: "PUT",
		url: "/ajax/comment/update",
		contentType: 'application/json',
		mimeType: 'application/json',
		dataType: "text",
		data: JSON.stringify(commentObj)
	});

	posting.done(function(response) {
		if(response === "ERROR"){
			var errorMessage = "<div class='alert alert-danger alert-dismissible' role='alert' style=\"display:block\">"+
			"<button type='button' class='close' data-dismiss='alert'>" +
			"<span aria-hidden='true'>&times;</span><span class='sr-only'>Close</span>" +
			"</button>"+
			"<strong>Warning!</strong> Couldn't alter the comment. Contact the <a href='#'>administrator.</a>"
			"</div>";

			$currentText.show();
			$currentWhoHeader.show();
			$(element).parent().prev().remove();
			$(element).parent().prev().remove();	
			$(element).parent().prev().val("");
			$(element).parent().parent().hide();
			$(element).attr("onclick","editComment(this);")
			$(errorMessage).insertBefore($(element).parent().parent());
		}
		else{
			//If success hide edit fields update content
			$currentText.text($commentText.val());
			$currentText.append($editIconClone);
			$currentWhoHeader.first().text($who.val());
			$currentText.show();
			$currentWhoHeader.show();
			$(element).parent().prev().remove();
			$(element).parent().prev().remove();	
			$(element).parent().prev().val("");
			$(element).parent().parent().hide();
			$(element).attr("onclick","editComment(this);");
		}	
	});
}