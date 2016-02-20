package com.bestnest.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import com.bestnest.domain.Project;

@Service
public interface ProjectRepository extends JpaRepository<Project, Integer>{
	
	
	
}
