package com.bestnest.blogger.model;

import java.util.Date;

public class Comment {

	private int commentId;
	private String who;
	private String email;
	private String commentText;
	private Date commentTime;
	private Post post;

	public int getCommentId() {
		return this.commentId;
	}

	public String getCommentText() {
		return this.commentText;
	}

	public Date getCommentTime() {
		return this.commentTime;
	}

	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}

	public void setCommentText(String commentText) {
		this.commentText = commentText;
	}

	public void setCommentTime(Date commentTime) {
		this.commentTime = commentTime;
	}

	public String getWho() {
		return who;
	}

	public void setWho(String who) {
		this.who = who;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Post getPost() {
		return post;
	}

	public void setPost(Post post) {
		this.post = post;
	}

	public String toString() {
		return "Comment for post: " + this.post.getId() + " by: " + this.getEmail() + " text: " + this.commentText;
	}
}
