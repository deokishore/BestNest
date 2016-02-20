package com.bestnest.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.bestnest.dao.CityDAO;
import com.bestnest.domain.City;

@Component
public class CityService {

	private static final Logger logger = LoggerFactory.getLogger(CityService.class);

	private static List<City> cityCacheList = new ArrayList<City>();

	@Autowired
	CityDAO cityDAO;

	public List<City> fetchAllCity() {
		return cityCacheList;
	}
	
	public City getCityByName(String cityName){
		if(cityName == null){
			throw new IllegalArgumentException("City Name cannot be null");
		}
		City city  = null;
		
		for (City cty : cityCacheList) {
			if(cityName.equals(cty.getName())){
				city = cty;
				break;
			}
		}
		return city;
	}
	
	@PostConstruct
	public void init() {
		logger.debug("Initializing Cities...................... ");
		cityCacheList = cityDAO.selectAll();
		logger.debug("Total City.................. " + cityCacheList.size());
	}

}
