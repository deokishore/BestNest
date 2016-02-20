package com.bestnest.portal.web.form;

import java.util.List;

public class HomePageForm {
	
	private List<CityForm> cityFormList;
	private List<PropertyTypeForm> propertyTypeFormList;
	private List<CompanyForm> companyFormList;
	private List<ProjectForm> focusedProjectList;
	private List<String> possessionStatusList;
	private List<ProjectForm> projectForms;

	public List<PropertyTypeForm> getPropertyTypeFormList() {
		return propertyTypeFormList;
	}

	public void setPropertyTypeFormList(
			List<PropertyTypeForm> propertyTypeFormList) {
		this.propertyTypeFormList = propertyTypeFormList;
	}

	public List<CompanyForm> getCompanyFormList() {
		return companyFormList;
	}

	public void setCompanyFormList(List<CompanyForm> companyFormList) {
		this.companyFormList = companyFormList;
	}

	public List<CityForm> getCityFormList() {
		return cityFormList;
	}

	public void setCityFormList(List<CityForm> cityFormList) {
		this.cityFormList = cityFormList;
	}

	public List<ProjectForm> getFocusedProjectList() {
		return focusedProjectList;
	}

	public void setFocusedProjectList(List<ProjectForm> focusedProjectList) {
		this.focusedProjectList = focusedProjectList;
	}

	public List<String> getPossessionStatusList() {
		return possessionStatusList;
	}

	public void setPossessionStatusList(List<String> possessionStatusList) {
		this.possessionStatusList = possessionStatusList;
	}

	public List<ProjectForm> getProjectForms() {
		return projectForms;
	}

	public void setProjectForms(List<ProjectForm> projectForms) {
		this.projectForms = projectForms;
	}
	
}
