package com.bestnest.dao;

import java.util.List;

import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bestnest.domain.City;
import com.bestnest.repository.CityRepository;

@Repository
@Transactional(readOnly = true)
@Service
public class CityDAO {

	@Resource
	CityRepository cityRepository;
	
	@PersistenceContext
	private EntityManager entityManager;

	public EntityManager getEntityManager() {
		return entityManager;
	}

	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

	public List<City> selectAll() {
		return cityRepository.findAll();
	}
	
	public List<City> selectAllFromCache() {
		return cityRepository.findAll();
	}
}
