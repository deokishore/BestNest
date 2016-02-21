package com.bestnest.blogger.model;

import java.sql.Date;
import java.util.List;

public class Post {

	private int id;
	private String title;
	private String postText;
	private Date timePosted;
	private List<Comment> comments;
	private Category category;

	public List<Comment> getComments() {
		return this.comments;
	}

	public int getId() {
		return this.id;
	}

	public String getPostText() {
		return this.postText;
	}

	public Date getTimePosted() {
		return this.timePosted;
	}

	public String getTitle() {
		return this.title;
	}

	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setPostText(String postText) {
		this.postText = postText;
	}

	public void setTimePosted(Date timePosted) {
		this.timePosted = timePosted;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String toString() {
		return "Id: " + this.id + ", Title: " + this.title + ", Type: " + this.category.getCategoryName().toString()
				+ ", Time posted: " + this.timePosted.toString() + ", Text: " + this.getPostText().substring(0, 20)
				+ "...";
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}
}
