package com.bestnest.portal.web.form;

import java.io.Serializable;

public class StatesForm implements Serializable{

	private String stateId;
	private String name;

	public String getStateId() {
		return stateId;
	}

	public void setStateId(String stateId) {
		this.stateId = stateId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
