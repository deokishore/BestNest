package com.bestnest.blogger.controller;

import com.google.gson.Gson;
import com.bestnest.blogger.exception.ServiceLayerException;
import com.bestnest.blogger.model.Comment;
import com.bestnest.blogger.model.Post;
import com.bestnest.blogger.service.CommentService;
import com.bestnest.blogger.service.PostService;
import com.bestnest.blogger.util.Constants;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;

@Controller
public class AjaxController {

	private final Logger LOGGER = LoggerFactory.getLogger(AjaxController.class);

	@Autowired
	private CommentService commentService;

	@Autowired
	private PostService postService;

	@ResponseBody
	@RequestMapping(value = Constants.URI_AJAX_ADD_COMMENT, method = RequestMethod.POST)
	public String addComment(@RequestBody final String commentJson) {
		try {
			// TODO Verify parameters
			LOGGER.info("Adding comment: " + commentJson);
			JSONObject jsonObj = new JSONObject(commentJson);
			Post post = this.postService.getPost(Integer.parseInt(jsonObj.getString(Constants.POST_ID).substring(5)));
			Comment comment = this.commentService.addComment(jsonObj.getString(Constants.COMMENT_WHO), jsonObj.getString(Constants.COMMENT_EMAIL), jsonObj.getString(Constants.COMMENT_TEXT), post);
			SimpleDateFormat sdf = new SimpleDateFormat(Constants.DATE_FORMAT);
			return "<li id='comment_" + comment.getCommentId() + "' class='list-group-item comment' style=\"display:block\">" + "<div class='row commentHeader'>" + "<div class='col-sm-6 who'>"
					+ comment.getWho() + "</div>" + "<div class='col-sm-6 time'>" + sdf.format(comment.getCommentTime()) + "</div>" + "</div>" + "<div class='commentText panel panel-default'>"
					+ comment.getCommentText() + "<div class='dropdown commentMenu '>" + "<span data-toggle='dropdown' class='editIcon glyphicon glyphicon-cog'></span>"
					+ "<ul class='dropdown-menu dropdown-menu-left' role='menu'>" + "<li role='presentation'>"
					+ "<a role='menuitem' tabindex='-1' href='javascript:void(0)' onclick='getEmail(this);'>Edit</a>" + "</li>" + "<li role='presentation'>"
					+ "<a role='menuitem' tabindex='-1' href='javascript:void(0)' onclick='getEmail(this);'>Delete</a>" + "</li>" + "</ul>" + "</div>" + "</div>" + "<div class='row editComment'>"
					+ "<label>Email:</label>" + "<input type='email' class='alert-info form-control' placeholder='Enter your email to be validated'>" + "<div>"
					+ "<button class='btn btn-primary' type='button' name='editOrDelete' onclick='editComment(this);'>Submit</button>"
					+ "<button class='btn btn-default' type='button' onclick='cancelEditComment(this);'>Cancel</button>" + "</div>" + "</div>" + "</li>";
		} catch (ServiceLayerException e) {
			LOGGER.error(e.getMessage());
			return Constants.ERROR;
		}
	}

	@ResponseBody
	@RequestMapping(value = Constants.URI_AJAX_DELETE_COMMENT, method = RequestMethod.DELETE)
	public String deleteComment(@RequestBody final String commentJson) {
		try {
			// TODO Verify parameters
			LOGGER.info("Trying to delete comment: " + commentJson);
			JSONObject jsonObj = new JSONObject(commentJson);
			Comment comment = this.commentService.getComment(Integer.parseInt(jsonObj.getString(Constants.COMMENT_ID).substring(8)));
			Post post = new Post();
			post.setId(Integer.parseInt(jsonObj.getString(Constants.POST_ID).substring(5)));
			comment.setPost(post);
			this.commentService.deleteComment(comment, jsonObj.getString(Constants.COMMENT_EMAIL));
			LOGGER.info("Deleted comment...");
			return Constants.SUCCESS;
		} catch (ServiceLayerException e) {
			LOGGER.error(e.getMessage());
			return Constants.ERROR;
		}
	}

	@ResponseBody
	@RequestMapping(value = Constants.URI_AJAX_CHECK_EMAIL, method = RequestMethod.POST)
	public String checkEmail(@RequestBody final String json) {
		try {
			// TODO Verify parameters TODO use Gson to convert right to Comment
			LOGGER.info("Verifying email: " + json);
			JSONObject jsonObj = new JSONObject(json);
			Comment comment = this.commentService.doesEmailMatch(Integer.parseInt(jsonObj.getString(Constants.COMMENT_ID).substring(8)), jsonObj.getString(Constants.COMMENT_EMAIL));
			if (comment != null) {
				Gson gson = new Gson();
				return gson.toJson(comment);
			} else {
				return Constants.ERROR;
			}
		} catch (ServiceLayerException e) {
			LOGGER.error(e.getMessage());
			return Constants.ERROR;
		}
	}

	@ResponseBody
	@RequestMapping(value = Constants.URI_AJAX_UPDATE_COMMENT, method = RequestMethod.PUT)
	public String updateComment(@RequestBody final String json) {
		try {
			// TODO Verify parameters
			LOGGER.info("Updating: " + json);
			JSONObject jsonObj = new JSONObject(json);
			this.commentService.updateComment(Integer.parseInt(jsonObj.getString(Constants.COMMENT_ID).substring(8)), jsonObj.getString(Constants.COMMENT_WHO),
					jsonObj.getString(Constants.COMMENT_EMAIL), jsonObj.getString(Constants.COMMENT_TEXT));
			return Constants.SUCCESS;
		} catch (ServiceLayerException e) {
			LOGGER.error(e.getMessage());
			return Constants.ERROR;
		}
	}
}