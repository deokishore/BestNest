package com.bestnest.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.bestnest.dao.ProjectDetailsDAO;
import com.bestnest.domain.ProjectDetails;
import com.bestnest.portal.web.form.ProjectDetailsForm;
import com.bestnest.util.BeanUtil;

@Component
public class ProjectDetailsService {

	private static final Logger logger = LoggerFactory
			.getLogger(ProjectDetailsService.class);

	private static List<ProjectDetails> projectDetailsCacheList = new ArrayList<ProjectDetails>();

	@Autowired
	ProjectDetailsDAO projectDetailsDAO;

	public List<ProjectDetails> findAllProjectDetails() {
		return projectDetailsCacheList;
	}

	public void init() {
		logger.debug("Initializing Property Type...................... ");
		projectDetailsCacheList = projectDetailsDAO.findAll();
		logger.debug("Total PropertyType .................. "
				+ projectDetailsCacheList.size());
	}

	public ProjectDetailsForm findByprojectDetailsId(int projectDetailsId) {
		for (ProjectDetails projectDetails : projectDetailsCacheList) {
			if (projectDetails.getProjectDetailsId() == projectDetailsId) {
				ProjectDetailsForm projectDetailsForm = new ProjectDetailsForm();
				BeanUtil.copyProjectDetailsForm(projectDetailsForm,
						projectDetails);
				return projectDetailsForm;
			}
		}
		return null;
	}
}
