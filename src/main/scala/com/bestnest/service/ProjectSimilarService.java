package com.bestnest.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bestnest.dao.ProjectSimilarDAO;
import com.bestnest.domain.ProjectSimilar;
import com.bestnest.portal.web.form.ProjectSimilarForm;
import com.bestnest.util.BeanUtil;

@Service
public class ProjectSimilarService {
	
	private static final Logger logger = LoggerFactory.getLogger(ProjectSimilarService.class);
	
	private static List<ProjectSimilar> projectSimilarList = new ArrayList<ProjectSimilar>();

	@Autowired
	ProjectSimilarDAO projectSimilarDAO;
	
	
	@PostConstruct
	public void init() {
		logger.debug("Initializing Project Similar DAO ...................... ");
		projectSimilarList = projectSimilarDAO.selectAll();
		logger.debug("Total Project Similar .................. " + projectSimilarList.size());
	}
	
	public List<ProjectSimilarForm> findgProjectByProjectSimilarMappingId(int projectByProjectId) {
		if(projectByProjectId == 0){
			throw new RuntimeException("projectByProjectId cannot be null");
		}
		
		//List<ProjectSimilar> simProjList = projectSimilarDAO.findProjectSimilarByProjectId(projectByProjectId);
		
		List<ProjectSimilar> newProjectSimilarList = new ArrayList<ProjectSimilar>();
		for (ProjectSimilar projectSimilar : projectSimilarList) {
			if(projectSimilar.getProjectByProjectId().getProjectId() == projectByProjectId ) {
				newProjectSimilarList.add(projectSimilar);
			}
		}
		
		List<ProjectSimilarForm> psfList = new ArrayList<ProjectSimilarForm>();
		BeanUtil.copyProjectSimilar(psfList, newProjectSimilarList);
		
		return psfList;
	}
	
	
}
