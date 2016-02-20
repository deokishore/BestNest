package com.bestnest.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import com.bestnest.domain.Company;

@Service
public interface CompanyRepository extends JpaRepository<Company, Integer>{
	
	Company findByCompanyId(Integer companyId);
	
}
