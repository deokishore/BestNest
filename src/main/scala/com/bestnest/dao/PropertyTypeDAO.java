package com.bestnest.dao;

import java.util.List;

import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.bestnest.domain.PropertyType;
import com.bestnest.repository.PropertyTypeRepository;

@Repository("propertyTypeDAO")
@Transactional(propagation = Propagation.REQUIRED)
public class PropertyTypeDAO {

	private static final String SELECT_QUERY = "select propertyType from PropertyType propertyType";
	
	@Resource
	PropertyTypeRepository propertyTypeRepository;
	
	@PersistenceContext
	private EntityManager entityManager;

	public EntityManager getEntityManager() {
		return entityManager;
	}

	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}
	
	@SuppressWarnings("unchecked")
	public List<PropertyType> selectAll() {
		Query query = entityManager.createQuery(SELECT_QUERY);
		List<PropertyType> properties = (List<PropertyType>) query.getResultList();
		return properties;
	}
	
	
	
}
