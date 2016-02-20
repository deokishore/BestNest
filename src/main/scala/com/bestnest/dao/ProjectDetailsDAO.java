package com.bestnest.dao;

import java.util.List;

import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bestnest.domain.ProjectDetails;
import com.bestnest.repository.ProjectDetailsRepository;

@Repository
@Transactional(readOnly = true)
@Service
public class ProjectDetailsDAO {
	
	
	@Resource
	ProjectDetailsRepository projectDetailsRepository;
	
	@PersistenceContext
	private EntityManager entityManager;
	
	public EntityManager getEntityManager() {
		return entityManager;
	}

	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}
	
	public List<ProjectDetails> findAll() {
		return projectDetailsRepository.findAll();
	}
	
	public ProjectDetails findByprojectDetailsId(Integer projectDetailsId){
		return projectDetailsRepository.findByprojectDetailsId(projectDetailsId);
	}
	
	
	
	
}
