package com.bestnest.dao;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bestnest.domain.ProjectSimilar;
import com.bestnest.repository.ProjectSimilarRepository;

@Repository
@Transactional(readOnly = true)
@Service
public class ProjectSimilarDAO {
	
	@Resource
	ProjectSimilarRepository projectSimilarRepository;
	
	public List<ProjectSimilar> selectAll() {
		return projectSimilarRepository.findAll();
	}
	
	public List<ProjectSimilar> findProjectSimilarByProjectId(int projectId) {
		List<ProjectSimilar> projectSimilarList = projectSimilarRepository.findProjectSimilarByProjectId(projectId);
		return projectSimilarList;
	}
	
	
	
}
