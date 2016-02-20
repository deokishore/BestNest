package com.bestnest.portal.web.form;

import java.util.List;

public class ProjectSearchForm {
	
	private String tags;
	private CityForm cityForm;
	private String propertyTypeId;
	private String possessionStatus;
	private CompanyForm companyForm;
	private String minPrice;
	private String maxPrice;
	private int bedRoom;
	private List<ProjectForm> focusedProjectList;
	
	private int minPriceInt;
	private int maxPriceInt;
	
	private List<ProjectForm> projectFormList;
	
	public String getTags() {
		return tags;
	}

	public void setTags(String tags) {
		this.tags = tags;
	}

	public CityForm getCityForm() {
		return cityForm;
	}

	public void setCityForm(CityForm cityForm) {
		this.cityForm = cityForm;
	}

	public String getPropertyTypeId() {
		return propertyTypeId;
	}

	public void setPropertyTypeId(String propertyTypeid) {
		this.propertyTypeId = propertyTypeid;
	}

	public CompanyForm getCompanyForm() {
		return companyForm;
	}

	public void setCompanyForm(CompanyForm companyForm) {
		this.companyForm = companyForm;
	}

	public String getMinPrice() {
		return minPrice;
	}

	public void setMinPrice(String minPrice) {
		this.minPrice = minPrice;
	}

	public String getMaxPrice() {
		return maxPrice;
	}

	public void setMaxPrice(String maxPrice) {
		this.maxPrice = maxPrice;
	}

	public int getBedRoom() {
		return bedRoom;
	}

	public void setBedRoom(int bedRoom) {
		this.bedRoom = bedRoom;
	}

	public List<ProjectForm> getProjectFormList() {
		return projectFormList;
	}

	public void setProjectFormList(List<ProjectForm> projectFormList) {
		this.projectFormList = projectFormList;
	}

	public int getMinPriceInt() {
		return minPriceInt;
	}

	public void setMinPriceInt(int minPriceInt) {
		this.minPriceInt = minPriceInt;
	}

	public int getMaxPriceInt() {
		return maxPriceInt;
	}

	public void setMaxPriceInt(int maxPriceInt) {
		this.maxPriceInt = maxPriceInt;
	}

	public List<ProjectForm> getFocusedProjectList() {
		return focusedProjectList;
	}

	public void setFocusedProjectList(List<ProjectForm> focusedProjectList) {
		this.focusedProjectList = focusedProjectList;
	}

	public String getPossessionStatus() {
		return possessionStatus;
	}

	public void setPossessionStatus(String possessionStatus) {
		this.possessionStatus = possessionStatus;
	}
	
}
