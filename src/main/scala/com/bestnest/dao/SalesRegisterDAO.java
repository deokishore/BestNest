package com.bestnest.dao;

import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bestnest.domain.SalesRegister;
import com.bestnest.repository.SalesRegisterRepository;

@Repository
@Transactional(readOnly = true)
@Service
public class SalesRegisterDAO {
	
	
	@Resource
	SalesRegisterRepository salesRegisterRepository;
	
	@PersistenceContext
	private EntityManager entityManager;
	
	public EntityManager getEntityManager() {
		return entityManager;
	}

	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}
	
	public void saveSalesRegister(SalesRegister salesRegister) {
		salesRegisterRepository.save(salesRegister);
	}
	
}
