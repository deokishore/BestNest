package com.bestnest.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.bestnest.dao.CompanyDAO;
import com.bestnest.domain.Company;

@Component
public class CompanyService {
	
	private static final Logger logger = LoggerFactory.getLogger(CompanyService.class);
	
	private static List<Company> companyCacheList = new ArrayList<Company>();
	
	@Autowired
	CompanyDAO companyDAO;

	public List<Company> fetchAllCompanies() {
		return companyCacheList;
	}
	
	@PostConstruct
	public void init() {
		logger.debug("Initializing Company ...................... ");
		companyCacheList = companyDAO.selectAll();
		logger.debug("Total Company .................. " + companyCacheList.size());
	}
	
	public Company getCompanyByName(String companyName){
		if(companyName == null){
			throw new IllegalArgumentException("Company Name cannot be null");
		}
		Company company  = null;
		
		for (Company ompny : companyCacheList) {
			if(companyName.equals(ompny.getCompanyName())){
				company = ompny;
				break;
			}
		}
		return company;
	}

}
