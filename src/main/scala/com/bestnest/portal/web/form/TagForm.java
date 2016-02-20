package com.bestnest.portal.web.form;

public class TagForm {

	public int id;
	public String tagName;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTagName() {
		return tagName;
	}

	public void setTagName(String tagName) {
		this.tagName = tagName;
	}

	public TagForm(int id, String tagName) {
		this.id = id;
		this.tagName = tagName;
	}

}
