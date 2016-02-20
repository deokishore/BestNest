package com.bestnest.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import com.bestnest.domain.ProjectSimilar;

@Service
public interface ProjectSimilarRepository extends JpaRepository<ProjectSimilar, Integer>{
	
	List<ProjectSimilar> findProjectSimilarByProjectId(int projectByProjectId);
	
}
