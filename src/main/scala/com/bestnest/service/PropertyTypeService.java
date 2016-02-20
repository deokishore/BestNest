package com.bestnest.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.bestnest.dao.PropertyTypeDAO;
import com.bestnest.domain.PropertyType;

@Component
public class PropertyTypeService {
	
	private static final Logger logger = LoggerFactory.getLogger(PropertyTypeService.class);
	
	private static List<PropertyType> propertyTypeCacheList = new ArrayList<PropertyType>();
	
	@Autowired
	PropertyTypeDAO propertyTypeDAO;

	public List<PropertyType> fetchAllPropertyTypes() {
		return propertyTypeCacheList;
	}
	
	@PostConstruct
	public void init() {
		logger.debug("Initializing Property Type...................... ");
		propertyTypeCacheList = propertyTypeDAO.selectAll();
		logger.debug("Total PropertyType .................. " + propertyTypeCacheList.size());
	}
}
