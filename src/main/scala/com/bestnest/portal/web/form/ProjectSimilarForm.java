package com.bestnest.portal.web.form;


public class ProjectSimilarForm {
	
	private int projectSimilarId;
	private ProjectForm projectByProjectSimilarMappingIdForm;
	private ProjectForm projectByProjectIdForm;
	
	
	public int getProjectSimilarId() {
		return projectSimilarId;
	}
	public void setProjectSimilarId(int projectSimilarId) {
		this.projectSimilarId = projectSimilarId;
	}
	public ProjectForm getProjectByProjectSimilarMappingIdForm() {
		return projectByProjectSimilarMappingIdForm;
	}
	public void setProjectByProjectSimilarMappingIdForm(
			ProjectForm projectByProjectSimilarMappingIdForm) {
		this.projectByProjectSimilarMappingIdForm = projectByProjectSimilarMappingIdForm;
	}
	public ProjectForm getProjectByProjectIdForm() {
		return projectByProjectIdForm;
	}
	public void setProjectByProjectIdForm(ProjectForm projectByProjectIdForm) {
		this.projectByProjectIdForm = projectByProjectIdForm;
	}
	
	

}
