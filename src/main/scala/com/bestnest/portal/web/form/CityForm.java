package com.bestnest.portal.web.form;

public class CityForm {

	private String cityId;
	private StatesForm statesForm;
	private String name;

	public String getCityId() {
		return cityId;
	}

	public void setCityId(String cityId) {
		this.cityId = cityId;
	}

	public StatesForm getStatesForm() {
		return statesForm;
	}

	public void setStatesForm(StatesForm statesForm) {
		this.statesForm = statesForm;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}


}
