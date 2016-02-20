package com.bestnest.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bestnest.domain.ProjectDetails;

public interface ProjectDetailsRepository extends JpaRepository<ProjectDetails, Integer>{
	
	ProjectDetails findByprojectDetailsId(Integer projectDetailsId);

}
