package com.bestnest.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bestnest.domain.PropertyType;
import com.bestnest.domain.SalesRegister;

public interface SalesRegisterRepository extends JpaRepository<SalesRegister, Integer>{
	
	PropertyType findBySalesRegisterId(Integer salesRegisterId);

}
