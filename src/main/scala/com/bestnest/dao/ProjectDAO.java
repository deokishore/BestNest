package com.bestnest.dao;

import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bestnest.domain.Project;
import com.bestnest.repository.ProjectRepository;

@Repository
@Transactional(readOnly = true)
@Service
public class ProjectDAO {
	
	@Resource
	ProjectRepository projectRepository;
	
	@PersistenceContext
	private EntityManager entityManager;
	
	@SuppressWarnings("unchecked")
	public List<Project> selectAll() {
		return projectRepository.findAll();
	}
	
	public List<Project> getProjectById(int projectId) {
		Query query  = entityManager.createQuery(" select project from Project project " +
													"where project.projectId = ?1 ");
		query.setParameter(1, projectId);
		return query.getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<Project> searchProjects(String cityID, int companyId, String propertyType, int minPrice, int maxPrice, int bedRoom) {
		
		Query query  = null;
		
		List<String> resciCommercList = null;

		if(propertyType == null || propertyType.equals("")) {
			resciCommercList = Arrays.asList("Residential", "Commercial", "Plot");
		} else {
			resciCommercList = Arrays.asList(propertyType);
		}
		
		if((cityID != null && !cityID.equals("")) && companyId != 0 ) {
			
		query  = entityManager.createQuery(" select project from Project project, ProjectDetails projectDetails " +
				"where project.address.cityLocality.city.cityId = ?1 " +
				"and project.company.companyId = ?2 " +
				"and project.propertyType.propertyTypeId IN ?3 " +
				"and projectDetails.price >= ?4 " +
				"and projectDetails.price <= ?5 " +
				"and projectDetails.bedRooms >= ?6 " +
				"and project.projectId = projectDetails.project.projectId group by projectDetails.project.projectId ");
		
				query.setParameter(1, cityID); 
				query.setParameter(2, companyId);
				query.setParameter(3, resciCommercList);
				query.setParameter(4, minPrice);
				query.setParameter(5, maxPrice == 0 ? 100000000 : maxPrice);
				query.setParameter(6, bedRoom);
		
		} else if((cityID == null || cityID.equals("")) && companyId != 0 ) {
			
			query  = entityManager.createQuery(" select project from Project project, ProjectDetails projectDetails " +
					"where project.company.companyId = ?1 " +
					"and project.propertyType.propertyTypeId IN ?2 " +
					"and projectDetails.price >= ?3 " +
					"and projectDetails.price <= ?4 " +
					"and projectDetails.bedRooms >= ?5 "+
					"and project.projectId = projectDetails.project.projectId group by projectDetails.project.projectId ");
					
					query.setParameter(1, companyId);
					query.setParameter(2, resciCommercList);
					query.setParameter(3, minPrice);
					query.setParameter(4, maxPrice == 0 ? 100000000 : maxPrice);
					query.setParameter(5, bedRoom);
			
			} else if((cityID != null && !cityID.equals("") && !cityID.equals("null")) && companyId == 0 ) {
			
			query  = entityManager.createQuery(" select project from Project project, ProjectDetails projectDetails " +
					"where project.address.cityLocality.city.cityId = ?1 " +
					"and project.propertyType.propertyTypeId IN ?2 " +
					"and projectDetails.price >= ?3 " +
					"and projectDetails.price <= ?4 " +
					"and projectDetails.bedRooms >= ?5 "+
					"and project.projectId = projectDetails.project.projectId group by projectDetails.project.projectId ");
					
					query.setParameter(1, cityID);
					query.setParameter(2, resciCommercList);
					query.setParameter(3, minPrice);
					query.setParameter(4, maxPrice == 0 ? 100000000 : maxPrice);
					query.setParameter(5, bedRoom);
			
			} else {
				
				query  = entityManager.createQuery(" select project from Project project, ProjectDetails projectDetails " +
						"where project.propertyType.propertyTypeId IN ?1 " +
						"and projectDetails.price >= ?2 " +
						"and projectDetails.price <= ?3 " +
						"and projectDetails.bedRooms >= ?4 "+
						"and project.projectId = projectDetails.project.projectId group by projectDetails.project.projectId ");
				
						query.setParameter(1, resciCommercList);
						query.setParameter(2, minPrice);
						query.setParameter(3, maxPrice == 0 ? 100000000 : maxPrice);
						query.setParameter(4, bedRoom);
				
			}
		
		query.setHint("org.hibernate.cacheable", true);
		List<Project> propertyDetailsList = query.getResultList();
		
		return propertyDetailsList;
	}
	
}
