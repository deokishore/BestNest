package com.bestnest.portal.web.form;

public class CityLocalityForm {

	private Integer cityLocalityId;
	private CityForm cityForm;
	private String locality;

	public Integer getCityLocalityId() {
		return cityLocalityId;
	}

	public void setCityLocalityId(Integer cityLocalityId) {
		this.cityLocalityId = cityLocalityId;
	}

	public CityForm getCityForm() {
		return cityForm;
	}

	public void setCityForm(CityForm cityForm) {
		this.cityForm = cityForm;
	}

	public String getLocality() {
		return locality;
	}

	public void setLocality(String locality) {
		this.locality = locality;
	}

}
