package com.bestnest.blogger.model;

import java.util.List;

public class Category {
	private int id;
	private String category;
	private List<Post> posts;

	public String getCategoryName() {
		return category;
	}

	public void setCategoryName(String category) {
		this.category = category;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<Post> getPosts() {
		return posts;
	}

	public void setPosts(List<Post> posts) {
		this.posts = posts;
	}

}
