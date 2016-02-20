package com.bestnest.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import com.bestnest.domain.PropertyType;

@Service
public interface PropertyTypeRepository extends JpaRepository<PropertyType, String>{
	PropertyType findByPropertyTypeId(String propertyTypeId);
}
