package com.bestnest.portal.web.form;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;


public class ProjectForm {
	
	private Integer projectId;
	private UserProfileForm userProfileForm;
	private PropertyTypeForm propertyTypeForm;
	private LocalityInfoForm localityInfoForm;
	private CompanyForm companyForm;
	private AddressForm addressForm;
	private String projectName;
	private UserProfileForm userProfileByProjectContactIdForm;
	private String possessionDate;
	private Integer prevProjectId;
	private Integer nextProjectId;
	private String possessionStatus;
	private Boolean focusProject;
	private String projectLogo;
	private String projectGroup;
	private String title;
	private String metaKeyword;
	private String metaDescription;
	private String url;


	private Set<ProjectDetailsForm> projectDetailsFormSet = new HashSet<ProjectDetailsForm>(0);
	
	private List<ProjectSimilarForm> projectSimilarsForProjectIdForm = new ArrayList<ProjectSimilarForm>(
			0);
	
	private List<ProjectSimilarForm> projectSimilarsForProjectSimilarMappingIdForm = new ArrayList<ProjectSimilarForm>(
			0);
	
	public Integer getProjectId() {
		return projectId;
	}

	public void setProjectId(Integer projectId) {
		this.projectId = projectId;
	}

	public UserProfileForm getUserProfileForm() {
		return userProfileForm;
	}

	public void setUserProfileForm(UserProfileForm userProfileForm) {
		this.userProfileForm = userProfileForm;
	}

	public PropertyTypeForm getPropertyTypeForm() {
		return propertyTypeForm;
	}

	public void setPropertyTypeForm(PropertyTypeForm propertyTypeForm) {
		this.propertyTypeForm = propertyTypeForm;
	}

	public LocalityInfoForm getLocalityInfoForm() {
		return localityInfoForm;
	}

	public void setLocalityInfoForm(LocalityInfoForm localityInfoForm) {
		this.localityInfoForm = localityInfoForm;
	}

	public CompanyForm getCompanyForm() {
		return companyForm;
	}

	public void setCompanyForm(CompanyForm companyForm) {
		this.companyForm = companyForm;
	}

	public AddressForm getAddressForm() {
		return addressForm;
	}

	public void setAddressForm(AddressForm addressForm) {
		this.addressForm = addressForm;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public UserProfileForm getUserProfileByProjectContactIdForm() {
		return userProfileByProjectContactIdForm;
	}

	public void setUserProfileByProjectContactIdForm(
			UserProfileForm userProfileByProjectContactIdForm) {
		this.userProfileByProjectContactIdForm = userProfileByProjectContactIdForm;
	}

	public Set<ProjectDetailsForm> getProjectDetailsFormSet() {
		return projectDetailsFormSet;
	}

	public void setProjectDetailsFormSet(
			Set<ProjectDetailsForm> projectDetailsFormSet) {
		this.projectDetailsFormSet = projectDetailsFormSet;
	}

	public List<ProjectSimilarForm> getProjectSimilarsForProjectIdForm() {
		return projectSimilarsForProjectIdForm;
	}

	public void setProjectSimilarsForProjectIdForm(
			List<ProjectSimilarForm> projectSimilarsForProjectIdForm) {
		this.projectSimilarsForProjectIdForm = projectSimilarsForProjectIdForm;
	}

	public List<ProjectSimilarForm> getProjectSimilarsForProjectSimilarMappingIdForm() {
		return projectSimilarsForProjectSimilarMappingIdForm;
	}

	public void setProjectSimilarsForProjectSimilarMappingIdForm(
			List<ProjectSimilarForm> projectSimilarsForProjectSimilarMappingIdForm) {
		this.projectSimilarsForProjectSimilarMappingIdForm = projectSimilarsForProjectSimilarMappingIdForm;
	}

	public Integer getPrevProjectId() {
		return prevProjectId;
	}

	public void setPrevProjectId(Integer prevProjectId) {
		this.prevProjectId = prevProjectId;
	}

	public Integer getNextProjectId() {
		return nextProjectId;
	}

	public void setNextProjectId(Integer nextProjectId) {
		this.nextProjectId = nextProjectId;
	}

	public String getPossessionDate() {
		return possessionDate;
	}

	public void setPossessionDate(String possessionDate) {
		this.possessionDate = possessionDate;
	}

	public Boolean getFocusProject() {
		return focusProject;
	}

	public void setFocusProject(Boolean focusProject) {
		this.focusProject = focusProject;
	}

	public String getPossessionStatus() {
		return possessionStatus;
	}

	public void setPossessionStatus(String possessionStatus) {
		this.possessionStatus = possessionStatus;
	}

	public String getProjectLogo() {
		return projectLogo;
	}

	public void setProjectLogo(String projectLogo) {
		this.projectLogo = projectLogo;
	}

	public String getProjectGroup() {
		return projectGroup;
	}

	public void setProjectGroup(String projectGroup) {
		this.projectGroup = projectGroup;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getMetaKeyword() {
		return metaKeyword;
	}

	public void setMetaKeyword(String metaKeyword) {
		this.metaKeyword = metaKeyword;
	}

	public String getMetaDescription() {
		return metaDescription;
	}

	public void setMetaDescription(String metaDescription) {
		this.metaDescription = metaDescription;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
}
