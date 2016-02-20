package com.bestnest.dao;

import java.util.List;

import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bestnest.domain.Company;
import com.bestnest.repository.CompanyRepository;

@Repository
@Transactional(readOnly = true)
@Service
public class CompanyDAO {


	@Resource
	CompanyRepository companyRepository;
	
	@PersistenceContext
	private EntityManager entityManager;

	public EntityManager getEntityManager() {
		return entityManager;
	}

	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

	public List<Company> selectAll() {
		return companyRepository.findAll();
	}
}
