package com.bestnest.portal.web.form;

import java.util.List;

public class CompanyForm {
	
	private Integer companyId;
	private String companyName;
	private String designation;
	private String imagePath;
	private UserProfileForm userProfileForm;
	private List<ProjectForm> projecForms;
	

	public Integer getCompanyId() {
		return companyId;
	}

	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public UserProfileForm getUserProfileForm() {
		return userProfileForm;
	}

	public void setUserProfileForm(UserProfileForm userProfileForm) {
		this.userProfileForm = userProfileForm;
	}

	public List<ProjectForm> getProjecForms() {
		return projecForms;
	}

	public void setProjecForms(List<ProjectForm> projecForms) {
		this.projecForms = projecForms;
	}

	
}
